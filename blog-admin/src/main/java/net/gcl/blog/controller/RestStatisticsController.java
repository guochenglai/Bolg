package net.gcl.blog.controller;

import net.gcl.blog.business.service.BizStatisticsService;
import net.gcl.blog.business.service.SysConfigService;
import net.gcl.blog.framework.object.ResponseVO;
import net.gcl.blog.util.ResultUtil;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @version 1.0
 * @date 2018/5/22 16:47
 * @since 1.0
 */
@Slf4j
@RestController
@RequestMapping("/statistics")
public class RestStatisticsController {

    @Autowired
    private SysConfigService configService;
    @Autowired
    private BizStatisticsService statisticsService;

    @RequestMapping("/siteInfo")
    public ResponseVO getSiteInfo(){
        return ResultUtil.success("", configService.getSiteInfo());
    }

    @RequestMapping("/listSpider")
    public ResponseVO listSpider(){
        return ResultUtil.success("", statisticsService.listSpider(10));
    }

    @RequestMapping("/listType")
    public ResponseVO listType(){
        return ResultUtil.success("", statisticsService.listType(10));
    }

}
