var goUrlGameForm = "/main/gameForm"
var goUrlView = "/main/gameView"
var goUrlCodeGroup = "/codeGroup/codeGroupList"; 			/* #-> */
var goUrlInst = "/codeGroup/codeGroupInst"; 			/* #-> */
var goUrlUpdt = "/codeGroup/codeGroupUpdt";				/* #-> */
var goUrlUele = "/codeGroup/codeGroupUele";				/* #-> */
var goUrlDele = "/codeGroup/codeGroupDele";				/* #-> */
var goUrlForm = "/codeGroup/codeGroupForm";
var goUrlCode = "/code/codeList";
var goUrlMember = "/member/memberList";
var goUrlHome = "/admin/home";

var seq =$("input:hidden[name=gameseq]");
var form = $("form[name=form]")

$("#btnGameForm").on("click",function(){
	$(location).attr("href",goUrlGameForm);
});	

goView = function(seqValue){
	seq.val(seqValue);
	form.attr("action" , goUrlView).submit();
}

$("#btnReset").on("click",function(){
		$(location).attr("href",goUrlCodeGroup);
	});
	
	$("#btnSearch").on("click",function(){
		form.attr("action", goUrlCodeGroup).submit();
	});
	
	
	$("#btnForm").on("click",function(){
		$(location).attr("href",goUrlForm);
	});
	
	$("#btnCode").on("click" , function(){
		$(location).attr("href",goUrlCode);
	});
	
	$("#btnMember").on("click" , function(){
		$(location).attr("href",goUrlMember);
	});

	$("#btnCodeGroup").on("click" , function(){
		$(location).attr("href",goUrlCodeGroup);
	});	
	
 	$("#btnModify").on("click",function(){
	form.attr("action", goUrlUpdt).submit();
	});
	
	$("#btnUele").on("click",function(){
		formVo.attr("action", goUrlUele).submit();
	});
	
	$("#btnDelete").on("click", function(){
		formVo.attr("action", goUrlDele).submit();
	});
	
	$("#btnList").on("click", function(){
		formVo.attr("action", goUrlCodeGroup).submit();
	});                         //gorUrlList
	
	$("#btnHome").on("click", function(){
		$(location).attr("href",goUrlHome);
	});                        
	
	
	goList = function(thisPage){
		$("input:hidden[name=thisPage]").val(thisPage);
		form.attr("action" , goUrlList).submit();
	}
	
	goView = function(seqValue) {
    	/* if(keyValue != 0) seq.val(btoa(keyValue)); */
    	seq.val(seqValue);
		form.attr("action", goUrlView).submit();
	}	



 function gameRegister() {
		document.getElementById('gameFormReg').submit();
		
		return false;
		}
		
$(function() {
  	//input을 datepicker로 선언
  	$("#datepicker").datepicker({
  	dateFormat: 'yy-mm-dd' //달력 날짜 형태
  	,showOtherMonths: true //빈 공간에 현재월의 앞뒤월의 날짜를 표시
  	,showMonthAfterYear:true // 월- 년 순서가아닌 년도 - 월 순서
  	,changeYear: true //option값 년 선택 가능
  	,changeMonth: true //option값 월 선택 가능
  	,yearRange:'c-99: c+99'
  	,minDate : new Date('1900-01-01')
  	,maxDate : new Date ('today')
  	});
  
	 //초기값을 오늘 날짜로 설정해줘야 합니다. 응 할필요 없어~~
	  	$('#datepicker').datepicker(); //(-1D:하루전, -1M:한달전, -1Y:일년전), (+1D:하루후, -1M:한달후, -1Y:일년후)
	  	});  
	
	$(document).ready(function(){               
	    $.datepicker.setDefaults({
	    closeText: "닫기",
	    currentText: "오늘",
	    prevText: '이전 달',
	    nextText: '다음 달',
	    monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
	    monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
	    dayNames: ['일', '월', '화', '수', '목', '금', '토'],
	    dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
	    dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
	    weekHeader: "주",
	    yearSuffix: '년'
	    });    
	 });		