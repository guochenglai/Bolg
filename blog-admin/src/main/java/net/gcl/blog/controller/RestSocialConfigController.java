package net.gcl.blog.controller;

import com.github.pagehelper.PageInfo;
import net.gcl.blog.business.annotation.BussinessLog;
import net.gcl.blog.business.entity.SocialConfig;
import net.gcl.blog.business.enums.ResponseStatus;
import net.gcl.blog.business.service.SysSocialConfigService;
import net.gcl.blog.business.vo.SocialConfigConditionVO;
import net.gcl.blog.framework.object.PageResult;
import net.gcl.blog.framework.object.ResponseVO;
import net.gcl.blog.util.ResultUtil;
import org.apache.shiro.authz.annotation.Logical;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * Social Config
 *
 * @version 1.0
 * @date 2021/4/27 14:37
 * @since 1.0
 */
@RestController
@RequestMapping("/social/config")
public class RestSocialConfigController {
    @Autowired
    private SysSocialConfigService sysSocialConfigService;

    @RequiresPermissions("socials")
    @PostMapping("/list")
    public PageResult list(SocialConfigConditionVO vo) {
        vo.setPageSize(Integer.MAX_VALUE);
        PageInfo<SocialConfig> pageInfo = sysSocialConfigService.findPageBreakByCondition(vo);
        return ResultUtil.tablePage(pageInfo);
    }

    @RequiresPermissions("social:add")
    @PostMapping(value = "/add")
    @BussinessLog("添加社会化登录配置")
    public ResponseVO add(SocialConfig socialConfig) {
        sysSocialConfigService.insert(socialConfig);
        return ResultUtil.success("社会化登录配置添加成功！");
    }

    @RequiresPermissions(value = {"social:batchDelete", "social:delete"}, logical = Logical.OR)
    @PostMapping(value = "/remove")
    @BussinessLog("删除社会化登录配置")
    public ResponseVO remove(Long[] ids) {
        if (null == ids) {
            return ResultUtil.error(500, "请至少选择一条记录");
        }
        for (Long id : ids) {
            sysSocialConfigService.removeByPrimaryKey(id);
        }
        return ResultUtil.success("成功删除 [" + ids.length + "] 个社会化登录配置");
    }

    @RequiresPermissions("social:get")
    @PostMapping("/get/{id}")
    @BussinessLog("获取社会化登录配置详情")
    public ResponseVO get(@PathVariable Long id) {
        return ResultUtil.success(null, this.sysSocialConfigService.getByPrimaryKey(id));
    }

    @RequiresPermissions("social:edit")
    @PostMapping("/edit")
    @BussinessLog("编辑社会化登录配置")
    public ResponseVO edit(SocialConfig socialConfig) {
        try {
            sysSocialConfigService.updateSelective(socialConfig);
        } catch (Exception e) {
            e.printStackTrace();
            return ResultUtil.error("社会化登录配置修改失败！");
        }
        return ResultUtil.success(ResponseStatus.SUCCESS);
    }

}
