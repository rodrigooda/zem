<!DOCTYPE html>
<html>
<head>
<%@ page contentType="text/html; charset=UTF-8"%>
<meta charset="UTF-8">
<title>Histórico do Chamado |</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<meta name="apple-mobile-web-app-capable" content="yes" />
<meta name="description" content="Zeladoria Urbana Participativa">
<meta name="keywords"
	content="zeladoria urbaba participativa, zeladoria urbana">
<meta name="author" content="LabITec">
<!-- Base Css Files -->
<link
	href="assets/libs/jqueryui/ui-lightness/jquery-ui-1.10.4.custom.min.css"
	rel="stylesheet" />
<link href="assets/libs/bootstrap/css/bootstrap.min.css"
	rel="stylesheet" />
<link href="assets/libs/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" />
<link href="assets/libs/fontello/css/fontello.css" rel="stylesheet" />
<link href="assets/libs/animate-css/animate.min.css" rel="stylesheet" />
<link href="assets/libs/nifty-modal/css/component.css" rel="stylesheet" />
<link href="assets/libs/magnific-popup/magnific-popup.css"
	rel="stylesheet" />
<link href="assets/libs/ios7-switch/ios7-switch.css" rel="stylesheet" />
<link href="assets/libs/pace/pace.css" rel="stylesheet" />
<link href="assets/libs/sortable/sortable-theme-bootstrap.css"
	rel="stylesheet" />
<link href="assets/libs/bootstrap-datepicker/css/datepicker.css"
	rel="stylesheet" />
<link href="assets/libs/jquery-icheck/skins/all.css" rel="stylesheet" />
<!-- Code Highlighter for Demo -->
<link href="assets/libs/prettify/github.css" rel="stylesheet" />

<!-- Extra CSS Libraries Start -->
<link href="assets/libs/bootstrap-select/bootstrap-select.min.css"
	rel="stylesheet" type="text/css" />
<link href="assets/libs/summernote/summernote.css" rel="stylesheet"
	type="text/css" />
<link href="assets/css/style.css" rel="stylesheet" type="text/css" />
<!-- Extra CSS Libraries End -->
<link href="assets/css/style-responsive.css" rel="stylesheet" />

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
        <![endif]-->

<link rel="shortcut icon" href="assets/img/favicon.ico">
<link rel="apple-touch-icon" href="assets/img/apple-touch-icon.png" />
<link rel="apple-touch-icon" sizes="57x57"
	href="assets/img/apple-touch-icon-57x57.png" />
<link rel="apple-touch-icon" sizes="72x72"
	href="assets/img/apple-touch-icon-72x72.png" />
<link rel="apple-touch-icon" sizes="76x76"
	href="assets/img/apple-touch-icon-76x76.png" />
<link rel="apple-touch-icon" sizes="114x114"
	href="assets/img/apple-touch-icon-114x114.png" />
<link rel="apple-touch-icon" sizes="120x120"
	href="assets/img/apple-touch-icon-120x120.png" />
<link rel="apple-touch-icon" sizes="144x144"
	href="assets/img/apple-touch-icon-144x144.png" />
<link rel="apple-touch-icon" sizes="152x152"
	href="assets/img/apple-touch-icon-152x152.png" />
</head>
<body class="fixed-left">
	<!-- Modal Start -->
	<%@ include file="/logout.jsp"%>
	<!-- Modal Logout -->
	<div class="md-modal md-just-me" id="logout-modal"></div>

	<!-- Modal End -->
	<!-- Begin page -->

	<div id="wrapper">

		<!-- Top Bar Start -->
		<div class="topbar">
			<%@ include file="/topbar.jsp"%>

		</div>
		<!-- Top Bar End -->
		<!-- Left Sidebar Start -->
		<div class="left side-menu">
			<%@ include file="/menu.jsp"%>
		</div>
		<!-- Left Sidebar End -->

		<!-- Start right content -->
		<div class="content-page">
			<!-- ============================================================== -->
			<!-- Start Content here -->
			<!-- ============================================================== -->
			<div id="generalModule" class="content">
				<!-- Page Heading Start -->
				<div class="page-heading">
					<h1>
						<i class='fa fa-table'></i> Histórico do Chamado

					</h1>
				</div>
				<!-- Page Heading End-->
				<!-- Your awesome content goes here -->
				<div class="row">
					<div class="row">
						<div class="col-md-12">
							<div class="widget">
								<div class="widget-header transparent">
									<h2>
										Histórico do <strong>Chamado</strong>
									</h2>
								</div>
								<div class="widget-content" style="padding-bottom: 15px">
									<div id="tabela" class="table-responsive">
										<table id="resultado" class="table table-hover">
											<col width="10%" />
											<col width="10%" />
											<col width="10%" />
											<col width="10%" />
											<col width="10%" />
											<col width="10%" />
											<col width="20%" />
											<col width="20%" />
											<thead id="cthead">
												<tr>
													<th>Última Alteração</th>
													<th>Destino</th>
													<th>Classificação</th>
													<th>Status</th>
													<th>Prioridade</th>
													<th>Usuário</th>
													<th>Descrição</th>
													<th>Observação</th>
												</tr>
											<thead>
											<tbody id="ctbody">
											</tbody>
										</table>
										<br />
										<div align="right">
											<div id="pagination"></div>
										</div>

									</div>
									<div align="center">
										<br /> <br /> <a id="buttonC" href="../call.jsp" class="btn btn-primary"
											role="button" style="display: none;"> Voltar
										</a>
										<a id="buttonCF" href="../callfollow.jsp" class="btn btn-primary"
											role="button" style="display: none;"> Voltar
										</a>
									</div>
								</div>
							</div>
						</div>

						<div class='modal fade in' tabindex='-1' role='dialog'
							aria-hidden='true' id='modaldemensagem'>
							<div class='modal-dialog'>

								<div class='modal-content'>
									<div class="modal-header"></div>
									<div class="modal-body">
										<div id="notificacoes"></div>
									</div>
								</div>
							</div>
						</div>

					</div>
				</div>
			</div>

	
	

	<!-- Footer Start -->
	<div id="footer">
		<%@ include file="/footer.jsp"%>
	</div>
	<!-- Footer End -->


	</div>
	<!-- ============================================================== -->
	<!-- End content here -->
	<!-- ============================================================== -->

	</div>

	<!-- End right content -->

	<!-- End of page -->
	<!-- the overlay modal element -->
	<div class="md-overlay"></div>
	<!-- End of eoverlay modal -->
	
		<script id="hist-template" type="text/x-handlebars-template">	
	{{#each .}}<tr>
			<td>{{creationOrUpdateDate}}</td>
			<td>{{entityEntityCategoryMaps.entityCategory.name}}</td>
			<td>{{callClassificationId.name}}</td>
			<td>{{callProgress}}</td>
			<td>{{priority}}</td>
			<td>{{updatedOrModeratedBy.systemUserUsername}}</td>
			<td>{{description.information}}</td>
			<td>{{observation.information}}</td></tr>{{/each}}
	</script>
		<script id="message-template" type="text/x-handlebars-template">
		<div class='modal-header'>
			<button class='close' aria-hidden='true' data-dismiss='modal' data-backdrop='false' type='button'>X</button>
			{{title}}
		</div>
		<div class='modal-body'>
			{{body}}
		</div>
		<div class='modal-footer'>
			<a class='btn btn-success dbOk' role='button' data-dismiss='modal' data-backdrop='false' id='bOk'>Ok</a>&nbsp&nbsp&nbsp
		</div>
	</script>
	
	<script>
		var resizefunc = [];
	</script>
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="assets/libs/jquery/jquery-2.1.4.min.js"></script>
	<script src="assets/libs/bootstrap/js/bootstrap.min.js"></script>
	<script src="assets/libs/jqueryui/jquery-ui-1.10.4.custom.min.js"></script>
	<script src="assets/libs/jquery-ui-touch/jquery.ui.touch-punch.min.js"></script>
	<script src="assets/libs/jquery-detectmobile/detect.js"></script>
	<script
		src="assets/libs/jquery-animate-numbers/jquery.animateNumbers.js"></script>
	<script src="assets/libs/ios7-switch/ios7.switch.js"></script>
	<script src="assets/libs/fastclick/fastclick.js"></script>
	<script src="assets/libs/jquery-blockui/jquery.blockUI.js"></script>
	<script src="assets/libs/bootstrap-bootbox/bootbox.min.js"></script>
	<script src="assets/libs/jquery-slimscroll/jquery.slimscroll.js"></script>
	<script src="assets/libs/jquery-sparkline/jquery-sparkline.js"></script>
	<script src="assets/libs/nifty-modal/js/classie.js"></script>
	<script src="assets/libs/nifty-modal/js/modalEffects.js"></script>
	<script src="assets/libs/sortable/sortable.min.js"></script>
	<script src="assets/libs/bootstrap-fileinput/bootstrap.file-input.js"></script>
	<script src="assets/libs/bootstrap-select/bootstrap-select.min.js"></script>
	<script src="assets/libs/bootstrap-select2/select2.min.js"></script>
	<script src="assets/libs/magnific-popup/jquery.magnific-popup.min.js"></script>
	<script src="assets/libs/pace/pace.min.js"></script>
	<script
		src="assets/libs/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
	<script src="assets/libs/jquery-icheck/icheck.min.js"></script>

	<!-- Demo Specific JS Libraries -->
	<script src="assets/libs/prettify/prettify.js"></script>

	<script src="assets/js/init.js"></script>
	<!-- Page Specific JS Libraries -->
	<script src="assets/libs/bootstrap-select/bootstrap-select.min.js"></script>
	<script src="assets/libs/bootstrap-inputmask/inputmask.js"></script>
	<script src="assets/libs/summernote/summernote.js"></script>
	<script src="assets/js/pages/forms.js"></script>
	<script type="text/javascript" src="js/libs/handlebars-v3.0.0.js"></script>
	<script type="text/javascript" src="js/libs/jquery.validate.js"></script>
	<script type="text/javascript" src="js/libs/jquery.simplePagination.js"></script>


	<script type="text/javascript" src="js/hadlebarsHelpers.js"></script>
	<script type="text/javascript" src="js/history.js"></script>



</body>
</html>