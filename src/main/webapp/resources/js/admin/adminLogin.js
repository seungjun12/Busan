var goUrlHome ="/admin/home"
    		
   
    	/* 로그인 */ 
    	$("#btnLoginAdmin").on("click", function(){
    		/* if(validation() == false) return false; */
    		
    		$.ajax({
    			async: true 
    			,cache: false
    			,type: "post"
    			/* ,dataType:"json" */
    			,url: "/member/loginProcAdmin"
    			/* ,data : $("#formLogin").serialize() */
    			,data : { "id" : $("#id").val(), "pwd" : $("#pwd").val(), /* "autoLogin" : $("#autoLogin").is(":checked") */}
    			,success: function(response) {
    				if(response.rt == "success") {
    					/* if(response.changePwd == "true") {
    						location.href = URL_CHANGE_PWD_FORM;
    					} else {
    						location.href = URL_INDEX_ADMIN;
    					} */
    					
    					location.href = goUrlHome;
    				} else {
    					alert("회원없음");
    				}
    			}
    			,error : function(jqXHR, textStatus, errorThrown){
    				alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
    			}
    		});
    	});    