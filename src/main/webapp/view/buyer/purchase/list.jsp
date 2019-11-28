<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>采购单管理页面</title>
		<%@ include file="../../../common/jsp/header.jsp"%>
	</head>
	<body>
		<div class="wrapper wrapper-content animated fadeInRight">
			<div class="ibox float-e-margins">
				<form id="searchForm" action="">
				<div class="col-sm-12">
					<!-- ------------按钮组 start------------ -->
	                <div class="alert alert-success" role="alert">采购单管理</div>
					<div class="form-group">
						<label class="col-md-1">全部：</label>
						<div class="col-sm-1">
							<input class="form-control" name="" type="text" id="" />
						</div>
					</div>
					<div class="form-group">
						<label class="col-md-1">待确认：</label>
						<div class="col-sm-1">
							<input class="form-control" name="" type="text" id="" />
						</div>
					</div>
					<div class="form-group">
						<label class="col-md-1">待出库：</label>
						<div class="col-sm-1">
							<input class="form-control" name="" type="text" id="" />
						</div>
					</div>
					<div class="form-group">
						<label class="col-md-1">已完成：</label>
						<div class="col-sm-1">
							<input class="form-control" name="" type="text" id="" />
						</div>
					</div>
					<div class="form-group">
						<label class="col-md-1">已关闭：</label>
						<div class="col-sm-1">
							<input class="form-control" name="" type="text" id="" />
						</div>
					</div>
					<div class="form-group">
						<div class="btn-group hidden-xs col-md-3" role="group" >
							<button type="button" class="btn btn-primary" data-toggle="modal" id="create" name="buyer/supplier/create.jsp">
								<i class="glyphicon glyphicon-plus" aria-hidden="true"></i>进货
							</button>
							<button type="button" class="btn btn-danger" data-toggle="modal" id="delete" name="purchase/delete.do">
								<i class="glyphicon glyphicon-pencil" aria-hidden="true"></i>批量删除
							</button>
						</div>
					</div>
	                 <!-- ------------按钮组 end------------ -->
						<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
						<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
		                 <table class="table table-striped table-bordered table-hover table-condensed">
					        <thead>
					            <tr>
					                <th class="col-md-1" style="text-align: center"><input type="checkbox" id="checkall"/></th>
									<th class="col-md-1" style="text-align: center">序号</th>
					                <th class="col-md-2" style="text-align: center">入库状态</th>
					                <th class="col-md-1" style="text-align: center">审核状态</th>
					                <th class="col-md-2" style="text-align: center">采购单编号</th>
					                <th class="col-md-1" style="text-align: center">供应商</th>
					                <th class="col-md-1" style="text-align: center">采购金额</th>
					                <th class="col-md-1" style="text-align: center">创建日期</th>
									<th class="col-md-2" style="text-align: center">操作</th>
					            </tr>
					        </thead>
					        <tbody>
					        	<c:set var="vs"></c:set>
					        	<c:forEach var="e" items="${page.list }" varStatus="v">
						            <tr>
						                <td ><input type="checkbox" name="ids" value="${e.purchaseId }"/></td>
										<td >${v.count+(page.pageNo-1)*page.pageSize}</td>
						                <td>${e.purchaseIn }</td>
						                <td>${e.purchaseAudit }</td>
						                <td>${e.purchaseSerial }</td>
						                <td>${e.purchaseSupplier }</td>
						                <td>${e.purchaseMoney }</td>
						                <td>${e.purchaseCredate}</td>


										<td class="col-md-2">

											<div class="col-md-3"><i class="glyphicon glyphicon-pencil"
																	 onClick="single_view('${e.purchaseId}')" title="编辑"></i></div>

											<div class="col-md-3"><i class="glyphicon glyphicon-arrow-up"
																	 onclick="single_det('${e.purchaseId}')" title="详情"></i></div>

											<div class="col-md-3"><i class="glyphicon glyphicon-trash"
																	 onClick="single_del('${e.purchaseId}')"  title="删除"></i></div>

                                            <div class="col-md-3"><i class="glyphicon glyphicon-trash"
																	 onClick="single_dea('${e.purchaseId}')"  title="审核"></i></div>
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
				url = root + 'purchase/deleteA/'+id+'.do';
				document.location.href = url;
			};
			function single_view(id) {
				url = root + 'purchase/view/'+id+'.do';
				document.location.href = url;
			};
			function single_det(id) {
				url = root + 'wares/queryWares/'+id+'.do';
				document.location.href = url;

                document.location.href=root+'wares/queryWares.do';
            };

        </script>
    </body>
</html>