	var goUrlList = "/codeGroup/codeGroupList"; 
	var goUrlCodeGroup = "/codeGroup/codeGroupList"; 			/* #-> */
	var goUrlInst = "/codeGroup/codeGroupInst"; 			/* #-> */
	var goUrlUpdt = "/codeGroup/codeGroupUpdt";				/* #-> */
	var goUrlUele = "/codeGroup/codeGroupUele";				/* #-> */
	var goUrlDele = "/codeGroup/codeGroupDele";				/* #-> */
	var goUrlView = "/codeGroup/codeGroupView";
	var goUrlForm = "/codeGroup/codeGroupForm";
	var goUrlCode = "/code/codeList";
	var goUrlMember = "/member/memberList";
	var goUrlHome = "/admin/home";
	
	var seq = $("input:hidden[name=ccgseq]");				/* #-> */
	
	var form = $("form[name=form]");
	var formVo = $("form[name=formVo]");
	
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
		
		
		//codegroup checkbox
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
		
		function memberList(){
			
		}

////////////////////////////////////////////////////////////////
			//codegroupform ????????????		
			function test(){
			
			if(document.getElementById('ccgNameKo').value == '' ||  document.getElementById('ccgNameKo').value == null){
				alert("?????? ?????? ?????? ??????????????????")
				document.getElementById('ccgNameKo').value="";
				document.getElementById('ccgNameKo').focus();
				return false;
			}
			
			if(document.getElementById('ccgNameEg').value =='' || document.getElementById('ccgNameEg').value == null){
				alert("?????? ???????????? ?????? ?????? ??????????????????")
				document.getElementById('ccgNameEg').value="";
				document.getElementById('ccgNameEg').focus();
				return false;
			}
			
			if(document.getElementById('ccgorder') ==""  || document.getElementById('ccgorder') == null){
				alert("????????????????????????")
				document.getElementById('ccgorder').value="";
				document.getElementById('ccgorder').focus();
				return false;
			}
			
			if(document.getElementById('ccguseNy') == "" || document.getElementById('ccguseNy') == null){
				alert("???????????? ????????? ????????????")
				document.getElementById('ccguseNy').value="";
				document.getElementById('ccguseNy').focus();
				return false;
			}
			
			if(document.getElementById('ccgdelNy') == "" || document.getElementById('ccgdelNy') == null){
				alert("???????????? ????????? ????????????")
				document.getElementById('ccgdelNy').value="";
				document.getElementById('ccgdelNy').focus();
				return false;
			}
			
/* 			if(document.querySelector("input[name='test']:checked") =='' || document.querySelector("input[name='test']:checked") == null){
				alert("????????? ????????????")
				document.querySelector("input[name='test']:checked").value="";
				document.querySelector("input[name='test']:checked").focus();
				return false;
			}
			alert(document.querySelector("input[name='test']:checked").value) */
			

			
			document.getElementById('codeGroupFormReg').submit();
			
			return false;
		}	
		
		function validationUpdt() {
	// validationUpdt = function() {
 		if(!checkOnlyEnglishNumber('ifcgSeqAnother', 2, 1, "???????????? ?????? (Another)??? ???????????????, ????????? ?????? ???????????????.")) return false;
 		if(!checkOnlyKoreanEnglishNumber('ifcgName', 2, 0, "???????????? ????????? ??????, ??????????????????, ????????? ?????? ???????????????.")) return false;
 		if(!checkOnlyEnglishNumber('ccgNameEg', 2, 1, "???????????? ?????? (??????)??? ??????????????????, ????????? ?????? ???????????????.")) return false;
 		if(!checkOnlyNumber('ifcgOrder', 2, 0, 1, 0, 255, "????????? ??????(0~255)??? ?????? ???????????????.")) return false;
 		if(!checkOnlyEnglishNumber('ifcgReferenceV1', 2, 1, "??????1 (varchar type)??? ??????????????????, ????????? ?????? ???????????????.")) return false;
 		if(!checkOnlyEnglishNumber('ifcgReferenceV2', 2, 1, "??????2 (varchar type)??? ??????????????????, ????????? ?????? ???????????????.")) return false;
 		if(!checkOnlyEnglishNumber('ifcgReferenceV3', 2, 1, "??????3 (varchar type)??? ??????????????????, ????????? ?????? ???????????????.")) return false;
 		if(!checkOnlyEnglishNumber('ifcgReferenceV4', 2, 1, "??????4 (varchar type)??? ??????????????????, ????????? ?????? ???????????????.")) return false;
 		if(!checkOnlyNumber('ifcgReferenceI1', 2, 1, 1, -128, 127, "??????1 (Int type)??? ??????(-128~127)??? ?????? ???????????????.")) return false;
 		if(!checkOnlyNumber('ifcgReferenceI2', 2, 1, 1, -128, 127, "??????2 (Int type)??? ??????(-128~127)??? ?????? ???????????????.")) return false;
 		if(!checkOnlyNumber('ifcgReferenceI3', 2, 1, 1, -128, 127, "??????3 (Int type)??? ??????(-128~127)??? ?????? ???????????????.")) return false;
 		if(!checkOnlyNumber('ifcgReferenceI4', 2, 1, 1, -128, 127, "??????4 (Int type)??? ??????(-128~127)??? ?????? ???????????????.")) return false;
	}