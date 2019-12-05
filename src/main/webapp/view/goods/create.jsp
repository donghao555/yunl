<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>测试添加页面</title>
		<%@ include file="../../common/jsp/header.jsp"%>
		<link href="${path }/static/css/plugins/file-input/fileinput.min.css" rel="stylesheet">
	</head>
	<body>
		<div class="wrapper wrapper-content animated fadeInRight">
			<div>
				<div class="col-sm-4"><input type="button" value="返回上一页" class="btn btn-success" onclick="javascript:history.back();"/></div>
			</div>
			<div class="ibox float-e-margins">
				<form action="${path }/dictionary/create.do" method="post" class="form-horizontal" role="form">
                    <fieldset>
                        <legend>库存中心-> 商品入库>其他入库</legend>
                       <div class="form-group">
                          <label class="col-sm-2 control-label" for="ds_host">入库单号</label>
                          <div class="col-sm-4">
                             <input class="form-control" type="text" name="testName" placeholder="201692310140"/>
                          </div>
                          <label class="col-sm-2 control-label" for="ds_name">状态</label>
                          <div class="col-sm-4">
							  <input class="form-control" type="text" name="testName" placeholder="待审核"/>
                          </div>
                       </div>

                       <div class="form-group">
                          <label class="col-sm-2 control-label" for="ds_username">入库类型</label>
                          <div class="col-sm-4">
							  <zhg:select codeTp="sex" name="testSex" cls="form-control" def="true"></zhg:select>
                          </div>
						   <label class="col-sm-2 control-label" for="ds_username"></label>
						   <div class="col-sm-4">
						   </div>
                       </div>

						<div class="form-group">
							<label class="col-sm-2 control-label" for="ds_host">经办人</label>
							<div class="col-sm-4">
								<input class="form-control" type="text" name="testName" placeholder=""/>
							</div>
							<label class="col-sm-2 control-label" for="ds_name">备注</label>
							<div class="col-sm-4">
								<input class="form-control" type="text" name="testName" placeholder=""/>
							</div>
						</div>
                    </fieldset>
					<fieldset>
						<table class="table table-striped table-bordered table-hover table-condensed">
							<thead>
							<tr>
<%--								<th><input type="checkbox" id="checkall"/></th>--%>
								<th>序号</th>
								<th>商品名称</th>
								<th>商品编号</th>
								<th>单位</th>
								<th>入库数量</th>
								<th>操作</th>
							</tr>
							</thead>
							<tbody>
							<c:set var="vs"></c:set>
							<c:forEach var="e" items="${page.list }" varStatus="v">
								<tr>
									<td><input type="checkbox" name="ids" value="${e.inputId }"/></td>
									<td></td>
									<td>${e.inputState  == 0 ?"待确认":"待入库"}</td>
									<td>${e.inputNumber}</td>
									<td>${e.inputType}</td>
									<td>${e.inputCretime}</td>
									<td>${e.inputMan}</td>
									<td>
										<el-button type="text" size="small" @click="todelete(scope.row.parcelNumber)">移除</el-button>
									</td>
								</tr>
							</c:forEach>
							</tbody>
						</table>
					</fieldset>
                    <fieldset>
                        <div class="form-group">
							<label class="col-sm-5 control-label" for="ds_host"></label>
							<div class="col-sm-1">
								<input type="reset" value="取消" class="btn btn-danger" id="resetForm"/>
							</div>
                        	<label class="col-sm-1 control-label" for="ds_host"></label>
                           	<div class="col-sm-5">
                              	<input type="submit" value="保存" class="btn btn-primary"/>
                           	</div>
                        </div>
                    </fieldset>
                </form>
			</div>
		</div>
	</body>
	<script type="text/javascript" src="${path }/static/js/plugins/file-input/fileinput.min.js"></script>
	<script type="text/javascript" src="./js/dictionary.js"></script>
</html>