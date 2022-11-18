	var goUrlList = "/member/memberList"; 			/* #-> */
	var goUrlInst = "/member/memberInst"; 			/* #-> */
	var goUrlUpdt = "/member/memberUpdt";				/* #-> */
	var goUrlUele = "/member/memberUele";				/* #-> */
	var goUrlDele = "/member/memberDele";				/* #-> */
	var goUrlView = "/member/memberView";
	var goUrlCode = "/code/codeList";
	var goUrlCodeGroup = "/codeGroup/codeGroupList";
	var goUrlMember = "/member/memberList";
	var goUrlHome = "/admin/home";
	var excelUri = "/member/excelDownload";
	
	var seq = $("input:hidden[name=seq]");				/* #-> */
	
	var form = $("form[name=form]");
	var formVo = $("form[name=formVo]");
	
	$("#btnReset").on("click",function(){
		$(location).attr("href",goUrlList);
	});
	
	$("#btnSearch").on("click",function(){
		form.attr("action", goUrlList).submit();
	});
	
	$("#btnCodeGroup").on("click",function(){
		$(location).attr("href",goUrlCodeGroup);
	});
	
	$("#btnCode").on("click",function(){
		$(location).attr("href",goUrlCode);
	});
	
	$("#btnMember").on("click",function(){
		$(location).attr("href",goUrlList);
	});
	
	$("#btnHome").on("click", function(){
		$(location).attr("href",goUrlHome);
	});
	
	$("#btnMember").on("click",function(){
		$(location).attr("href",goUrlMember);
	});
	
	// 엑셀 다운
	$("#btnExcel").click(function() {
		form.attr("action", excelUri).submit();
	});
	
	//맴버 뷰 수정
	$("#btnModify").on("click" , function(){
		if(document.getElementById('name').value == '' || document.getElementById('name').value == null){
			alert("이름을 입력해주세요")
			document.getElementById('name').value="";
			document.getElementById('name').focus();
			return false;
		}
		if(document.getElementById('id').value == '' || document.getElementById('id').value == null){
			alert("아이디를 입력해주세요")
			document.getElementById('id').value="";
			document.getElementById('id').focus();
			return false;
		}
		if(document.getElementById('email').value == '' || document.getElementById('email').value == null){
			alert("이메일주소 입력해주세요")
			document.getElementById('email').value="";
			document.getElementById('email').focus();
			return false;
		}
		
		form.attr("action" , goUrlUpdt).submit();
	})	
	
	
	$("#btnUele").on("click" , function(){
		form.attr("action" , goUrlUele).submit();
	})
	
	$("#btnDelete").on("click" , function(){
		form.attr("action" , goUrlDele).submit();
	})
	
	$("#btnList").on("click" , function(){
		form.attr("action" , goUrlList).submit();
	})
	
	
	goList = function(thisPage){
		$("input:hidden[name=thisPage]").val(thisPage);
		form.attr("action" , goUrlList).submit();
	}	
	
	goView = function(seqValue){
		seq.val(seqValue);
		form.attr("action" , goUrlView).submit();
	}
	
	
	
	//memberlist checkBox
	
	function checkSelectAll()  {
	
			const checkboxes = document.querySelectorAll('input[name="membercheck"]');
	
			const checked = document.querySelectorAll('input[name="membercheck"]:checked');
	
			const selectAll = document.querySelector('input[name="allmembercheck"]');
			  
			if(checkboxes.length === checked.length)  {
			  selectAll.checked = true;
			}else {
			  selectAll.checked = false;
			}
			
		}
		
		function selectall(selectall)  {
			const checkboxes = document.getElementsByName('membercheck');
			
			checkboxes.forEach((checkbox) => {
		    checkbox.checked = selectall.checked
		  })
		}
		
		
		//아이디 중복확인
		$("#id").on("focusout", function(key){
		
/* 		if(!checkId('id', 2, 0, "영대소문자,숫자,특수문자(-_.),4~20자리만 입력 가능합니다")) {
			return false;
		} else { */
		//if(key.keyCode == 13){	
			$.ajax({
				async: true 
				,cache: false
				,type: "post"
				/* ,dataType:"json" */
				,url: "/member/checkId"
				/* ,data : $("#formLogin").serialize() */
				,data : { "id" : $("#id").val() }
				,success: function(response) {
					if(response.rt == "success") {
						document.getElementById("id").classList.remove('is-invalid');						
						document.getElementById("id").classList.add('is-valid');
						document.getElementById('id').value="";
	
						document.getElementById("ifmmIdFeedback").classList.remove('invalid-feedback');
						document.getElementById("ifmmIdFeedback").classList.add('valid-feedback');
						document.getElementById("ifmmIdFeedback").innerText = "사용 가능 합니다.";
						
						document.getElementById("ifmmIdAllowedNy").value = 1;
						
					} else {
						document.getElementById("id").classList.add('is-invalid');
						document.getElementById("id").classList.remove('is-valid');
						
						document.getElementById("ifmmIdFeedback").classList.remove('valid-feedback');
						document.getElementById("ifmmIdFeedback").classList.add('invalid-feedback');
						document.getElementById("ifmmIdFeedback").innerText = "사용 불가능 합니다";
						
						document.getElementById("ifmmIdAllowedNy").value = 0;
					}
				}
				,error : function(jqXHR, textStatus, errorThrown){
					alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
				}
			});
		//}/* } */
	});	
	
	//비밀번호 조건 확인
	$("#pwd").on("focusout",function(key){
		var regExp = /^.*(?=^.{8,15}$)(?=.*\d)(?=.*[a-zA-Z])(?=.*[!@#$%^&+=]).*$/;
		var p1 = $("#pwd").val();
		
		if(p1.match(regExp) == null){
			document.getElementById("pwd").classList.add('is-invalid');
			document.getElementById("pwd").classList.remove('is-valid');
			document.getElementById('pwd').value="";
			document.getElementById("pwdFeedback").innerText = "비밀번호 조건에 맞지 않습니다.";
			document.getElementById("pwdFeedback").classList.remove('valid-feedback');
			document.getElementById("pwdFeedback").classList.add('invalid-feedback');
			
			
			
		}else{
			document.getElementById("pwd").classList.remove('is-invalid');
			document.getElementById("pwd").classList.add('is-valid');
		}
		
	})
	
	//이메일 조건 확인
	$("#email").on("focusout",function(key){
		var regExp =/^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
		var e = $("#email").val();
		
		if(e.match(regExp) == null){
			document.getElementById("email").classList.add('is-invalid');
			document.getElementById("email").classList.remove('is-valid');
			document.getElementById('email').value="";
			document.getElementById("emailFeedback").innerText = "이메일 조건에 맞지 않습니다.";
			document.getElementById("emailFeedback").classList.remove('valid-feedback');
			document.getElementById("emailFeedback").classList.add('invalid-feedback');
			
			
			
		}else{
			document.getElementById("email").classList.remove('is-invalid');
			document.getElementById("email").classList.add('is-valid');
		}
		
	})
	
	//전화번호 하이픈
		const autoHyphen = (target) => {
		target.value = target.value
		.replace(/[^0-9]/g, '')
		.replace(/^(\d{0,3})(\d{0,4})(\d{0,4})$/g, "$1-$2-$3").replace(/(\-{1,2})$/g, "");
	    }
	
	//주소 새로고침
	$("#btnAddressClear").on("click" , function(){
    	$("#sample4_roadAddress").val('');
    	$("#sample4_jibunAddress").val('');
    	$("#sample4_detailAddress").val('');
    	$("#sample4_extraAddress").val('');
    	$("#sample4_postcode").val('');
    	$("#ifmaLatArray0").val('');
    	$("#ifmaLngArray0").val('');
    })
    
    
    //맴버 등록
    function memberRegister() {
		if(document.getElementById('name').value == '' || document.getElementById('name').value == null){
			alert("이름을 입력해주세요")
			document.getElementById('name').value="";
			document.getElementById('name').focus();
			return false;
		}
		if(document.getElementById('id').value == '' || document.getElementById('id').value == null){
			alert("아이디를 입력해주세요")
			document.getElementById('id').value="";
			document.getElementById('id').focus();
			return false;
		}
		if(document.getElementById('pwd').value == '' || document.getElementById('pwd').value == null){
			alert("비밀번호 입력해주세요")
			document.getElementById('pwd').value="";
			document.getElementById('pwd').focus();
			return false;
		}
		if(document.getElementById('email').value == '' || document.getElementById('email').value == null){
			alert("이메일주소 입력해주세요")
			document.getElementById('email').value="";
			document.getElementById('email').focus();
			return false;
		}
		var max = 13;
		if(document.getElementById('number').value == '' || document.getElementById('number').value == null  || document.getElementById('number').length < max ){
			alert("휴대폰 번호 입력해주세요")
			document.getElementById('number').value="";
			document.getElementById('number').focus();
			return false;
		}
		
	
	
	
	
	
	
		document.getElementById('memberFormReg').submit();
		
		return false;
		}
		
	//카카오 주소
	   //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
    function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var roadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 참고 항목 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample4_postcode').value = data.zonecode;
                document.getElementById("sample4_roadAddress").value = roadAddr;
                document.getElementById("sample4_jibunAddress").value = data.jibunAddress;
                
                // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
                if(roadAddr !== ''){
                    document.getElementById("sample4_extraAddress").value = extraRoadAddr;
                } else {
                    document.getElementById("sample4_extraAddress").value = '';
                }

                 var guideTextBox = document.getElementById("guide");
                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                if(data.autoRoadAddress) {
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                    guideTextBox.style.display = 'block';

                } else if(data.autoJibunAddress) {
                    var expJibunAddr = data.autoJibunAddress;
                    guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
                    guideTextBox.style.display = 'block';
                } else {
                    guideTextBox.innerHTML = '';
                    guideTextBox.style.display = 'none';
                } 
				/*  lat and lng from address s */ 
 				
				// 주소-좌표 변환 객체를 생성
				var geocoder = new daum.maps.services.Geocoder();
				
				// 주소로 좌표를 검색
				geocoder.addressSearch(roadAddr, function(result, status) {
				 
					// 정상적으로 검색이 완료됐으면,
					if (status == daum.maps.services.Status.OK) {
						
						document.getElementById("ifmaLatArray0").value=result[0].y;
						document.getElementById("ifmaLngArray0").value=result[0].x;
					}
				});
				/* lat and lng from address e*/ 
            }
        }).open();
    }	
    
    //맴버 뷰 수정
    function test() {
			if(document.getElementById('name').value == '' || document.getElementById('name').value == null){
				alert("이름 입력해주십쇼")
				document.getElementById('name').value="";
				document.getElementById('name').focus();
				return false;
			}
			
			if(document.getElementById('id').value == '' || document.getElementById('id').value == null){
				alert("아이디 입력해주십쇼")
				document.getElementById('id').value="";
				document.getElementById('id').focus();
				return false;
			}
			
			if(document.getElementById('pwd').value == '' || document.getElementById('pwd').value == null){
				alert("비밀번호 입력해주십쇼")
				document.getElementById('pwd').value="";
				document.getElementById('pwd').focus();
				return false;
			}
			
			if(document.getElementById('email').value == '' || document.getElementById('email').value == null){
				alert("이메일 입력해주십쇼")
				document.getElementById('email').value="";
				document.getElementById('email').focus();
				return false;
			}
			
			if(document.getElementById('address').value == '' || document.getElementById('address').value == null){
				alert("주소 입력해주십쇼")
				document.getElementById('address').value="";
				document.getElementById('address').focus();
				return false;
			}
			
			if(document.getElementById('address2').value == '' || document.getElementById('address2').value == null){
				alert("상세주소 입력해주십쇼")
				document.getElementById('address2').value="";
				document.getElementById('address2').focus();
				return false;
			}
			
			if(document.getElementById('address2').value == '' || document.getElementById('address2').value == null){
				alert("상세주소 입력해주십쇼")
				document.getElementById('address2').value="";
				document.getElementById('address2').focus();
				return false;
			}
			
			if(document.getElementById('addressCode').value == '' || document.getElementById('addressCode').value == null){
				alert("지번주소 입력해주십쇼")
				document.getElementById('addressCode').value="";
				document.getElementById('addressCode').focus();
				return false;
			}
			
			document.getElementById('memberFormReg').submit();
			
			return false;
			
		}
		
		
		
		//
		
		upload = function(objName , seq, allowedMaxTotalFileNumber ,allowedExtdiv , allowedEachFileSize , allowedTotalFileSize , uiType){
			//var obj =document.getElementById('img1').files;
			//var obj = $("input[name=img1]")[0].files;
			//var obj2 = $("input[name=memberUploadedImage]")[0].files;			var obj = $("#" + objName +"")[0].files;
			//var obj2 = $("input[naem=memberUploadedImage]")[0].files;
			
			//alert(obj);
			//alert(obj.length);
			
			//for(var i=0 ; i<obj.length; i++){
			//	alert(obj[i].name + ":" + obj[i].size);
			//}
			
			var files =$("#" + objName +"")[0].files;
			var filePreview = $("#" +objName + "Preview");
			var numbering = [];
			var maxNumber = 0;
			
			if(uiType == 1){
				var uploadedFilesCount = document.querySelectorAll("#" + objName + "Preview > div >img").length;
				var tagIds = document.querySelectorAll("#" + objName + "Preview > div");
				
				for(var i=0; i<tagIds.length; i++){
				var tagId = tagIds[i].getAttribute("id").split("_");
				numbering.push(tagId[2]);
				}
				
				if(uploadedFilesCount > 0){
					numbering.sort();
					maxNumber = parseInt(numbering[numbering.length-1]) + parseInt(1);
				}
			}else{
				//by pass
			}
			
			
			var totalFileSize=0;
			var filesCount = files.length;
			var filesArray = [];
			
			allowedMaxTotalFileNumber = allowedMaxTotalFileNumber == 0 ? MAX_TOTAL_FILE_NUMBER : allowedMaxTotalFileNumber;
			allowedEachFileSize = allowedEachFileSize == 0 ? MAX_EACH_FILE_SIZE : allowedEachFileSize;
			allowedTotalFileSize = allowedTotalFileSize == 0 ? MAX_TOTAL_FILE_SIZE : allowedTotalFileSize;
			
			delImgDiv = function(objName, type, sort, deleteSeq, pathFile) {
		
		$("#imgDiv_"+type+"_"+sort).remove();
		
		var objDeleteSeq = $('input[name='+ objName +'DeleteSeq]');
		var objDeletePathFile = $('input[name='+ objName +'DeletePathFile]');

		if(objDeleteSeq.val() == "") {
			objDeleteSeq.val(deleteSeq);
		} else {
			objDeleteSeq.val(objDeleteSeq.val() + "," + deleteSeq);
		}
		
		if(objDeletePathFile.val() == "") {
			objDeletePathFile.val(pathFile);
		} else {
			objDeletePathFile.val(objDeletePathFile.val() + "," + pathFile);
		}
	}
			
			
			if(fileCount >allowedMaxTotalFileNumber){
				alert("파일 갯수 초과");	
				return false;
			}else{
				alert("괜찮아요!")
			};
			
			
			
		}
		
		