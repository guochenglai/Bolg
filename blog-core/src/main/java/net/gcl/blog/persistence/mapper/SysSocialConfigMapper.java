package net.gcl.blog.persistence.mapper;

import net.gcl.blog.business.vo.SocialConfigConditionVO;
import net.gcl.blog.persistence.beans.SysSocialConfig;
import net.gcl.blog.plugin.BaseMapper;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author yadong.zhang email:yadong.zhang(a)innodev.com.cn
 * @version 1.0
 * @date 2021/04/27 14:34
 * @since 1.0
 */
@Repository
public interface SysSocialConfigMapper extends BaseMapper<SysSocialConfig> {

    List<SysSocialConfig> findPageBreakByCondition(SocialConfigConditionVO vo);

    SysSocialConfig getByClientId(String clientId);

    List<SysSocialConfig> listAvailable();
}
