<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<%
	//String contextPath =pageContext.getRequest().getServletContext();
String contextPath = request.getContextPath();
%>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<style>
.u_image {
	width: 200px;
	height: 150px;
	background: url(<%=contextPath%>/resources/images/avatar.png) no-repeat;
	border-radius: 3px;
	float: left;
	position: relative;
	overflow: hidden;
	margin-right: 40px;
}
</style>
 <script src="https://cdn.tiny.cloud/1/nvcjgcn990ymxkqqams0ahaxrekx09iwdmoo6kryaz3xyasn/tinymce/5/tinymce.min.js" referrerpolicy="origin"></script>
 <script type="text/javascript">
  tinymce.init({
    selector: '#myTextarea',
    width: 600,
    height: 300,
    plugins: [
      'advlist autolink link image lists charmap print preview hr anchor pagebreak',
      'searchreplace wordcount visualblocks visualchars code fullscreen insertdatetime media nonbreaking',
      'table emoticons template paste help'
    ],
    toolbar: 'undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | ' +
      'bullist numlist outdent indent | link image | print preview media fullpage | ' +
      'forecolor backcolor emoticons | help',
    menu: {
      favs: {title: 'My Favorites', items: 'code visualaid | searchreplace | emoticons'}
    },
    menubar: 'favs file edit view insert format tools table help',
    content_css: 'css/content.css'
  });
  </script>

</head>

<body>
	<div class="box-bg">
		<div class="upload_form">
			<h1 class="title3 bold text-center up-title">UPLOAD CODE CHIA S???
				& KI???M TI???N C??NG TINHTE.VN</h1>
			<div class="up-note hidden-xs">
				<form id="contactForm" action="<c:url value ="/insertsource"/>" method="POST" enctype="multipart/form-data">
					<div class="up-box">
						<div id="mainbody_contentbody_contentpage_panDefaultButton"
							onkeypress="javascript:return WebForm_FireDefaultButton(event, &#39;mainbody_contentbody_contentpage_btnUpload&#39;)">
							<div class="form-horizontal">
								<div class="form-group"></div>
									<div class="form-group">
										<label class="col-md-2 control-label bold">TI??U ????? CODE
											<span class="text-error">*</span>
										</label>
										<div class="col-md-7">
										
											<input name="sourcename" type="text" maxlength="200"
											id="mainbody_contentbody_contentpage_txtTitle"
											class="form-control" onblur="ValidateTitle()"
											placeholder="T???i thi???u 20 k?? t???" /> 
											
											<span
											class="glyphicon glyphicon-ok form-control-feedback success-ic"
											aria-hidden="true" id="successTitle"></span>
											
										</div>
										<div class="col-md-3 note-col">
											<div class="form-control-static">
											<span id="title_error" class="text-error "></span> <span
												class="text-nowrap title5">Quy???t ?????nh 80% SEO <span
												data-toggle="tooltip" data-placement="top"
												title="Ti??u ????? t???i thi???u 20 k?? t???, Ti??u ????? c???n ch???a 'T??? kh??a' tr???ng t??m, ti??u ????? c??ng h???p d???n s??? thu h??t nhi???u l?????t xem."><i
												class="fa fa-info-circle" aria-hidden="true"></i></span></span>
											</div>
										</div>
									</div>
								<div class="form-group">
									<label class="col-md-2 control-label bold">Danh m???c <span
										class="text-error">*</span></label>
									<div class="col-md-4">
										<select name="ctgid"
											id="mainbody_contentbody_contentpage_ddlCategoryLang"
											class="form-control" onblur="ValidateCate()"
											onchange="ValidateCate()">
											<option value="">--Ch???n danh m???c--</option>
										 	<c:forEach var="category" items="${listCategory}">
												<option value="${category.ctgid}">${category.ctgname}</option>
											</c:forEach> 
										</select> <span
											class="glyphicon glyphicon-ok form-control-feedback success-ic3"
											aria-hidden="true" id="successCate"></span>

									</div>
									<div class="col-md-6">
										<div class="form-control-static">
											<span id="lang_error" class="text-error">&nbsp;</span>
										</div>
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-2 control-label bold">M?? t??? ng???n <span
										class="text-error">*</span></label>
									<div class="col-md-7">
										<textarea name="title" rows="2" cols="20"
											id="mainbody_contentbody_contentpage_txtSubTitle"
											class="form-control up-textarea" onblur="ValidateSub()"
											placeholder="T???i thi???u 70 k?? t???" maxlength="200"
											style="height: 60px;">
										</textarea>
										<span
											class="glyphicon glyphicon-ok form-control-feedback success-ic3"
											aria-hidden="true" id="successSub"></span>
									</div>
									<div class="col-md-3 note-col">
										<span id="subdetail_error" class="text-error"></span> <span
											class="text-nowrap title5">T???i ??u t??? 70 - 200 k?? t??? <span
											data-toggle="tooltip" data-placement="top"
											title="????? c?? th??? h???ng cao tr??n k???t qu??? t??m ki???m b???n c???n vi???t m?? t??? h???p d???n v??? code, ch???a t??? kh??a, nh???ng ??u ??i???m v?? t??nh n??ng...????? thu h??t ng?????i mua"><i
												class="fa fa-info-circle" aria-hidden="true"></i></span></span>&nbsp; <span
											class="text-nowrap orange"><b id="lblcountSubTitle">0</b>
											K?? t???</span>
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-2 control-label bold">Link
										download <span class="text-error">*</span>
									</label>
									<div class="col-md-7">
										<input type="file" name="size"> <span
											class="glyphicon glyphicon-ok form-control-feedback success-ic"
											aria-hidden="true" id="successLink"></span>
									</div>
									<div class="col-md-3">
										<span id="link_error" class="text-error"></span>
									</div>
								</div>
  <div class="form-group">
                            <label class="col-md-2 control-label bold">?????t ph?? t???i</label>
                            <div class="col-md-10">
                                <div class="btn-group" data-toggle="buttons">
                                    <label class="btn btn-warning active" id="lblCheckFree">
                                        <input type="radio" name="options" id="idFree" value="Free" checked>
                                        Mi???n ph?? (0 Xu)
                                    </label>
                                    <label class="btn btn-warning" id="lblCheckCode">
                                        <input type="radio" name="options" id="idCode" value="Code">
                                        Tham kh???o (2Xu - 99Xu)
                                    </label>
                                    <label class="btn btn-warning" id="lblCheckCodeOK">
                                        <input type="radio" name="options" id="idCodeOK" value="CodeOK">
                                        Ch???t l?????ng (>= 100 Xu)
                                    </label>
                                </div>
                            </div>
                        </div>
                        <div class="form-group" id="boxPrice">
                            <div class="col-sm-6 col-md-offset-2 col-md-4">
                                <div class="input-group">
                                    <div class="input-group-btn">
                                        <button type="button" class="btn btn-default dropdown-toggle up-dropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Ch???n <span class="caret"></span></button>
                                        <ul class="dropdown-menu dropdown-menu-left">
                                            <li id="li5">5 Xu</li>
                                            <li id="li10">10 Xu</li>
                                            <li id="li15">15 Xu</li>
                                            <li id="li20">20 Xu</li>
                                            <li id="li40">40 Xu</li>
                                            <li id="li80">80 Xu</li>
                                            <li role="separator" class="divider"></li>
                                            <li id="li100">100 Xu</li>
                                            <li id="li150">150 Xu</li>
                                            <li id="li240">240 Xu</li>
                                            <li id="li400">400 Xu</li>
                                        </ul>

                                    </div>
                                    <input name="price" type="text" maxlength="4" id="mainbody_contentbody_contentpage_txtPriceOther" class="bold form-control" onblur="ValidatePrice()" onkeypress="CheckNumeric(event);" onkeyup="ChangPrice();" placeholder="T??? nh???p ph?? t???i" />
                                    <span class="glyphicon glyphicon-ok form-control-feedback success-ic" aria-hidden="true" id="successPrice" style="right: 60px;"></span>
                                    <span class="input-group-addon">Xu <span data-toggle="tooltip" data-placement="top" title="(1 Xu = 1.000 ??) B???n c?? th??? ?????t ph?? t???i t??y ?? ho???c chia s??? mi???n ph?? 0 Xu, Khi code ???? ???????c duy???t n???u b???n GI???M PH?? T???I ph?? t???i s??? ???????c c???p nh???t ngay nh??ng n???u T??NG GI?? th?? c???n ch??? BQT ki???m duy???t gi?? ????! N???u m???c gi?? >= 100 Xu th?? b???n c???n cam k???t H??? TR??? khi ng?????i mua li??n h???."><i class="fa fa-info-circle" aria-hidden="true"></i></span></span>
                                </div>
                            </div>
                            <div class="col-sm-6 col-md-3">
                                <div class="checkbox" id="boxCheck">
                                    <label class="orange">
                                        <input id="chkCamKet" onchange="ValidatePrice()" value="1" type="checkbox" />
                                        Cam k???t h??? tr??? ng?????i mua                                        
                                    </label>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-control-static">
                                    <span id="price_error" class="text-error">&nbsp;</span>
                                </div>
                            </div>
                        </div>
							<div class="form-group">
									<label class="col-md-2 control-label bold">M?? t??? chi
										ti???t <span class="text-error">*</span>
									</label>
									<div class="col-md-10" id="editorDetail">
										<textarea name="contentdetails" rows="2" cols="20"
											id="myTextarea"
											style="height: 200px;"></textarea>
										<span
											class="glyphicon glyphicon-ok form-control-feedback success-ic"
											aria-hidden="true" id="successDetail"></span>
									</div>
								</div>
								
								<div class="form-group">
									<div class="col-md-offset-2 col-md-10">
										<div id="listSuggest"></div>
									</div>
								</div>
								 <div class="form-group">
                            <div class="col-md-offset-2 col-md-10">
                                <div id="listSuggest"></div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-offset-2 col-md-10">
                                <textarea class="form-control up-textarea" rows="5" spellcheck="false">
								- M???i th??ng tin c???a th??nh vi??n ????ng t???i tr??n di???n ????n sharecode.vn ph???i ch??nh x??c.
								- M???i source code khi upload ???? ???????c build ph???i ?????m b???o ch???y t???t, m?? t??? ?????y ????? th??ng tin v?? ????ng nh?? h??nh ???nh ????nh k??m.
								- N???i dung file n??n ???? ???????c ki???m tra, ?????m b???o kh??ng ch???a t???p tin kh??ng kh??? d???ng, ?????c h???i, virus ho???c b???t c??? li??n k???t kh??c...
								- File ch???a code c?? ?????y ????? file ch???y, th??ng tin chi ti???t v??? source, h?????ng d???n c??i ?????t v?? t??i kho???n ????ng nh???p chi ti???t.
								- Cam k???t h??? tr??? ho???c fix l???i n???u code >= 100Xu (Code ch???t l?????ng), khi ng?????i mua li??n l???c qua email ho???c s??? ??i???n tho???i c???a b???n.
								- T???t c??? source code b??? b??o c??o vi ph???m b???n quy???n n???u ???????c ban qu???n tr??? x??c nh???n l?? ????ng, source code s??? b??? x??a b???.
								- Source code ???? upload l??n sharecode.vn l?? th??nh vi??n upload ???? ?????ng ?? cho ph??p c??c th??nh vi??n download v?? s??? d???ng.
 								</textarea>
                            </div>
                        </div>

								<div class="form-group">
									<div class="col-md-offset-2 col-md-10">
										<div class="checkbox">
											<label id="chkRequireBox" style="border-radius: 4px;">
												<input
												name="ctl00$ctl00$ctl00$mainbody$contentbody$contentpage$chkRequirement"
												type="checkbox"
												id="mainbody_contentbody_contentpage_chkRequirement"
												onchange="ValidateCheck()" value="1" /> <a
												href="/quy-dinh-chung.htm" target="_blank" class="aorange"
												title="Xem th??m ??i???u kho???n s??? d???ng">T??i ???? ?????c v?? ?????ng ??
													v???i c??c ??i???u kho???n c???a Tinhte.vn&nbsp;</a>
											</label> &nbsp;&nbsp;<span id="check_error" class="text-error"
												style="line-height: 20px;">&nbsp;</span>
										</div>
									</div>
								</div>
								<div class="form-group">
									<div class="col-md-offset-2 col-md-10">
										<span id="upload_error" class="text-error">&nbsp;</span>
									</div>
								</div>
								<br />
								<div class="form-group">
									<div class="col-md-offset-2 col-md-10 line-h">
										<button id="submit" type="submit" value="add" name="action"
											style="color: #d65106; background-color: transparent; background-image: none; border-color: #d65106 !important; font-weight: 600; border: 2px solid transparent; padding: 12px 30px; font-size: 16px; line-height: 1.5; border-radius: .1875rem;">
											Book Table</button> &nbsp;&nbsp; <span class="text-error text-nowrap"
											style="line-height: 40px;">(*) L?? c??c tr?????ng b???t bu???c
											nh???p n???i dung</span>
									</div>
								</div>
							</div>

						</div>

					</div>
				</form>

			</div>
		</div>

	</div>



	
    <script type="text/javascript">
        var imgValue = false;
        //Up anh dai dien va crop
        $(function () {
            var jcrop_api;
            $('#FileUpload1').change(function () {
                $('#PopupImage').hide();
                $("#Image1").removeAttr('style');
                $("#Image1").css("display", "none");
                var reader = new FileReader();
                reader.onload = function (e) {
                    // destroy Jcrop if it is existed
                    if (typeof jcrop_api != 'undefined')
                        jcrop_api.destroy();
                    //$('#Image1').show();

                    $('#Image1').attr("src", e.target.result);
                    $('#Image1').Jcrop({
                        onChange: SetCoordinates,
                        onSelect: SetCoordinates,
                        aspectRatio: 4 / 3,
                        setSelect: [0, 0, 200, 150],
                        allowMove: true,
                        boxWidth: 500,
                        boxHeight: 500
                        //minSize: [ 100, 100 ],
                        //maxSize: [ 100, 100 ]

                    }, function () {
                        // Store the Jcrop API in the jcrop_api variable
                        jcrop_api = this;
                    });
                }
                reader.readAsDataURL($(this)[0].files[0]);
                //show loading
                $("#imgLoading").show();
                setTimeout('Showpopup()', 500);//delay 1s
                $(this).val("");
            });

 
            //tag sugget
          
       

            //price
            $('#boxPrice').hide();
            $('#boxCheck').hide();
            $('input:radio[name="options"]').change(
                function () {
                    if (this.checked) {
                        if (this.value == 'Free') {
                            $('#boxPrice').hide();
                            $('#boxCheck').hide();
                            $('input:radio[name="options"][value="Free"]').prop('checked', true);
                        }
                        else if (this.value == 'Code') {
                            $('#boxPrice').show();
                            $('#boxCheck').hide();
                            $('input:radio[name="options"][value="Code"]').prop('checked', true);
                        }
                        else if (this.value == 'CodeOK') {
                            $('#boxPrice').show();
                            $('#boxCheck').show();
                            $('input:radio[name="options"][value="CodeOK"]').prop('checked', true);
                        }
                    }
                });
            $('#li5').click(function () {
                $("#mainbody_contentbody_contentpage_txtPriceOther").val(5);
                ChangPrice();
            });
            $('#li10').click(function () {
                $("#mainbody_contentbody_contentpage_txtPriceOther").val(10);
                ChangPrice();
            });
            $('#li15').click(function () {
                $("#mainbody_contentbody_contentpage_txtPriceOther").val(15);
                ChangPrice();
            });
            $('#li20').click(function () {
                $("#mainbody_contentbody_contentpage_txtPriceOther").val(20);
                ChangPrice();
            });
            $('#li40').click(function () {
                $("#mainbody_contentbody_contentpage_txtPriceOther").val(40);
                ChangPrice();
            });
            $('#li80').click(function () {
                $("#mainbody_contentbody_contentpage_txtPriceOther").val(80);
                ChangPrice();
            });
            $('#li100').click(function () {
                $("#mainbody_contentbody_contentpage_txtPriceOther").val(100);
                ChangPrice();
            });
            $('#li150').click(function () {
                $("#mainbody_contentbody_contentpage_txtPriceOther").val(150);
                ChangPrice();
            });
            $('#li240').click(function () {
                $("#mainbody_contentbody_contentpage_txtPriceOther").val(240);
                ChangPrice();
            });
            $('#li400').click(function () {
                $("#mainbody_contentbody_contentpage_txtPriceOther").val(400);
                ChangPrice();
            });
            //edit
            var price = parseInt($("#mainbody_contentbody_contentpage_txtPriceOther").val(), 10);
            if (price > 99)
                $('#chkCamKet').prop('checked', true);
            ChangPrice();
        });
        function SetCoordinates(c) {
            $('#imgX1').val(c.x);
            $('#imgY1').val(c.y);
            $('#imgWidth').val(c.w);
            $('#imgHeight').val(c.h);
            $('#btnCrop').show();
        };

        //popup image
        function Showpopup() {
            $('#PopupImage').modal('show');
            //hide loading
            $("#imgLoading").hide();
        }

        //close popup image
        $('#btnCancel').click(function (e) {
            $('#PopupImage').modal('hide');
        });
        //?????m k?? t???
        $('#lblcountSubTitle').text($('#mainbody_contentbody_contentpage_txtSubTitle').val().length);
        $('#mainbody_contentbody_contentpage_txtSubTitle').keyup(function () {
            var cs = $(this).val().length;
            $('#lblcountSubTitle').text(cs);
        });

        //Sussget tag
        function SussgetTag() {
            jQuery.ajax({
                type: "POST",
                url: "/Ajax/TagSuggest.aspx/SuggestForTitle",
                data: '{titleCode: "' + jQuery('#mainbody_contentbody_contentpage_txtTitle').val() + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                async: false,
                success: function (data) {
                    var list = data.d;
                    var listSuggest = document.getElementById('listSuggest');
                    listSuggest.innerHTML = "";
                    $.each(list, function (index, item) {
                        var newSpan = document.createElement('span');
                        newSpan.setAttribute('class', 'tag-editor-tagadd');
                        newSpan.innerHTML = item;
                        newSpan.onclick = function AddTag() {
                            $('#mainbody_contentbody_contentpage_txtTag').tagEditor('addTag', item);
                            ValidateTag();
                        };
                        listSuggest.appendChild(newSpan);
                    });

                }
            });
        }
        function HideIco() {
            jQuery('#successTitle').hide();
            jQuery('#successLink').hide();
            jQuery('#successImg').hide();
            jQuery('#successCate').hide();
            jQuery('#successSub').hide();
            jQuery('#successTag').hide();
            jQuery('#successDetail').hide();
            jQuery('#successPrice').hide();
            jQuery('#successDemo').hide();
        }
        function ValidateTitle() {
            var kt = true;
            jQuery('#title_error').html('');
            jQuery('#mainbody_contentbody_contentpage_txtTitle').removeClass('validation-failed');
            jQuery('#mainbody_contentbody_contentpage_txtTitle').removeClass('validation-success');
            jQuery('#successTitle').hide();
            var title = jQuery('#mainbody_contentbody_contentpage_txtTitle').val();
            if (title == '') {
                jQuery('#title_error').html('Vui l??ng nh???p ti??u ?????.');
                kt = false;
            }
            else {
                title = title.trim();
                title = title.replace(/\s+/g, ' ');
                jQuery('#mainbody_contentbody_contentpage_txtTitle').val(title);
                if (title.length < 20) {
                    jQuery('#title_error').html('Ti??u ????? ph???i d??i h??n 20 k?? t???.');
                    kt = false;
                }
                else {
                    jQuery.ajax({
                        type: "POST",
                        url: "/Ajax/GetLinkCode.aspx/CheckCodeName",
                        data: '{codeid: "' + jQuery('#mainbody_contentbody_contentpage_hdCodeId').val() + '",namenew: "' + title + '" }',
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        async: false,
                        success: function (data) {
                            //alert(data.d);
                            if (data.d == true) {
                                jQuery('#title_error').html('Ti??u ????? ???? t???n t???i.');
                                kt = false;
                            }
                        }
                    });
                }
            }
            if (kt) {
                jQuery('#mainbody_contentbody_contentpage_txtTitle').addClass('validation-success');
                jQuery('#successTitle').show();
                return true;
            } else {
                jQuery('#mainbody_contentbody_contentpage_txtTitle').addClass('validation-failed');
                return false;
            }
        }
        function ValidateLink() {
            var kt = true;
            jQuery('#link_error').html('');
            jQuery('#mainbody_contentbody_contentpage_txtLink').removeClass('validation-failed');
            jQuery('#mainbody_contentbody_contentpage_txtLink').removeClass('validation-success');
            jQuery('#successLink').hide();
            var link = jQuery('#mainbody_contentbody_contentpage_txtLink').val().trim();
            if (link == '') {
                jQuery('#link_error').html('Vui l??ng nh???p link download.');
                kt = false;
            }
            else if (!(link.indexOf("http://") == 0 || link.indexOf("https://") == 0)) {
                jQuery('#link_error').html('Link ph???i b???t ?????u http://... (or) https://...');
                kt = false;
            }
            if (kt) {
                jQuery('#mainbody_contentbody_contentpage_txtLink').addClass('validation-success');
                jQuery('#successLink').show();
                return true;
            } else {
                jQuery('#mainbody_contentbody_contentpage_txtLink').addClass('validation-failed');
                return false;
            }
        }
        function ValidateDemo() {
            jQuery('#demo_error').html('');
            jQuery('#mainbody_contentbody_contentpage_txtLinkDemo').removeClass('validation-failed');
            jQuery('#mainbody_contentbody_contentpage_txtLinkDemo').removeClass('validation-success');
            jQuery('#successDemo').hide();
            var link = jQuery('#mainbody_contentbody_contentpage_txtLinkDemo').val().trim();
            if (link != '') {
                if (!(link.indexOf("http://") == 0 || link.indexOf("https://") == 0)) {
                    jQuery('#demo_error').html('Link ph???i b???t ?????u http://... (or) https://...');
                    jQuery('#mainbody_contentbody_contentpage_txtLinkDemo').addClass('validation-failed');
                    return false;
                }
                else {
                    jQuery('#mainbody_contentbody_contentpage_txtLinkDemo').addClass('validation-success');
                    jQuery('#successDemo').show();
                    return true;
                }
            }
            return true;
        }
        function ValidateImg() {
            var kt = true;
            jQuery('#img_error').html('');
            jQuery('.u_image').removeClass('validation-failed');
            jQuery('.u_image').removeClass('validation-success');
            jQuery('#successImg').hide();

            if (($('#mainbody_contentbody_contentpage_imgUpdateCode').attr('src') == '' || $('#mainbody_contentbody_contentpage_imgUpdateCode').attr('src') == null) && imgValue == false) {
                jQuery('#img_error').html('Vui l??ng ch???n ???nh ?????i di???n.');
                kt = false;
            }

            if (kt) {
                jQuery('.u_image').addClass('validation-success');
                jQuery('#successImg').show();
                return true;
            } else {
                jQuery('.u_image').addClass('validation-failed');
                return false;
            }
        }
        function ValidateCate() {
            var kt = true;
            jQuery('#lang_error').html('');
            jQuery('#mainbody_contentbody_contentpage_ddlCategoryLang').removeClass('validation-failed');
            jQuery('#mainbody_contentbody_contentpage_ddlCategoryLang').removeClass('validation-success');
            jQuery('#successCate').hide();
            var lang = jQuery('#mainbody_contentbody_contentpage_ddlCategoryLang').val();
            if (lang == '0') {
                jQuery('#lang_error').html('Ch??a ch???n danh m???c.');
                kt = false;
            }
            if (kt) {
                jQuery('#mainbody_contentbody_contentpage_ddlCategoryLang').addClass('validation-success');
                jQuery('#successCate').show();
                return true;
            } else {
                jQuery('#mainbody_contentbody_contentpage_ddlCategoryLang').addClass('validation-failed');
                return false;
            }
        }
        function ValidateSub() {
            var kt = true;
            jQuery('#subdetail_error').html('');
            jQuery('#mainbody_contentbody_contentpage_txtSubTitle').removeClass('validation-failed');
            jQuery('#mainbody_contentbody_contentpage_txtSubTitle').removeClass('validation-success');
            jQuery('#successSub').hide();
            var subtitle = jQuery('#mainbody_contentbody_contentpage_txtSubTitle').val();
            if (subtitle == '') {
                jQuery('#subdetail_error').html('Vui l??ng nh???p m?? t??? ng???n.');
                kt = false;
            }
            else {
                subtitle = subtitle.trim();
                subtitle = subtitle.replace(/\s+/g, ' ');
                jQuery('#mainbody_contentbody_contentpage_txtSubTitle').val(subtitle);
                if (subtitle.length < 70) {
                    jQuery('#subdetail_error').html('M?? t??? ng???n ph???i d??i h??n 70 k?? t???.');
                    kt = false;
                }
            }
            if (kt) {
                jQuery('#mainbody_contentbody_contentpage_txtSubTitle').addClass('validation-success');
                jQuery('#successSub').show();
                return true;
            } else {
                jQuery('#mainbody_contentbody_contentpage_txtSubTitle').addClass('validation-failed');
                return false;
            }
        }
        function ValidateTag() {
            var kt = true;
            jQuery('#tag_error').html('');
            jQuery('.tag-editor').removeClass('validation-failed');
            jQuery('.tag-editor').removeClass('validation-success');
            jQuery('#successTag').hide();
            var tag = jQuery('#mainbody_contentbody_contentpage_txtTag').val();
            var count = 0;
            for (var i = 0; i < tag.split(",").length; i++) {
                if (tag.split(",")[i].trim().length != 0)
                    count++;
            }
            if (count < 3) {
                jQuery('#tag_error').html('Nh???p t???i thi???u 3 t??? kh??a.');
                kt = false;
            }
            if (kt) {
                jQuery('.tag-editor').addClass('validation-success');
                jQuery('#successTag').show();
                return true;
            } else {
                jQuery('.tag-editor').addClass('validation-failed');
                return false;
            }
        }
        function ValidateDetail() {
            var kt = true;
            jQuery('#upload_error').html('');
            jQuery('#editorDetail span:first').removeClass('validation-failed');
            jQuery('#editorDetail span:first').removeClass('validation-success');
            jQuery('#successDetail').hide();
            if (jQuery("#editorDetail iframe").contents().find("body").text() == '') {
                jQuery('#upload_error').html('Vui l??ng nh???p m?? t??? chi ti???t.');
                kt = false;
            }
            if (kt) {
                jQuery('#editorDetail span:first').addClass('validation-success');
                jQuery('#successDetail').show();
                return true;
            } else {
                jQuery('#editorDetail span:first').addClass('validation-failed');
                return false;
            }
        }
        function ValidateCheck() {
            var kt = true;
            jQuery('#check_error').html('');
            jQuery('#chkRequireBox').removeClass('validation-failed');

            if (document.getElementById("mainbody_contentbody_contentpage_chkRequirement").checked == false) {
                jQuery('#check_error').html('Vui l??ng ?????c v?? ?????ng ?? c??c ??i???u kho???n.');
                kt = false;
            }
            if (kt) {
                return true;
            } else {
                jQuery('#chkRequireBox').addClass('validation-failed');
                return false;
            }
        }
        function ValidatePrice() {
            var kt = true;
            jQuery('#price_error').html('');
            jQuery('#mainbody_contentbody_contentpage_txtPriceOther').removeClass('validation-failed');
            jQuery('#mainbody_contentbody_contentpage_txtPriceOther').removeClass('validation-success');
            jQuery('#successPrice').hide();
            //alert($('input:radio[name="options"]').val());
            if ($('input:radio[name="options"]:checked').val() == 'Free') {
                $('#boxPrice').hide();
                $('#boxCheck').hide();
                return true;
            }
            else {
                var price = jQuery('#mainbody_contentbody_contentpage_txtPriceOther').val();
                if (price == '') {
                    jQuery('#price_error').html('Vui l??ng nh???p ph?? t???i.');
                    kt = false;
                }
                else if (parseInt(price, 10) < 2) {
                    jQuery('#price_error').html('Ph?? t???i t???i thi???u l?? 2 Xu.');
                    kt = false;
                }
                else if (parseInt(price, 10) > 99 && document.getElementById("chkCamKet").checked == false) {
                    jQuery('#price_error').html('Ch??a ch???n cam k???t h??? tr??? ng?????i mua.');
                    kt = false;
                }
            }

            if (kt) {
                jQuery('#mainbody_contentbody_contentpage_txtPriceOther').addClass('validation-success');
                jQuery('#successPrice').show();
                return true;
            } else {
                jQuery('#mainbody_contentbody_contentpage_txtPriceOther').addClass('validation-failed');
                return false;
            }
        }
        //Validate form
        function ValidateUpload() {

            var ktt = true;

            if (!ValidateTag()) {
                ktt = false;
            }
            if (!ValidateCheck()) {
                ktt = false;
            }
            if (!ValidateDetail()) {
                ktt = false;
            }
            //TH t??? ?????t gi??
            if (!ValidatePrice()) {
                jQuery('#mainbody_contentbody_contentpage_txtPriceOther').focus();
                ktt = false;
            }
            if (!ValidateDemo()) {
                ktt = false;
                jQuery('#mainbody_contentbody_contentpage_txtLinkDemo').focus();
            }
            if (!ValidateLink()) {
                ktt = false;
                jQuery('#mainbody_contentbody_contentpage_txtLink').focus();
            }
            if (!ValidateSub()) {
                jQuery('#mainbody_contentbody_contentpage_txtSubTitle').focus();
                ktt = false;
            }
            if (!ValidateCate()) {
                jQuery('#mainbody_contentbody_contentpage_ddlCategoryLang').focus();
                    ktt = false;
                }
                if (!ValidateTitle()) {
                    ktt = false;
                    jQuery('#mainbody_contentbody_contentpage_txtTitle').focus();
            }
            if (!ValidateImg()) {
                jQuery('#FileUpload1').focus();
                ktt = false;
            }
            if (ktt) {
                //jQuery('#mainbody_contentbody_contentpage_btnUpload').addClass('upload_btn UploadSuccess');//hi???n th??? th??ng b??o th??nh c??ng
                return true;
            } else {
                if (jQuery('#upload_error').html() == "")
                    jQuery('#upload_error').html('Vui l??ng ??i???n th??ng tin c??n thi???u.');
                return false;
            }
        }
        function CheckNumeric(e) {
            if (window.event) // IE 
            {
                if ((e.keyCode < 48 || e.keyCode > 57) & e.keyCode != 8) {
                    event.returnValue = false;
                    return false;
                }
            }
            else { // Fire Fox
                if ((e.which < 48 || e.which > 57) & e.which != 8) {
                    e.preventDefault();
                    return false;
                }
            }

        }
        function ChangPrice() {
            //price change
            var price = parseInt($("#mainbody_contentbody_contentpage_txtPriceOther").val(), 10);
            if (price == 0) {
                $('#boxPrice').hide();
                $('#boxCheck').hide();
                jQuery('#lblCheckFree').addClass('active');
                jQuery('#lblCheckCode').removeClass('active');
                jQuery('#lblCheckCodeOK').removeClass('active');
                $('input:radio[name="options"][value="Free"]').prop('checked', true);

            } else if (price > 0 && price < 100) {
                $('#boxPrice').show();
                $('#boxCheck').hide();
                jQuery('#lblCheckFree').removeClass('active');
                jQuery('#lblCheckCode').addClass('active');
                jQuery('#lblCheckCodeOK').removeClass('active');
                $('input:radio[name="options"][value="Code"]').prop('checked', true);
            }
            else if (price > 99) {
                $('#boxPrice').show();
                $('#boxCheck').show();
                jQuery('#lblCheckFree').removeClass('active');
                jQuery('#lblCheckCode').removeClass('active');
                jQuery('#lblCheckCodeOK').addClass('active');
                $('input:radio[name="options"][value="CodeOK"]').prop('checked', true);
            }
            //alert($('input:radio[name="options"]:checked').val() + "====");
        }
    </script>
</body>


</html>
