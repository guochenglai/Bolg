package net.gcl.blog.plugin.file;

import net.gcl.blog.business.entity.File;
import net.gcl.blog.business.entity.User;
import net.gcl.blog.business.enums.ConfigKeyEnum;
import net.gcl.blog.business.service.BizFileService;
import net.gcl.blog.business.service.SysConfigService;
import net.gcl.blog.file.AliyunOssApiClient;
import net.gcl.blog.file.ApiClient;
import net.gcl.blog.file.LocalApiClient;
import net.gcl.blog.file.QiniuApiClient;
import net.gcl.blog.file.entity.VirtualFile;
import net.gcl.blog.file.exception.GlobalFileException;
import net.gcl.blog.framework.exception.BaseException;
import net.gcl.blog.framework.holder.SpringContextHolder;
import net.gcl.blog.persistence.beans.BizFile;
import net.gcl.blog.util.BeanConvertUtil;
import net.gcl.blog.util.SessionUtil;
import org.springframework.util.StringUtils;

import java.util.Map;

/**
 * @author yadong.zhang (yadong.zhang0415(a)gmail.com)
 * @version 1.0
 * @website https://docs.zhyd.me
 * @date 2019/2/11 14:26
 * @since 1.8
 */
public class BaseFileUploader {

    ApiClient getApiClient(String uploadType) {
        SysConfigService configService = SpringContextHolder.getBean(SysConfigService.class);
        Map<String, Object> config = configService.getConfigs();
        String storageType = null;
        if (null == config || StringUtils.isEmpty((storageType = (String) config.get(ConfigKeyEnum.STORAGE_TYPE.getKey())))) {
            throw new BaseException("[文件服务]当前系统暂未配置文件服务相关的内容！");
        }

        ApiClient res = null;
        switch (storageType) {
            case "local":
                String localFileUrl = (String) config.get(ConfigKeyEnum.LOCAL_FILE_URL.getKey()),
                        localFilePath = (String) config.get(ConfigKeyEnum.LOCAL_FILE_PATH.getKey());
                res = new LocalApiClient().init(localFileUrl, localFilePath, uploadType);
                break;
            case "qiniu":
                String accessKey = (String) config.get(ConfigKeyEnum.QINIU_ACCESS_KEY.getKey()),
                        secretKey = (String) config.get(ConfigKeyEnum.QINIU_SECRET_KEY.getKey()),
                        qiniuBucketName = (String) config.get(ConfigKeyEnum.QINIU_BUCKET_NAME.getKey()),
                        baseUrl = (String) config.get(ConfigKeyEnum.QINIU_BASE_PATH.getKey());
                res = new QiniuApiClient().init(accessKey, secretKey, qiniuBucketName, baseUrl, uploadType);
                break;
            case "aliyun":
                String endpoint = (String) config.get(ConfigKeyEnum.ALIYUN_ENDPOINT.getKey()),
                        accessKeyId = (String) config.get(ConfigKeyEnum.ALIYUN_ACCESS_KEY.getKey()),
                        accessKeySecret = (String) config.get(ConfigKeyEnum.ALIYUN_ACCESS_KEY_SECRET.getKey()),
                        url = (String) config.get(ConfigKeyEnum.ALIYUN_FILE_URL.getKey()),
                        aliYunBucketName = (String) config.get(ConfigKeyEnum.ALIYUN_BUCKET_NAME.getKey());
                res = new AliyunOssApiClient().init(endpoint, accessKeyId, accessKeySecret, url, aliYunBucketName, uploadType);
                break;
            case "youpaiyun":
                break;
            default:
                break;
        }
        if (null == res) {
            throw new GlobalFileException("[文件服务]当前系统暂未配置文件服务相关的内容！");
        }
        return res;
    }

    VirtualFile saveFile(VirtualFile virtualFile, boolean save, String uploadType) {
        if (save) {
            BizFileService fileService = SpringContextHolder.getBean(BizFileService.class);
            try {
                SysConfigService configService = SpringContextHolder.getBean(SysConfigService.class);
                Map<String, Object> config = configService.getConfigs();
                String storageType = (String) config.get(ConfigKeyEnum.STORAGE_TYPE.getKey());

                BizFile fileInfo = BeanConvertUtil.doConvert(virtualFile, BizFile.class);
                User sessionUser = SessionUtil.getUser();
                fileInfo.setUserId(null == sessionUser ? null : sessionUser.getId());
                fileInfo.setUploadType(uploadType);
                fileInfo.setStorageType(storageType);
                fileService.insert(new File(fileInfo));
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return virtualFile;
    }

    boolean removeFile(ApiClient apiClient, String filePath, String uploadType) {
        BizFileService fileService = SpringContextHolder.getBean(BizFileService.class);
        File file = fileService.selectFileByPathAndUploadType(filePath, uploadType);
        String fileKey = filePath;
        if (null != file) {
            fileKey = file.getFilePath();
        }
        return apiClient.removeFile(fileKey);
    }

}
