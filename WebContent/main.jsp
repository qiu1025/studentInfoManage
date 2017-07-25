<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>学生信息管理系统登录</title>
<%
	//权限验证
	if(session.getAttribute("currentUser")==null){
		response.sendRedirect("index.jsp");
		return;
	}
%>


<link rel="stylesheet" type="text/css" href="jquery-easyui-1.5.2/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="jquery-easyui-1.5.2/themes/icon.css">
<script type="text/javascript" src="jquery-easyui-1.5.2/jquery.min.js"></script>
<script type="text/javascript" src="jquery-easyui-1.5.2/jquery.easyui.min.js"></script>
<script type="text/javascript" src="jquery-easyui-1.5.2/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript">
	$(function(){
		//数据
		var treeData=[{
				text:"根",
				children:[{
					text:"班级信息管理",
					attributes:{
						url:"gradeInfoManage.jsp"
					}
				},{
					text:"学生信息管理",
					attributes:{
						url:"studentInfoManage.jsp"
					}
				}]
		}];
		//实例化树菜单
		$("#tree").tree({
			data:treeData,
			lines:true,
			onClick:function(node){
				if(node.attributes){
					openTab(node.text,node.attributes.url);
				}
			}
		});
		//新增tab
		function openTab(text,url){
			if($("#tabs").tabs('exists',text)){
				$("#tabs").tabs('select',text)
			}else{

				var content="<iframe frameborder='0' scrolling='auto' style='width:100%;height:100%' src="+url+"></iftame>"
			$("#tabs").tabs('add',{
				title:text,
				closable:true,
				content:content
				});
			}
		}
	});
</script>
</head>
<body class="easyui-layout">
	<div region="north" style="height: 100px;background-color: #ffc">
		<img  src="img/logo.png" style="padding-left: 40%;float: left">
		<div style="padding-top:80px;padding-right: 20px; float: right;">当前用户:&nbsp<font >${currentUser.userName}</font></div>
	</div>
	<div region="center">
		<div class="easyui-tabs" fit="true" border="false" id="tabs">
			<div title="首页">
				<div align="center" style="padding-top:20px"><font>欢迎使用</font></div>
			</div>
		</div>
	</div>
	<div region="west" style="width: 150px;" title="导航菜单" split="true">
		<ul id="tree"></ul>
	</div>
	<div region="south" style="height: 25px" align="center"><a href="http://maplel.cn">maplel.cn</a></div>
</body>
</html>