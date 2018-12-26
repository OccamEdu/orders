<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" import = "java.util.*"%>
<%@ page import="com.entity.Order" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>订单信息一览</title>
        <style type="text/css">
          table.altrowstable {
              font-family: verdana,arial,sans-serif;
              font-size:16px;
              color:#333333;
              border-width: 1px;
              border-color: #a9c6c9;
              border-collapse: collapse;
              margin-top:20px;
          }
          table.altrowstable th {
              border-width: 1px;
              padding: 8px;
              border-style: solid;
              border-color: #a9c6c9;
          }
          table.altrowstable td {
              border-width: 1px;
              padding: 8px;
              border-style: solid;
              border-color: #a9c6c9;
          }
          .oddrowcolor{
              background-color:#d4e3e5;
          }
          .evenrowcolor{
              background-color:#c3dde0;
          }

          .searchForm select{
              height:30px;
          }

          .inputText{
              height:24px;
          }

            .btn {
                height:27px;
                width:50px;
                color:white;
                border:none;
                background-color: cornflowerblue;
            }

            .up {
                display:inline-block;
                width: 920px;
            }

            .searchFormDiv {
                float:left;
            }

            .addBtnDiv {
                float:right;
            }

            .addBtnDiv a {
                height: 30px;
                line-height: 30px;
                padding: 0 14px;
                background: #038ab8;
                border: none;
                border-radius: 3px;
                display: inline-block;
                text-decoration: none;
                font-size: 15px;
                outline: none;
                color: white;
            }
      </style>
  </head>
  <body>
    <%
        request.setCharacterEncoding("utf-8");
    %>
    <div class = "up">
        <div class = "searchFormDiv">
            <form name = "searchForm" method = "post" action = "search" class="searchForm">
              <select name = "condition">
                <option value = "order_number">订单号</option>
                <option value = "order_status">订单状态</option>
                <option value = "express">寄货快递</option>
                <option value = "create_time">订单时间</option>
              </select>
              <input type = "text" name = "value" class = "inputText"/>
              <input type = "submit" value = "查询" class = "btn"/>
            </form>
        </div>
        <div class = "addBtnDiv">
            <a href = "add">添加订单信息</a>
        </div>
    </div>
    <table class="altrowstable" id="alternatecolor">
        <tr>
            <th>订单号</th>
            <th>订单状态</th>
            <th>订单总价</th>
            <th>订单快递</th>
            <th>快递单号</th>
            <th>快递运费</th>
            <th>下单时间</th>
            <th>操作</th>
        </tr>

        <%
          List<Order> list = (List<Order>) request.getAttribute("list");
          for(int i = 0; i < list.size(); i++) {
        %>
        <tr>
          <td><%=list.get(i).getOrderNum() %></td>
          <td><%=list.get(i).getOrderStatus() %></td>
          <td><%=list.get(i).getOrderTotalPrice() %></td>
          <td><%=list.get(i).getOrderExpress() %></td>
          <td><%=list.get(i).getOrderExpressNumber() %></td>
          <td><%=list.get(i).getOrderFreight() %></td>
          <td><%=list.get(i).getOrderCreateTime() %></td>
          <td>
            <a onclick = "return confirm('确定要删除吗？');" href = "delete?orderId=<%=list.get(i).getOrderId()%>">删除</a>
            <a href = "show?orderId=<%=list.get(i).getOrderId()%>">修改</a>
          </td>
        </tr>
        <%}%>

    </table>
  </body>

  <script type="text/javascript">
      function altRows(id){
          if(document.getElementsByTagName){

              var table = document.getElementById(id);
              var rows = table.getElementsByTagName("tr");

              for(i = 0; i < rows.length; i++){
                  if(i % 2 == 0){
                      rows[i].className = "evenrowcolor";
                  }else{
                      rows[i].className = "oddrowcolor";
                  }
              }
          }
      }

  window.onload=function(){
      altRows('alternatecolor');
  }
</script>
</html>
