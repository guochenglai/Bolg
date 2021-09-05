<#include "include/macros.ftl">
<@compress single_line=false>
<@header title="免责声明 | ${config.siteName}" keywords="" description="免责声明" canonical="/disclaimer"></@header>

<div class="container custome-container">
    <nav class="breadcrumb">
        <a class="crumbs" title="返回首页" href="${config.siteUrl}" data-toggle="tooltip" data-placement="bottom"><i class="fa fa-home"></i>Home</a> <i
            class="fa fa-angle-right"></i>免责声明
    </nav>
    <div class="row disclaimer">
        <div class="col-sm-8 blog-main">
            <div class="blog-body overflow-initial fade-in">
                <div class="blog-info overflow-initial">
                    <div class="bottom-line">
                        <h1 class="disclaimer-title">
                            <strong>免责声明</strong>
                        </h1>
                        <p>作者：<a href="${config.siteUrl}" title="网站作者">${config.authorName}</a>&nbsp;&nbsp;&nbsp;&nbsp; 发布时间：2018年3月16日</p>
                    </div>
                    <div class="disclaimer-body">
                        <#if config.disclaimerHtml?? && (config.disclaimerHtml?length > 0)>
                            ${config.disclaimerHtml!}
                        <#else >
                            <ul class="list-unstyled disclaimer-box">
                            </ul>
                        </#if>
                    </div>
                    <div class="article-footer overflow-initial">
                        <span class="blog-description hitokoto num"></span>
                    </div>
                </div>
            </div>
        </div>
        <#include "layout/sidebar.ftl"/>
    </div>
</div>
<@footer>
<script src="https://v1.hitokoto.cn/?encode=js&c=i&select=.hitokoto" defer></script>
</@footer>
</@compress>
