<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>文章分组展示页面</title>
		<%@ include file="../../../common/jsp/header.jsp"%>
	</head>
	<body>
		<div class="wrapper wrapper-content animated fadeInRight">
			<div class="ibox float-e-margins">
				<form id="searchForm" action="">
				<div class="col-sm-12">
					<!-- ------------按钮组 start------------ -->
	                <div class="alert alert-success" role="alert">运营中心 >文章分组</div>
	                <div class="col-sm-8">
	                	<div class="btn-group hidden-xs" role="group">
                			<button type="button" class="btn btn-primary" data-toggle="modal" id="create" name="run/sort/create.jsp">
	                            <i class="glyphicon glyphicon-plus" aria-hidden="true"></i>新增
	                        </button>
	                        <button type="button" class="btn btn-success" data-toggle="modal" id="update" name="sort/view.do">
	                            <i class="glyphicon glyphicon-pencil" aria-hidden="true"></i>修改
	                        </button>
	                        <button type="button" class="btn btn-danger" data-toggle="modal" id="delete" name="sort/delete.do">
	                            <i class="glyphicon glyphicon-trash" aria-hidden="true"></i>删除
	                        </button>
		                 </div>
	                </div>
<%--	                <div class="col-sm-4">--%>
<%--	                	<input class="form-control" id="search" name="articleName" value="${e.articleName }" type="text" placeholder="查询内容 回车搜索"/>--%>
<%--	                </div>--%>
	                 <!-- ------------按钮组 end------------ -->
						<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
						<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
		                 <table class="table table-striped table-bordered table-hover table-condensed">
					        <thead>
					            <tr>
					                <th><input type="checkbox" id="checkall"/></th>
					                <th>序号</th>
					                <th>预览图</th>
					                <th>分组名称</th>
					                <th>描述</th>
					                <th>状态</th>
					                <th>操作</th>
					            </tr>
					        </thead>
					        <tbody>
					        	<c:set var="vs"></c:set>
					        	<c:forEach var="e" items="${page.list }" varStatus="v">
						            <tr>
						                <td><input type="checkbox" name="ids" value="${e.artgroupId }"/></td>
										<td>${v.count+(page.pageNo-1)*page.pageSize }</td>
						                <td>
											<img src="${path}/static/img/a5.jpg" height="60">
										</td>
						                <td>${e.articleName }</td>
						                <td>${e.articleRemarke}</td>
						                <td>${e.articleState == 0?"已上架":"已下架" }</td>
										<td>
											<i class="btn"
											   onClick="single_change('${e.artgroupId}')"  title="">${e.articleState == 0?"下架":"上架"}</i>
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

		<script src="${path}/static/js/jquery.min.js"></script>
	<script>

		function single_change(id) {
			url = root + 'sort/update/'+id+'.do';
			document.location.href = url;
		}
// 		function single_ch(id) {
// 			//这里需要异步的局部刷新功能特性  同一页面展现两种来自不同表的结果
// 			url = root + 'title/update/'+id+'.do';
// // document.location.href=root+'goodsCount/queryGoodsCount.do';
// 			document.location.href = url;
// 		}
	</script>

	</body>
</html>