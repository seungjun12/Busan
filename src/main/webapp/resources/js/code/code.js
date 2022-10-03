	var goUrlList = "/code/codeList"; 			/* #-> */
	var goUrlInst = "/code/codeInst"; 			/* #-> */
	var goUrlUpdt = "/code/codeUpdt";				/* #-> */
	var goUrlUele = "/code/codeUele";				/* #-> */
	var goUrlDele = "/code/codeDele";				/* #-> */
	var goUrlView = "/code/codeView";
	var goUrlCodeGroup = "/codeGroup/codeGroupList";
	var goUrlMember = "/member/memberList";	
	var seq = $("input:hidden[name=ccseq]");				/* #-> */
	var goUrlForm = "/code/codeForm";
	var goUrlHome = "/admin/home"; 
	
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
		$(location).attr("href",goUrlList);
	});
	
	$("#btnMember").on("click",function(){
		$(location).attr("href",goUrlMember);
	});
	
	$("#btnCodeForm").on("click",function(){
		$(location).attr("href",goUrlForm);
	});
	
	$("#btnHome").on("click", function(){
		$(location).attr("href",goUrlHome);
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
		formVo.attr("action", goUrlList).submit();
	}); 
	

	goList = function(thisPage){
		$("input:hidden[name=thisPage]").val(thisPage);
		form.attr("action" , goUrlList).submit();
	}
	
	goView = function(seqValue){
		seq.val(seqValue);
		form.attr("action" , goUrlView).submit();
	}
	
	//check box
	
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
		
	//codeForm register
	function test() {
		
		if(document.getElementById('ccnameko').value == '' || document.getElementById('ccnameko').value == null){
			alert("한글코드 이름 다시 입력해주세요")
			document.getElementById('ccnameko').value="";
			document.getElementById('ccnameko').focus();
			return false;
		}
		
		if(document.getElementById('ccnameeg').value == '' || document.getElementById('ccnameko').value == null){
			alert("영어코드 이름 다시 입력해주세요")
			document.getElementById('ccnameeg').value="";
			document.getElementById('ccnameeg').focus();
			return false;
		}
		
		if(document.getElementById('ccuseNy').value == '' || document.getElementById('ccuseNy').value == null){
			alert("사용여부 선택해주세요")
			document.getElementById('ccuseNy').value="";
			document.getElementById('ccuseNy').focus();
			return false;
		}
		
		if(document.getElementById('ccorder').value == '' || document.getElementById('ccorder').value == null){
			alert("순서 입력해주세요")
			document.getElementById('ccorder').value="";
			document.getElementById('ccorder').focus();
			return false;
		}
		
		if(document.getElementById('ccdelNy').value == '' || document.getElementById('ccdelNy').value == null){
			alert("삭제 여부 선택해주세요")
			document.getElementById('ccdelNy').value="";
			document.getElementById('ccdelNy').focus();
			return false;
		}
		
		document.getElementById('codeFormReg').submit();
		
	}		