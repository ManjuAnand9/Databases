/**
 * 
 */


function setRole(){
	//var property="<%=session.getAttribute("role")%>";
	var roleName = getCookieValue("role");
	//alert(someSessionVariable);
	//alert("hi");
	document.getElementById("demo").innerHTML = roleName;
	
	document.getElementById("demo").innerHTML = roleName;
	   
    if (roleName == 'nurse' )
        {
        document.getElementById("diagLink").style.visibility = "hidden";
        document.getElementById("prescLink").style.visibility = "hidden";
        document.getElementById("prescDelLink").style.visibility = "hidden";
       
        }
    else if (roleName == 'clerk')
        {
        document.getElementById("diagLink").style.visibility = "hidden";
        document.getElementById("prescLink").style.visibility = "hidden";
        document.getElementById("symptomLink").style.visibility = "hidden";
        document.getElementById("billLink").style.visibility = "hidden";
        document.getElementById("billDelLink").style.visibility = "hidden";
        document.getElementById("prescDelLink").style.visibility = "hidden";
        }

}

function getCookieValue(a) {
    var b = document.cookie.match('(^|[^;]+)\\s*' + a + '\\s*=\\s*([^;]+)');
    return b ? b.pop() : '';
}