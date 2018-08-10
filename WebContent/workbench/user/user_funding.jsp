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
       <h2 class="fl">会员资金变动</h2>
       <a href="workbench/user/user_list.jsp" class="fr top_rt_btn">返回会员列表</a>
      </div>
      <table class="table">
       <tr>
        <td style="text-align:right;">当前余额：</td>
        <td>
         <input type="text" class="textbox" value="1999.00" readonly/>
         <span>元</span>
        </td>
        <td style="text-align:right;">冻结：</td>
        <td>
         <input type="text" class="textbox" value="0.00"/>
         <span>元</span>
        </td>
        <td rowspan="2">
         <a class="full_link_td" style="line-height:117px;">确认</a>
        </td>
       </tr>
       <tr>
        <td style="text-align:right;">增加：</td>
        <td>
         <input type="text" class="textbox" value="0.00"/>
         <span>元</span>
        </td>
        <td style="text-align:right;">减少：</td>
        <td>
          <input type="text" class="textbox" value="0.00"/>
          <span>元</span>
        </td>
        </tr>
      </table>
      <div class="page_title">
       <h2 class="fl">资金变动记录</h2>
      </div>
      <table class="table">
       <tr>
        <th>类型</th>
        <th>时间</th>
        <th>资金变动额</th>
        <th>当前余额</th>
       </tr>
       <tr>
        <td>订单：201602011534</td>
        <td><time>2016-02-01 15:34:48</time></td>
        <td>减少<strong class="rmb_icon">59.00</strong></td>
        <td class="center"><strong class="rmb_icon">59.00</strong></td>
       </tr>
       <tr>
        <td>充值</td>
        <td><time>2016-02-01 15:34:48</time></td>
        <td>增加<strong class="rmb_icon">198.00</strong></td>
        <td class="center"><strong class="rmb_icon">59.00</strong></td>
       </tr>
       <tr>
        <td>提现</td>
        <td><time>2016-02-01 15:34:48</time></td>
        <td>减少<strong class="rmb_icon">198.00</strong></td>
        <td class="center"><strong class="rmb_icon">59.00</strong></td>
       </tr>
       <tr>
        <td>订单：201602011534</td>
        <td><time>2016-02-01 15:34:48</time></td>
        <td>减少<strong class="rmb_icon">59.00</strong></td>
        <td class="center"><strong class="rmb_icon">59.00</strong></td>
       </tr>
       <tr>
        <td>充值</td>
        <td><time>2016-02-01 15:34:48</time></td>
        <td>增加<strong class="rmb_icon">198.00</strong></td>
        <td class="center"><strong class="rmb_icon">59.00</strong></td>
       </tr>
       <tr>
        <td>提现</td>
        <td><time>2016-02-01 15:34:48</time></td>
        <td>减少<strong class="rmb_icon">198.00</strong></td>
        <td class="center"><strong class="rmb_icon">59.00</strong></td>
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