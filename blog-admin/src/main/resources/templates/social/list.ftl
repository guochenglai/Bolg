<#include "/include/macros.ftl">
<@header></@header>
<div class="clearfix"></div>
<div class="row">
    <div class="col-md-12 col-sm-12 col-xs-12">
        <@breadcrumb>
            <ol class="breadcrumb">
                <li><a href="/">首页</a></li>
            </ol>
        </@breadcrumb>
        <div class="x_panel">
            <div class="x_content">
                <div class="<#--table-responsive-->">
                    <div class="btn-group hidden-xs" id="toolbar">
                        <@shiro.hasPermission name="link:add">
                            <button id="btn_add" type="button" class="btn btn-info" title="新增配置">
                                <i class="fa fa-plus fa-fw"></i>
                            </button>
                        </@shiro.hasPermission>
                        <@shiro.hasPermission name="link:batchDelete">
                            <button id="btn_delete_ids" type="button" class="btn btn-danger" title="批量删除">
                                <i class="fa fa-trash-o fa-fw"></i>
                            </button>
                        </@shiro.hasPermission>
                    </div>
                    <table id="tablelist">
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
<@footer>
    <script>

        $("#platform").change(function (){
            var $this = $(this);
            var val = $this.val();
            var webUrl = '${config.siteUrl}';
            $("#redirectUri").val(webUrl + "/oauth/social/" + val);
            $("#logo").val("https://cdn.jsdelivr.net/gh/justauth/justauth-oauth-logo@1.10/" + val.toLowerCase() + ".png");
        })
        function operateFormatter(code, row, index) {
            var trId = row.id;
            var operateBtn = [
                '<@shiro.hasPermission name="link:edit"><a class="btn btn-sm btn-success btn-update" data-id="' + trId + '"title="编辑"><i class="fa fa-edit fa-fw"></i></a></@shiro.hasPermission>',
                '<@shiro.hasPermission name="link:delete"><a class="btn btn-sm btn-danger btn-remove" data-id="' + trId + '"title="删除"><i class="fa fa-trash-o fa-fw"></i></a></@shiro.hasPermission>'
            ];
            return operateBtn.join('');
        }

        $(function () {
            var options = {
                modalName: "社会化登录配置",
                url: "/social/config/list",
                getInfoUrl: "/social/config/get/{id}",
                updateUrl: "/social/config/edit",
                removeUrl: "/social/config/remove",
                createUrl: "/social/config/add",
                columns: [
                    {
                        checkbox: true
                    }, {
                        field: 'platformName',
                        title: '平台名',
                        width: '150px',
                        formatter: function (code) {
                            return code ? code : '-';
                        }
                    }, {
                        field: 'platform',
                        title: '平台标识',
                        width: '100px',
                        formatter: function (code) {
                            return code ? code : '-';
                        }
                    }, {
                        field: 'scope',
                        title: '授权范围',
                        width: '250px',
                        formatter: function (code) {
                            return code ? code : '-';
                        }
                    }, {
                        field: 'clientId',
                        title: 'clientId',
                        width: '100px',
                        formatter: function (code) {
                            return code ? code : '-';
                        }
                    }, {
                        field: 'logo',
                        title: 'logo',
                        width: '40px',
                        formatter: function (code) {
                            return !code ? '' : '<img src="'+code+'" width="20">';
                        }
                    }, {
                        field: 'available',
                        title: '状态',
                        width: '40px',
                        formatter: function (code, row, index) {
                            return code ? "启用" : "<strong style='color: red;'>禁用</strong>";
                        }
                    }, {
                        field: 'operate',
                        title: '操作',
                        align: "center",
                        width: '80px',
                        formatter: operateFormatter //自定义方法，添加操作按钮
                    }
                ],
                rowStyle: function (row, index) {
                    var strclass = "";
                    if (!row.available) {
                        strclass = 'danger';
                    }
                    return { 'classes': strclass }
                }
            };
            // 初始化table组件
            var table = new Table(options);
            table.init();
        });
    </script>
</@footer>
