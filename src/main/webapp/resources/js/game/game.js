
var $j361 = jQuery.noConflict();
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
var goUrlGame = "/main/gameList";

var seq =$j361("input:hidden[name=gameSeq]");
var form = $j361("form[name=form]")

	$j361("#btnGameForm").on("click",function(){
		$(location).attr("href",goUrlGameForm);
	});	
	
	
	$j361("#btnReset").on("click",function(){
		$(location).attr("href",goUrlGame);
	});
	
	$j361("#btnSearch").on("click",function(){
		form.attr("action", goUrlGame).submit();
	});
	
	
	$j361("#btnForm").on("click",function(){
		$(location).attr("href",goUrlForm);
	});
	
	$j361("#btnCode").on("click" , function(){
		$(location).attr("href",goUrlCode);
	});
	
	$j361("#btnMember").on("click" , function(){
		$(location).attr("href",goUrlMember);
	});

	$j361("#btnCodeGroup").on("click" , function(){
		$(location).attr("href",goUrlCodeGroup);
	});	
	
 	$j361("#btnModify").on("click",function(){
	form.attr("action", goUrlUpdt).submit();
	});
	
	$j361("#btnUele").on("click",function(){
		form.attr("action", goUrlUele).submit();
	});
	
	$j361("#btnDelete").on("click", function(){
		form.attr("action", goUrlDele).submit();
	});
	
	$j361("#btnList").on("click", function(){
		formVo.attr("action", goUrlCodeGroup).submit();
	});                         //gorUrlList
	
	$j361("#btnHome").on("click", function(){
		$(location).attr("href",goUrlHome);
	});                        
	
	
	goList = function(thisPage){
		$j361("input:hidden[name=thisPage]").val(thisPage);
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
				