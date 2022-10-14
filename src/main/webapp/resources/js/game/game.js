var goUrlGameForm = "/main/gameForm"

$("#btnGameForm").on("click",function(){
	$(location).attr("href",goUrlGameForm);
});	



 function gameRegister() {
		document.getElementById('memberFormReg').submit();
		
		return false;
		}