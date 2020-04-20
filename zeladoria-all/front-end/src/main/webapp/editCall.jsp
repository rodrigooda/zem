
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
<%@ page contentType="text/html; charset=UTF-8"%>
<title>Edição de Chamado |</title>
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
<link href="assets/libs/nifty-modal/css/component.css" rel="stylesheet" />
<link href="assets/libs/bootstrap-datepicker/css/datepicker.css"
	rel="stylesheet" />
<link href="assets/libs/jquery-icheck/skins/all.css" rel="stylesheet" />
<!-- Code Highlighter for Demo -->
<link href="assets/libs/prettify/github.css" rel="stylesheet" />

<!-- Extra CSS Libraries Start -->
<link href="assets/libs/bootstrap-select/bootstrap-select.min.css"
	rel="stylesheet" type="text/css" />
<link href="assets/css/style.css" rel="stylesheet" type="text/css" />
<!-- Extra CSS Libraries End -->
<link href="assets/css/style-responsive.css" rel="stylesheet" />
<link href="assets/css/custom.css" rel="stylesheet" />


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
		<div id="generalModule" class="content-page">
			<!-- ============================================================== -->
			<!-- Start Content here -->
			<!-- ============================================================== -->
			<div class="content">
				<!-- Page Heading Start -->
				<div class="page-heading">
					<h1>
						<i class='fa fa-table'></i> Chamados
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
										Edição de <strong>Chamado</strong>
									</h2>
								</div>
								<div class="widget-content">
									<div class="data-table-toolbar">
										<div class="row">
											<div class="col-md-12">
												<form id="IForm" method="get"
													onkeypress="return event.keyCode != 13;">
													<div id="camposI">
														<input type="hidden" id="username" name="username"
															value="<sec:authentication property='principal.username'/>" />

														<input type="text" class="form-control hideID" id="inId"
															name="inId" value=""> <input type="text"
															class="form-control hideID" id="inEnabled"
															name="inEnabled">

														<div class="col-md-12">
															<div class="col-md-6 espacamento-left">
																<div class="col-md-6 espacamento-left">
																	<label> Origem</label>
																	<div class="form-group">
																		<input type="text" class="form-control" id="inOrigin"
																			placeholder="Origem" name="inOrigin" disabled>
																	</div>
																</div>
																<div class="col-md-6 espacamento-right">
																	<label> Data</label>
																	<div class="form-group">
																		<input type="text" class="form-control" id="inDate"
																			placeholder="03/04/15" name="inDate" disabled>
																	</div>
																</div>
															</div>
															<div class="col-md-6 espacamento-right">
																<label> Usuário</label>

																<div class="form-group">
																	<input type="text" class="form-control" id="inUser"
																		placeholder="X" name="inUser" disabled>
																</div>

															</div>
														</div>
														<div class="col-md-12">
															<div class="col-md-6 espacamento-left">

																<div class="form-group">
																	<div id="comboEntity">
																		<label>Entidade <span class="vermelho">*</span></label>
																		<select class="form-control selectEntity"
																			id="selectEntity" name="selectEntity">
																			<option value="">[Selecione uma Entidade]</option>
																		</select>
																	</div>

																</div>

															</div>
															<div class="col-md-6 espacamento-right">
																<div class="form-group">
																	<label>Categoria de entidade <span
																		class="vermelho">*</span></label>
																	<div id="comboEntityCategory">
																		<select class="form-control selectEntityCategory"
																			id="selectEntityCategory" name="selectEntityCategory">
																			<option value="">Selecione uma Categoria</option>
																		</select>
																	</div>
																</div>
															</div>
														</div>
														<div class="col-md-12">
															<div class="col-md-6 espacamento-left">
																<div class="form-group">
																	<div id="comboCallClassification">
																		<label>Classificação <span class="vermelho">*</span></label>
																		<select class="form-control selectCallClassification"
																			id="selectCallClassification"
																			name="selectCallClassification">
																			<option value="">Selecione uma Classificação</option>
																		</select>
																	</div>
																</div>
															</div>

															<div class="col-md-6 espacamento-right"
																id="comboPriority">
																<label>Prioridade<span class="vermelho">*</span></label><br>
																<select class="form-control selectPriority"
																	id="selectPriority" name="selectPriority">
																	<option value="">Selecione uma Prioridade</option>
																	<option value="0">Baixa</option>
																	<option value="1">Média</option>
																	<option value="2">Alta</option>
																</select>
															</div>
														</div>														
														
														<div class="col-md-12">
																<div class="col-md-6" style="padding-left: 0;">
																	<label>Logradouro</label>
																	<div class="form-group">
																		<input type="text" class="form-control" id="inStreet"
																			name="inStreet" maxlength="100">
																	</div>
																</div>
																<div class="col-md-3" style="padding-left: 0;padding-right:0;">
																	<div class="col-md-4" style="padding-left: 0;">
																		<label>Número</label>

																		<div class="form-group">
																			<input type="text" class="form-control" id="inNumber"
																				name="inNumber" maxlength="5">
																		</div>
																	</div>
																	<div class="col-md-8" style="padding-left: 0;">
																		<label>Complemento</label>

																		<div class="form-group">
																			<input type="text" class="form-control"
																				id="inComplement" name="inComplement" maxlength="20">
																		</div>

																	</div>
																</div>
																<div class="col-md-3 espacamento-right" style="padding-left: 0;">
																	<div class="combo form-group" id="comboNB">
																		<label>Bairro</label><br> <select
																			class="form-control selectNB" name="selectNB"
																			id="selectNB">
																		</select>
																	</div>
																</div>
															</div>
														
														<div class="col-md-12">
															<label>Descrição <span class="vermelho">*</span></label>
															<div class="form-group">
																<textarea id="inDescription" rows="8" cols="40"
																	class="form-control" maxlength="1000"
																	name="inDescription" maxlength="1000"></textarea>
															</div>
														</div>
														<div class="col-md-12">
															<label>Observações</label>
															<div class="form-group">
																<textarea id="inObservation" rows="8" cols="40"
																	class="form-control" maxlength="1000"
																	name="inObservation" maxlength="1000"></textarea>
															</div>
														</div>

														<div class="col-md-12">
															<p style="margin-top: 10px;">
																<label class="vermelho"><i>* Campos
																		obrigatórios</i></label>
															</p>
														</div>


													</div>
													<div class="col-md-12" align="center" id="botoes">
														<a class="btn btn-success saveAction tamanho-botao"
															role="button" type="button" id="btSave">Salvar</a> <a
															class="btn btn-blue-3 saveSendAction" role="button"
															type="button" id="btSaveSend"">Salvar e Encaminhar</a> <a
															href="../call.jsp" class="btn btn-danger tamanho-botao"
															role="button">Cancelar</a>
													</div>
												</form>
											</div>
										</div>
									</div>
								</div>

								<div class='modal fade in' role='dialog' id='modalE'
									aria-hidden='true'>
									<div class='modal-dialog'>
										<div class='modal-content'>
											<div id="notificacoesE"></div>
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
	<script id="pbmodal-template" type="text/x-handlebars-template">
		<div class='modal-header'><button class='close' aria-hidden='true' data-dismiss='modal' type='button'>×</button> Comunicado em massa </div>
		<div class='modal-body'> Você tem certeza que deseja publicar o Comunicado em Massa {{name}}? </div>
		<div class='modal-footer'>
			<a class='btn btn-success pbSim' role='button' data-id='{{id}}' data-row='{{row}}' id='pbSim'>Sim</a>&nbsp&nbsp&nbsp
			<a class='btn btn-danger' data-dismiss='modal' role='button' id='pbNao'>Não</a>
		</div>
	</script>

	<script id="edmodal-template" type="text/x-handlebars-template">
		<div class='modal-header'><button class='close' aria-hidden='true' data-dismiss='modal' type='button'>×</button> Comunicado em massa </div>
		<div class='modal-body'> Você tem certeza que deseja {{msg}} o Comunicado em massa {{name}}? </div>
		<div class='modal-footer'>
			<a data-backdrop='false' class='btn btn-success dbSim' role='button' data-link='{{link}}' data-id='{{id}}' data-row='{{row}}' id='bSim'>Sim</a>&nbsp&nbsp&nbsp
			<a data-backdrop='false' class='btn btn-danger' data-dismiss='modal' role='button' id='bNao'>Não</a>
		</div>
	</script>

	<script id="edmessage-template" type="text/x-handlebars-template">
		<div class='modal-header'><button class='close' aria-hidden='true' data-dismiss='modal' type='button'>×</button> {{title}} </div>
		<div class='modal-body'> {{body}} </div>
		<div class='modal-footer'>
			<a data-backdrop='false' class='btn btn-success dbOk' role='button' data-dismiss='modal' id='bOk'>Ok</a>&nbsp&nbsp&nbsp
		</div>
	</script>

	<script id="combo-cc-template" type="text/x-handlebars-template">
		<option value="">Selecione uma Classificação</option>
		{{#each .}}
		<option value="{{callClassificationId}}">{{name}}</option>
		{{/each}}
	</script>

	<script id="combo-ec-template" type="text/x-handlebars-template">
		<option value="">Selecione uma Categoria</option>
		{{#each .}}
		<option value="{{entityCategoryId}}">{{name}}</option>
		{{/each}}
	</script>
	
	<script id="combo-en-template" type="text/x-handlebars-template">
		<option value="">Selecione uma Entidade</option>
		{{#each .}}
		<option value="{{entityId}}">{{name}}</option>
		{{/each}}
	</script>
	
	<script id="combo-nb-template" type="text/x-handlebars-template">
		{{#each .}}
		<option value="{{neighborhoodId}}">{{name}}</option>
		{{/each}}
	</script>

	<script id="message-template" type="text/x-handlebars-template">
		<div class='modal-header'><button class='close' aria-hidden='true' data-dismiss='modal' type='button'>×</button> {{title}} </div>
		<div class='modal-body'> {{body}} </div>
		<div class='modal-footer'>
			<a href="../call.jsp"  style="display: none;" class='btn btn-success dbOk' role='button' id='bOk1'>Ok</a>
			<a class='btn btn-success dbOk' data-dismiss='modal'  style="display: none;" role='button' id='bOk2'>Ok</a>
			<a class='btn btn-danger' data-dismiss='modal' style="display: none;" id="bOk3" role='button'>Ok!</a>
			&nbsp&nbsp&nbsp
		</div>
	</script>

	<script>
		var resizefunc = [];
	</script>
	
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="assets/libs/jquery/jquery-1.11.1.min.js"></script>
	<script src="assets/libs/bootstrap/js/bootstrap.min.js"></script>
	<script src="assets/libs/jqueryui/jquery-ui-1.10.4.custom.min.js"></script>
	<script src="assets/libs/jquery-ui-touch/jquery.ui.touch-punch.min.js"></script>
	<script src="assets/libs/jquery-detectmobile/detect.js"></script>
	<script src="assets/libs/bootstrap-bootbox/bootbox.min.js"></script>
	<script src="assets/libs/jquery-slimscroll/jquery.slimscroll.js"></script>
	<script src="assets/libs/nifty-modal/js/classie.js"></script>
	<script src="assets/libs/nifty-modal/js/modalEffects.js"></script>
	<script src="assets/libs/bootstrap-fileinput/bootstrap.file-input.js"></script>
	<script src="assets/libs/bootstrap-select/bootstrap-select.min.js"></script>
	<script src="assets/libs/bootstrap-select2/select2.min.js"></script>
	<script
		src="assets/libs/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
	<script src="assets/libs/jquery-icheck/icheck.min.js"></script>

	<!-- Demo Specific JS Libraries -->
	<script src="assets/libs/prettify/prettify.js"></script>

	<script src="assets/js/init.js"></script>
	<!-- Page Specific JS Libraries -->
	<script src="assets/libs/bootstrap-select/bootstrap-select.min.js"></script>
	<script src="assets/libs/bootstrap-inputmask/inputmask.js"></script>
	<script type="text/javascript" src="js/libs/handlebars-v3.0.0.js"></script>
	<script type="text/javascript" src="js/libs/jquery.validate.js"></script>
	
	<script type="text/javascript" src="js/handlebarsHelpers.js"></script>
	<script type="text/javascript" src="js/ctrlMONadd.js"></script>
</body>
</html>