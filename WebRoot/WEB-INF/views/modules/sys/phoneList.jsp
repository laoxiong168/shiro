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
						var finalUrl = "phoneList?type=1";
						getGrid();
						function getGrid() {
							$("#grid-table")
									.jqGrid(
											{
												url : finalUrl,
												datatype : "json", //数据来源，本地数据（local，json,jsonp,xml等）
												height : 'auto', //高度，表格高度。可为数值、百分比或'auto'
												//mtype:"GET",//提交方式
												colNames : [ '编号', '电话号码', '操作' ],
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
															name : 'phone_number',
															index : 'phone_number',
															width : 20, //宽度
															align : 'center',
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
												caption : "号码列表", //表名
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
	//删除
	function deleteGrid(rowId) {
		finalRowId=rowId;
		$('#myModal2').modal({
			keyboard : true
		})
	}



	//自定义行数据操作按钮
	function displayButtons(cellvalue, options, rowObject) {
		var gridDelete = "<img  title='删除' style='width:17px;margin-bottom:2px;margin-right:8px;' onclick='deleteGrid(\""
				+ options.rowId
				+ "\",0)' src='${pageContext.request.contextPath}/static/images/delete.png'/>";
		return gridDelete ;
	}

	//确定删除
	function deletePhone(){
		mAjax("delete","");
	}
	//新增号码
	function addPhoneNum(){
		
		var phoneNum=$("#telphoneNumber").val();
		mAjax("add",phoneNum);
	}
	
	
	function mAjax(type,phoneNumber){
		$.ajax({
			url : "phoneList",
			type : "POST",
			dataType : "json",
			data : {
				"rowId": finalRowId,
				"type" : type,
				"phoneNumber":phoneNumber
			},
			async : false,
			success : function(data) {
			},
			error : function(data) {
			},
			complete: function(){
				$('#myModal2').modal('hide');
				$('#myModal').modal('hide');
				$("#grid-table").jqGrid('setGridParam',{}).trigger("reloadGrid"); 
			}
		});
	}
	
</script>



</head>

<body>


	<div class="panel panel-default">
		<div class="panel-heading">号码设置</div>
		<div class="panel-body">

			<div>
				<button class="form-control" data-toggle="modal"
					style="width: 60px; display: inline-block;" data-target="#myModal">新增</button>
			</div>

			<!-- 按钮触发模态框 -->

			<!-- 模态框（Modal） -->
			<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
				aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog" style="width: 300px;">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-hidden="true">&times;</button>
							<h4 class="modal-title" id="myModalLabel">新增</h4>
						</div>
						<div class="modal-body" bgcolor="#365E9B">
							<!--号码-->
							<div class="input-group input-group-sm">
								<span class="input-group-addon">电话号码</span> <input type="text"
									id='telphoneNumber' class="form-control" placeholder="输入电话号码">
							</div>
							<!--内容结束-->
						

						</div>


						<div class="modal-footer">
							<button type="button" class="btn btn-default" onclick="addPhoneNum();"
								>确定</button>
							<button type="button" class="btn btn-primary" data-dismiss="modal">取消</button>
						</div>
					</div>
					<!-- /.modal-content -->
				</div>
				<!-- /.modal -->
			</div>


			<!--删除-->
			<div class="modal fade" id="myModal2" tabindex="-1" role="dialog"
				aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog" style="width: 200px;">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal"
								aria-hidden="true">&times;</button>
							<h4 class="modal-title" id="myModalLabel">删除</h4>
						</div>
						<div class="modal-body" bgcolor="#365E9B">确定删除？</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default" id="configBtn" onclick="deletePhone();"
								>确定</button>
							<button type="button" class="btn btn-primary" data-dismiss="modal">取消</button>
						</div>
					</div>
					<!-- /.modal-content -->
				</div>
				<!-- /.modal -->
			</div>
			<!--第二个模态框结束-->


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