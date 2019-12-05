<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>文章分组页面</title>
		<%@ include file="../../../common/jsp/header.jsp"%>
		<link href="${path }/static/css/plugins/file-input/fileinput.min.css" rel="stylesheet">
	</head>
	<body>
		<div class="wrapper wrapper-content animated fadeInRight">
			<div>
				<div class="col-sm-4"><input type="button" value="返回上一页" class="btn btn-success" onclick="javascript:history.back();"/></div>
			</div>
			<div class="ibox float-e-margins">
				<form action="${path }/sort/save.do" method="post" class="form-horizontal" role="form">
                    <fieldset>
                        <legend>运营中心 >文章分组>添加分组</legend>
                       <div class="form-group">
                          <label class="col-sm-2 control-label" for="ds_host">分组名称:</label>
                          <div class="col-sm-4">
                             <input class="form-control" type="text" name="articleName" placeholder="name"/>
                          </div>
                          <label class="col-sm-2 control-label" for="ds_host">入口图片:</label>
                          <div class="col-sm-4">
                             <input class="form-control" type="text"  name="articlePreview" src="D:\workspace\javakc\yunl\src\main\webapp\static\img\a6.jpg" placeholder="浏览"/>
<%--                              <img src="D:\workspace\javakc\yunl\src\main\webapp\static\img\a6.jpg">--%>
                          </div>

                       </div>

                       <div class="form-group">
                          <label class="col-sm-2 control-label" for="ds_username">描述：</label>
                          <div class="col-sm-8" >
                             <input class="form-control" height="100px" type="text"  name="articleRemarke" placeholder="remarke"/>
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
                              	<input type="reset" value="取消" class="btn btn-success" onclick="javascript:history.back();"/>
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