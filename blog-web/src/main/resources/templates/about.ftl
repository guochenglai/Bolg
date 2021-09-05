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
                    <table border="1">
                        <tr>
                            <td>
                                <div class="pic" style="float:left;">
                                    <img src="${config.staticWebSite}/img/personal/gcl.png" alt="That's Me" class="img-responsive" style="width: 100%;">
                                </div>
                            </td>
                            <td>
                                <div class="info" style="float:left;margin-left:10px;">
                                    姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名&nbsp;&nbsp;:&nbsp;&nbsp;郭承来<br>
                                    工作经历&nbsp;&nbsp;:<br>
                                    &nbsp;&nbsp;&nbsp;&nbsp;2014-05&nbsp;–&nbsp;2017-05&nbsp;&nbsp;去哪儿网<br>
                                    &nbsp;&nbsp;&nbsp;&nbsp;2017-05&nbsp;–&nbsp;2021-07&nbsp;&nbsp;阿里云<br>
                                    &nbsp;&nbsp;&nbsp;&nbsp;2017-07&nbsp;–&nbsp;Present&nbsp;&nbsp;Microsoft<br>
                                    简&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;介&nbsp;&nbsp;:<br>
                                    &nbsp;&nbsp;&nbsp;&nbsp;本人主要研究方向是围绕以Java语言为核心的并发编程，Spring，Mybatis，Mysql，Zookeeper，Spark等，同时对机器学习，Shell，Go语言等技术也有一些涉猎，欢迎业内大神多交流。<br>
                                    说&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;明&nbsp;&nbsp;:<br>
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
