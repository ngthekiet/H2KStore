<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
    request.setCharacterEncoding("UTF-8");
    response.setCharacterEncoding("UTF-8");
%>
<%
    String error = (String) request.getAttribute("error");
%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/login-register.css">
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
          integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>
    <title>Register</title>
</head>
<body>
<div id="frame">
    <div id="container">
        <div id="login">
            <div id="container-login">
                <div id="dangnhap">
                    <h4>Đăng ký</h4>
                </div>
                <div id="nameshop">
                    <h4>H2KShop</h4>
                </div>
                <form action="/WebProject/doRegister" method="post">
                    <%
                        if (error != null) {
                    %>
                    <div>
                        <%=error%>
                    </div>
                    <%
                        }
                    %>
                    <div class="input">
                        <i class="fas fa-user icons"></i>
                        <input <% if(request.getParameter("username")!=null){%>value="<%=request.getParameter("username")%>"
                            <%}%>
                               name="username"
                               type="text" placeholder="Tên đăng nhập *" autofocus="autofocus" required="required"
                               maxlength="32">
                    </div>
                    <div class="input">
                        <i class="fas fa-key icons"></i>
                        <input name="password" type="password" placeholder="Mật khẩu *" required="required"
                               maxlength="16">
                    </div>
                    <div class="input">
                        <i class="fas fa-key icons"></i>
                        <input name="confirm" type="password" placeholder="Xác nhận mật khẩu *" required="required"
                               maxlength="16">
                    </div>
                    <div class="input">
                        <i class="fas fa-envelope icons"></i>
                        <input name="email" type="text" placeholder="Email" maxlength="100">
                    </div>
                    <div class="input">
                        <i class="fas fa-user-circle icons"></i>
                        <input name="fullname" type="text" placeholder="Tên người dùng" maxlength="100">
                    </div>
                    <div class="input">
                        <i class="fas fa-phone icons"></i>
                        <input name="phone" type="text" placeholder="Số điện thoại" maxlength="10">
                    </div>
                    <div class="input">
                        <i class="fas fa-map icons"></i>
                        <input name="address" type="text" placeholder="Địa chỉ" maxlength="255">
                    </div>
                    <div class="login-register">
                        <a href="login.jsp">Đăng nhập ngay</a>
                    </div>
                    <div id="button">
                        <input type="submit" value="ĐĂNG KÝ">
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
</body>
</html>