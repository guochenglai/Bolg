<#include "include/macros.ftl">
<@compress single_line=false>
<@header title="关于 | ${config.siteName}" description="关于${config.siteName}" canonical="/about"></@header>

<div class="container custome-container">
    <nav class="breadcrumb">
        <a class="crumbs" title="返回首页" href="${config.siteUrl}" data-toggle="tooltip" data-placement="bottom"><i class="fa fa-home"></i>首页</a>
        <i class="fa fa-angle-right"></i>关于
    </nav>
    <div class="row about-body">
            <div class="col-sm-12 blog-main">
                <div class="blog-body expansion">
                    <h5 class="custom-title"><i class="fa fa-user-secret fa-fw"></i><strong>博主简介</strong><small></small></h5>
                    <div class="info">
                        <p>
                            自我简介
                        </p>
                    </div>
                    <@praise></@praise>
                </div>
            </div>
        <div class="col-sm-12 blog-main">
            <div class="blog-body expansion">
                <div id="comment-box" data-id="-3"></div>
            </div>
        </div>
    </div>
</div>

<@footer>
    <script src="https://v1.hitokoto.cn/?encode=js&c=i&select=%23hitokoto" defer></script>
</@footer>
</@compress>
