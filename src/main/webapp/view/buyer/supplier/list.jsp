<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>供应商管理页面</title>
		<%@ include file="../../../common/jsp/header.jsp"%>
	</head>
	<body>
		<div class="wrapper wrapper-content animated fadeInRight">
			<div class="ibox float-e-margins">
				<form id="searchForm" action="">
				<div class="col-sm-12">
					<!-- ------------按钮组 start------------ -->
	                <div class="alert alert-success" role="alert">供应商管理</div>
<%--	                <div class="col-sm-10">--%>
<%--	                </div>--%>
						<div class="btn-group hidden-xs col-md-6" role="group">
							<button type="button" class="btn btn-primary" data-toggle="modal" id="create" name="buyer/supplier/create.jsp">
								<i class="glyphicon glyphicon-plus" aria-hidden="true"></i>新增
							</button>
							<button type="button" class="btn btn-danger" data-toggle="modal" id="delete" name="supplier/delete.do">
								<i class="glyphicon glyphicon-pencil" aria-hidden="true"></i>批量删除
							</button>
						</div>
					<div class="col-md-4">
							<input class="form-control"  name="supplierName" id="search" value="${supplierEntity.supplierName}" type="text" placeholder="查询内容 回车搜索"/>
					</div>

	                 <!-- ------------按钮组 end------------ -->
						<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
						<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
		                 <table class="table table-striped table-bordered table-hover table-condensed">
					        <thead>
					            <tr>
					                <th class="col-md-1" style="text-align: center"><input type="checkbox" id="checkall"/></th>
									<th class="col-md-1" style="text-align: center">序号</th>
					                <th class="col-md-2" style="text-align: center">供应商名称</th>
					                <th class="col-md-2" style="text-align: center">描述</th>
					                <th class="col-md-2" style="text-align: center">地址</th>
					                <th class="col-md-1" style="text-align: center">联系人</th>
					                <th class="col-md-1" style="text-align: center">联系电话</th>
									<th class="col-md-2" style="text-align: center">操作</th>
					            </tr>
					        </thead>
					        <tbody>
					        	<c:set var="vs"></c:set>
					        	<c:forEach var="e" items="${page.list }" varStatus="v">
						            <tr>
						                <td ><input type="checkbox" name="ids" value="${e.supplierId }"/></td>
										<td>${v.count+(page.pageNo-1)*page.pageSize}</td>
						                <td>${e.supplierName }</td>
						                <td>${e.supplierDescribe }</td>
						                <td>${e.supplierAddress }</td>
						                <td>${e.supplierLinkman1 }</td>
						                <td>${e.supplierTel1 }</td>

										<td class="col-md-2">

											<div class="col-md-4"><i class="glyphicon glyphicon-pencil"
																	 onClick="single_view('${e.supplierId}')" title="编辑"></i></div>

											<div class="col-md-4"><i class="glyphicon glyphicon-arrow-up" 
																	 onclick="single_det('${e.supplierId}')" title="详情"></i></div>

											<div class="col-md-4"><i class="glyphicon glyphicon-trash"
																	 onClick="single_del('${e.supplierId}')"  title="删除"></i></div>
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
				url = root + 'supplier/deleteA/'+id+'.do';
				document.location.href = url;
			};
			function single_view(id) {
				url = root + 'supplier/view/'+id+'.do';
				document.location.href = url;
			};
			function single_det(id) {
				url = root + 'wares/detils/'+id+'.do';
				document.location.href = url;

				// url1 = root + 'wares/queryWares.do'
				// document.location.href = url1;
            };
        </script>
    </body>
</html>