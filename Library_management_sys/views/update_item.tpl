<html>
<head>
<link rel="stylesheet" type="text/css" href="/static/add.css">
</head>
<body>
<h2>Update Books</h2>
<hr/>
<div class="center">
<form action="/update" method="post">
  <input type="hidden" name="id" value="{{id}}"/>
  <p>title: <input name="title" value="{{title}}"/></p>
  <p>author: <input name="author" value="{{author}}"/></p>
  <p>quantity: <input name="quantity" value="{{quantity}}"/></p>
  <p><button type="submit">Submit</button></p>
</form>
</div>
<hr/>
</body>
</html>