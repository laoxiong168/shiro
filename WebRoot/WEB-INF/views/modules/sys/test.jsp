<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html lang="cn">
<head>
<meta charset="utf-8">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/static/grid/ui.jqgrid.css"/>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/static/grid/jquery-ui-1.8.16.custom.css"/>
		<script type="text/javascript" src="${pageContext.request.contextPath}/static/grid/jquery-1.7.1.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/static/grid/jquery.jqGrid.src.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/static/grid/grid.locale-cn.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/static/grid/index.js"></script>
		
		

</head>

<body>


<div class="main" id="main" >
			<!--jqGrid所在-->
			<table id="grid-table"></table>
			<!--jqGrid 浏览导航栏所在-->
			<div id="grid-pager"></div>

		</div>


		<script type="text/javascript">
			var grid_selector = "#grid-table";
			var pager_selector = "#grid-pager";

			$(document).ready(function() {

				$("#grid-table").jqGrid({
				    url: "grid",
					datatype: "json", //数据来源，本地数据（local，json,jsonp,xml等）
					height: 'auto', //高度，表格高度。可为数值、百分比或'auto'
					//mtype:"GET",//提交方式
					colNames: ['短信模板编号', '指标一', '指标二', '启用', '备注'],
					colModel: [{
						name: 'id',
						index: 'id', //索引。其和后台交互的参数为sidx
						key: true, //当从服务器端返回的数据中没有id时，将此作为唯一rowid使用只有一个列可以做这项设置。如果设置多于一个，那么只选取第一个，其他被忽略
						width: 100,
						editable: false,
						editoptions: {
							size: "10",
							maxlength: "30"
						}
					}, {
						name: 'type',
						index: 'type',
						width: 200, //宽度
						editable: false, //是否可编辑
						edittype: "select", //可以编辑的类型。可选值：text, textarea, select, checkbox, password, button, image and file.s
						editoptions: {
							value: "1:采购入库;2:退用入库"
						}
					}, {
						name: 'pay',
						index: 'pay',
						width: 60,
						sorttype: "double",
						editable: true
					}, {
	                    label: 'st', name: 'start', index: 'start', width: 20, align: 'center',
	                    formatter: function (cellvalue, options, rowObject) {
	                        if (cellvalue == '0') return "<img onclick='imgClick(\"" + options.rowId +"\",0)' src='${pageContext.request.contextPath}/static/images/close.png'/>";
	                        if (cellvalue == '1') return "<img onclick='imgClick(\"" + options.rowId + "\",0)' src='${pageContext.request.contextPath}/static/images/close_hover.png'/>";
	                    },
	                },
					{name:'text', index:'', width:100, fixed:true, sortable:false, resize:false,formatter:displayButtons}],
					viewrecords: true, //是否在浏览导航栏显示记录总数
					rowNum: 200, //每页显示记录数
					rowList: [200, 300, 400], //用于改变显示行数的下拉列表框的元素数组。
					pager: pager_selector, //分页、按钮所在的浏览导航栏
					altRows: true, //设置为交替行表格,默认为false
					//toppager: true,//是否在上面显示浏览导航栏
					multiselect: true, //是否多选
					multikey: "ctrlKey",//是否只能用Ctrl按键多选
					multiboxonly: true, //是否只能点击复选框多选
					sortname:'id',//默认的排序列名
					sortorder:'asc',//默认的排序方式（asc升序，desc降序）
					caption: "短信模板列表", //表名
					autowidth: true //自动宽
				});

			});
			
			
			function imgClick(rowId){
				
				
				
			}
			
			
			
			
			//自定义行数据操作按钮
			function displayButtons(cellvalue,options,rowObject){
				var discern = '<div style="margin-left:4px;cursor:pointer;display:inline;" class="ui-pg-div ui-inline-edit" onclick="discernIt(\''+options.rowId+'\')" title="认领"><span class="ui-icon icon-eye-open"></span></div>';
				var dealWith = '<div style="margin-left:4px;cursor:pointer;display:inline;" class="ui-pg-div ui-inline-edit" onclick="dealWithIt(\''+options.rowId+'\')" title="处理"><span class="ui-icon icon-edit"></span></div>';
				var sendMsg =  '<div style="margin-left:4px;cursor:pointer;display:inline;" class="ui-pg-div ui-inline-edit" onclick="sendMsg(\''+options.rowId+'\')"" title="发送短信"><span class="ui-icon icon-comment"></span></div>';
				var sendMsg =  '<div style="margin-left:4px;cursor:pointer;display:inline;" class="ui-pg-div ui-inline-edit" onclick="toSendMessComfirm(\''+options.rowId+'\')"" title="发送短信"><span class="ui-icon icon-comment"></span></div>';
				var comment	=  '<div style="margin-left:4px;cursor:pointer;display:inline;" class="ui-pg-div ui-inline-edit" onclick="toComment(\''+options.rowId+'\')"" title="备注"><span class="ui-icon icon-tag"></span></div>';
				var chageStatus	=  '<div style="margin-left:0px;cursor:pointer;display:inline;" class="ui-pg-div"  onclick="changeAppStatus(\''+options.rowId+'\')"" title="修改APP可见状态"><span class="ui-icon icon-tablet"></span></div>';
				if(rowObject.event_state=='0' 
					&& ['车辆追踪','电力巡线','工地施工','自动存储'].indexOf(rowObject.event_type)!=-1) return discern+comment+chageStatus;
				else if(rowObject.event_state=='0' 
					&& ['车辆追踪','电力巡线','工地施工','自动存储'].indexOf(rowObject.event_type)==-1) return discern + sendMsg+comment+chageStatus;
				else if(rowObject.event_state=='1'
					&& ['车辆追踪','电力巡线','工地施工','自动存储'].indexOf(rowObject.event_type)!=-1) return dealWith+comment+chageStatus;
				else if(rowObject.event_state=='1'
					&& ['车辆追踪','电力巡线','工地施工','自动存储'].indexOf(rowObject.event_type)==-1) return dealWith + sendMsg+comment+chageStatus;
				else return "-";
			}
		</script>


</body>

</html>