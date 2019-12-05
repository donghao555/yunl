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
	                <div class="col-sm-4">
	                	<input class="form-control" id="articleType" name="articleType" value="" type="text" placeholder="输入内容，按回车搜索"/>
	                </div>
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
<%--						                <td>${e.articleRecommend == 1?"不推荐":"推荐"}</td>--%>
						                <td>
											<c:if test="${e.articleRecommend == 0}">
												<div class="switch">
													<div class="onoffswitch">
														<input type="checkbox" onclick="" checked class="onoffswitch-checkbox" id="${e.articleId }">
														<label class="onoffswitch-label" for="${e.articleId }">
															<span class="onoffswitch-inner"></span> <span class="onoffswitch-switch"></span>
														</label>
													</div>
												</div>
											</c:if>
											<c:if test="${e.articleRecommend == 1}">
												<div class="switch">
													<div class="onoffswitch">
														<input type="checkbox"  class="onoffswitch-checkbox" id="${e.articleId }">
														<label class="onoffswitch-label" for="${e.articleId }">
															<span class="onoffswitch-inner"></span> <span class="onoffswitch-switch"></span>
														</label>
													</div>
												</div>
											</c:if></td>


                                <td>
                                    <i class="btn"
                                       onClick="single_del('${e.articleId}')"  title="查看">查看</i>

<%--									<el-button type="text" size="small" @click="todelete(scope.row.parcelNumber)">${e.articleState == 0?"下架":"上架"}</el-button>--%>
                                    <i class="btn"
                                       onClick="single_ch('${e.articleId}')"  title="">${e.articleState == 0?"下架":"上架"}</i>
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
            function single_del(ids) {
                //  查看    这里需要异步的局部刷新功能特性  同一页面展现两种来自不同表的结果
                url = root + 'title/detail/'+ids+'.do';
// document.location.href=root+'goodsCount/queryGoodsCount.do';
                document.location.href = url;
                }

            function single_ch(id) {
                                 //这里需要异步的局部刷新功能特性  同一页面展现两种来自不同表的结果
                url = root + 'title/update/'+id+'.do';
// document.location.href=root+'goodsCount/queryGoodsCount.do';
                document.location.href = url;
            }


        </script>
	</body>
</html>