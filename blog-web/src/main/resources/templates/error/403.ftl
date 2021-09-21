<#include "include/macros.ftl">
<@header title="Forbidden :("></@header>
<div class="container custome-container">
    <div class="clearfix"></div>
    <div class="row blog-main">
        <div class="blog-body forbidden" style="overflow: hidden;">
            <div class="col-md-6 left">
                <div class="error-container text-center">
                    <p class="text-center"><i class="fa fa-info-circle"></i><strong>The system has detected that your access status is abnormal and your access has been temporarily restricted</strong></p>
                    <p class="forbidden-img"><img class="img-responsive center-block" src="${config.staticWebSite}/img/forbidden.jpg" alt="restriction"></p>
                    <p class="text-center"><i class="fa fa-spinner fa-pulse fa-fw fa-2x"></i>Try <em><span class="limit-expiration-time"></span></em> Later</p>
                </div>
            </div>
            <div class="col-md-6 right">
                <blockquote class="pull-left">
                    <div class="bottom-line title"><i class="fa fa-question-circle-o"></i><strong>Why is access restricted</strong></div>
                    <ol>
                        <li>1.Refresh pages quickly, frequently in short time</li>
                        <li>2.Spider traffic</li>
                    </ol>
                    <div class="clear"></div>
                    <div class="bottom-line title" style="margin-top: 2.5rem;"><i class="fa fa-question-circle-o"></i><strong>How to remove restriction？</strong></div>
                    <ol>
                        <li>1.Wait and drink a cup of coffee <i class="fa fa-coffee fa-2x"></i></li>
                        <li>2. Do not refresh pages quickly in short time</li>
                    </ol>
                    <div class="clear"></div>
                </blockquote>
            </div>
        </div>
    </div>
</div>
<@footer>
    <script type="text/javascript">
        var expire = parseInt('${expire?c}' || 30);
        $(".limit-expiration-time").text(expire);
        var timer = setInterval(function () {
            if(expire <= 1){
                window.clearInterval(timer);
                window.location.reload();
            } else {
                $(".forbidden-img").toggleClass("shake");
                $(".limit-expiration-time").text(expire = expire - 1);
            }
        }, 1000);
    </script>
</@footer>
