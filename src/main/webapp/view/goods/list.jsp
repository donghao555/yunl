<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>商品入库示列表页面</title>
		<%@ include file="../../common/jsp/header.jsp"%>
	</head>
	<body>
		<div class="wrapper wrapper-content animated fadeInRight">
			<div class="ibox float-e-margins">
				<form id="searchForm" action="">
				<div class="col-sm-12">
					<!-- ------------按钮组 start------------ -->
	                <div class="alert alert-success" role="alert">库存中心->商品入库</div>

					<div class="col-sm-4">
						<input class="form-control" id="search" name="dataName" value="${entity.dataName }" type="text" placeholder="请输入入库单号"/>
					</div>

					<div class="col-sm-4">

					</div>
	                <div class="col-sm-4">
	                	<div class="btn-group hidden-xs" role="group">
                			<button type="button" class="btn btn-success" data-toggle="modal" id="create" name="goods/create.jsp">
	                            <i  aria-hidden="true"></i>其他入库
	                        </button>
<%--	                        <button type="button" class="btn btn-success" data-toggle="modal" id="update" name="goods/view.do">--%>
<%--	                            <i class="glyphicon glyphicon-pencil" aria-hidden="true"></i>修改--%>
<%--	                        </button>--%>
<%--	                        <button type="button" class="btn btn-danger" data-toggle="modal" id="delete" name="dictionary/delete.do">--%>
<%--	                            <i class="glyphicon glyphicon-trash" aria-hidden="true"></i>删除--%>
<%--	                        </button>--%>
		                 </div>
	                </div>

	                 <!-- ------------按钮组 end------------ -->
						<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
						<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
		                 <table class="table table-striped table-bordered table-hover table-condensed">
					        <thead>
					            <tr>
					                <th><input type="checkbox" id="checkall"/></th>
									<th>序号</th>
					                <th>状态</th>
					                <th>入库单号</th>
					                <th>入库类型</th>
									<th>入库创建时间</th>
									<th>经办人</th>
									<th>备注</th>
									<th>入库修改时间</th>
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
										<td>${e.inputRemark}</td>
										<td>${e.inputUptime}</td>
										<td><el-button type="text" size="small">详情</el-button>
											<el-button type="text" size="small" @click="todelete(scope.row.parcelNumber)">审核</el-button>
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