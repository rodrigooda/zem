<!DOCTYPE html>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta charset="UTF-8">
<meta name="_csrf" content="${_csrf.token}" />
<!-- default header name is X-CSRF-TOKEN -->
<meta name="_csrf_header" content="${_csrf.headerName}" />
<title>Registro de chamado interno |</title>
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
<link href="assets/css/custom.css" rel="stylesheet" />
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
			<div class="content">
				<!-- Page Heading Start -->
				<div class="page-heading">
					<h1>
						<i class='fa fa-table'></i> Chamado Interno

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
										Registro de <strong>Chamado</strong> Interno
									</h2>
								</div>
								<div class="widget-content">
									<div class="data-table-toolbar">
										<div class="row">
											<div class="col-md-12">
												<form id="formMensagem"
													onkeypress="return event.keyCode != 13;">
													<div class="row">
														<div class="col-md-12">

															<div id="col-md-4">
																<div class="filter" id="campos">
																	<div class="col-md-12" style="padding-left: 0;">
																		<div class="col-md-4">
																			<input type="hidden" id="creator" name="creator"
																				value="<sec:authentication property='principal.username'/>" />
																			<label>Classificação <span class="vermelho">*</span></label></label>
																			<div class="combo form-group"
																				id="comboCallClassification"></div>
																		</div>
																	</div>

																	<div class="col-md-12">

																		<div class="col-md-12" style="padding-left: 0;">
																			<div class="col-md-11" style="padding-left: 0;">
																				<label>Descrição <span class="vermelho">*</span></label>
																			</div>
																			<div class="col-md-1">
																				<div class="col-md-10"></div>
																				<div class="col-md-2">
																					<button type="button" class="btn btn-blue-2 btn-xs"
																						data-toggle="tooltip" data-placement="left"
																						title="É recomendável que se forneça o máximo de informações possíveis na descrição, com o intuito de agilizar a resolução do chamado.">

																						<i class="icon-info"></i>
																					</button>
																				</div>
																			</div>

																		</div>

																		<div class="form-group col-md-12"
																			style="padding-left: 0;">
																			<textarea id="cDescription" rows="10" cols="40"
																				class="form-control" maxlength="4000"
																				name="cDescription" style="resize: none;"></textarea>
																		</div>

																	</div>

																	<div class="col-md-12">
																		<div class="col-md-6" style="padding-left: 0;">
																			<label>Logradouro <span class="vermelho">*</span></label>
																			<div class="form-group">
																				<input type="text" class="form-control" id="cStreet"
																					name="cStreet" maxlength="40">
																			</div>
																		</div>
																		<div class="col-md-3"
																			style="padding-left: 0; padding-right: 0;">
																			<div class="col-md-4" style="padding-left: 0;">
																				<label>Número <span class="vermelho">*</span></label>
																				<div class="form-group">
																					<input type="text" class="form-control"
																						id="cNumber" name="cNumber" maxlength="5">
																				</div>
																			</div>
																			<div class="col-md-8" style="padding-left: 0;">
																				<label>Complemento</label>
																				<div class="form-group">
																					<input type="text" class="form-control"
																						id="cComplement" name="cComplement" maxlength="20">
																				</div>
																			</div>
																		</div>
																		<div class="col-md-3" style="padding-left: 0;">
																			<label>Bairro <span class="vermelho">*</span></label>
																			<div class="combo form-group" id="comboNeighborhood"></div>
																		</div>
																	</div>
																	<div class="col-md-12">
																		<div class="col-md-4" style="padding-left: 0;">
																			<label>Entidade <span class="vermelho">*</span></label>
																			<div class="combo form-group" id="comboEntity"></div>
																		</div>

																		<div class="col-md-4" style="padding-left: 0;">
																			<label>Categoria de entidade <span
																				class="vermelho">*</span></label>
																			<div class="combo form-group"
																				id="comboEntityCategory">
																				<select
																					class="form-control selectEntityCategory selectpicker"
																					id="selectEntityCategory"
																					name="selectEntityCategory">
																					<option value="-1">Selecione uma Categoria</option>
																				</select>
																			</div>
																		</div>

																		<div class="col-md-4">
																			<input id="test" style="visibility: hidden;" /><br />
																			<input type="checkbox" id="anonymity"> <label
																				for="anonymity">Chamado sigiloso?</label>
																		</div>
																	</div>
																	<br />

																	<div class="col-md-12 midia">
																		<br /> <input type="checkbox" id="nomidia"
																			name="nomidia"> <label>Não informar
																			mídias</label>
																	</div>

																	<div class="col-md-12" id="upload">
																		<p id="erro"></p>
																		<fieldset>
																			<legend> Mídias</legend>

																			<div class="show-image img1">
																				<input type="file" name="upload1" id="upload1"
																					accept="image/*"> 
																				<img id="imgUser" class="img1" src="http://i.imgur.com/SZuRQS4.png" alt="..."+="">
																				<button type="button" id="clean1"
																					class="btn btn-xs btn-danger delete">
																					<span class="glyphicon glyphicon-remove"></span>
																				</button>

																			</div>
																			<div class="show-image img2">
																				<input type="file" name="upload2" id="upload2"
																					accept="image/*">
																				<img id="imgUser" class="img2" src="http://i.imgur.com/SZuRQS4.png" alt="..."+="">
																				<button type="button" id="clean2"
																					class="btn btn-xs btn-danger delete">
																					<span class="glyphicon glyphicon-remove"></span>
																				</button>
																			</div>
																			<div class="show-image img3">
																				<input type="file" name="upload3" id="upload3"
																					accept="image/*">
																				<img id="imgUser" class="img3" src="http://i.imgur.com/SZuRQS4.png" alt="..."+="">
																				<button type="button" id="clean3"
																					class="btn btn-xs btn-danger delete">
																					<span class="glyphicon glyphicon-remove"></span>
																				</button>
																			</div>
																		</fieldset>
																	</div>

																	<div class="col-md-12">
																		<p style="margin-top: 10px;">
																			<label class="vermelho"><i>* Campos
																					obrigatórios</i></label>
																		</p>
																	</div>
																</div>
															</div>
														</div>
													</div>
											</div>

											<div id="botoes" align="center" style="padding-top: 705px;">
												<br />
												<button type="button" class="btn btn-success tamanho-botao"
													id="save">
													<span class="" aria-hidden="true"></span> Salvar
												</button>
												<a class="btn btn-danger tamanho-botao" id="cancel"
													type="button" target="_self" href="internalcall.jsp"> <span
													class="" aria-hidden="true"></span> Cancelar
												</a>
											</div>
											</form>
										</div>
									</div>
								</div>
							</div>

							<div class='modal fade in' role='dialog' id='modaldemensagem'
								aria-hidden='true'>
								<div class='modal-dialog'>
									<div class='modal-content'>
										<div id="notificacoes"></div>
									</div>
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

	<!-- End of page -->
	<!-- the overlay modal element -->
	<div class="md-overlay"></div>
	<!-- End of eoverlay modal -->
	<script>
		var resizefunc = [];
	</script>
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="assets/libs/jquery/jquery-1.11.1.min.js"></script>
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
	<script type="text/javascript" src="js/libs/jquery.validate.js"></script>
	<script type="text/javascript" src="js/libs/handlebars-v3.0.0.js"></script>
	<script type="text/javascript" src="js/fileinput.js"></script>
	<!--	<script type="text/javascript" src="js/templates.js"></script> -->

	<script type="text/javascript" src="js/template.js">
	<!-- <script type="text/javascript" src="js/validacao.js">
		
	</script>
	-->
	<script type="text/javascript" src="js/template.js"></script>
	<script type="text/javascript" src="js/abstractCRUD.js"></script>
	<script type="text/javascript" src="js/newCall.js"></script>

</body>
</html>