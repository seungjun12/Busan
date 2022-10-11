	//아이디 중복체크
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
						$("#id").val('');
						
					}
				}
				,error : function(jqXHR, textStatus, errorThrown){
					alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
				}
			});
		/* } */
	});
	
	//한글이름만 가능하게 하기
	$(function(){
       $("#name").keyup(function (event) {
            regexp = /[a-z0-9]|[ \[\]{}()<>?|`~!@#$%^&*-_+=,.;:\"'\\]/g;
            v = $(this).val();
            if (regexp.test(v)) {
                document.getElementById("pwd").classList.add('is-invalid');
			document.getElementById("pwd").classList.remove('is-valid');//여기서부터
                $(this).val(v.replace(regexp, ''));
            }
        });
});

	//비밀번호 조건 확인
	$("#pwd2").on("focusout",function(key){
		var regExp = /^.*(?=^.{8,15}$)(?=.*\d)(?=.*[a-zA-Z])(?=.*[!@#$%^&+=]).*$/;
		var p1 = $("#pwd2").val();
		
		if(p1.match(regExp) == null){
			document.getElementById("pwd2").classList.add('is-invalid');
			document.getElementById("pwd2").classList.remove('is-valid');
			
			document.getElementById("pwdFeedback2").innerText = "비밀번호 조건에 맞지 않습니다.";
			document.getElementById("pwdFeedback2").classList.remove('valid-feedback');
			document.getElementById("pwdFeedback2").classList.add('invalid-feedback');
			$("#pwd").attr('readonly',true);
		}else{
			document.getElementById("pwd2").classList.remove('is-invalid');
			document.getElementById("pwd2").classList.add('is-valid');
			$("#pwd").attr('readonly',false);
		}
		
	})




	
 	//비밀번호 비밀번호 확인 둘이 같은지 체크
 	$("#pwd").on("keyup",function(key){
	var p1 = document.getElementById('pwd2').value;
	var p2 = document.getElementById('pwd').value;
	if(p1 == p2){
		document.getElementById("pwd").classList.remove('is-invalid');						
		document.getElementById("pwd").classList.add('is-valid');

		document.getElementById("pwdFeedback").classList.remove('invalid-feedback');
		document.getElementById("pwdFeedback").classList.add('valid-feedback');
		document.getElementById("pwdFeedback").innerText = "일치합니다.";
		return false;
	}else{
		document.getElementById("pwd").classList.add('is-invalid');
		document.getElementById("pwd").classList.remove('is-valid');
		
		document.getElementById("pwdFeedback").classList.remove('valid-feedback');
		document.getElementById("pwdFeedback").classList.add('invalid-feedback');
		document.getElementById("pwdFeedback").innerText = "일치 하지 않습니다.";
		
		return true;
	}
});
	
	//주소 삭제
    $("#btnAddressClear").on("click" , function(){
    	$("#sample4_roadAddress").val('');
    	$("#sample4_jibunAddress").val('');
    	$("#sample4_detailAddress").val('');
    	$("#sample4_extraAddress").val('');
    	$("#sample4_postcode").val('');
    })
    
    var goUrlIndex = "/main/index";
    
    $("#btnIndex").on("click",function(){
    	$(location).attr("href",goUrlIndex);
    });
    
  	$( function() {
    	$( "#datepicker" ).datepicker();
  	} );
  	
  	//충돌방지
  	var $jQ = jQuery.noConflict();
	$jQ(document).ready(function(){
		$jQ('h1').text('충돌방지 해결');
	});
    
	


	//주소 입력
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
            }
        }).open();
    }
    
    
    // 등록
    		function register(){
			
			if(document.getElementById('id').value == '' || document.getElementById('id').value == null){
				alert("아이디 입력해주십쇼")
				document.getElementById('id').value="";
				document.getElementById('id').focus();
				return false;
			}
			
			if(document.getElementById('pwd').value == '' || document.getElementById('pwd').value == null
			|| document.getElementById('pwd').value != document.getElementById('pwd2').value
			){
				alert("비밀번호 확인해주세요")
				document.getElementById('pwd').value="";
				document.getElementById('pwd').focus();
				return false;
			}
			
			/*if(document.getElementByName('personalAgree').value == '' || document.getElementByName('personalAgree').value == null){
				alert("개인정보 유효기간 체크해주세요")
				document.getElementByName('personalAgree').value="";
				document.getElementByName('personalAgree').focus();
				return false;
			}*/
			
			if(document.getElementById('name').value == '' || document.getElementById('name').value == null){
				alert("이름 입력해주세요")
				document.getElementById('name').value="";
				document.getElementById('name').focus();
				return false;
			}
			
			if(document.getElementById('email').value == '' || document.getElementById('email').value == null){
				alert("이메일 입력해주세요")
				document.getElementById('email').value="";
				document.getElementById('email').focus();
				return false;
			}
			
			if(document.getElementById('number').value == '' || document.getElementById('number').value == null){
				alert("번호 입력해주십쇼")
				document.getElementById('number').value="";
				document.getElementById('number').focus();
				return false;
			}
			
			if(document.getElementById('sample4_postcode').value == '' || document.getElementById('sample4_postcode').value == null){
				alert("우편번호 입력해주세요")
				document.getElementById('sample4_postcode').value="";
				document.getElementById('sample4_postcode').focus();
				return false;
			}
			
			if(document.getElementById('sample4_roadAddress').value == '' || document.getElementById('sample4_roadAddress').value == null){
				alert("도로명주소 입력해주세요")
				document.getElementById('sample4_roadAddress').value="";
				document.getElementById('sample4_roadAddress').focus();
				return false;
			}
			
			if(document.getElementById('sample4_detailAddress').value == '' || document.getElementById('sample4_detailAddress').value == null){
				alert("상세주소 입력해주세요")
				document.getElementById('sample4_detailAddress').value="";
				document.getElementById('sample4_detailAddress').focus();
				return false;
			}
			
			
			
			
			document.getElementById('registerForm').submit();
			
			return false;
		}
		
		//전화번호 하이픈
		const autoHyphen = (target) => {
		target.value = target.value
		.replace(/[^0-9]/g, '')
		.replace(/^(\d{0,3})(\d{0,4})(\d{0,4})$/g, "$1-$2-$3").replace(/(\-{1,2})$/g, "");
	    }
	    