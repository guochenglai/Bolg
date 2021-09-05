package net.gcl.blog.business.service;


import com.github.pagehelper.PageInfo;
import net.gcl.blog.business.entity.Tags;
import net.gcl.blog.business.vo.TagsConditionVO;
import net.gcl.blog.framework.object.AbstractService;

/**
 * 标签
 *
 * @author yadong.zhang (yadong.zhang0415(a)gmail.com)
 * @version 1.0
 * @website https://docs.zhyd.me
 * @date 2018/4/16 16:26
 * @since 1.0
 */
public interface BizTagsService extends AbstractService<Tags, Long> {

    PageInfo<Tags> findPageBreakByCondition(TagsConditionVO vo);

    Tags getByName(String name);
}
