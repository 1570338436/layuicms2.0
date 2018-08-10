<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ request.getContextPath() + "/";
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<meta charset="utf-8">

<title>table模块快速使用</title>

<link href="layui/css/shop.css" type="text/css" rel="stylesheet" />
<link href="layui/css/Sellerber.css" type="text/css"  rel="stylesheet" />
<link href="layui/css/bkg_ui.css" type="text/css"  rel="stylesheet" />
<link href="layui/css/font-awesome.min.css"  rel="stylesheet" type="text/css" />

<link rel="stylesheet" href="layui/css/layui.css" media="all">
<script type="text/javascript" src="layui/layui.js"></script>


</head>
<body>

<div class="sum_style margin-bottom ">
 <ul class="clearfix">
  <li class="col-xs-3 "><div class="sum_zone Amount">交易总额<span><em>￥</em>354465元</span></div></li>
  <li class="col-xs-3 "><div class="sum_yifu Amount">已付金额<span><em>￥</em>35465元</span></div></li>
  <li class="col-xs-3 "><div class="sum_daifu Amount">代付金额<span><em>￥</em>3545元</span></div></li>
  <li class="col-xs-3 "><div class="sum_tuikuan Amount">退款金额<span><em>￥</em>3545元</span></div></li>
 </ul>
</div>
<div class="status_order margin-bottom">
  <a href="javascrpit:void" class="btn button_btn btn-info status_btn">所有订单(454)</a>
  <a href="javascrpit:void" class="btn button_btn btn-info status_btn">已完成(454)</a>
  <a href="javascrpit:void" class="btn button_btn btn-info status_btn">未完成(454)</a>
  <a href="javascrpit:void" class="btn button_btn btn-info status_btn">代发货(454)</a>
  <a href="javascrpit:void" class="btn button_btn btn-info status_btn">代付款(454)</a>
 </div>
 
	<table id="demo" lay-filter="test"></table>
	<script src="layui/layui.js"></script>
	<script>
		layui.use('table', function() {
			var table = layui.table;

			//第一个实例
			table.render({
				elem : '#demo',
				height : 315,
				url : 'json/newsList.json' //数据接口
				,
				page : true //开启分页
				,
				cols : [ [ //表头
				{
					field : 'id',
					title : 'ID',
					width : 80,
					sort : true,
					fixed : 'left'
				}, {
					field : 'username',
					title : '订单编号',
					width : 100
				}, {
					field : 'sex',
					title : '下单时间',
					width : 100,
					sort : true
				}, {
					field : 'city',
					title : '消费金额',
					width : 80
				}, {
					field : 'sign',
					title : '数量',
					width : 60
				}, {
					field : 'experience',
					title : '状态',
					width : 80,
					sort : true
				}, {
					field : 'score',
					title : '发货时间',
					width : 150,
					sort : true
				}, {
					field : 'classify',
					title : '备注',
					width : 150
				}, {
					field : 'wealth',
					title : '操作',
					width : 135,
					sort : true
				} ] ]
			});

		});
	</script>

</body>
</html>