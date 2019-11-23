<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>用户添加页面</title>
		<%@ include file="../../../common/jsp/header.jsp"%>
	</head>
	<body>
		<div class="wrapper wrapper-content animated fadeInRight">
			<div>
				<div class="col-sm-4"><input type="button" value="返回上一页" class="btn btn-success" onclick="javascript:history.back();"/></div>
			</div>
			<div class="ibox float-e-margins">
				<form action="${path }/supplier/create.do" method="post" enctype="multipart/form-data"
					class="form-horizontal" role="form">
                    <fieldset>
						<legend>用户基本信息 </legend>
                       	<div class="form-group">
                          	<label class="col-sm-2 control-label" for="supplierName">名称：</label>
                          	<div class="col-sm-10">
                            	<input class="form-control" id="supplierName" name="supplierName" type="text" placeholder="填写用户名称"/>
                          	</div>
                       	</div>
						<div class="form-group">
							<label class="col-sm-2 control-label" for="supplierLinkman1">联系人1</label>
							<div class="col-sm-10">
								<input class="form-control" id="supplierLinkman1" name="supplierLinkman1" type="text" placeholder="姓名"/>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label" for="supplierTel1">联系电话1</label>
							<div class="col-sm-10">
								<input class="form-control" id="supplierTel1" name="supplierTel1" type="text" placeholder="联系电话"/>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label" for="supplierLinkman2">联系人2</label>
							<div class="col-sm-10">
								<input class="form-control" id="supplierLinkman2" name="supplierLinkman2" type="text" placeholder="姓名"/>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label" for="supplierTel2">联系电话2</label>
							<div class="col-sm-10">
								<input class="form-control" id="supplierTel2" name="supplierTel2" type="text" placeholder="联系电话"/>
							</div>
						</div>
                       	<div class="form-group">
                          	<label class="col-sm-2 control-label" for="supplierAddress">详细地址</label>
                          	<div class="col-sm-10">
                            	<input class="form-control" id="supplierAddress" name="supplierAddress" type="text"/>
                          	</div>
                       	</div>
                       	<div class="form-group">
                          	<label class="col-sm-2 control-label" for="supplierRemark">备注</label>
                          	<div class="col-sm-10">
                            	<input class="form-control" id="supplierRemark" name="supplierRemark" type="text"/>
                          	</div>
                       	</div>
                    </fieldset>     
                    <fieldset>
                        <div class="form-group">
                        	<label class="col-sm-2 control-label"></label>
                           <div class="col-sm-4">
                              <input type="submit" value="保存" class="btn btn-primary"/>
                           </div>
                           <label class="col-sm-2 control-label"></label>
                           <div class="col-sm-4">
                              <input type="reset" value="取消" class="btn btn-danger"/>
                           </div>
                        </div>
                    </fieldset>
                </form>
			</div>
		</div>
	</body>
	<script type="text/javascript" src="${path }/view/system/user/js/user.js"></script>
</html>