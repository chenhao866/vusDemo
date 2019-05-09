<%--
  Created by IntelliJ IDEA.
  User: chen
  Date: 2019/5/6
  Time: 16:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
    <title>事件绑定</title>


</head>
<body>

<div id="app">

    <h3>vue事件绑定，事件统一写在methods对象中；相对于原生事件，结构更清晰，代码更整洁</h3>

    <h3>01点击事件</h3>
    <button v-on:click=" message01Fun(message01) ">按钮</button>





</div>

</body>
<script>
    var vm = new Vue({
        el: '#app',
        data: {
            message01: 'hello vue'
        },
        methods: {
            message01Fun: function (event) {
                alert(event)
            }
        }
    })



</script>
</html>
