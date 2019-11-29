<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>供应商详情页面</title>
		<%@ include file="../../../common/jsp/header.jsp"%>
	</head>
	<body>
		<div class="wrapper wrapper-content animated fadeInRight">
			<div class="ibox float-e-margins">
				<form id="searchForm" action="">
				<div class="col-sm-12">
					<!-- ------------按钮组 start------------ -->
	                <div class="alert alert-success" role="alert">供应商管理</div>

						<input type="hidden" name="supplierId" value="${supplierEntity.supplierId}"/>
						<fieldset>
							<div class="form-group">
								<label class="col-sm-2 control-label" for="supplierName">名称：</label>
								<div class="col-sm-10">
									<input class="form-control" id="supplierName" name="supplierName" type="text" placeholder="填写用户名称" value="${supplierEntity.supplierName}" readonly/>
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label" for="supplierLinkman1">联系人1</label>
								<div class="col-sm-10">
									<input class="form-control" id="supplierLinkman1" name="supplierLinkman1" type="text" placeholder="姓名" value="${supplierEntity.supplierLinkman1}" readonly/>
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label" for="supplierTel1">联系电话1</label>
								<div class="col-sm-10">
									<input class="form-control" id="supplierTel1" name="supplierTel1" type="text" placeholder="联系电话" value="${supplierEntity.supplierTel1}" readonly/>
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label" for="supplierLinkman2">联系人2</label>
								<div class="col-sm-10">
									<input class="form-control" id="supplierLinkman2" name="supplierLinkman2" type="text" placeholder="姓名" value="${supplierEntity.supplierLinkman2}" readonly/>
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label" for="supplierTel2">联系电话2</label>
								<div class="col-sm-10">
									<input class="form-control" id="supplierTel2" name="supplierTel2" type="text" placeholder="联系电话" value="${supplierEntity.supplierTel2}" readonly/>
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label" for="supplierAddress">详细地址</label>
								<div class="col-sm-10">
									<input class="form-control" id="supplierAddress" name="supplierAddress" type="text" value="${supplierEntity.supplierAddress}" readonly/>
								</div>
							</div>
							<div class="form-group">
								<label class="col-sm-2 control-label" for="supplierRemark">备注</label>
								<div class="col-sm-10">
									<input class="form-control" id="supplierRemark" name="supplierRemark" type="text" value="${supplierEntity.supplierRemark}" readonly/>
								</div>
							</div>
						</fieldset>
				</div>
					</form>
						<!-- ------------按钮组 end------------ -->
						<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
						<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
				<h1>商品清单</h1>
						<table class="table table-striped table-bordered table-hover table-condensed">
						<thead>
						<tr>
							<th><input type="checkbox" id="checkall"/></th>
							<th>商品名称</th>
							<th>商品编号</th>
							<th>销量</th>
							<th>供货价</th>
							<th>销售价</th>
							<th>状态</th>
						</tr>
						</thead>
						<tbody>
						<c:set var="vs"></c:set>
						<c:forEach var="e" items="${page.list }" varStatus="v">
							<tr>
								<td><input type="checkbox" name="ids" value="${e.waresId }"/></td>
								<td>${e.goodsName }</td>
								<td>${e.goodsId }</td>
								<td>${e.waresCount }</td>
								<td>￥${e.waresPrice }</td>
								<td>￥${e.waresDiscount }</td>
								<td>${e.waresTotal == 0?"已上架":"已下架"} </td>
							</tr>
						</c:forEach>
						</tbody>
					</table>
				    <div class="page">${page}</div>
			     </div>
			     </form>
			</div>
		</div>
		<div>
		<div class="col-sm-4"><input type="button" value="返回列表" class="btn btn-success" onclick="javascript:history.back();"/></div>
		</div>
	</body>
</html>