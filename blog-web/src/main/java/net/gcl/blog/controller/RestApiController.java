package net.gcl.blog.controller;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import net.gcl.blog.business.annotation.BussinessLog;
import net.gcl.blog.business.entity.Article;
import net.gcl.blog.business.entity.Comment;
import net.gcl.blog.business.entity.Link;
import net.gcl.blog.business.enums.CommentStatusEnum;
import net.gcl.blog.business.enums.PlatformEnum;
import net.gcl.blog.business.service.BizArticleService;
import net.gcl.blog.business.service.BizCommentService;
import net.gcl.blog.business.service.SysLinkService;
import net.gcl.blog.business.service.SysNoticeService;
import net.gcl.blog.business.vo.CommentConditionVO;
import net.gcl.blog.framework.exception.ArticleException;
import net.gcl.blog.framework.exception.CommentException;
import net.gcl.blog.framework.exception.LinkException;
import net.gcl.blog.framework.object.ResponseVO;
import net.gcl.blog.util.RestClientUtil;
import net.gcl.blog.util.ResultUtil;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.StringUtils;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.Map;

/**
 * 网站接口类，申请友链、评论、点赞等
 *
 * @author yadong.zhang (yadong.zhang0415(a)gmail.com)
 * @version 1.0
 * @website https://docs.zhyd.me
 * @date 2018/4/18 11:48
 * @since 1.0
 */
@Slf4j
@RestController
@RequestMapping("/api")
public class RestApiController {

    @Autowired
    private SysLinkService sysLinkService;
    @Autowired
    private BizCommentService commentService;
    @Autowired
    private BizArticleService articleService;
    @Autowired
    private SysNoticeService noticeService;

    @PostMapping("/autoLink")
    @BussinessLog(value = "自助申请友链", platform = PlatformEnum.WEB)
    public ResponseVO autoLink(@Validated Link link, BindingResult bindingResult) {
        log.info("申请友情链接......");
        log.info(JSON.toJSONString(link));
        if (bindingResult.hasErrors()) {
            return ResultUtil.error(bindingResult.getFieldError().getDefaultMessage());
        }
        try {
            sysLinkService.autoLink(link);
        } catch (LinkException e) {
            log.error("客户端自助申请友链发生异常", e);
            return ResultUtil.error(e.getMessage());
        }
        return ResultUtil.success("已成功添加友链，祝您生活愉快！");
    }

    @PostMapping("/qq/{qq}")
    @BussinessLog(value = "获取QQ信息", platform = PlatformEnum.WEB)
    public ResponseVO qq(@PathVariable("qq") String qq) {
        if (StringUtils.isEmpty(qq)) {
            return ResultUtil.error("");
        }
        Map<String, String> resultMap = new HashMap<>(4);
        String nickname = "Anonymous";
        String json = RestClientUtil.get("https://users.qzone.qq.com/fcg-bin/cgi_get_portrait.fcg?uins=" + qq, "GBK");
        if (!StringUtils.isEmpty(json)) {
            try {
                json = json.replaceAll("portraitCallBack|\\\\s*|\\t|\\r|\\n", "");
                json = json.substring(1, json.length() - 1);
                log.info(json);
                JSONObject object = JSONObject.parseObject(json);
                JSONArray array = object.getJSONArray(qq);
                nickname = array.getString(6);
            } catch (Exception e) {
                log.error("通过QQ号获取用户昵称发生异常", e);
            }
        }
        resultMap.put("avatar", "https://q1.qlogo.cn/g?b=qq&nk=" + qq + "&s=40");
        resultMap.put("nickname", nickname);
        resultMap.put("email", qq + "@qq.com");
        resultMap.put("url", "https://user.qzone.qq.com/" + qq);
        return ResultUtil.success(null, resultMap);
    }

    @PostMapping("/comments")
    @BussinessLog(value = "评论列表", platform = PlatformEnum.WEB, save = false)
    public ResponseVO comments(CommentConditionVO vo) {
        vo.setStatus(CommentStatusEnum.APPROVED.toString());
        return ResultUtil.success(null, commentService.list(vo));
    }

    @PostMapping("/comment")
    @BussinessLog(value = "发表评论", platform = PlatformEnum.WEB)
    public ResponseVO comment(Comment comment) {
        try {
            commentService.comment(comment);
        } catch (CommentException e) {
            return ResultUtil.error(e.getMessage());
        }
        return ResultUtil.success("评论发表成功，系统正在审核，请稍后刷新页面查看！");
    }

    @PostMapping("/doSupport/{id}")
    @BussinessLog(value = "点赞评论{1}", platform = PlatformEnum.WEB)
    public ResponseVO doSupport(@PathVariable("id") Long id) {
        try {
            commentService.doSupport(id);
        } catch (CommentException e) {
            return ResultUtil.error(e.getMessage());
        }
        return ResultUtil.success("");
    }

    @PostMapping("/doOppose/{id}")
    @BussinessLog(value = "点踩评论{1}", platform = PlatformEnum.WEB)
    public ResponseVO doOppose(@PathVariable("id") Long id) {
        try {
            commentService.doOppose(id);
        } catch (CommentException e) {
            return ResultUtil.error(e.getMessage());
        }
        return ResultUtil.success("");
    }

    @PostMapping("/doPraise/{id}")
    @BussinessLog(value = "点赞文章{1}", platform = PlatformEnum.WEB)
    public ResponseVO doPraise(@PathVariable("id") Long id) {
        try {
            articleService.doPraise(id);
        } catch (ArticleException e) {
            return ResultUtil.error(e.getMessage());
        }
        return ResultUtil.success("");
    }

    @PostMapping("/listNotice")
    @BussinessLog(value = "公告列表", platform = PlatformEnum.WEB, save = false)
    public ResponseVO listNotice() {
        return ResultUtil.success("", noticeService.listRelease());
    }

    @PostMapping("/verifyArticlePassword")
    @BussinessLog(value = "验证文章密码", platform = PlatformEnum.WEB, save = false)
    public ResponseVO verifyArticlePassword(Long articleId, String password) {
        if (StringUtils.isEmpty(password)) {
            return ResultUtil.error("文章密码错误");
        }
        Article article = articleService.getByPrimaryKey(articleId);
        if (null == article) {
            return ResultUtil.error(String.format("文章【%s】不存在！", articleId));
        }
        if (!article.getPrivate() || StringUtils.isEmpty(article.getPassword())) {
            return ResultUtil.error(String.format("文章【%s】未加密！", articleId));
        }
        if (article.getPassword().equals(password)) {
            return ResultUtil.success("文章密码验证通过", article.getContent());
        }
        return ResultUtil.error("文章密码错误");
    }

}
