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
<script type="text/javascript" src="js/jquery-1.8.3.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>后台管理系统</title>
<meta name="author" content="DeathGhost" />
<link rel="stylesheet" type="text/css" href="css/style.css">
<!--[if lt IE 9]>
<script src="js/html5.js"></script>
<![endif]-->
<script src="js/jquery.js"></script>
<script src="js/jquery.mCustomScrollbar.concat.min.js"></script>
<script>

	(function($){
		$(window).load(function(){
			
			$("a[rel='load-content']").click(function(e){
				e.preventDefault();
				var url=$(this).attr("href");
				$.get(url,function(data){
					$(".content .mCSB_container").append(data); //load new content inside .mCSB_container
					//scroll-to appended content 
					$(".content").mCustomScrollbar("scrollTo","h2:last");
				});
			});
			
			$(".content").delegate("a[href='top']","click",function(e){
				e.preventDefault();
				$(".content").mCustomScrollbar("scrollTo",$(this).attr("href"));
			});
			
		});
	})(jQuery);
</script>
</head>
<body>

<section>
 <div class="rt_content">
      <div class="page_title">
       <h2 class="fl">添加/更新会员等级</h2>
      </div>
      <table class="table">
       <tr>
        <td style="text-align:right;">会员等级：</td>
        <td>
         <input type="text" class="textbox" value="" placeholder="等级名称"/>
        </td>
        <td style="text-align:right;">享受折扣率：</td>
        <td>
         <input type="text" class="textbox" value="" placeholder="0-100" />
         <span>%</span>
        </td>
        <td>
         <a class="full_link_td" style="line-height:58px">确认</a>
        </td>
       </tr>
      </table>
      <div class="page_title">
       <h2 class="fl">等级列表</h2>
      </div>
      <table class="table">
       <tr>
        <th>Id</th>
        <th>会员等级</th>
        <th>享受折扣率</th>
        <th>操作</th>
       </tr>
       <tr>
        <td class="center">001</td>
        <td class="center">普通会员</td>
        <td>80%</td>
        <td class="center">
         <a href="#" title="编辑" class="link_icon">&#101;</a>
         <a href="#" title="删除" class="link_icon">&#100;</a>
        </td>
       </tr>
       <tr>
        <td class="center">001</td>
        <td class="center">普通会员</td>
        <td>80%</td>
        <td class="center">
         <a href="#" title="编辑" class="link_icon">&#101;</a>
         <a href="#" title="删除" class="link_icon">&#100;</a>
        </td>
       </tr>
      </table>
      <aside class="paging">
       <a>第一页</a>
       <a>1</a>
       <a>2</a>
       <a>3</a>
       <a>…</a>
       <a>1004</a>
       <a>最后一页</a>
      </aside>
 </div>
</section>
</body>
</html>
