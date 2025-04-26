<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
    <%@page import="bcp.*" %>
        <%@page import="java.sql.ResultSet" %>
            <html>

            <head>
                <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
                <title>Insert title here</title>
                <%String ss="" +session.getAttribute("st1"); %>
                    <%@include file="staffhome.jsp" %>
                        <script type="text/javascript">
                            function chg() {
                                document.getElementById("a").action = "complaintview.jsp";
                                document.getElementById("a").method = "post";
                                document.getElementById("a").submit();
                            }
                            function chg1() {
                                document.getElementById("a").action = "viewcomplaintorginal.jsp";
                                document.getElementById("a").method = "post";
                                document.getElementById("a").submit();
                            }

                        </script>
            </head>

            <body>

                <form id="a" name="aa">
                    <% logclass lo=new logclass(); ResultSet rs=lo.selection1(); %>
                        <input type="hidden" name="t10" value="<%=ss %>"></input>
                        <% complaint log=new complaint(); ResultSet rs1=log.selection19(ss); ResultSet
                            rf=log.selection19(ss); %>
                            <div style="margin-top: 20px"></div>
                            <%if(rf.next()){ %>
                                <table style=" color: white " border="2" bordercolor="#99999">
                                    <tr> <!--   <td width="100px"></td>-->
                                        <td width="50px">Complaint ID
                                        <td width="100px">Product ID</td>
                                        <td width="100px">Product Name</td>
                                        <td width="100px">Company</td>
                                        <td width="70px">Model</td>
                                        <td width="70px">Price</td>
                                        <td width="100px">Made In</td>
                                        <td width="100px">Mfg.Date</td>
                                        <td width="70px">Warranty Finished?</td>
                                        <td width="100px">Complaint</td>
                                        <td width="100px">Name of Customer</td>
                                        <td width="100px">Address</td>
                                        <td width="100px">Mobile No</td>
                                        <td width="100px">Email ID</td>
                                    </tr>
                                    </td>
                                    </tr>
                                    <% while(rs1.next()) { System.out.println(rs1.getString(1));
                                        System.out.println(rs1.getString(2)); System.out.println(rs1.getString(3)); %>






                                        <tr> <!-- <td width="100px"></td>-->
                                            <td width="50px">
                                                <%=rs1.getString(1) %>
                                            </td>
                                            <td width="100px">
                                                <%=rs1.getString(2) %>
                                            </td>
                                            <td width="100px">
                                                <%=rs1.getString(3) %>
                                            </td>
                                            <td width="100px">
                                                <%=rs1.getString(4) %>
                                            </td>
                                            <td width="70px">
                                                <%=rs1.getString(5) %>
                                            </td>
                                            <td width="70px">
                                                <%=rs1.getString(6) %>
                                            </td>
                                            <td width="100px">
                                                <%=rs1.getString(7) %>
                                            </td>
                                            <td width="100px">
                                                <%=rs1.getString(9) %>
                                            </td>
                                            <td width="70px">
                                                <%=rs1.getString(8) %>
                                            </td>
                                            <td width="100px">
                                                <%=rs1.getString(10) %>
                                            </td>
                                            <td width="100px">
                                                <%=rs1.getString(11) %>
                                            </td>
                                            <td width="100px">
                                                <%=rs1.getString(12) %>
                                            </td>
                                            <td width="100px">
                                                <%=rs1.getString(13) %>
                                            </td>
                                            <td width="100px">
                                                <%=rs1.getString(14) %>
                                            </td>
                                        </tr>
                                        <%} %>







                                            <!--  </table>-->
                                </table>

                                <div style="margin-top: 20px">
                                    <tr>
                                        <td></td><input type="button" value="MAP" onclick="chg1()"
                                            style="margin-left: 600px" />
                                    </tr>
                                    </table>
                                </div>
                                <%} %>
                                    <%if(rf.first()==false){ %>
                                        <script type="text/javascript">alert("No Records");</script>

                                        <%} %>
                </form>
            </body>

            </html>