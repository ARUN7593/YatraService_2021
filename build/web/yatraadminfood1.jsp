<%@page import="DB.DataBase"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Yatra Service</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
  <script>  


  </script>
</head>
<body>

<div class="container-fluid bg-primary">
     <center>
     <p>Just a click</p> 
        <h1>ALL IN ONE</h1>  
  <p>(We are @ Your Service)</p> 
   </center>
</div>
    <nav class="navbar navbar-default">
  <div class="bg-info container col-md-offset-3">      
    <div class="navbar-header">
      <a class="navbar-brand" href="yatraadmin.jsp">Yatra Service</a>
    </div>
    <div class="container">
      <ul class="nav navbar-nav">
        <li class="active"><a href="yatraadmin.jsp">Home</a></li>
        <ul class="nav navbar-nav">
        <li class="active"><a href="yatraadminfood.jsp">Add Food</a></li>
        
      </ul>
      </ul>
    </div>
       
  </div>
</nav>
    
       

    <div class="form-group text-info ">    
<div class="col-sm-offset-1"> 
          


        <div class="col-lg-10">
            <%
            String fname= request.getParameter("fname");
            String fdes= request.getParameter("fdes");
            String fcat= request.getParameter("fcat");
            String fprice= request.getParameter("fprice");
            DataBase db= new DataBase();
            Connection con=db.getConnection();
            Statement st=con.createStatement();
            String sql="insert into food(foodname,fooddesc,category,price)values('"+fname+"','"+fdes+"','"+fcat+"','"+fprice+"')";
           st.executeUpdate(sql);
            System.out.print("Inserted");
                  
            
            %>
            
        </div>
        <div class="col-lg-1">
        </div>    
        </div>
</div>
</div>
</body>
</html>