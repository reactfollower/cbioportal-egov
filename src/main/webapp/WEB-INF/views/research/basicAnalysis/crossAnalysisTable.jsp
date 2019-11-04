<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<div class="row">
	<section class="col-lg-5">
		<div class="box">
			<div class="box-header">
				<i class="fa fa-comments-o"></i>
				<h3 class="box-title">INPUT</h3>
			</div>
			<div class="box-body">
				<div class="item" id="">
					<div class="col-md-6">
						<div id="crossAnalysisTable_targetList">
						</div>
					</div>
					<div class="col-md-6">
						<div class="row">
							<div class="col-md-12 p-b-10">
								<div class="form-group">
									<label for="environmentVariable"><img src='../images/COD.png'><strong id="crossAnalysisTable_targetA_name"> 행 : CODE </strong></label>
									<div id="crossAnalysisTable_targetA"></div>
								</div>
							</div>
							<div class="col-md-12">
								<div class="form-group">
									<label for="groupVariable"><img src='../images/COD.png'><strong id="crossAnalysisTable_targetB_name"> 열 : CODE </strong></label>
									<div id="crossAnalysisTable_targetB"></div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="">
			<div class="pull-right">
				<a href="javascript:;" class="btn btn-danger btn-sm" id="btncrossAnalysisTable_Init">초기화</a> <a href="javascript:;" class="btn btn-success btn-sm" id="btncrossAnalysisTable_Execute">실행</a>
			</div>
		</div>
	</section>
	
	<section class="col-lg-7">
		<div class="box">
			<div class="box-header">
				<i class="fa fa-comments-o"></i>
				<h3 class="box-title">X<sup>2</sup> 검정</h3>
			</div>
			<div class="panel-body" id="crossAnalysisTable_results" style="overflow-y: auto;">
				<div class="row">
					<div class="col-md-12 margin-bottom-10">
						<label style="font-weight: bold;">교차표</label>
						<div id="crossAnalysisTable_dataGridList_1"></div>
					</div>
					<div class="col-md-12">
						<label style="font-weight: bold;">카이제곱검정</label>
						<div id="crossAnalysisTable_dataGridList_2"></div>
						<span>※ 연속성보정은 2X2 테이블에 대해서만 계산합니다.</span>
					</div>
				</div>
			</div>
			<div class="overlay" style="z-index:1000; display: none" id="crossAnalysisTable_loading">
				<i class="fa fa-refresh fa-spin"></i>
			</div>
		</div>
	</section>
</div>
<script src="<c:url value="/js/page/research/basicAnalysis/crossAnalysisTable.js" />"></script>
