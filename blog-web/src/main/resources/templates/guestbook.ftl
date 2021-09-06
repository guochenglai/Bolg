<#include "include/macros.ftl">
<@compress single_line=false>
<@header title="MessageBoard | ${config.siteName}" canonical="/guestbook" hasEditor=true>
</@header>

<div class="container custome-container">
    <nav class="breadcrumb">
        <a class="crumbs" title="Return To Home" href="${config.siteUrl}" data-toggle="tooltip" data-placement="bottom"><i class="fa fa-home"></i>Home</a>
        <i class="fa fa-angle-right"></i>MessageBoard
    </nav>
    <div class="row guestbook-body">
        <#if config.comment! && config.comment == 1>
            <div class="col-sm-12 blog-main">
                <div class="blog-body expansion">
                    <div id="comment-box" data-id="-1"></div>
                </div>
            </div>
        <#else>
            <div class="blog-body clear overflow-initial expansion gray">
                <i class="fa fa-close fa-fw"></i>评论功能已被站长关闭
            </div>
        </#if>
    </div>
</div>

<@footer>
    <script src="https://v1.hitokoto.cn/?encode=js&c=i&select=%23hitokoto" defer></script>

    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/highlight.js@9.12.0/lib/highlight.min.js"></script>
	<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/simplemde@1.11.2/dist/simplemde.min.js"></script>
</@footer>
</@compress>
