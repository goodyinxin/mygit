<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/commons/taglibs.jsp"%>
<style>
.list-group.panel>.list-group-item {
	border-bottom-right-radius: 4px;
	border-bottom-left-radius: 4px
}

.list-group-submenu {
	margin-left: 20px;
}
</style>
<div class="col-sm-3 col-md-2 sidebar">
	<div class="list-group panel">
		<a href="#demo3" class="list-group-item" data-toggle="collapse"
			data-parent="#MainMenu">首页</a>
		<div class="collapse" id="demo3">
			<a href="#SubMenu1" class="list-group-item" data-toggle="collapse"
				data-parent="#SubMenu1">- 股转系统<i class="fa fa-caret-down"></i></a>
		    <div class="collapse list-group-submenu" id="SubMenu1">
				<a href="${ctx}/monitor/neeqcompany" class="list-group-item"
					data-parent="#SubMenu1">- 挂牌公司</a> <a
					href="${ctx}/monitor/neeqnotice" class="list-group-item"
					data-parent="#SubMenu1">- 公司公告</a>
					<a
					href="${ctx}/monitor/neeqmarket" class="list-group-item"
					data-parent="#SubMenu2">- 做市商</a>
			</div>
			<a href="#SubMenu2" class="list-group-item" data-toggle="collapse"
				data-parent="#SubMenu2">- 投资界<i class="fa fa-caret-down"></i></a>
			<div class="collapse list-group-submenu" id="SubMenu2">
				<a href="${ctx}/monitor/pedaily/invest" class="list-group-item"
					data-parent="#SubMenu2">- 投资事件</a> <a
					href="${ctx}/monitor/pedaily/pe" class="list-group-item"
					data-parent="#SubMenu2">- 募资事件</a> <a
					href="${ctx}/monitor/pedaily/ipo" class="list-group-item"
					data-parent="#SubMenu2">- 上市事件</a> <a
					href="${ctx}/monitor/pedaily/ma" class="list-group-item"
					data-parent="#SubMenu2">- 并购事件</a>
			</div>
			<a href="#SubMenu3" class="list-group-item" data-toggle="collapse"
				data-parent="#SubMenu3">- 清科私募通</a>
			<div class="collapse list-group-submenu" id="SubMenu3">
				<a href="${ctx}/monitor/pedata/invest" class="list-group-item"
					data-parent="#SubMenu3">- 投资事件</a>
			</div>
			<a href="#SubMenu4" class="list-group-item" data-toggle="collapse"
				data-parent="#SubMenu4">- 牛弼网</a>
			<div class="collapse list-group-submenu" id="SubMenu4">
				<a href="${ctx}/monitor/bullbill" class="list-group-item"
					data-parent="#SubMenu4">- 定增事件</a>
			</div>
			<a href="#SubMenu5" class="list-group-item" data-toggle="collapse"
				data-parent="#SubMenu5">- 新闻<i class="fa fa-caret-down"></i></a>
			<div class="collapse list-group-submenu" id="SubMenu5">
				<a href="${ctx}/monitor/rsscompanynews" class="list-group-item"
					data-parent="#SubMenu5">- rss公司</a> <a
					href="${ctx}/monitor/rssinvestorsnews" class="list-group-item"
					data-parent="#SubMenu5">- rss机构</a> <a
					href="${ctx}/monitor/cnfolnews" class="list-group-item"
					data-parent="#SubMenu5">- cnfol</a>
			</div>
			<a href="#SubMenu6" class="list-group-item" data-toggle="collapse"
				data-parent="#SubMenu6">- 投资潮<i class="fa fa-caret-down"></i></a>
			<div class="collapse list-group-submenu" id="SubMenu6">
				<a href="${ctx}/monitor/inenterp" class="list-group-item"
					data-parent="#SubMenu6">- 投资事件</a>
			</div>
			<a href="#SubMenu7" class="list-group-item" data-toggle="collapse"
				data-parent="#SubMenu7">- 研报<i class="fa fa-caret-down"></i></a>
			<div class="collapse list-group-submenu" id="SubMenu7">
				<a href="${ctx}/monitor/report" class="list-group-item"
					data-parent="#SubMenu7">- 研报</a>
				<a href="${ctx}/monitor/reportmonitoring" class="list-group-item"
					data-parent="#SubMenu7">- 研报监控</a>
			</div>
			<a href="#SubMenu8" class="list-group-item" data-toggle="collapse"
				data-parent="#SubMenu8">- 私募基金管理人<i class="fa fa-caret-down"></i></a>
			<div class="collapse list-group-submenu" id="SubMenu8">
				<a href="${ctx}/monitor/specialfund" class="list-group-item"
					data-parent="#SubMenu8">- 专户基金</a>
			</div>
			
			<a href="#SubMenu9" class="list-group-item" data-toggle="collapse"
				data-parent="#SubMenu9">- Tomcat监控<i class="fa fa-caret-down"></i></a>
				<div class="collapse list-group-submenu" id="SubMenu9">
				<a href="${ctx}/thread" class="list-group-item"
					data-parent="#SubMenu9">- Tomcat监控</a>

			</div>
			
		</div>
		<a class="list-group-item" href="${ctx}/schedule/taskList">news</a> <a
			class="list-group-item" href="####">report</a>

 		<a class="list-group-item" href="${ctx}/schedule/etl">监控</a>

</div></div>