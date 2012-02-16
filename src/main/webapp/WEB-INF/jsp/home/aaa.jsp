<%@ include file="/taglibs.jsp"%>
<!doctype html>
<html>
<head>
    <meta charset="utf-8"/>
    <title>SS 2011 Keynote</title>
    <script type="text/javascript" src="${pathForJs}jquery-1.7.1.min.js"></script>
    <script src="http://192.168.0.45:8099/socket.io/socket.io.js"></script>
    <script>
        // socket.io connection
        var socket = io.connect('http://192.168.0.45:8099');

        // receive first message
        socket.on('news', function (data) {
            $('#node ul').prepend('<li>' + data.hello + '</li>');
            console.log("data : " + data.hello);
        });

        // receive chatting message
        socket.on('chat', function (data) {
            console.log(data);
            $('#node ul').prepend('<li>' + data.message.from + ': ' + data.message.message + '</li>');
        });
    </script>
</head>
<body>
<form id="chatForm">
    <div id="spring">
        <h1>Spring MVC</h1>
        <p>
            <label>from</label>
            <input id="fromText" type="text" name="from"/>
        </p>
        <p>
            <label>message</label>
            <input type="text" id="msgText" name="message"/>
        </p>
        <input id="sendBtn" type="submit" value="send" onclick="return false;"/>
    </div>
    <div id="node">
        <h1>Node.JS</h1>
        <ul></ul>
    </div>
</form>
<script>
    $("#fromText").val("").focus();

    $(document).ready(function() {
        $("#fromText").val("").focus();

        $("#sendBtn").click(function(event){
            event.preventDefault();

            var fromValue = $("#fromText").val();
            var messageValue = $("#msgText").val();
            var sendUrl = '/send/from/' + fromValue + '/message/' + messageValue;

            $.get(sendUrl, function(data) {
                console.log(data);
            });

            $("#msgText").val("").focus();
        });
    });
</script>
</body>
</html>
