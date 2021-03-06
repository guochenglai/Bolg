package net.gcl.blog.business.service;


import net.gcl.blog.framework.object.AbstractService;
import net.gcl.blog.business.entity.UpdateRecorde;
import net.gcl.blog.business.vo.UpdateRecordeConditionVO;
import com.github.pagehelper.PageInfo;

/**
 * 更新记录
 *
 * @author yadong.zhang (yadong.zhang0415(a)gmail.com)
 * @version 1.0
 * @website https://docs.zhyd.me
 * @date 2018/4/16 16:26
 * @since 1.0
 */
public interface SysUpdateRecordeService extends AbstractService<UpdateRecorde, Long> {

    PageInfo<UpdateRecorde> findPageBreakByCondition(UpdateRecordeConditionVO vo);
}
