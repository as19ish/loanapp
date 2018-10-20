<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Login</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
  <h2 class="text-center">Login Form</h2>
 	<c:if test="${not empty param.error }">
  <div class="col-sm-12 text-center">
	<div class="col-sm-12 text-danger">
		ERROR - ${SPRING_SECURITY_LAST_EXCEPTION.message}
	</div>
  </div>
  </c:if>
  <div class="row">
  <div class="col-sm-6 col-sm-offset-3">
  <form action="<c:url value='/j_spring_security_check' />" method='POST'>
    <div class="form-group">
      <label for="email">Email:</label>
      <input type="email" class="form-control" id="email" placeholder="Enter email" name="username" required="true">
    </div>
    <div class="form-group">
      <label for="pwd">Password:</label>
      <input type="password" class="form-control" id="password" placeholder="Enter password" name="password" required="true">
    </div>
    <button type="submit" class="btn btn-primary">Submit</button>
  </form>
  </div>
  </div>
</div>

</body>
</html>
