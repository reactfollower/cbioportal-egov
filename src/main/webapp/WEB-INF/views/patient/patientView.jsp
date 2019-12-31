<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<% String docRoot = "/pmp/"; %>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="<%=docRoot%>js/page/patient/patient.css" type="text/css" />
    <title>Patient View</title>
    <style>
        .Footer-module {
            width: 100%;
            padding: 10px 0;
            color: #fff;
            background-color: #737373;
            position: absolute;
            bottom: 0;
            font-weight: 400;
            font-size: 0.9rem;
        }
    </style>
</head>


<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper" style="margin-left:0px;overflow-y: hidden;">
    <!-- Content Header (Page header) -->
    <section class="content-header" style="background-color: aliceblue;">
        <h1>
            &nbsp;
            <%--<small>Patient Description</small>--%>
        </h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-home"></i> </a></li>
            <li><a href="#">Patient</a></li>
            <li class="active">Patient View</li>
        </ol>
    </section>




    <%--<section class="content">--%>
        <!-- Default box -->
        <div class="box">
            <%--<div class="box-header with-border">
                <h3 class="box-title"></h3>
            </div>--%>
            <div class="box-body">
                <div id="container">
                    <%--<div class="team">
                        <div class="member">
                            <img class="avatar" src="/pmp/js/page/patient/images/user.png" alt="" class="img-circle" width="90" height="90">
                            <div class="name" id="patientage"></div>
                            <div class="location">&lt;%&ndash;Seoul&ndash;%&gt;</div>
                            <p class="bio">
                                &lt;%&ndash;kil dong is consultant in south seoul , specializing in bio application devlopmemnt Known for his passin for ....&ndash;%&gt;
                            </p>
                        </div>
                    </div>--%>

                        <div class="ttt" style="display:none;">
                            <div>
                                <i class="fa fa-user-circle-o fa-3x" aria-hidden="true"></i>
                                <div style="display: inline-flex;">
                                    <table>
                                        <thead>
                                        </thead>
                                        <tbody>
                                        <tr>
                                            <td>Patient ID:
                                              <span id="patientage"></span>
                                            </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                                <div className="studyMetaBar"></div>
                                <div id="summary_pageview" class="com-paging"></div>
                            </div>
                        </div>
                    <hr />


                        <div class="container-fulid">
                            <div class="row" id="row1">
                                <div class="col-xs-3 col">
                                    <%--<input id="cate" type="button" value="항목관리" class="btn btn-link" data-toggle="modal" data-target="#contactModal" style="margin-right:3px;">--%>
                                    <span class="label label-success ttt" data-toggle="modal" data-target="#contactModal" style="display:none;cursor:pointer">항목관리</span>
                                </div>
                                <div class="col-xs-3 col"></div>
                                <div class="col-xs-3 col"></div>
                                <div class="col-xs-3 col text-align-right">
                                    <label class="label-default" style="width: auto;text-align: right; margin-right: 10px; margin-top: 7px;" id="dhead"></label>
                                    <input id="reset" type="button" value="Reset" class="btn btn-sm btn-warning ttt" style="display:none;margin-right:3px;">
                                    <input id="xgrid" type="button" value="Grid on" class="btn btn-sm btn-success ttt" style="display:none;">
                                    <%--<label style="width: 50px; text-align: right; margin-right: 10px; margin-top: 7px;">Zoom</label>--%>
                                    <%--<input id="zoomin" type="button" value="+">--%>
                                    <%--<input id="zoomout" type="button" value="-">--%>
                                    <span id="zoomin" class="label label-success ttt" style="display:none;cursor:pointer">+</span>
                                    <span id="zoomout" class="label label-success ttt" style="display:none;cursor:pointer">-</span>
                                </div>
                            </div>
                            <div class="row" id="row2">
                                <div class="col-xs-12 col">

                                    <div id="timeline" style="overflow-x: auto;">
                                        <div id="genomicOverviewTracksContainer" />
                                    </div>

                                </div>
                            </div>
                        </div>

                    <hr />

                        <div class="ontainer-fulid">
                            <div class="row">
                                <div class="col-xs-12 col">

                                  <%--<div style="display:flex;">--%>
                                    <div style="overflow-x:auto;">
                                        <div id="genomicOverviewTracksContainer1" style="overflow-x:auto;"/>
                                    </div>
                                  <%--</div>--%>

                                </div>
                            </div>
                        </div>

                    <hr />



                        <div class="container-fulid ttt" align="right" style="display:none;">
                            <div class="row" style="width:60%;float:right;">
                                <div class="col-md-2">
                                    <div id="mut_loader" style="color: #1a21e6;display:none;" class="la-line-scale-pulse-out-rapid la-sm">
                                        <div></div>
                                        <div></div>
                                        <div></div>
                                        <div></div>
                                        <div></div>
                                        <div></div>
                                        <div></div>
                                    </div>
                                </div>
                                <div class="col-md-5" align="right">
                                    <div class="btn-group" style="width:auto;">
                                        <button class="btn btn-success" type="button" style="width:auto;">
                                            Columns
                                        </button>
                                        <button class="btn btn-success dropdown-toggle" type="button" id="dropdown1" data-toggle="dropdown">
                                            <span class="caret"></span>
                                            <span class="sr-only">Toggle dropdown</span>
                                        </button>
                                        <ul class="dropdown-menu" role="menu" aria-labelledby="dropdown1">
                                            <li role="presentation"><input id="geneExamSpcnSeq_MUTATIONS" type="checkbox"> TUMORS</li>
                                            <li role="presentation"><input id="geneNm_MUTATIONS" type="checkbox"> Gene</li>
                                            <li role="presentation"><input id="geneExamMthNm_MUTATIONS" type="checkbox"> methods</li>
                                            <li role="presentation"><input id="hgvspVal_MUTATIONS" type="checkbox"> Protein Change</li>
                                            <li role="presentation"><input id="annotation_MUTATIONS" type="checkbox"> Annotation</li>
                                            <li role="presentation"><input id="chrnNo_MUTATIONS" type="checkbox"> Chromosome</li>
                                            <li role="presentation"><input id="geneVariStLocVal_MUTATIONS" type="checkbox"> Start Pos</li>
                                            <li role="presentation"><input id="geneVariEndLocVal_MUTATIONS" type="checkbox"> End Pos</li>
                                            <li role="presentation"><input id="refAlleleSqncVal_MUTATIONS" type="checkbox"> Ref</li>
                                            <li role="presentation"><input id="variAlleleSqncVal_MUTATIONS" type="checkbox"> Var</li>
                                            <li role="presentation"><input id="ms_MUTATIONS" type="checkbox"> MS</li>
                                            <li role="presentation"><input id="geneVariClsfNm_MUTATIONS" type="checkbox" >Mutation Type</li>
                                            <li role="presentation"><input id="variAlleleReadRt_MUTATIONS" type="checkbox" > Allele Freq</li>
                                            <li role="presentation"><input id="variAlleleReadCnt_MUTATIONS" type="checkbox"> Varient Reads(N)</li>
                                            <li role="presentation"><input id="refAlleleReadCnt_MUTATIONS" type="checkbox"> Ref Reads(N)</li>
                                            <li role="presentation"><input id="copy_MUTATIONS" type="checkbox"> Copy #</li>
                                            <li role="presentation"><input id="cohort_MUTATIONS" type="checkbox"> Cohort</li>
                                            <li role="presentation"><input id="cosmic_MUTATIONS" type="checkbox"> COSMIC</li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="col-md-3" align="right">
                                    <form role="search" style="width:210px;">
                                            <div class="input-group">
                                                <input type="text" id="search_MUTATIONS" class="form-control" style="margin-left:8px;" placeholder="Search...">
                                                <%--<span class="glyphicon glyphicon-search" aria-hidden="true"></span>--%>
                                            </div>
                                        </form>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-xs-4 col" align="left" style="font-weight: bold;">
                                    <span id="mutcount"></span> Mutations
                                </div>
                                <div class="col-xs-12 col">
                                    <div style="overflow-x:auto;">
                                        <table id="MUTATIONS_t" class="table table-bordered" style="display:none;">
                                            <thead>
                                            <tr id='MUTATIONS' class="success">

                                            </tr>
                                            </thead>
                                            <tbody id="MUTATIONS_con">

                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                            <div id="MUTATIONS_pageview" class="com-paging"></div>
                        </div>


                    <hr />



                        <div class="container-fulid ttt" align="right" style="display:none;">
                            <div class="row" style="width:60%;float:right;">
                                <div class="col-md-2">
                                    <div id="cna_loader" style="color: #1a21e6;display:none;" class="la-line-scale-pulse-out-rapid la-sm">
                                        <div></div>
                                        <div></div>
                                        <div></div>
                                        <div></div>
                                        <div></div>
                                        <div></div>
                                        <div></div>
                                    </div>
                                </div>

                                <div class="col-md-5" align="right">
                                    <div class="btn-group" style="width:auto;">
                                        <button class="btn btn-success" type="button" style="width:auto;">
                                            Columns
                                        </button>
                                        <button class="btn btn-success dropdown-toggle" type="button" id="dropdown1" data-toggle="dropdown">
                                            <span class="caret"></span>
                                            <span class="sr-only">Toggle dropdown</span>
                                        </button>
                                        <ul class="dropdown-menu" role="menu" aria-labelledby="dropdown1">
                                            <li role="presentation"><input id="geneExamSpcnSeq_CNV" type="checkbox"> TUMORS</li>
                                            <li role="presentation"><input id="geneNm_CNV" type="checkbox"> Gene</li>
                                            <li role="presentation"><input id="geneExamMthNm_CNV" type="checkbox"> methods</li>
                                            <li role="presentation"><input id="annotation_CNV" type="checkbox"> Annotation</li>
                                            <li role="presentation"><input id="cytbNm_CNV" type="checkbox"> Cytoband</li>
                                            <li role="presentation"><input id="cohort_CNV" type="checkbox"> cohort</li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="col-md-3" align="right">
                                        <form role="search" style="width:210px;">
                                            <div class="input-group">
                                                <input type="text" id="search_CNV" class="form-control" style="margin-left:8px;" placeholder="Search...">
                                                <%--<span class="glyphicon glyphicon-search" aria-hidden="true"></span>--%>
                                            </div>
                                        </form>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-xs-4 col" align="left" style="font-weight: bold;">
                                    <span id="cnacount"></span> Copy Number Alterlations
                                </div>
                                <div class="col-xs-12 col">

                                    <div style="overflow-x:auto;">

                                        <table id="CNV_t" class="table table-bordered" style="display:none;">
                                            <thead>
                                            <tr id='CNV' class="info">
                                            </tr>
                                            </thead>
                                            <tbody id="CNV_con">

                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                            <div id="CNV_pageview" class="com-paging"></div>
                        </div>

                      <hr />



                        <div class="container-fulid ttt" align="right" style="display:none;">
                            <div class="row" style="width:60%;float:right;">
                              <div class="col-md-7" align="right">
                                <div class="btn-group" style="width:auto;">
                                  <button class="btn btn-success" type="button" style="width:auto;">
                                     Columns
                                  </button>
                                  <button class="btn btn-success dropdown-toggle" type="button" id="dropdown1" data-toggle="dropdown">
                                    <span class="caret"></span>
                                    <span class="sr-only">Toggle dropdown</span>
                                 </button>
                                 <ul class="dropdown-menu" role="menu" aria-labelledby="dropdown1">
                                    <li role="presentation"><input id="geneNm_EXPRESSION" type="checkbox"> Gene</li>
                                    <li role="presentation"><input id="geneExamMthNm_EXPRESSION" type="checkbox"> methods</li>
                                    <li role="presentation"><input id="ptegGeneReadRsltVal_EXPRESSION" type="checkbox"> Expression Result</li>
                                    <li role="presentation"><input id="gnex_EXPRESSION" type="checkbox"> Expression Value</li>
                                    <li role="presentation"><input id="gnexMsrVal_EXPRESSION" type="checkbox"> Expression Unit</li>
                                 </ul>
                               </div>
                              </div>
                              <div class="col-md-3" align="right">
                                <form role="search" style="width:210px;">
                                  <div class="input-group">
                                    <input type="text" id="search_EXPRESSION" class="form-control" style="margin-left:8px;" placeholder="Search...">
                                    <%--<span class="glyphicon glyphicon-search" aria-hidden="true"></span>--%>
                                  </div>
                               </form>
                             </div>
                            </div>

                        <div class="row">
                          <div class="col-xs-4 col" align="left" style="font-weight: bold;">
                              <span id="expcount"></span> Expressions
                           </div>
                           <div class="col-xs-12 col">

                                    <div style="overflow-x:auto;">

                                        <table id="EXPRESSION_t" class="table table-bordered">
                                            <thead>
                                            <tr id='EXPRESSION' class="warning">
                                            </tr>
                                            </thead>
                                            <tbody id="EXPRESSION_con">

                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                            <div id="EXPRESSION_pageview" class="com-paging"></div>
                            </div>

                        <hr />



                                <div class="container-fulid ttt" align="right" style="display:none;">
                                    <div class="row" style="width:60%;float:right;">
                                        <div class="col-md-2">
                                            <div id="st_loader" style="color: #1a21e6;display:none;" class="la-line-scale-pulse-out-rapid la-sm">
                                                <div></div>
                                                <div></div>
                                                <div></div>
                                                <div></div>
                                                <div></div>
                                                <div></div>
                                                <div></div>
                                            </div>
                                        </div>
                                        <div class="col-md-5" align="right">
                                            <div class="btn-group" style="width:auto;">
                                                <button class="btn btn-success" type="button" style="width:auto;">
                                                    Columns
                                                </button>
                                                <button class="btn btn-success dropdown-toggle" type="button" id="dropdown1" data-toggle="dropdown">
                                                    <span class="caret"></span>
                                                    <span class="sr-only">Toggle dropdown</span>
                                                </button>
                                                <ul class="dropdown-menu" role="menu" aria-labelledby="dropdown1">
                                                    <li role="presentation"><input id="geneExamSpcnSeq_SV" type="checkbox"> Tumors</li>
                                                    <li role="presentation"><input id="geneNm_SV" type="checkbox"> Gene1</li>
                                                    <li role="presentation"><input id="geneNm1_SV" type="checkbox"> Gene2</li>
                                                    <li role="presentation"><input id="geneExamMthNm_SV" type="checkbox"> methods</li>
                                                    <li role="presentation"><input id="annotation_SV" type="checkbox"> Annotation</li>
                                                    <li role="presentation"><input id="cytbNm_SV" type="checkbox"> Cytoband1</li>
                                                    <li role="presentation"><input id="cytbNm1_SV" type="checkbox"> Cytoband2</li>
                                                    <li role="presentation"><input id="cohort_SV" type="checkbox"> Chort</li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="col-md-3" align="right">
                                          <form role="search" style="width:210px;">
                                            <div class="input-group">
                                               <input type="text" id="search_SV" class="form-control" style="margin-left:8px;" placeholder="Search...">
                                               <%--<span class="glyphicon glyphicon-search" aria-hidden="true"></span>--%>
                                            </div>
                                          </form>
                                        </div>
                                     </div>

                                    <div class="row">
                                        <div class="col-xs-4 col" align="left" style="font-weight: bold;">
                                           <span id="svcount"></span> Svs
                                        </div>
                                        <div class="col-xs-12 col">
                                            <div style="overflow-x:auto;">

                                                <table id="SV_t" class="table table-bordered" style="display:none;">
                                                    <thead>
                                                    <tr id='SV' class="danger">
                                                    </tr>
                                                    </thead>
                                                    <tbody id="SV_con">

                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                    <div id="SV_pageview" class="com-paging">
                                    </div>
                                </div>

                   </div>
                </div>
<hr/>
                <div class="box-footer text-align-center Footer-module ttt" style="display:none;">
                    <span style="font-size:14px;"><%--Inspired by and Kopied by</span> &lt;%&ndash;Memorial Sloan Kettering CancerCenter&ndash;%&gt;--%>
                    <%--<img src="/pmp/js/page/patient/images/msk-logo-fff-sm.png" style="height:50px"/>--%>
                        Asan Cancer Center
                </div>


</div>

<div id="spinner" style="zIndex:100;position:relative;display:none;">
    <div class="centered" >
        <div class="sk-spinner la-line-scale-pulse-out big">
            <%--<div class="la-line-scale-pulse-out la-2x" style="color: #3941ff">--%>
            <div></div>
            <div></div>
            <div></div>
            <div></div>
            <div></div>
        </div>
    </div>
    <iframe id="ifr"
            style="width:100%;position:relative;zIndex:100;border:none;"
            src=""
    >
    </iframe>
</div>


<div id="spinner1" style="zIndex:100;position:relative;display:none;">
    <div class="centered" >
        <div class="la-ball-clip-rotate la-3x" style="color: #87c4a3">
            <div></div>
        </div>
    </div>
</div>
<!-- CATE MODAL -->
<div class="modal fade text-dark" id="contactModal">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title"></h5>
                <button class="close" data-dismiss="modal">
                    <span>&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <%--<div id="treegrid"></div>--%>

                <table class="table table-bordered">
                    <thead>
                    <tr class="success">
                        <th></th>
                        <th>ID</th>
                        <th>NAME</th>
                    </tr>
                    </thead>
                    <tbody id="cate_con">

                    </tbody>
                </table>

            </div>
            <div class="modal-footer">
                <button id="cateApply" class="btn btn-primary btn-block">Apply</button>
            </div>
        </div>
    </div>
</div>

</div>

<form name="pform" id="pform" method="post" action="/pmp/patient/patientView">
    <input type="hidden" name="patients" id="patients" value="${patients}"/>
    <input type="hidden" name="query" id="QUERY" value="${QUERY}"/>
    <input type="hidden" name="resch_pat_id" id="RESCH_PAT_ID" value="${RESCH_PAT_ID}"/>
    <input type="hidden" name="pages" id="pages" value="${pages}"/>
    <input type="hidden" name="patientId" id="patientId" value="${patientId}"/>
</form>

<script src="<c:url value="/js/page/patient/const.js" />"></script>
<script src="<c:url value="/js/page/patient/oncokbUtil.js" />"></script>
<script src="<c:url value="/js/page/patient/pagination.js" />"></script>
<script src="<c:url value="/js/page/patient/patientViewPage.js" />"></script>
<script src="<c:url value="/js/page/patient/diagnosis/pathology.js" />"></script>
<script src="<c:url value="/js/page/patient/diagnosis/specimen.js" />"></script>
<script src="<c:url value="/js/page/patient/diagnosis/image.js" />"></script>
<script src="<c:url value="/js/page/patient/diagnosis/sugery.js" />"></script>
<script src="<c:url value="/js/page/patient/diagnosis/biopsy.js" />"></script>
<script src="<c:url value="/js/page/patient/plotFilter.js" />"></script>
<script src="<c:url value="/js/page/patient/event.js" />"></script>
<script src="<c:url value="/js/page/patient/Timeline.js" />"></script>
<script src="<c:url value="/js/page/patient/annotation.js" />"></script>
<script src="<c:url value="/js/page/patient/civic.js" />"></script>
<script src="<c:url value="/js/page/patient/PatientViewMutationTable.js" />"></script>
<script src="<c:url value="/js/page/patient/GenomicOverview.js" />"></script>
<script>
    var PATIENTID;
    var QUERY;
    var resch_pat_id = '<%=(request.getParameter("RESCH_PAT_ID") == null) ? "48321932" : request.getParameter("RESCH_PAT_ID")%>';
    var patients  = '<%=(request.getParameter("patients") == null) ? "" : request.getParameter("patients")%>';
    var patientId = '<%=(request.getParameter("patientId") == null) ? "" : request.getParameter("patientId")%>';
    var pages     = '<%=(request.getParameter("pages") == null) ? "1" : request.getParameter("pages")%>'

    document.pform.patients.value = patients;
    document.pform.patientId.value = patientId;
    document.pform.pages.value = pages;
    document.pform.resch_pat_id.value = resch_pat_id;

    console.log('pages ', pages);
    console.log('resch_pat_id ', resch_pat_id);
    console.log('patientId ', patientId);
    // console.log('patients ' , patients);

    if(patients=='') {
        getPatients();
    }
    else {
        buildPatient();
    }

    function buildPatient(){
        var patients = document.pform.patients.value;
         if(pages==='1' && resch_pat_id.length>7 && resch_pat_id.length<15){
             patientId = resch_pat_id;
         }
        if(patientId==""){
            patientId = patients.split(",")[0];
        }
        PATIENTID = patientId;
        QUERY = document.pform.query.value;

        $("#patientname").text(patientId);
        var pager = new Pager();
        var sel = $("#summary_pageview");
        var udata = [];
        if(patients.indexOf(",")!==-1){
            var ps = patients.split(",");
            for(var i=0;i<ps.length;i++){
                udata.push(ps[i]);
            }
        }else{
            udata.push(patients);
        }

        var patientView = new PatientView();
        patientView.getPatientDescription();

        var tpage = udata.length;
        var page = parseInt(pages);
        pager.buildPage(page, tpage, sel, new Noop, udata, 'simple');
    }


    function getPatients(){
        // alert('getPatients');
        console.log('getPatients called',);
        var action = new Action();
        var ds_cond = {};
        //console.log('document.pform.QUERY.value',document.pform.QUERY.value);
        var query = document.pform.query.value;
        ds_cond.data = {"queryId": "patient.selectPatientzz",'query':query};
        ds_cond.callback = setPatients;
        action.selectPatientz(ds_cond);

    }
    function setPatients(json){
        console.log('setPatients called');
        //console.log(json);
        var temp = [];
        for(var i=0;i<json.length;i++){
            temp.push(json[i].RESCH_PAT_ID);
        }
        document.pform.patients.value = temp.join(",");
        buildPatient();
    }

    function Noop(){
        var self = this;
        self.movePage = function(page){
            document.pform.pages.value = page;
            var patients = document.pform.patients.value;
            document.pform.patientId.value=patients.split(",")[parseInt(page)-1];
            // console.log(patients);
            // alert(document.pform.patientId.value);
            document.pform.submit();
        }
    }
</script>
</body>
