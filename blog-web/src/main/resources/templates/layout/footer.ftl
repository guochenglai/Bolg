<#-- 搜索弹窗 -->
<div class="modal fade nav-search-box" tabindex="-1" role="dialog" aria-labelledby="navSearchModalLabel">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header" style="padding: 5px 15px;">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close" style="margin-top: 10px;"><span aria-hidden="true">&times;</span></button>
                <h4><i class="fa fa-search"></i> 搜索文章</h4>
            </div>
            <div class="modal-body">
                <form action="/" method="post" class="form-horizontal searchForm" id="searchForm">
                    <input type="hidden" name="pageNumber" value="1">
                    <div class="input-group bottom-line">
                        <input type="text" class="form-control br-none" name="keywords" value="${model.keywords}" required="required" placeholder="输入搜索内容">
                        <span class="input-group-btn">
                        <button class="btn btn-default br-none nav-search-btn pointer" type="submit"><i class="fa fa-search"></i> 搜索</button>
                    </span>
                    </div>
                    <div class="clear"></div>
                    <ul class="list-unstyled list-inline search-hot">
                        <li><strong style="position: relative;top: 2px;color: #999999;">热门搜索：</strong></li>
                        <@zhydTag method="searchOptions">
                            <#if searchOptions?? && (searchOptions?size > 0)>
                                <#list searchOptions as item>
                                    <li><a class="pointer" rel="external nofollow"><span class="label label-info">${item}</span></a></li>
                                </#list>
                            </#if>
                        </@zhydTag>
                    </ul>
                </form>
            </div>
        </div>
    </div>
</div>
<!--评论弹框-->
<div class="modal fade bs-example-modal-sm" id="comment-detail-modal" tabindex="-1" role="dialog" aria-labelledby="comment-detail-modal-label">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="comment-detail-modal-label">你的信息</h4>
            </div>
            <div class="modal-body">
                <form id="detail-form">
                    <input type="hidden" name="avatar">
<#--                    <div class="form-group input-logo">-->
<#--                        <input type="text" class="form-control" name="qq" placeholder="选填" value="">-->
<#--                        <img class="pull-left hide" alt="">-->
<#--                        <span class="fa fa-qq pull-left" aria-hidden="true">QQ</span>-->
<#--                    </div>-->
                    <div class="form-group input-logo">
                        <input type="text" class="form-control" name="nickname" placeholder="必填" value="anonymous">
                        <span class="fa fa-user pull-left" aria-hidden="true">Name</span>
                    </div>
                    <div class="form-group input-logo">
                        <input type="text" class="form-control" name="email" placeholder="选填">
                        <span class="fa fa-envelope pull-left" aria-hidden="true">Mail</span>
                    </div>
                    <div class="form-group">
                        <button type="button" class="btn btn-default btn-sm" id="detail-form-btn"><i class="fa fa-smile-o"></i>Submit</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<div class="modal fade" id="reward" tabindex="-1" role="dialog">
    <div class="modal-dialog">
        </div>
        <small class="font-bold"></small>
    </div>
    <small class="font-bold"> </small>
</div>
<div id="loading">
    <div class="filter"></div>
    <div class="loader">
        <div class="loading-1"></div>
        <div class="loading-2">Loading...</div>
    </div>
</div>
    <#if config.footerHtml?? && (config.footerHtml?length > 0)>
        ${config.footerHtml!}
    <#else >
        <footer class="footer">
            <div class="container">
                <div class="row">
                    <div class="col col-md-4"></div>
                </div>
            </div>
        </footer>
    </#if>
    <footer class="footer">
        <div class="container">
            <div class="row">
                <div class="col col-xs-12 col-md-12 col-lg-12">
                    <p><#if config.copyright!>${config.copyright} |</#if> Powered by <a href="https://guochenglai.com" title="Hello Word" data-toggle="tooltip" data-placement="right" target="_blank" style="color: #4286ca;font-weight: 600;">Guo Chenglai</a>  </p>
                    <#if url?? && (url == "index")>
                        <div class="inline external-links">
                        </div>
                    </#if>

                </div>
            </div>
        </div>
    </footer>
<a class="to-top" title="点击返回顶部" data-toggle="tooltip" data-placement="bottom"></a>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/jquery@1.11.1/dist/jquery.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.0/dist/js/bootstrap.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/jquery-lazyload@1.9.3/jquery.lazyload.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/jquery-confirm@3.3.2/dist/jquery-confirm.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/jquery.fancybox@2.1.5/source/jquery.fancybox.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/bootstrapvalidator@0.5.4/dist/js/bootstrapValidator.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/nprogress@0.2.0/nprogress.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/xss@0.3.3/dist/xss.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/mustache@2.3.0/mustache.min.js"></script>
<script type="text/javascript">
    var appConfig = {
        siteName: '${config.siteName}',
        wwwPath: '${config.siteUrl}',
        cmsPath: '${config.cmsUrl}',
        staticPath: '${config.staticWebSite}',
        lazyloadPath: '${config.lazyloadPath}',
        fileStoragePath: '${config.fileStoragePath}',
        wxPraiseCode: '${config.wxPraiseCode}' || '${config.staticWebSite}/img/default.png',
        zfbPraiseCode: '${config.zfbPraiseCode}' || '${config.staticWebSite}/img/default.png',
        anonymous: '${config.anonymous}',
        editorPlaceholder: '${config.editorPlaceholder}',
        editorAlert: '${config.editorAlert}',
        dynamicTitle: '${config.dynamicTitle}',
        bubbleWord: '${config.bubbleWord}',
    };

    var oauthConfig = {
        loginUserId: '${user.id}',
        loginUserName: '${user.username}',
        loginUserAvatar: '${user.avatar}'
    }
</script>
<script type="text/javascript" src="${config.staticWebSite}/js/zhyd.core.js"></script>
<script type="text/javascript" src="${config.staticWebSite}/js/zhyd.comment.js"></script>
<script type="text/javascript" src="${config.staticWebSite}/js/zhyd.js"></script>
<script type="text/javascript" id="customJs">
    ${config.customJs}
</script>
