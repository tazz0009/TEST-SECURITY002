<%@ include file="/taglibs.jsp"%>
<html>
<body>
<h2>Hello World!</h2>
${pathForCss}<br/>
<spring:eval expression="@db['db.username']" />
</body>
</html>
