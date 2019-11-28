<%@ page language="java" contentType="text/html" pageEncoding="UTF-8" %>

<%
    String root = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
    <title>商品库</title>

    <%@ include file="../../../common/jsp/header.jsp" %>
    <meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
<%--<img src="../../../static/img/profile_small.jpg" alt="Responsive image" width="350" height="200">--%>

<div class="wrapper wrapper-content animated fadeInRight">

    <div class="ibox float-e-margins">
        <form id="searchForm" action="">
            <div class="col-sm-12">
                <!-- ------------按钮组 start------------ -->
                <div class="alert alert-success" role="alert">商品信息</div>
                <div class="col-md-2">
                    <button type="button" class="btn btn-info" data-toggle="modal" id="delete"
                            name="goods/deleteAll.do">
                        <i class="glyphicon glyphicon-trash" aria-hidden="true"></i>批量操作
                    </button>
                </div>
                <div class="col-md-2">
                    <input class="form-control" name="goodsName" value="${entity.goodsName }" type="text"
                           placeholder="请输入商品名称"/>
                </div>
                <div class="col-md-2">
                    <input class="form-control" name="goodsNumber" value="${entity.goodsNumber }" type="text"
                           placeholder="请输入商品编号"/>
                </div>
                <div class="col-md-2">
                    <select class="form-control" name="goodsSell" value="${entity.goodsSell }">
                        <option>所有分类</option>
                        <option>2</option>
                        <option>3</option>
                        <option>4</option>
                        <option>5</option>
                    </select>
                </div>
                <div class="col-md-2">
                    <select class="form-control" name="goodsIntro" value="${entity.goodsIntro }">
                        <option>所有标签</option>
                        <option>2</option>
                        <option>3</option>
                        <option>4</option>
                        <option>5</option>
                    </select>
                </div>
                <div class="col-md-1">
                    <button type="button" class="btn btn-success" data-toggle="modal" id="a" name="test/view.do">
                        <i class="glyphicon glyphicon-search" aria-hidden="true"></i>查询
                    </button>
                </div>
                <div class="col-md-1">
                    <button type="button" class="btn btn-primary" data-toggle="modal" id="create"
                            name="goodscenter/room/create.jsp">
                        <i class="glyphicon glyphicon-plus" aria-hidden="true"></i>新增
                    </button>
                </div>

                <!-- ------------按钮组 end------------ -->
                <input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
                <input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>

                <table class="table table-striped table-bordered table-hover table-condensed">
                    <thead>
                    <tr>
                        <th class="col-md-1" style="text-align: center"><input type="checkbox" id="checkall"/></th>
                        <th class="col-md-4" style="text-align: center">商品信息</th>
                        <th class="col-md-2" style="text-align: center">当前售价</th>
                        <th class="col-md-1" style="text-align: center">库存</th>
                        <th class="col-md-1" style="text-align: center">30天销量</th>
                        <th class="col-md-1" style="text-align: center">状态</th>
                        <th class="col-md-2" style="text-align: center">操作</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:set var="vs"></c:set>
                    <c:forEach var="e" items="${page.list }" varStatus="v">
                        <tr>
                            <td class="col-md-1" style="text-align: center"><input type="checkbox" name="ids" value="${e.goodsId }"/></td>
                            <td class="col-md-4">
                                <div class="col-md-12" style="margin-top: 2px;"><span class="col-md-6" style="font-size: 15px">商品编码:034234234</span><span class="col-md-6" style="font-size: 15px">所属分类：蟹类-梭子蟹</span></div>
                                <div class="col-md-12" style="margin-top: 8px;">
                                    <div class="col-md-5"><img src="<%=root%>/static/img/profile_small.jpg" alt="..." class="img-rounded" height="120" width="120"></div>
                                    <div class="col-md-7">
                                        <div class="col-md-12">冷冻梭子蟹 500g</div>
                                        <div class="col-md-12" style="margin-top: 80px"><span class="label label-default" >热销</span><span class="label label-success">新品</span></div>
                                    </div>
                                </div>

                            </td>
                            <td class="col-md-2" style="font-size: 20px;text-align: center">${e.goodsCost }</td>
                            <td class="col-md-1" style="font-size: 20px;text-align: center">${e.goodsSell }</td>
                            <td class="col-md-1" style="font-size: 20px;text-align: center">${e.goodsSell }</td>
                            <td class="col-md-1" style="font-size: 20px;text-align: center">${e.goodsSell }</td>

                            <td class="col-md-2">

                                <div class="col-md-3"><i class="glyphicon glyphicon-pencil" title="编辑"></i></div>

                                <div class="col-md-3"><i class="glyphicon glyphicon-arrow-up" title="上架"></i></div>

                                <div class="col-md-3"><i class="glyphicon glyphicon-arrow-down" title="下架"></i></div>

                                <div class="col-md-3"><i class="glyphicon glyphicon-trash"
                                                         onClick="single_del('${e.goodsId}')" title="删除"></i></div>
                            </td>

                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
                <div class="page">${page}</div>
            </div>
        </form>
    </div>
</div>
<script>
    function single_del(id) {
        url = root + 'goods/delete/' + id + '.do';
        document.location.href = url;
    }
</script>
</body>
</html>