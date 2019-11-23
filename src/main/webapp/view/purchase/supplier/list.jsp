<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>数据字典展示列表页面</title>
		<%@ include file="../../../common/jsp/header.jsp"%>
	</head>
	<body>
		<div class="wrapper wrapper-content animated fadeInRight">
			<div class="ibox float-e-margins">
				<form id="searchForm" action="">
				<div class="col-sm-12">
					<!-- ------------按钮组 start------------ -->
	                <div class="alert alert-success" role="alert">数据字典详细信息</div>
	                <div class="col-sm-10">
	                </div>
						<div class="btn-group hidden-xs" role="group">
							<button type="button" class="btn btn-primary" data-toggle="modal" id="create" name="dictionary/create.jsp">
								<i class="glyphicon glyphicon-plus" aria-hidden="true"></i>添加
							</button>
						</div>
	                 <!-- ------------按钮组 end------------ -->
						<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
						<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
		                 <table class="table table-striped table-bordered table-hover table-condensed">
					        <thead>
					            <tr>
					                <th><input type="checkbox" id="checkall"/></th>
									<th>序号</th>
					                <th>供应商名称</th>
					                <th>描述</th>
					                <th>地址</th>
					                <th>联系人</th>
					                <th>联系电话</th>
									<th>操作</th>
					            </tr>
					        </thead>
					        <tbody>
					        	<c:set var="vs"></c:set>
					        	<c:forEach var="e" items="${page.list }" varStatus="v">
						            <tr>
						                <td><input type="checkbox" name="ids" value="${e.supplierId }"/></td>
										<td>${v.count+(page.pageNo-1)*page.pageSize}</td>
						                <td>${e.supplierName }</td>
						                <td>${e.supplierDescribe }</td>
						                <td>${e.supplierAddress }</td>
						                <td>${e.supplierLinkman1 }</td>
						                <td>${e.supplierTel1 }</td>

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