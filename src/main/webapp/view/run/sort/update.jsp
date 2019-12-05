<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>修改文章页面</title>
		<%@ include file="../../../common/jsp/header.jsp"%>
		<link href="${path }/static/css/plugins/file-input/fileinput.min.css" rel="stylesheet">
	</head>
	<body>
		<div class="wrapper wrapper-content animated fadeInRight">
			<div>
				<div class="col-sm-4"><input type="button" value="返回上一页" class="btn btn-success" onclick="javascript:history.back();"/></div>
			</div>
			<div class="ibox float-e-margins">
				<form action="${path }/sort/update.do" method="post" class="form-horizontal" role="form">
                    <input type="hidden" name="artgroupId" id="artgroupId" value="${sortEntity.artgroupId}"  />
                    <fieldset>
                        <legend>运营中心 >文章管理>修改文章</legend>
                       <div class="form-group">
                          <label class="col-sm-2 control-label" for="ds_host">分组名称:</label>
                          <div class="col-sm-4">
                             <input class="form-control" type="text" name="articleName" value="${sortEntity.articleName}"/>
                          </div>
                          <label class="col-sm-2 control-label" for="ds_username">入口图片:</label>
                          <div class="col-sm-4">
                             <input class="form-control" type="image"  name="articlePreview" value="${sortEntity.articlePreview}" src="D:/workspace/javakc/yunl/src/main/webapp/static/img/a6.jpg" />
                          </div>

<%--                           <label class="col-sm-2 control-label" for="ds_username">类型:</label>--%>
<%--                           <div class="col-sm-4">--%>
<%--                               <input class="form-control" type="text" name="articleType" value="${titleEntity.articleType}"/>--%>
<%--                           </div>--%>
                       </div>

                       <div class="form-group">
                          <label class="col-sm-2 control-label" for="ds_username">描述：</label>
                          <div class="col-sm-8" >
                             <input class="form-control" type="text"  name="articleRemarke" value="${sortEntity.articleRemarke}"/>
                          </div>
                       </div>

                    </fieldset>     
                    <fieldset>

                    </fieldset>
                    <fieldset>
                        <div class="form-group">
                        	<label class="col-sm-2 control-label" for="ds_host"></label>
                           	<div class="col-sm-4">
                              	<input type="submit" value="保存" class="btn btn-primary" id="resetForm"/>
                           	</div>
                           	<label class="col-sm-2 control-label" for="ds_host"></label>
                           	<div class="col-sm-4">
                              	<input type="reset" value="取消" class="btn btn-success" onclick="javascript:history.back();" />
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