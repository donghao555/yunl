<%@ page language="java" contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>新增商品</title>
    <%@ include file="../../../common/jsp/header.jsp" %>
    <link href="${path }/static/css/plugins/file-input/fileinput.min.css" rel="stylesheet">
    <style>
        .panel {
            height: 150px;
            width: 150px;
            margin-bottom: 0;
            margin-top: 10px;
        }

        .icon-add-50 {
            position: relative;
            box-sizing: border-box;
            width: 20px;
            height: 20px;
            border: 1px dashed #9a9ba3;
            border-radius: 50%;
        }

        .icon-add-50:before {
            content: "";
            position: absolute;
            width: 30px;
            height: 2px;
            left: 50%;
            top: 50%;
            margin-top: -1px;
            margin-left: -15px;
            background-color: #aaabb2;
        }

        .icon-add-50:after {
            content: "";
            position: absolute;
            width: 2px;
            height: 30px;
            left: 50%;
            top: 50%;
            margin-top: -15px;
            margin-left: -1px;
            background-color: #aaabb2;
        }

        .updatepanel {
            border: 1px solid #ccc;
            text-align: center;
        }

        .updatepanel .addbox {
            vertical-align: middle;
            height: 150px;
            line-height: 150px;
        }

    </style>

</head>
<body>
<div class="wrapper wrapper-content animated fadeInRight">
    <div>
        <div class="col-sm-4"><input type="button" value="返回上一页" class="btn btn-success"
                                     onclick="javascript:history.back();"/></div>
    </div>
    <div class="ibox float-e-margins">
        <form action="${path }goods/insert.do" method="post" class="form-horizontal" role="form">
            <fieldset>
                <legend>基本信息</legend>
                <div class="form-group">
                    <label class="col-sm-2 control-label" for="testName">商品名称</label>
                    <div class="col-sm-4">
                        <input class="form-control" type="text" name="testName" id="testName" placeholder="商品名称"/>
                    </div>
                    <label class="col-sm-2 control-label" for="ds_name">商品分类：</label>
                    <div class="col-sm-2">
                        <zhg:select codeTp="sex" name="testSex" cls="form-control" def="true"></zhg:select>
                    </div>
                    <div class="col-sm-2">
                        <zhg:select codeTp="sex" name="testSex" cls="form-control" def="true"></zhg:select>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-2 control-label" for="supplier">商品编号:</label>
                    <div class="col-sm-4">
                        <input class="form-control" type="text" name="testName" id="cun" placeholder="存储条件"/>
                    </div>
                    <label class="col-sm-2 control-label" for="cun">参考价:</label>
                    <div class="col-sm-4">
                        <input class="form-control" type="text" name="testName" id="cun" placeholder="存储条件"/>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-2 control-label" for="supplier">销售价:</label>
                    <div class="col-sm-4">
                        <input class="form-control" type="text" name="testName" id="cun" placeholder="存储条件"/>
                    </div>
                    <label class="col-sm-2 control-label" for="cun">成本价:</label>
                    <div class="col-sm-4">
                        <input class="form-control" type="text" name="testName" id="cun" placeholder="存储条件"/>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-2 control-label" for="supplier">商品简介:</label>
                    <div class="col-sm-4">
                        <textarea class="form-control" type="text" name="testName" id="cun" style="height: 150px"
                                  placeholder="商品简介"/></textarea>
                    </div>
                    <div class="col-sm-6">
                        <label class="col-sm-4 control-label" for="cun">安全库存:</label>
                        <div class="col-sm-8">
                            <input class="form-control" type="text" name="testName" id="cun" placeholder="安全库存"/>
                        </div>
                        <div style="margin-top: 100px">
                            <label class="col-sm-4 control-label" for="cun">退换货:</label>
                            <div class="col-sm-8">
                                <label class="col-sm-2 control-label" for="cun">支持:</label>
                                <div class="col-sm-1">
                                    <input type="radio" name="tui"/>
                                </div>
                                <label class="col-sm-3 control-label" for="cun">不支持:</label>
                                <div class="col-sm-3">
                                    <input type="radio" name="tui"/>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-2 control-label" for="supplier">搜索关键词:</label>
                    <div class="col-sm-6">
                       <textarea class="form-control" type="text" name="testName" id="cun"
                                 placeholder="美味，海鲜，最新，南通，蒸煎炒炸，礼包" style="height: 200px"/></textarea>
                    </div>

                </div>

            </fieldset>

            <fieldset>

                <legend>商品属性</legend>
                <div class="form-group">
                    <label class="col-sm-2 control-label" for="supplier">供应商:</label>
                    <div class="col-sm-4">
                        <zhg:select codeTp="sex" name="testSex" cls="form-control" def="true"
                                    id="supplier"></zhg:select>
                    </div>
                    <label class="col-sm-2 control-label" for="cun">存储条件:</label>
                    <div class="col-sm-4">
                        <input class="form-control" type="text" name="testName" id="cun" placeholder="存储条件"/>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-2 control-label" for="b">商品品牌:</label>
                    <div class="col-sm-4">
                        <input class="form-control" type="text" name="testName" id="b" placeholder="商品品牌"/>
                    </div>
                    <label class="col-sm-2 control-label" for="a">保质期:</label>
                    <div class="col-sm-4">
                        <input class="form-control" type="text" name="testName" id="a" placeholder="保质期"/>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-2 control-label" for="c">产地:</label>
                    <div class="col-sm-4">
                        <input class="form-control" type="text" name="testName" id="c" placeholder="产地"/>
                    </div>
                    <label class="col-sm-2 control-label" for="d">包装:</label>
                    <div class="col-sm-4">
                        <zhg:select codeTp="sex" name="testSex" cls="form-control" def="true"
                                    id="supplier"></zhg:select>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-2 control-label" for="e">水体:</label>
                    <div class="col-sm-4">
                        <zhg:select codeTp="sex" name="testSex" cls="form-control" def="true"
                                    id="supplier"></zhg:select>
                    </div>
                    <label class="col-sm-2 control-label" for="f">单位:</label>
                    <div class="col-sm-4">
                        <zhg:select codeTp="sex" name="testSex" cls="form-control" def="true"
                                    id="supplier"></zhg:select>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-sm-2 control-label" for="g">净含量:</label>
                    <div class="col-sm-4">
                        <input class="form-control" type="text" name="testName" id="g" placeholder="净含量"/>
                    </div>

                </div>

            </fieldset>
        </form>
        <fieldset>
            <legend>商品图片</legend>
            <div style="border: 0.1px solid;height: 150px;width: 150px; text-align: center;font-size: 50px; padding-top: 40px">
                <div style="z-index:99;border: 0.1px solid;">+

                    <div style="z-index: 999;">
                        <form id="btn_up" action="<%=path%>photo/upload.do" method="post" enctype="multipart/form-data">
                            <input type="file" name="photo" onchange="uploadPic()" style="opacity:1; height: 20px;width: 60px;">

                        </form>
                    </div>
                </div>


            </div>

        </fieldset>
        <fieldset>
            <legend>商品详情</legend>

        </fieldset>
        <fieldset>
            <legend>商品推荐</legend>

        </fieldset>
        <fieldset>
            <legend>关联文章</legend>

        </fieldset>
        <fieldset>

            <div class="form-group">
                <label class="col-sm-2 control-label" for="ds_host"></label>
                <div class="col-sm-4">
                    <input type="submit" value="保存" class="btn btn-primary"/>
                </div>
                <label class="col-sm-2 control-label" for="ds_host"></label>
                <div class="col-sm-4">
                    <input type="reset" value="取消" class="btn btn-danger" id="resetForm"/>
                </div>
            </div>
        </fieldset>


    </div>
</div>
</body>
<script type="text/javascript" src="${path }/static/js/plugins/file-input/fileinput.min.js"></script>
<script src="${path }/static/js/jquery-form.js" type="text/javascript"></script>
<script type="application/javascript">

    function uploadPic() {

        // 上传设置
        var options = {
            // 规定把请求发送到那个URL
            url: "<%=path%>photo/upload.do",
            // 请求方式
            type: "post",
            // 请求成功时执行的回调函数
            success: function (data) {
                // 图片显示地址
                alert("成功" + data)
            },
            error: function (msg) {
                alert("失败" + msg)
            }
        };

        $("#btn_up").ajaxSubmit(options);
    }

    function nextPic() {

    }

</script>

</html>