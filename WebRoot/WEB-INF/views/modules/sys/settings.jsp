<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
<meta charset="utf-8">
<title>短信设置</title>
<link rel="stylesheet"
	href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/grid/ui.jqgrid.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/grid/jquery-ui-1.8.16.custom.css" />
<%-- <script type="text/javascript"
	src="${pageContext.request.contextPath}/static/grid/jquery-1.7.1.js"></script> --%>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/static/grid/jquery.jqGrid.src.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/static/grid/grid.locale-cn.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/static/grid/index.js"></script>
<script
	src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>




<script type="text/javascript">
	var grid_selector = "#grid-table";
	var pager_selector = "#grid-pager";

	$(document)
			.ready(
					function() {
						var finalUrl = "grid?type=1";
						getGrid();
						$("#position").change(
								function() {
									var type = $(this).children(
											'option:selected').val();
									var tempUrl = "";
									if (type == '1') {
										finalUrl = "grid?type=1";

									} else {
										finalUrl = "grid?type=2";
									}
									// $("#grid-table").trigger('reloadGrid');
									$("#grid-table").setGridParam( //G,P要大写
									{
										url : finalUrl
									}).trigger("reloadGrid");

								});

						function getGrid() {
							$("#grid-table")
									.jqGrid(
											{
												url : finalUrl,
												datatype : "json", //数据来源，本地数据（local，json,jsonp,xml等）
												height : 'auto', //高度，表格高度。可为数值、百分比或'auto'
												//mtype:"GET",//提交方式
												colNames : [ '序号', '监测点位',
														'名称','阈值最小值', '阈值最大值', '单位',
														'状态', '操作' ],
												colModel : [
														{
															name : 'id',
															index : 'id', //索引。其和后台交互的参数为sidx
															key : true, //当从服务器端返回的数据中没有id时，将此作为唯一rowid使用只有一个列可以做这项设置。如果设置多于一个，那么只选取第一个，其他被忽略
															width : 5,
															hidden:true,
															align : 'center',
															editable : false,
														},
														{
															name : 'monitor_position',
															index : 'monitor_position',
															width : 20, //宽度
															align : 'center',
															editable : false, //是否可编辑
															edittype : "select", //可以编辑的类型。可选值：text, textarea, select, checkbox, password, button, image and file.s
															editoptions : {
																value : "1:采购入库;2:退用入库"
															}
														},
														{
															name : 'monitor_category',
															index : 'monitor_category',
															width : 20, //宽度
															align : 'center',
															editable : false
														//是否可编辑
														},
														{
															name : 'min_threshold',
															index : 'min_threshold',
															width : 20,
															align : 'center',
															sorttype : "double",
															editable : true
														},
														{
															name : 'max_threshold',
															index : 'max_threshold',
															width : 20,
															align : 'center',
															sorttype : "double",
															editable : true
														},
														{
															name : 'monitor_unit',
															index : 'monitor_unit',
															width : 20,
															align : 'center',
															sorttype : "double",
															editable : true
														},
														{
															label : 'monitor_status',
															name : 'monitor_status',
															index : 'monitor_status',
															width : 20,
															align : 'center',
															formatter : function(
																	cellvalue,
																	options,
																	rowObject) {
																if (cellvalue == '0')
																	return "<img title='启用' style='width:17px' onclick='imgClick(\""
																			+ options.rowId
																			+ "\",0)' src='${pageContext.request.contextPath}/static/images/on.png'/>";
																if (cellvalue == '1')
																	return "<img  title='停用'  style='width:17px' onclick='imgClick(\""
																			+ options.rowId
																			+ "\",0)' src='${pageContext.request.contextPath}/static/images/off.png'/>";
															},
														},
														{
															name : 'text',
															index : 'text',
															width : 100,
															align : 'center',
															fixed : true,
															sortable : false,
															resize : false,
															formatter : displayButtons
														} ],
												viewrecords : true, //是否在浏览导航栏显示记录总数
												rowNum : 200, //每页显示记录数
												rowList : [ 200, 300, 400 ], //用于改变显示行数的下拉列表框的元素数组。
												pager : pager_selector, //分页、按钮所在的浏览导航栏
												altRows : true, //设置为交替行表格,默认为false
												//toppager: true,//是否在上面显示浏览导航栏
												//multiselect : true, //是否多选
												multikey : "ctrlKey",//是否只能用Ctrl按键多选
												multiboxonly : true, //是否只能点击复选框多选
												sortname : 'id',//默认的排序列名
												sortorder : 'asc',//默认的排序方式（asc升序，desc降序）
												caption : "规则列表", //表名
												reloadAfterSubmit : true,
												autowidth : true,
												rownumbers: true
											//自动宽
											});
						}

					});

	function imgClick(rowId) {

	}

	function msgStatus(rowId) {
		finalRowId=rowId;
		$('#myModal1').modal({
			keyboard : true
		})
	}

	
	var finalRowId="";
	//编辑
	function updateGrid(rowId) {
		finalRowId=rowId;
		$('#editModal').modal({
			keyboard : true
		})
	}
	
	//提交更新
	function submitGrid(){
		var maxValue=$("#thresholdValue").val();
		var minValue=$("#thresholdValue1").val();
		$.ajax({
			url : "updateGrid",
			type : "POST",
			dataType : "json",
			data : {
				"maxValue" : maxValue,
				"minValue" : minValue,
				"rowId" : finalRowId
			},
			async : false,
			success : function(data) {
			},
			error : function(data) {
			},
			complete: function(){
				$("#grid-table").jqGrid('setGridParam',{}).trigger("reloadGrid"); 
			}
		});
		
	}

	//自定义行数据操作按钮
	function displayButtons(cellvalue, options, rowObject) {
		var msgStatus = "<img  title='更改状态' style='width:17px;margin-bottom:2px;margin-right:8px;margin-left:8px;' onclick='msgStatus(\""
				+ options.rowId
				+ "\",0)' src='${pageContext.request.contextPath}/static/images/start.png'/>";
		var updateGrid = "<img  title='编辑' style='width:17px;margin-bottom:2px;margin-right:8px;' onclick='updateGrid(\""
				+ options.rowId
				+ "\",0)' src='${pageContext.request.contextPath}/static/images/edit.png'/>";
		var gridDelete = "<img  title='删除' style='width:17px;margin-bottom:2px;margin-right:8px;' onclick='gridDelete(\""
				+ options.rowId
				+ "\",0)' src='${pageContext.request.contextPath}/static/images/delete.png'/>";
		return msgStatus + updateGrid ;
	}

	function sendMsg() {
		var content = $("#msgContent").val();
		var phoneNumber = $("#telphoneNumber").val();
		$.ajax({
			url : "sendMsg",
			type : "POST",
			dataType : "json",
			data : {
				"phoneNumber" : phoneNumber,
				"content" : content
			},
			async : false,
			success : function(data) {
			},
			error : function() {
				alert("error");
			}
		});

	}
	
	//改变状态
	function changeStatus(){
		 var rowData = $("#grid-table").jqGrid("getRowData",finalRowId);
		  var status= rowData.monitor_status; 
	 	if(status.indexOf("off")!=-1){
		 status="off";
		}else  {
			 status="on"
		} 
		$.ajax({
			url : "changeStatus",
			type : "POST",
			dataType : "json",
			data : {
				"rowId": finalRowId,
				"status" : status
			},
			async : false,
			success : function(data) {
			},
			error : function(data) {
			},
			complete: function(){
				
				$('#myModal1').modal('hide');
				$("#grid-table").jqGrid('setGridParam',{}).trigger("reloadGrid"); 
			}
		});
	}
</script>



</head>

<body>


	<div class="panel panel-default">
		<div class="panel-heading">设置</div>
		<div class="panel-body">

			<div>
				监测点位： <select class="form-control" id="position"
					style="width: 150px; display: inline-block;">
					<option>--请选择--</option>
					<option selected="selected" value='1'>泛亚太生物科技</option>
					<option value='2'>广东丹邦科技</option>
				</select>
			<!-- 	<button class="form-control" data-toggle="modal"
					style="width: 60px; display: inline-block;" data-target="#myModal">新增</button>
				<button class="form-control" data-toggle="modal"
					style="width: 90px; display: inline-block;" data-target="#sendMsg">发送短信</button> -->
			</div>

			<!-- 按钮触发模态框 -->

			<!-- 模态框（Modal） -->
			<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
				aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog" style="width: 390px;">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-hidden="true">&times;</button>
							<h4 class="modal-title" id="myModalLabel">新增</h4>
						</div>
						<div class="modal-body" bgcolor="#365E9B">
							<div style="display: inline-block; height: auto;">
								<input type="radio" /> <span>开启短信报警</span>
							</div>
							<div style="display: inline-block;">
								<div>
									<span>报警短信间隔（分钟）：</span> <input type="text"
										style="width: 195px;" />
								</div>
								<div style="margin-top: 2px; margin-left: 2px;">
									<span>&nbsp;&nbsp;&nbsp;数据上传间隔（秒）：</span> <input type="text"
										style="width: 195px;" />
								</div>

							</div>

							<input type="button" value="增加号码"
								style="display: block; margin-top: 5px;" /> <input type="text"
								placeholder="电话号码一"
								style="display: block; margin-top: 5px; width: 99%;" /> <input
								type="text" placeholder="电话号码二"
								style="display: block; margin-top: 5px; width: 99%;" "/> <span
								style="display: block;">输出信息:</span>
							<textarea style="width: 99%; height: 80px;">
						</textarea>

						</div>


						<div class="modal-footer">
							<button type="button" class="btn btn-default"
								data-dismiss="modal">加载</button>
							<button type="button" class="btn btn-primary">写入</button>
						</div>
					</div>
					<!-- /.modal-content -->
				</div>
				<!-- /.modal -->
			</div>

			<!--启动 -->
			<div class="modal fade" id="myModal1" tabindex="-1" role="dialog"
				aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog" style="width: 200px;">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-hidden="true">&times;</button>
							<h4 class="modal-title" id="myModalLabel">改变状态</h4>
						</div>
						<div class="modal-body" bgcolor="#365E9B">确定改变当前状态？</div>


						<div class="modal-footer">
							<button type="button" class="btn btn-default" onclick="changeStatus();"
								>确定</button>
							<button type="button" class="btn btn-primary" data-dismiss="modal">取消</button>
						</div>
					</div>
					<!-- /.modal-content -->
				</div>
				<!-- /.modal -->
			</div>
			<!--第二个模态框结束-->

			<!--删除-->
			<div class="modal fade" id="myModal2" tabindex="-1" role="dialog"
				aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog" style="width: 390px;">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-hidden="true">&times;</button>
							<h4 class="modal-title" id="myModalLabel">删除</h4>
						</div>
						<div class="modal-body" bgcolor="#365E9B">确定删除？</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default"
								data-dismiss="modal">确定</button>
							<button type="button" class="btn btn-primary">取消</button>
						</div>
					</div>
					<!-- /.modal-content -->
				</div>
				<!-- /.modal -->
			</div>
			<!--第二个模态框结束-->
			<!--发送短信-->
			<div class="modal fade" id='sendMsg' tabindex="-1" role="dialog"
				aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog" style="width: 390px;">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-hidden="true">&times;</button>
							<h4 class="modal-title" id="myModalLabel">发送短信</h4>
						</div>
						<div class="modal-body" bgcolor="#365E9B">
							<!--号码-->
						<!-- 	<div class="input-group input-group-sm">
								<span class="input-group-addon">电话号码</span> <input type="text"
									id='telphoneNumber' class="form-control" placeholder="输入电话号码">
							</div> -->
							<!--内容-->
							<div class="input-group input-group-sm">
								<span class="input-group-addon">短信内容</span> <input type="text"
									id='msgContent' class="form-control" placeholder="输入短信内容">
							</div>
							<!--内容结束-->
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default"
								data-dismiss="modal" onclick="sendMsg();">确定</button>
							<button type="button" class="btn btn-primary"
								data-dismiss="modal">取消</button>
						</div>
					</div>
					<!-- /.modal-content -->
				</div>
				<!-- /.modal -->
			</div>
			<!--短信模态框结束-->

			<!--编辑-->
			<div class="modal fade" id='editModal' tabindex="-1" role="dialog"
				aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog" style="width: 300px;">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-hidden="true">&times;</button>
							<h4 class="modal-title" id="myModalLabel">编辑</h4>
						</div>
						<div class="modal-body" bgcolor="#365E9B">
							<!--最小阈值-->
							<div class="input-group input-group-sm">
								<span class="input-group-addon">阈值最小值</span> <input type="text"
									id='thresholdValue1' class="form-control" placeholder="请输入最小阈值">
							</div>
							<!--最大阈值-->
							<div class="input-group input-group-sm">
								<span class="input-group-addon">阈值最大值</span> <input type="text"
									id='thresholdValue' class="form-control" placeholder="请输入最大阈值">
							</div>
						
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default"
								data-dismiss="modal" onclick="submitGrid();">确定</button>
							<button type="button" class="btn btn-primary"
								data-dismiss="modal">取消</button>
						</div>
					</div>
					<!-- /.modal-content -->
				</div>
				<!-- /.modal -->
			</div>
			<!--编辑-->

		</div>
		<!--边框结束-->


	</div>

	<div class="main" id="main">
		<!--jqGrid所在-->
		<table id="grid-table" class="grid-table"></table>
		<!--jqGrid 浏览导航栏所在-->
		<div id="grid-pager"></div>

	</div>



</body>

</html>