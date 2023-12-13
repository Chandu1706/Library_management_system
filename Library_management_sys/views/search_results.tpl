<!DOCTYPE html>
<html>
<head>
    <title>Search Results</title>
    <head>
    <link rel="stylesheet" type="text/css" href="/static/search.css">
    </head>
</head>
<body>
    <h1>Search Results</h1>
    <p>Results for '{{ search_query }}':</p>
    <div class="borrowers">
       <table >
     
    %if results:
     <tr>
        <th>Borrower Id</th>
        <th>name</th>
        <th>email</th>
        <th>book name</th>
        <th>book id</th>
      </tr>
      <tr>
      %for n in results:
      <tr>
        <td>{{n[0]}}</td>
        <td>{{n[1]}}</td>
        <td>{{n[2]}}</td>
        <td>{{n[3]}}</td>
        <td>{{n[4]}}</td>

      </tr>
      %end 
    %else:
      <tr>

      <td>Enter valid book name!!</td>
      </tr>

      </tr>  
  </table>
  </div>
</body>
</html>