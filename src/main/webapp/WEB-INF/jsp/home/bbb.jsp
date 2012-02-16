<%@ include file="/taglibs.jsp"%>
<!doctype html>
<html>
<head>
    <meta charset="utf-8"/>
    <title>SS 2011 Keynote</title>
    <script type="text/javascript" src="${pathForJs}jquery-1.7.1.min.js"></script>
    <script type="text/javascript" src="http://192.168.0.45:8099/nowjs/now.js"></script>
    <script>
    $(document).ready(function() {
	    now.name = prompt("What's your name?", "");  
	    now.receive = function(name, message){
	      $("#messages").append("<br>"+name+": "+message);
	    };
	    $("#send-button").click(function(){
	      now.distribute($("#text-input").val());
	    });
    });
    </script>
</head>
<body>
    <div id="spring">
        <h1>Spring MVC</h1>
        <p>
            <label>from</label>
            <input id="fromText" type="text" name="from"/>
        </p>
        <p>
            <label>message</label>
            <input type="text" id="text-input" name="message"/>
        </p>
        <input id="send-button" type="button" value="send"/>
    </div>
    <div id="messages">
    </div>
</body>
</html>
