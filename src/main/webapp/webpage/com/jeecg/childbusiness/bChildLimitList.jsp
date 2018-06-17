<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<t:base type="jquery,easyui,tools,DatePicker"></t:base>
<div class="easyui-layout" fit="true">
  <div region="center" style="padding:0px;border:0px">
  <t:datagrid name="bChildBusinessList" pagination="true" fitColumns="true" title="时限监控" actionUrl="bChildBusinessController.do?limitDatagrid" idField="id" fit="true" queryMode="group">
   <t:dgCol title="id"  field="id"  hidden="true"  queryMode="group"  width="120"></t:dgCol>
   <t:dgCol title="项目名称"  field="REALITY_PROJECT_NAME" query="true"  width="80"></t:dgCol>
   <t:dgCol title="并联业务流水号"  field="BUSINESS_ID" hidden="true" width="120"></t:dgCol>
   <t:dgCol title="子业务流水号"  field="CHILD_BUSINESS_ID"  query="true" width="75"></t:dgCol>
   <t:dgCol title="项目编号"  field="PROJECT_ID"  hidden="true"  queryMode="group"  width="120"></t:dgCol>
  <%-- <t:dgCol title="阶段编号"  field="PHASES_ID"  funname="phaseName(phasesId)"  queryMode="group"  width="120"></t:dgCol>--%>

   <t:dgCol title="事项编号"  field="ITEMS_ID"  hidden="true"  queryMode="group"  width="80"></t:dgCol>
   <t:dgCol title="事项名称"  field="ITEMS_NAME" query="true"  width="100"></t:dgCol>
   <t:dgCol title="部门编号"  field="DEPT_ID"  hidden="true"  queryMode="group"  width="120"></t:dgCol>
   <%--<t:dgCol title="部门名称"  field="DEPT_NAME"  queryMode="group"  width="120"></t:dgCol>--%>

   <t:dgCol title="createTime"  field="CREATE_TIME"  formatter="yyyy-MM-dd"  hidden="true"  queryMode="group"  width="120"></t:dgCol>
   <t:dgCol title="申请人名称"  field="APPLY_NAME" hidden="true" queryMode="group"  width="120"></t:dgCol>
   <t:dgCol title="申请公司"  field="APPLY_COMPANY" hidden="true" queryMode="group"  width="120"></t:dgCol>
   <t:dgCol title="申请人电话"  field="apply_Phone"  hidden="true"  queryMode="group"  width="120"></t:dgCol>
   <t:dgCol title="申请人身份证号"  field="apply_IdentityCard"  hidden="true"  queryMode="group"  width="120"></t:dgCol>
   <t:dgCol title="申请时间"  field="apply_Time" hidden="true"  formatter="yyyy-MM-dd"  queryMode="group"  width="120"></t:dgCol>
   <%--<t:dgCol title="所剩时限"  field="ssgzr"  queryMode="group"  width="120"></t:dgCol>
   <t:dgCol title="业务状态"  field="status"  queryMode="group" replace="在办_0,办结_1,作废_2,补交挂起_3,特别程序_4,暂存_5,已归档_6" width="120"></t:dgCol>--%>
   <t:dgCol title="预审内容"  field="check_Content" hidden="true" queryMode="group"  width="120"></t:dgCol>

   <t:dgCol title="上传时间"  field="confirm_Upload_Time"  formatter="yyyy-MM-dd hh:mm:ss" queryMode="group"  width="65"></t:dgCol>
   <t:dgCol title="到期预审时间"  field="ENDTIME"  formatter="yyyy-MM-dd" queryMode="group"  width="45"></t:dgCol>
   <t:dgCol title="预审时间"  field="check_Time"  formatter="yyyy-MM-dd hh:mm:ss" queryMode="group"  width="65"></t:dgCol>
   <t:dgCol title="预审状态"  field="CHECK_STATUS"  queryMode="group"  width="35" replace="退回_0,通过_1"></t:dgCol>
   <t:dgCol title="监控状态"  field="jcstatus"   queryMode="group"  width="35" ></t:dgCol>
   <t:dgCol title="remark"  field="remark"  hidden="true"  queryMode="group"  width="120"></t:dgCol>

   <t:dgCol title="操作" field="opt" width="30"></t:dgCol>
   <%--<t:dgDelOpt title="删除" url="bChildBusinessController.do?doDel&id={id}" urlclass="ace_button"  urlfont="fa-trash-o"/>--%>
   <t:dgFunOpt funname="view(id)" title="查看"  urlclass="ace_button"  urlfont="fa-copy"></t:dgFunOpt>
   <%--<t:dgFunOpt funname="uploadMaterial(id)" title="证照上传"  urlclass="ace_button"  urlfont="fa-copy"></t:dgFunOpt>--%>

   <%--<t:dgToolBar title="录入" icon="icon-add" url="bChildBusinessController.do?goAdd" funname="add"></t:dgToolBar>
   <t:dgToolBar title="编辑" icon="icon-edit" url="bChildBusinessController.do?goUpdate" funname="update"></t:dgToolBar>
   <t:dgToolBar title="批量删除"  icon="icon-remove" url="bChildBusinessController.do?doBatchDel" funname="deleteALLSelect"></t:dgToolBar>
   <t:dgToolBar title="查看" icon="icon-search" url="bChildBusinessController.do?goUpdate" funname="detail"></t:dgToolBar>
   <t:dgToolBar title="导入" icon="icon-put" funname="ImportXls"></t:dgToolBar>
   <t:dgToolBar title="导出" icon="icon-putout" funname="ExportXls"></t:dgToolBar>
   <t:dgToolBar title="模板下载" icon="icon-putout" funname="ExportXlsByT"></t:dgToolBar>--%>
  </t:datagrid>
  </div>
 </div>
 <script src = "webpage/com/jeecg/childbusiness/bChildBusinessList.js"></script>		
 <script type="text/javascript">
 $(document).ready(function(){
     function phaseName(str){
         alert(str);
         return str.substr(str.length-3);
     }
 });



//查看
function view(id,tableName){
    createdetailwindow("查看", "bChildBusinessController.do?goUpdate&id="+id);
}
////证照上传
//function uploadMaterial(id){
//    createwindow("证照上传", "bProjectBusinessController.do?materialList&id="+id,"1000","500");
//}
//
////导入
//function ImportXls() {
//	openuploadwin('Excel导入', 'bChildBusinessController.do?upload', "bChildBusinessList");
//}

//导出
function ExportXls() {
	JeecgExcelExport("bChildBusinessController.do?exportXls","bChildBusinessList");
}

//模板下载
function ExportXlsByT() {
	JeecgExcelExport("bChildBusinessController.do?exportXlsByT","bChildBusinessList");
}

 </script>