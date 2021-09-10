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
                            <button id="btn_add" type="button" class="btn btn-info" title="新增友链">
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
        /**
         * 操作按钮
         * @param code
         * @param row
         * @param index
         * @returns {string}
         */
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
                modalName: "友情链接",
                url: "/link/list",
                getInfoUrl: "/link/get/{id}",
                updateUrl: "/link/edit",
                removeUrl: "/link/remove",
                createUrl: "/link/add",
                columns: [
                    {
                        checkbox: true
                    }, {
                        field: 'url',
                        title: 'URL',
                        width: '120px',
                        formatter: function (code) {
                            return '<a href="'+code+'" target="_blank" rel="nofollow ">' + code + '</a>';
                        }
                    }, {
                        field: 'name',
                        title: '名称',
                        width: '100px',
                        formatter: function (code) {
                            return code ? code : '-';
                        }
                    }, {
                        field: 'description',
                        title: '描述',
                        width: '200px',
                        formatter: function (code) {
                            return code ? code : '-';
                        }
                    }, {
                        field: 'favicon',
                        title: 'Logo',
                        width: '40px',
                        formatter: function (code) {
                            return !code ? '' : '<img src="'+code+'" width="20">';
                        }
                    }, {
                        field: 'status',
                        title: '状态',
                        width: '40px',
                        formatter: function (code, row, index) {
                            return code ? "启用" : "<strong style='color: red;' title='" + row.remark + "'>禁用</strong>";
                        }
                    }, {
                        field: 'homePageDisplay',
                        title: '首页',
                        width: '40px',
                        align: 'center',
                        formatter: function (code) {
                            return code ? '<span class="label label-success">是</span>' : '<span class="label label-default">否</span>';
                        }
                    }, {
                        field: 'source',
                        title: '来源 <i class="fa fa-question-circle-o" title="\'ADMIN\'表示管理员添加，\'AUTOMATIC\'表示用户自动添加"></i>',
                        width: '60px',
                        align: 'center',
                        formatter: function (code) {
                            return code ? code : '-';
                        }
                    }, {
                        field: 'email',
                        title: '联系方式',
                        width: '60px',
                        align: 'center',
                        formatter: function (code, row, index) {
                            var html = '';
                            if(row.email){
                                html += '<a href="mailto:' + row.email + '" target="_blank" rel="external nofollow"><i class="fa fa fa-envelope fa-fw"></i></a>';
                            }
                            if(row.qq){
                                html += '<a href="javascript:void(0);" target="_blank" onclick="window.open(\'tencent://message/?uin=' + row.qq + '&amp;Site=www.zhyd.me&amp;Menu=yes\')" rel="external nofollow"><i class="fa fa fa-qq fa-fw"></i></a>';
                            }
                            return html;
                        }
                    }, {
                        field: 'updateTime',
                        title: '更新时间',
                        width: '120px',
                        align: 'center',
                        formatter: function (code) {
                            return new Date(code).format("yyyy-MM-dd hh:mm:ss")
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
                    //这里有5个取值代表5中颜色['active', 'success', 'info', 'warning', 'danger'];
                    var strclass = "";
                    if (row.status) {
                        // strclass = 'success';//还有一个active
                    } else {
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