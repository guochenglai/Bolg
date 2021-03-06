package net.gcl.blog.business.service;


import com.github.pagehelper.PageInfo;
import net.gcl.blog.business.entity.SocialConfig;
import net.gcl.blog.business.vo.SocialConfigConditionVO;
import net.gcl.blog.framework.object.AbstractService;

import java.util.List;

/**
 * @author yadong.zhang email:yadong.zhang(a)innodev.com.cn
 * @version 1.0
 * @date 2021/04/27 14:34
 * @since 1.0
 */
public interface SysSocialConfigService extends AbstractService<SocialConfig, Long> {

    PageInfo<SocialConfig> findPageBreakByCondition(SocialConfigConditionVO vo);

    SocialConfig getByClientId(String clientId);

    SocialConfig getByPlatform(String platform);

    List<SocialConfig> listAvailable();
}
