var str1 = "Chamado";
var str2 = "Chamado";
var str3 = "o";

		
$(document)
		.ready(
				function() {
					var token = $("meta[name='_csrf']").attr("content");
					var header = $("meta[name='_csrf_header']").attr("content");
					var urlWeb = window.location.search;
					var userIdentification = geturl('useridentification');
					combo('../rest/callclassification',
							ModelsTmpl.tmplComboCallClassification,
							"#comboCallClassification");
					combo('../rest/neighborhood/city/' + 3551,
							ModelsTmpl.tmplComboNeighborhood,
							"#comboNeighborhood");
					combo('../rest/entityclass/combosativos',
							ModelsTmpl.tmplComboEntity, "#comboEntity");
					$('#comboEntity').change(
							function() {
								$('#comboEntity', '#selectEntityCategory')
										.remove();
								combo('../rest/entitycategory/activeentity/'
										+ $('#comboEntity  option:selected')
												.val(),
										ModelsTmpl.tmplComboEntityCategory,
										"#comboEntityCategory");
							});
					$('#formMensagem').validate({
						errorPlacement : function(error, element) {
							$(element).parent().addClass("has-error");
							error.insertAfter(element);
							error.wrap("<p>");
							error.css('color', 'red');
						},
						rules : {

						}
					});

					function validaISalvar() {
						// Descrição
						$('#cDescription')
								.each(
										function() {
											$(this)
													.rules(
															'add',
															{
																minlength : 10,
																maxlength : 1000,
																required : true,
																messages : {
																	required : "Insira a descrição",
																	minlength : jQuery.validator
																			.format("Por favor, insira mais que {0} caracteres."),
																	maxlength : jQuery.validator
																			.format("Por favor, insira menos que {0} caracteres.")
																}
															});
										});

						// Rua
						$('#cStreet')
								.each(
										function() {
											$(this)
													.rules(
															'add',
															{
																maxlength : 100,
																required : true,
																messages : {
																	required : "Insira a rua",
																	maxlength : jQuery.validator
																			.format("Por favor, insira menos que {0} caracteres.")
																}
															});
										});

						// Numero
						$('#cNumber')
								.each(
										function() {
											$(this)
													.rules(
															'add',
															{
																maxlength : 5,
																required : true,
																number : true,
																messages : {
																	required : "Insira o numero",
																	number : "Este campo aceita somente números",
																	maxlength : jQuery.validator
																			.format("Por favor, insira menos que {0} caracteres.")
																}
															});
										});
						// Complemento
						$('#cComplement')
								.each(
										function() {
											$(this)
													.rules(
															'add',
															{
																maxlength : 15,
																messages : {
																	maxlength : jQuery.validator
																			.format("Por favor, insira menos que {0} caracteres.")
																}
															});
										});

					}

					var upload1Base64 = null;
					var upload2Base64 = null;
					var upload3Base64 = null;
					var base64 = null;

					function verificaFotoseCombos() {
						
						var valid = true;
						
						if (!$('#nomidia').parent().hasClass("checked")) {
							if (upload1Base64 == null && upload2Base64 == null
									&& upload3Base64 == null) {
								valid = false;
							}
						}
						
						if($("#selectNeighborhood").val() == -1){
							$("#selectNeighborhood").parent().addClass("has-error");
							valid = false;
						}
						if($("#selectCallClassification").val() == -1){
							$("#selectCallClassification").parent().addClass("has-error");
							valid = false;
						}
						if($("#selectEntity").val() == -1){
							$("#selectEntity").parent().addClass("has-error");
							valid = false;
						}
						if($("#selectEntityCategory").val() == -1){
							$("#selectEntityCategory").parent().addClass("has-error");
							valid = false;
						}
						
						return valid;
					}

					function geturl(key) {
						var result = new RegExp(key + "=([^&]*)", "i")
								.exec(window.location.search);
						return result && unescape(result[1]) || "";
					}
					var anonymityUrl = geturl('anonymity');
					var citizenCpf = geturl('citizenCpf');

					var name = geturl('name');
					var email = geturl('email');
					var cpf = geturl('cpf');

					var internalcall = geturl('useridentification');

					$('#nomidia').on('ifUnchecked', function(event) {
						$("#upload").children().prop('disabled', false);
					});
					$('#nomidia').on('ifChecked', function(event) {
						$("#upload").children().prop('disabled', true);
					});

					$('#modaldemensagem').on("click", ".exit-button",
							function(event) {
								event.preventDefault();
								if (userIdentification == 1)
									window.location = '../internalcall.jsp';
								else
									window.location = '../identification.jsp';
							});

					$('#modaldemensagem')
							.on(
									"click",
									".new-call-button",
									function(event) {
										event.preventDefault();
										$("#cDescription").val("");
										$("#cStreet").val("");
										$("#cNumber").val("");
										$("#cComplement").val("");
										$("#selectNeighborhood").val(-1);
										$("#selectCallClassification").val(-1);
										$("#selectEntity").val(-1);
										$("#comboEntityCategory")
												.html(
														"<select class='form-control selectEntityCategory selectpicker' " +
														"id='selectEntityCategory' name='selectEntityCategory'> " +
														"<option value='-1'>Selecione uma Categoria</option> </select>");
										$("#anonymity").parent().removeClass(
												"checked");
										$("#nomidia").parent().removeClass(
												"checked");
										$("#comboEntityCategory").removeClass("has-error");
										$("#comboEntity").removeClass("has-error");
										$("#comboNeighborhood").removeClass("has-error");
										$("#comboCallClassification").removeClass("has-error");
									});
					var updatedOrModeratedBy;

					$("#save")
							.click(
									function() {
										validaISalvar();
										var verifica = verificaFotoseCombos();

										if ($("#formMensagem").valid()
												&& verifica) {

											var street = $("#cStreet").val();
											var number = $("#cNumber").val();
											var complement = $("#cComplement")
													.val();
											var neighborhood_id = $(
													"#comboNeighborhood option:selected")
													.val();
											var neighborhood_name = $(
													"#comboNeighborhood option:selected")
													.text();
											var entity = $(
													'#comboEntity  option:selected')
													.val();
											var anonymity = $('#anonymity').is(
													':checked') ? 0 : 1;
											var nomidia = $('#nomidia').is(
													':checked');
											var mediasPath = new Array();

											var unsolvedCall = {
												'description' : {
													'information' : $(
															"#cDescription")
															.val()
												},
												'addressId' : {
													'streetName' : $("#cStreet")
															.val(),
													'addressNumber' : $(
															"#cNumber").val(),
													'complement' : $(
															"#cComplement")
															.val(),
													'neighborhoodId' : {
														'neighborhoodId' : neighborhood_id,
														'name' : neighborhood_name
													}
												},
												'entityEntityCategoryMaps' : {
													'entityCategory' : {
														'entityCategoryId' : $(
																"#selectEntityCategory option:selected")
																.val()
													},
													'entity' : {
														'entityId' : $(
																"#selectEntity option:selected")
																.val()
													}
												},
												'callClassificationId' : {
													'callClassificationId' : $(
															'#selectCallClassification  option:selected')
															.val()
												},
												'anonymity' : $('#anonymity')
														.is(':checked') ? 0 : 1,
												'callStatus' : 0,
												'noMidia' : nomidia
											};

											if (internalcall == 1) {
												unsolvedCall["updatedOrModeratedBy"] = $(
														"#creator").val();
											}

											if (nomidia == false) {
												if (upload1Base64 != null)
													mediasPath
															.push(upload1Base64);
												if (upload2Base64 != null)
													mediasPath
															.push(upload2Base64);
												if (upload3Base64 != null)
													mediasPath
															.push(upload3Base64);
												unsolvedCall.mediasPath = mediasPath;
											}
											;
											if (anonymityUrl !== "") {
												saveNewCallToken(
														'../rest/unsolvedcall/anonymity',
														JSON
																.stringify(unsolvedCall),
														userIdentification,
														urlWeb, header, token);
												console
														.log(JSON
																.stringify(unsolvedCall));
											}
											if (citizenCpf !== "") {
												unsolvedCall.citizenCpf = {
													'citizen_cpf' : citizenCpf
												};
												saveNewCallToken(
														'../rest/unsolvedcall/mobile',
														JSON
																.stringify(unsolvedCall),
														userIdentification,
														urlWeb, header, token);
												console
														.log(JSON
																.stringify(unsolvedCall));
											}
											if (name !== "") {
												unsolvedCall.webUser = {
													'name' : name,
													'email' : email,
													'webUserCpf' : cpf
												};
												saveNewCallToken(
														'../rest/webuser/add',
														JSON
																.stringify(unsolvedCall),
														userIdentification,
														urlWeb, header, token);
												console
														.log(JSON
																.stringify(unsolvedCall));
											}

										} else {
											validateError();
											$('#modaldemensagem').modal('show');
											return false;
										}
									});

					function changeImg(button) {
						var countFiles = $(button)[0].files.length;
						var buttonFile = $(button);
						var imgPath = $(button)[0].value;
						var extn = imgPath.substring(
								imgPath.lastIndexOf('.') + 1).toLowerCase();
						var image_holder = $("#image-holder");
						image_holder.empty();
						if (extn == "gif" || extn == "png" || extn == "jpg"
								|| extn == "jpeg") {
							if (typeof (FileReader) != "undefined") {
								for (var i = 0; i < countFiles; i++) {
									var reader = new FileReader();
									reader.onload = function(e) {
										var img = $(buttonFile).siblings(
												"#imgUser");
										$(img).attr("src", e.target.result);
										$(img).addClass("thumb-image");
										base64 = e.target.result;
									}
									image_holder.show();
									reader.readAsDataURL($(button)[0].files[i]);
								}

							} else {
								alert("Este navegador não suporta FileReader.");
							}
						} else {
							alert("Por favor, selecione apenas imagens.");
						}
					}

					$("#clean1").click(
							function() {
								$("#upload1").val("");
								$(".img1 #imgUser").attr("src",
										"http://i.imgur.com/SZuRQS4.png");
								upload1Base64 = null;
							});

					$("#clean2").click(
							function() {
								$("#upload2").val("");
								$(".img2 #imgUser").attr("src",
										"http://i.imgur.com/SZuRQS4.png");
								upload2Base64 = null;
							});

					$("#clean3").click(
							function() {
								$("#upload3").val("");
								$(".img3 #imgUser").attr("src",
										"http://i.imgur.com/SZuRQS4.png");
								upload3Base64 = null;
							});

					$("#upload1")
							.on(
									'change',
									function() {
										var countFiles = $(this)[0].files.length;
										var buttonFile = $(this);
										var imgPath = $(this)[0].value;
										var extn = imgPath.substring(
												imgPath.lastIndexOf('.') + 1)
												.toLowerCase();
										var image_holder = $("#image-holder");
										image_holder.empty();
										if (extn == "gif" || extn == "png"
												|| extn == "jpg"
												|| extn == "jpeg") {
											if (typeof (FileReader) != "undefined") {
												for (var i = 0; i < countFiles; i++) {
													var reader = new FileReader();
													reader.onload = function(e) {
														var img = $(buttonFile)
																.siblings(
																		"#imgUser");
														$(img)
																.attr(
																		"src",
																		e.target.result);
														$(img).addClass(
																"thumb-image");
														upload1Base64 = (e.target.result).split(",", 2)[1];
													}
													image_holder.show();
													reader
															.readAsDataURL($(this)[0].files[i]);
												}

											} else {
												alert("Este navegador não suporta FileReader.");
											}
										} else {
											alert("Por favor, selecione apenas imagens.");
										}
									});
					$("#upload2")
							.on(
									'change',
									function() {
										var countFiles = $(this)[0].files.length;
										var buttonFile = $(this);
										var imgPath = $(this)[0].value;
										var extn = imgPath.substring(
												imgPath.lastIndexOf('.') + 1)
												.toLowerCase();
										var image_holder = $("#image-holder");
										image_holder.empty();
										if (extn == "gif" || extn == "png"
												|| extn == "jpg"
												|| extn == "jpeg") {
											if (typeof (FileReader) != "undefined") {
												for (var i = 0; i < countFiles; i++) {
													var reader = new FileReader();
													reader.onload = function(e) {
														var img = $(buttonFile)
																.siblings(
																		"#imgUser");
														$(img)
																.attr(
																		"src",
																		e.target.result);
														$(img).addClass(
																"thumb-image");
														upload2Base64 = (e.target.result).split(",", 2)[1];
													}
													image_holder.show();
													reader
															.readAsDataURL($(this)[0].files[i]);
												}

											} else {
												alert("Este navegador não suporta FileReader.");
											}
										} else {
											alert("Por favor, selecione apenas imagens.");
										}
									});
					$("#upload3")
							.on(
									'change',
									function() {
										var countFiles = $(this)[0].files.length;
										var buttonFile = $(this);
										var imgPath = $(this)[0].value;
										var extn = imgPath.substring(
												imgPath.lastIndexOf('.') + 1)
												.toLowerCase();
										var image_holder = $("#image-holder");
										image_holder.empty();
										if (extn == "gif" || extn == "png"
												|| extn == "jpg"
												|| extn == "jpeg") {
											if (typeof (FileReader) != "undefined") {
												for (var i = 0; i < countFiles; i++) {
													var reader = new FileReader();
													reader.onload = function(e) {
														var img = $(buttonFile)
																.siblings(
																		"#imgUser");
														$(img)
																.attr(
																		"src",
																		e.target.result);
														$(img).addClass(
																"thumb-image");
														upload3Base64 = (e.target.result).split(",", 2)[1];
													}
													image_holder.show();
													reader
															.readAsDataURL($(this)[0].files[i]);
												}

											} else {
												alert("Este navegador não suporta FileReader.");
											}
										} else {
											alert("Por favor, selecione apenas imagens.");
										}
									});

				});