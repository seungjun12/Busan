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
			//codegroupform 등록기능		
			function test(){
			
			if(document.getElementById('ccgNameKo').value == '' ||  document.getElementById('ccgNameKo').value == null){
				alert("한글 이름 다시 입력해주세요")
				document.getElementById('ccgNameKo').value="";
				document.getElementById('ccgNameKo').focus();
				return false;
			}
			
			if(document.getElementById('ccgNameEg').value =='' || document.getElementById('ccgNameEg').value == null){
				alert("영문 코드그룹 이름 다시 입력해주세요")
				document.getElementById('ccgNameEg').value="";
				document.getElementById('ccgNameEg').focus();
				return false;
			}
			
			if(document.getElementById('ccgorder') ==""  || document.getElementById('ccgorder') == null){
				alert("순서입력해주세요")
				document.getElementById('ccgorder').value="";
				document.getElementById('ccgorder').focus();
				return false;
			}
			
			if(document.getElementById('ccguseNy') == "" || document.getElementById('ccguseNy') == null){
				alert("사용여부 체크해 주십시오")
				document.getElementById('ccguseNy').value="";
				document.getElementById('ccguseNy').focus();
				return false;
			}
			
			if(document.getElementById('ccgdelNy') == "" || document.getElementById('ccgdelNy') == null){
				alert("삭제여부 체크해 주십시오")
				document.getElementById('ccgdelNy').value="";
				document.getElementById('ccgdelNy').focus();
				return false;
			}
			
/* 			if(document.querySelector("input[name='test']:checked") =='' || document.querySelector("input[name='test']:checked") == null){
				alert("테스트 체크해봐")
				document.querySelector("input[name='test']:checked").value="";
				document.querySelector("input[name='test']:checked").focus();
				return false;
			}
			alert(document.querySelector("input[name='test']:checked").value) */
			

			
			document.getElementById('codeGroupFormReg').submit();
			
			return false;
		}