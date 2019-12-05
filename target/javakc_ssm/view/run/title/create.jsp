<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>新增文章页面</title>
		<%@ include file="../../../common/jsp/header.jsp"%>
		<link href="${path }/static/css/plugins/file-input/fileinput.min.css" rel="stylesheet">
	</head>
	<body>
		<div class="wrapper wrapper-content animated fadeInRight">
			<div>
				<div class="col-sm-4"><input type="button" value="返回上一页" class="btn btn-success" onclick="javascript:history.back();"/></div>
			</div>
			<div class="ibox float-e-margins">
				<form action="${path }/title/save.do" method="post" class="form-horizontal" role="form">
                    <fieldset>
                        <legend>运营中心 >文章管理>新增文章</legend>
                       <div class="form-group">
                          <label class="col-sm-2 control-label" for="ds_host">标题:</label>
                          <div class="col-sm-4">
                             <input class="form-control" type="text" name="articleTitle" placeholder="title"/>
                          </div>
                          <label class="col-sm-2 control-label" for="ds_host">入口图片:</label>
                          <div class="col-sm-4">
<%--                             <input class="form-control" type="text"  name="articlePhoto" src="D:\workspace\javakc\yunl\src\main\webapp\static\img\a6.jpg" placeholder="浏览"/>--%>
                                 <img src="${path}/static/img/a5.jpg" height="50">
                          </div>
                           <label class="col-sm-2 control-label" for="ds_username">类型:</label>
                           <div class="col-sm-4">
                               <input class="form-control" type="text" name="articleType" placeholder="type"/>
                           </div>

                           <label class="col-sm-2 control-label" for="ds_username">文章简介:</label>
                           <div class="col-sm-4">
                               <input class="form-control" type="text"  name="articleSynopsis" placeholder="synopsis"/>
                           </div>
                       </div>

                       <div class="form-group">
                          <label class="col-sm-1 control-label" for="ds_username">文章详情：</label>
                          <div class="col-sm-12" >
                             <input class="form-control" height="100px" type="text"  name="articleDetails" placeholder="details"/>
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