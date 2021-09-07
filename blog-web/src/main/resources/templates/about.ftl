<#include "include/macros.ftl">
<@compress single_line=false>
<@header title="About | ${config.siteName}" description="About${config.siteName}" canonical="/about"></@header>
<div class="container custome-container">
    <nav class="breadcrumb">
        <a class="crumbs" href="${config.siteUrl}" data-toggle="tooltip" data-placement="bottom"><i class="fa fa-home"></i>Home</a>
        <i class="fa fa-angle-right"></i>About
    </nav>
    <div class="row about-body">
            <div class="col-sm-12 blog-main">
                <div class="blog-body expansion">
                    <h5 class="custom-title"><i class="fa fa-user-secret fa-fw"></i><strong>博主简介</strong><small></small></h5>
                    <table border="0">
                        <tr>
                            <td>
                                <div class="pic" style="float:left;">
                                    <img src="${config.staticWebSite}/img/personal/gcl.png" alt="That's Me" class="img-responsive" style="width: 100%;">
                                </div>
                            </td>
                            <td valign="top">
                                <div class="info" style="float:left;margin-left:10px;">
                                    Name:&nbsp;&nbsp;:&nbsp;&nbsp;郭承来<br>
                                    Working Experience&nbsp;&nbsp;:<br>
                                    &nbsp;&nbsp;&nbsp;&nbsp;2014-05&nbsp;–&nbsp;2017-05&nbsp;&nbsp;Qunar.com<br>
                                    &nbsp;&nbsp;&nbsp;&nbsp;2017-05&nbsp;–&nbsp;2021-07&nbsp;&nbsp;Alibaba Cloud<br>
                                    &nbsp;&nbsp;&nbsp;&nbsp;2017-07&nbsp;–&nbsp;Present&nbsp;&nbsp;Microsoft<br>
                                    Intro:&nbsp;&nbsp;:<br>
                                    &nbsp;&nbsp;&nbsp;&nbsp;If you have any questions, please contact: gcl272633743@163.com<br>
                                </div>
                            </td>
                        </tr>
                    </table>




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
