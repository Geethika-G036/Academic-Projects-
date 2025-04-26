<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
    <html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Insert title here</title>
        <%@include file="home.jsp" %>
            <script type="text/javascript">
                function ins() {
                    if (document.ab.t1.value == "" || document.ab.t2.value == "" || document.ab.t3.value == "" || document.ab.t4.value == "" || document.ab.t5.value == "" || document.ab.t6.value == "" || document.ab.t7.value == "") {
                        alert("fields are mandatory");


                    }
                    else {
                        document.getElementById("a").action = "prodparam.jsp";
                        document.getElementById("a").method = "post";
                        document.getElementById("a").submit();
                        alert("Registration Successful!!");
                    }
                }
                function can() {
                    document.getElementById("a").action = "home.jsp";
                    document.getElementById("a").method = "post";
                    document.getElementById("a").submit();
                }
                function check() {
                    if (isNaN(document.ab.t10.value) == true) {
                        alert("Please enter a valid value");
                        document.ab.t5.value = "";
                    }
                    else {
                    }
                }

            </script>

    </head>

    <body>


        <form id="a" name="ab">
            <div style="margin:auto;height: 700px;width: 950px">
                <div align="center"
                    style="height: 150px;width: 950px;color: white;font-family: sans-serif;font-size: x-large">
                    <b><br><br>Product Registration Form</b></div>
                <div style="margin-top:30px;height: 500px;width: 550px;margin-left: 200px">
                    <table>
                        <tr></tr>
                        <tr>
                            <td width="120px"></td>
                            <td width="140px" style="color: white;">Product ID</td>
                            <td width="70px"><input type="text" name="t1"></input></td>
                        </tr>
                        <tr></tr>
                        <tr>
                            <td width="120px"></td>
                            <td width="140px" style="color: white;">Product Name</td>
                            <td width="70px"><input type="text" name="t2"></input></td>
                        </tr>
                        <tr></tr>
                        <tr>
                            <td width="120px"></td>
                            <td width="140px" style="color: white;">Company</td>
                            <td width="70px"><input type="text" name="t3"></input></td>
                        </tr>
                        <tr></tr>
                        <tr>
                            <td width="120px"></td>
                            <td width="140px" style="color: white;">Model</td>
                            <td width="70px"><input type="text" name="t4"></input></td>
                        </tr>

                        <tr></tr>
                        <tr>
                            <td width="120px"></td>
                            <td width="140px" style="color: white;">Price</td>
                            <td width="70px"><input type="text" name="t5" onchange="check()"></input></td>
                        </tr>
                        <tr></tr>
                        <tr>
                            <td width="120px"></td>
                            <td width="140px" style="color: white;">Made In</td>
                            <td width="70px"><input type="text" name="t6"></input></td>
                        </tr>

                        <tr></tr>
                        <tr>
                            <td width="120px"></td>
                            <td width="140px" style="color: white;">Description</td>
                            <td width="70px"><textarea name="t7" rows="5" cols="17"></textarea></td>
                        </tr>
                        <tr>
                            <td height="20px"></td>
                        </tr>
                        <tr>
                            <td width="120px"></td>
                            <td width="140px"></td>
                            <td width="40px"><input type="button" value="Register" onclick="ins()"
                                    style="margin-right: 20px"></input><input type="button" value="Cancel"
                                    onclick="can()"></input></td>
                        </tr>
                    </table>
                </div>


            </div>


        </form>
    </body>

    </html>