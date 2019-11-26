<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>文章展示列表页面</title>
		<%@ include file="../../../common/jsp/header.jsp"%>
	</head>
	<body>
		<div class="wrapper wrapper-content animated fadeInRight">
			<div class="ibox float-e-margins">
				<form id="searchForm" action="">
				<div class="col-sm-12">
					<!-- ------------按钮组 start------------ -->
	                <div class="alert alert-success" role="alert">运营中心 >文章管理</div>
	                <div class="col-sm-8">
	                	<div class="btn-group hidden-xs" role="group">
                			<button type="button" class="btn btn-primary" data-toggle="modal" id="create" name="run/title/create.jsp">
	                            <i class="glyphicon glyphicon-plus" aria-hidden="true"></i>新增
	                        </button>
	                        <button type="button" class="btn btn-success" data-toggle="modal" id="update" name="title/view.do">
	                            <i class="glyphicon glyphicon-pencil" aria-hidden="true"></i>修改
	                        </button>
	                        <button type="button" class="btn btn-danger" data-toggle="modal" id="delete" name="title/delete.do">
	                            <i class="glyphicon glyphicon-trash" aria-hidden="true"></i>删除
	                        </button>
		                 </div>
	                </div>
<%--	                <div class="col-sm-4">--%>
<%--	                	<input class="form-control" id="search" name="dataName" value="${entity.dataName }" type="text" placeholder="查询内容 回车搜索"/>--%>
<%--	                </div>--%>
	                 <!-- ------------按钮组 end------------ -->
						<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
						<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
		                 <table class="table table-striped table-bordered table-hover table-condensed">
					        <thead>
					            <tr>
					                <th><input type="checkbox" id="checkall"/></th>
					                <th>序号</th>
					                <th>标题</th>
					                <th>类型</th>
					                <th>阅读量</th>
					                <th>在线状态</th>
					                <th>是否推荐</th>
					                <th>操作</th>

					            </tr>
					        </thead>
					        <tbody>
					        	<c:set var="vs"></c:set>
					        	<c:forEach var="e" items="${page.list }" varStatus="v">
						            <tr>
						                <td><input type="checkbox" name="ids" value="${e.articleId }"/></td>
										<td>${v.count+(page.pageNo-1)*page.pageSize }</td>
						                <td>${e.articleTitle }</td>
						                <td>${e.articleType }</td>
						                <td>${e.articleReading}</td>
						                <td>${e.articleState == 0?"已上架":"待上架" }</td>
						                <td>${e.articleRecommend == 1?"不推荐":"推荐"}</td>
										<td><el-button type="text" size="small">查看</el-button>
											<el-button type="text" size="small" @click="todelete(scope.row.parcelNumber)">${e.articleState == 0?"下架":"上架"}</el-button>
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
	</body>
</html>