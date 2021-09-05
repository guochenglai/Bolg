package net.gcl.blog.persistence.mapper;

import net.gcl.blog.business.vo.FileConditionVO;
import net.gcl.blog.persistence.beans.BizFile;
import net.gcl.blog.plugin.BaseMapper;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author innodev java team
 * @version 1.0
 * @date 2018/12/14 09:23
 * @since 1.8
 */
@Repository
public interface BizFileMapper extends BaseMapper<BizFile> {

    List<BizFile> findPageBreakByCondition(FileConditionVO vo);
}
