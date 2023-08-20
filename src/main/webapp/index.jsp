

<%@ page import="static com.TestQuest.MainItems.getItem" %>
<%@ page import="static com.TestQuest.Answers.getAnswer" %>

<%@ page import="com.TestQuest.LogicServlet" %>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!DOCTYPE html>
<>
<head>
    <meta charset="UTF-8" />
    <title>Text Quest</title>
    <link href="my.css" rel="stylesheet">
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
</head>


<header>
<h1>YOUR SPACE JOURNEY</h1>
</header>

<div id ="input_new_name" style="font-size: 25px; color: lightpink"> Enter your name: </div>
<input type="text" id="enterName"  size="40" placeholder = 'Your name'>
<input required type="button" id="yourName"  name = "userName" value="Enter name"  onclick="inputName()">



<div class="firstItem" style="border: 10px ridge lemonchiffon;
    background-color: violet;
    padding: 2rem;
    display: flex;
    flex-direction: column;
text-align: center">
<label id ="1Item" style="color: aliceblue; font-size: 25px;"><%=getItem(1)%></label>
</div>
<br>
<br>
<br>

<button id="yes" onclick="sayYes()" style=" width: 300px;
font-size:large;
background-color: lightpink;
float: left"><%=getAnswer(1)%></button>
<button id="no" onclick="sayNo()" style="width: 300px;
background-color: lightpink;
font-size: large;
float: right"><%=getAnswer(2)%></button>
<br>
<br>
<br>
<br>
<br>
<br>


<script>

let el1 = document.getElementById("1Item")
    let elYes = document.getElementById("yes")
    let elNo = document.getElementById("no")

    let reloadBtn = document.createElement("btn")
let yourName  = document.getElementById("enterName").value;
let score=sessionStorage.getItem("score");

function inputName(){
    alert(yourName);
    document.getElementById("input_new_name").remove();
    document.getElementById("enterName").remove();
    document.getElementById("yourName").remove();
    sessionStorage.setItem("name", yourName);
    return yourName;
}

    function addReloadBtn(){
        reloadBtn.innerHTML='<button onclick="location.reload()" style="font-size: 70px; ' +
            'background-color: burlywood;' +
            ' position: absolute;' +
            'left: 40%">RELOAD<button>'
        document.body.appendChild(reloadBtn)
    }
    function sayYes(){
    score = 0;
        if (el1.innerText === "<%=getItem(1)%>") {
            el1.textContent = "<%=getItem(3)%>"
            elYes.textContent = "<%=getAnswer(3)%>"
            elNo.textContent ="<%=getAnswer(4)%>"
        } else if (el1.innerText === "<%=getItem(3)%>") {
            el1.textContent = "<%=getItem(5)%>"
            elYes.textContent= "<%=getAnswer(5)%>"
            elNo.textContent= "<%=getAnswer(6)%>"
        } else if (el1.innerText === "<%=getItem(5)%>") {
            el1.textContent = "<%=getItem(7)%>"
            elYes.textContent= "<%=getAnswer(7)%>"
            elNo.textContent= "<%=getAnswer(8)%>"
        } else if (el1.innerText === "<%=getItem(7)%>") {
            el1.textContent = "<%=getItem(9)%>"
            elYes.remove()
            elNo.remove()
            score++;
            addReloadBtn()
        }
    }
    function sayNo() {
        if (el1.innerText === "<%=getItem(1)%>") {
            el1.textContent = "<%=getItem(2)%>"
            elYes.remove()
            elNo.remove()
           addReloadBtn()
        } else if (el1.innerText === "<%=getItem(3)%>") {
            el1.textContent = "<%=getItem(4)%>"
            elYes.remove()
            elNo.remove()
            addReloadBtn()
        } else if (el1.innerText === "<%=getItem(5)%>") {
            el1.textContent = "<%=getItem(6)%>"
            elYes.remove()
            elNo.remove()
            addReloadBtn()
        } else if (el1.innerText === "<%=getItem(7)%>") {
            el1.textContent = "<%=getItem(8)%>"
            elYes.remove()
            elNo.remove()
            addReloadBtn()
        }
    }

</script>


<style>
    body { background: url(/images/space.jpg);}
</style>
</body>
</html>
