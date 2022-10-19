var goUrlGameForm = "/main/gameForm"
var goUrlView = "/main/gameView"
var goUrlCodeGroup = "/codeGroup/codeGroupList"; 			/* #-> */
var goUrlInst = "/codeGroup/codeGroupInst"; 			/* #-> */
var goUrlUpdt = "/main/gameUpdt";				/* #-> */
var goUrlUele = "/main/gameUele";				/* #-> */
var goUrlDele = "/main/gameDele";				/* #-> */
var goUrlForm = "/codeGroup/codeGroupForm";
var goUrlCode = "/code/codeList";
var goUrlMember = "/member/memberList";
var goUrlHome = "/admin/home";
var goUrlGame = "/main/gameList"

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
		$(location).attr("href",goUrlGame);
	});
	
	$("#btnSearch").on("click",function(){
		form.attr("action", goUrlGame).submit();
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
		form.attr("action", goUrlUele).submit();
	});
	
	$("#btnDelete").on("click", function(){
		form.attr("action", goUrlDele).submit();
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
	
	//충돌방지
  	var $jQ = jQuery.noConflict();
	$jQ(document).ready(function(){
		$jQ('datepickers').text('충돌방지 해결');
	});



 function gameRegister() {
		document.getElementById('gameFormReg').submit();
		
		return false;
		}
				