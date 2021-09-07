<#include "include/macros.ftl">
<@compress single_line=false>
<@header title="${config.siteName!} | 心之所向，无所不成">
</@header>

<div class="container custome-container">
    <@prompt></@prompt>
    <nav class="breadcrumb">
        <div class="notify"><i class="fa fa-bullhorn fa-fw"></i></div>
        <div id="scrolldiv">
            <div class="scrolltext">
<#--                <ul class="list-unstyled" id="notice-box">-->
<#--                   <li class="scrolltext-title">-->
<#--                        <a href="javascript:void(0)" rel="bookmark">Hello Word</a>-->
<#--                    </li>-->
<#--                    <li class="scrolltext-title">-->
<#--                        <a href="javascript:void(0)" rel="bookmark">Hello New Word</a>-->
<#--                    </li>-->
<#--                </ul>-->
            </div>
        </div>
    </nav>
    <div class="row">
        <div class="col-sm-8 blog-main">
            <@articleTag method="recommendedList" pageSize="8">
                <#if recommendedList?? && (recommendedList?size > 0)>
                <div class="blog-body expansion" style="padding: 0;">
                    <div id="myCarousel" class="carousel slide" style="height:300px;">
                        <ol class="carousel-indicators">
                            <#list recommendedList as item>
                            <li data-target="#myCarousel" data-slide-to="${item_index}" class="${(item_index == 0)?string('active','')}"></li>
                            </#list>
                        </ol>
                        <div class="carousel-inner">
                            <#list recommendedList as item>
                            <div class="item ${(item_index == 0)?string('active','')}">
                                <a href="${config.siteUrl}/article/${item.id?c}">
                                    <img src="${item.coverImage}" onerror="this.src='${config.staticWebSite}/img/defaultbanner.png'" alt="${item.title}" title="${item.title}">
                                </a>
                                <div class="zyd-carousel-caption">${item.title}</div>
                            </div>
                            </#list>
                        </div>
                        <a class="left carousel-control hide" href="#myCarousel" role="button" data-slide="prev">
                            <span class="fa fa-angle-left fa-fw fa-3x" aria-hidden="true"></span>
                            <span class="sr-only">Previous</span>
                        </a>
                        <a class="right carousel-control hide" href="#myCarousel" role="button" data-slide="next">
                            <span class="fa fa-angle-right fa-fw fa-3x" aria-hidden="true"></span>
                            <span class="sr-only">Next</span>
                        </a>
                    </div>
                </div>
                </#if>
            </@articleTag>
            <#if page.list?? && (page.list?size > 0)>
                <#list page.list as item>
                    <article class="fade-in">
                        <#if item.coverImage?? && (item.coverImage?length > 7)>
                            <figure class="thumbnail">
                                <a href="${config.siteUrl}/article/${item.id?c}">
                                    <img width="150" height="150" <#if config.lazyloadPath!>data-original<#else>src</#if>="${item.coverImage}" onerror="this.src='${config.staticWebSite}/img/default.png'" class="img-responsive lazy-img" alt="${item.title!}">
                                </a>
                            </figure>
                        </#if>
                        <header class="entry-header">
<#--                            <#if item.original?string('true','false') == 'true'>-->
<#--                                <span class="art art-original"><i class="fa fa-check fa-fw"></i>原创</span>-->
<#--                            <#else>-->
<#--                                <span class="art art-original-0"><i class="fa fa-reply fa-fw"></i>转载</span>-->
<#--                            </#if>-->
<#--                            <#if item.private>-->
<#--                                <span class="art art-type art-type-yellow"><i class="fa fa-lock fa-fw"></i>私密</span>-->
<#--                            </#if>-->
                            <#if item.top>
                                <span class="art art-top"><i class="fa fa-chevron-circle-up fa-fw"></i>置顶</span>
                            </#if>
                            <span class="art art-type"><a href="${config.siteUrl}/type/${item.typeId?c}"><i class="${item.type.icon!} fa-fw"></i> ${item.type.name}</a></span>
                            <h2 class="entry-title">
                                <a href="${config.siteUrl}/article/${item.id?c}" rel="bookmark" title="${item.title}" data-toggle="tooltip" data-placement="bottom">${item.title}</a>
                            </h2>
                        </header>
                        <div class="entry-content">
                            <div class="archive-content">
                                ${item.description!}
                            </div>
                            <span class="entry-meta">
                                <span class="date" title="Release Date" data-toggle="tooltip" data-placement="bottom"><i class="fa fa-clock-o fa-fw"></i>${item.createTime?string('yyyy-MM-dd')}</span>
                                <span class="views" title="View Count" data-toggle="tooltip" data-placement="bottom"><i class="fa fa-eye fa-fw"></i>Views(${item.lookCount!(0)})</span>
                                <span class="comment" title="Comment Count" data-toggle="tooltip" data-placement="bottom">
                                    <a href="${config.siteUrl}/article/${item.id?c}#comment-box" rel="external nofollow">
                                        <i class="fa fa-comments-o fa-fw"></i>Comments(${item.commentCount!(0)})
                                    </a>
                                </span>
                            </span>
                            <div class="clear"></div>
                            <span class="entry-more">
                                <a href="${config.siteUrl}/article/${item.id?c}" rel="bookmark" data-toggle="tooltip" data-placement="bottom">ReadMore</a>
                            </span>
                        </div>
                    </article>
                </#list>
                <@pageBar></@pageBar>
            <#else >
                <article class="fade-in" style="height: auto">
                    <div class="rows">
                        <div class="col-md-10 col-sm-12">
                            <div class="h3 text-center">Not Found<img src="http://img.t.sinajs.cn/t35/style/images/common/face/ext/normal/15/j_thumb.gif" alt="[囧]"></div>
                            <div class="h5 text-center">Try it again~~</div>
                        </div>
                    </div>
                    <form action="/" method="post" class="form-horizontal searchForm">
                        <input type="hidden" name="pageNumber" value="1">
                        <div class="input-group">
                            <input type="text" class="form-control br-none" name="keywords" placeholder="Try Search Some Thing New~~">
                            <span class="input-group-btn">
                                <button class="btn btn-default br-none nav-search-btn pointer" type="submit"><i class="fa fa-search"></i> Search</button>
                            </span>
                        </div>
                        <div class="clear" style="margin-bottom: 10px"></div>
                        <ul class="list-unstyled list-inline search-hot">
                            <li><strong style="position: relative;top: 2px;color: #999999;">Search Suggestion：</strong></li>
                            <@zhydTag method="searchOptions">
                                <#if searchOptions?? && (searchOptions?size > 0)>
                                    <#list searchOptions as item>
                                        <li><a class="pointer" rel="external nofollow"><span class="label label-info">${item}</span></a></li>
                                    </#list>
                                </#if>
                            </@zhydTag>
                        </ul>
                    </form>
                </article>
            </#if>
        </div>
        <#include "layout/sidebar.ftl"/>
    </div>
</div>

<@footer></@footer>
</@compress>
