<html>
<head>
<link rel="stylesheet" type="text/css" href="/static/list.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
<h1>LIBRARY MANAGEMENT SYSTEM</h1>
<br>
<h2>BOOKS</h2>
<div class="books">
<table >
    <tr>
      <th>S.no</th>
      <th>Book Title</th>
      <th>Author</th>
      <th>Available copies</th>
    </tr>
    <tr>
    %for item in books:
    <tr>
      <td>{{item['book_id']}}</td>
      <td>{{item['title']}}</td>
      <td>{{item['author']}}</td>
      <td>{{item['quantity']}}</td>
      <td><a href="/delete/{{str(item['book_id'])}}">Delete</a></td>
      <td><a href="/update/{{str(item['book_id'])}}"> Update</a></td>
    </tr>
    %end
    </tr>
</table>

<a href="/add">Add new book</a>
</div>
<br>
<h2>BORROWERS</h2>
<div class="borrowers">
  <form class="example" action="/search" method="post">
    <label for="search_query">Search:</label>
        <input type="text" id="search_query" name="search_query" placeholder="Search by book name...">
    <button type="submit"><i class="fa fa-search"></i></button>
  </form>
  <table >
      <tr>
        <th>Borrower Id</th>
        <th>name</th>
        <th>email</th>
        <th>book id</th>
      </tr>
      <tr>
      %for n in borrowers:
      <tr>
        <td>{{n['borrower_id']}}</td>
        <td>{{n['name']}}</td>
        <td>{{n['email']}}</td>
        <td>{{n['bid']}}</td>
        <td><a href="/deletebor/{{str(n['borrower_id'])}}">Delete</a></td>
        <td><a href="/updateb/{{str(n['borrower_id'])}}"> Update</a></td>

      </tr>
      %end
     
      </tr>  
  </table>
   <a href="/addb">Add new borrower</a>
  </div>
<hr/>
</body>
</html>