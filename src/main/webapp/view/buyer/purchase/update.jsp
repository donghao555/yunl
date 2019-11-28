<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>测试添加页面</title>
	<%@ include file="../../../common/jsp/header.jsp"%>
	<link href="${path }/static/css/plugins/file-input/fileinput.min.css" rel="stylesheet">
</head>
<body>
<div class="wrapper wrapper-content animated fadeInRight">
	<div>
		<div class="col-sm-4"><input type="button" value="返回上一页" class="btn btn-success" onclick="javascript:history.back();"/></div>
	</div>
	<div class="ibox float-e-margins">
		<form action="${path}/supplier/update.do" method="post" class="form-horizontal" role="form">
			<input type="hidden" name="supplierId" value="${supplierEntity.supplierId}"/>
			<fieldset>
				<legend>编辑供应商信息</legend>
				<div class="form-group">
					<label class="col-sm-2 control-label" for="supplierName">名称：</label>
					<div class="col-sm-10">
						<input class="form-control" id="supplierName" name="supplierName" type="text" placeholder="填写用户名称" value="${supplierEntity.supplierName}"/>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label" for="supplierdescribe">描述：</label>
					<div class="col-sm-10">
						<input class="form-control" id="supplierdescribe" name="supplierDescribe" type="text" placeholder="填写描述" value="${supplierEntity.supplierDescribe}"/>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label" for="supplierLinkman1">联系人1</label>
					<div class="col-sm-10">
						<input class="form-control" id="supplierLinkman1" name="supplierLinkman1" type="text" placeholder="姓名" value="${supplierEntity.supplierLinkman1}"/>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label" for="supplierTel1">联系电话1</label>
					<div class="col-sm-10">
						<input class="form-control" id="supplierTel1" name="supplierTel1" type="text" placeholder="联系电话" value="${supplierEntity.supplierTel1}"/>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label" for="supplierLinkman2">联系人2</label>
					<div class="col-sm-10">
						<input class="form-control" id="supplierLinkman2" name="supplierLinkman2" type="text" placeholder="姓名" value="${supplierEntity.supplierLinkman2}"/>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label" for="supplierTel2">联系电话2</label>
					<div class="col-sm-10">
						<input class="form-control" id="supplierTel2" name="supplierTel2" type="text" placeholder="联系电话" value="${supplierEntity.supplierTel2}"/>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label" for="supplierAddress">详细地址</label>
					<div class="col-sm-10">
						<input class="form-control" id="supplierAddress" name="supplierAddress" type="text" value="${supplierEntity.supplierAddress}"/>
					</div>
				</div>
				<div class="form-group">
					<label class="col-sm-2 control-label" for="supplierRemark">备注</label>
					<div class="col-sm-10">
						<input class="form-control" id="supplierRemark" name="supplierRemark" type="text" value="${supplierEntity.supplierRemark}"/>
					</div>
				</div>
			</fieldset>
			<fieldset>
				<div class="form-group">
					<label class="col-sm-2 control-label" for="supplierName"></label>
					<div class="col-sm-1">
						<input type="submit" value="提交" class="btn btn-primary"/>
					</div>
					<label class="col-sm-1 control-label" for="supplierName"></label>
					<div class="col-sm-4">
						<input type="reset" value="重置" class="btn btn-danger" id="resetForm"/>
					</div>
				</div>
			</fieldset>
		</form>
	</div>
</div>

</body>
<script type="text/javascript" src="${path }/static/js/plugins/file-input/fileinput.min.js"></script>
</html>