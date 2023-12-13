<html>
<head>
<link rel="stylesheet" type="text/css" href="/static/add.css">
</head>
<body>
<h2>Add a new Book</h2>
<hr/>
<div class="center">
<form action="/add" method="post">
  <p>Title: <input name="title"/></p>
  <p>author: <input name="author"/></p>
  <p>No of available books: <input name="quantity"/></p>
  <p><button type="submit">Submit</button></p>
</form>
</div>
<hr/>
</body>
</html>