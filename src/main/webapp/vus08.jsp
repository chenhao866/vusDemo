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

    <style>
        .parent{
            width: 200px;
            height: 200px;
            background-color: blue;
            overflow: hidden;
        }
        .child{
            width: 100px;
            height: 100px;
            background-color: red;
            margin: 0 auto;
            margin-top: 50px;
        }
    </style>

</head>
<body>

<div id="app">

    <h3>vue事件绑定，事件统一写在methods对象中；相对于原生事件，结构更清晰，代码更整洁</h3>

    <h3>01点击事件</h3>
    <button v-on:click=" message01Fun(message01) ">按钮01</button>

    <h3>02点击事件，默认传递当前对象$event为参数</h3>
    <button v-on:click=" message02Fun($event) ">按钮02</button>

    <h3>03点击事件,使用stop关键字防止红框事件冒泡</h3>
    <div class="parent" v-on:click="message03Fun">
        <div class="child" v-on:click.stop="message04Fun">
        </div>
    </div>

    <h3>04监听键盘按键事件,点击回车获取输入框的值，且焦点必须在输入框上，才能响应它上面绑定的按键事件</h3>
    <input @keyup.enter = "message05Fun($event)">





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
            },
            message02Fun: function (event) {
                alert(event.target.innerHTML);
                console.log(event);
            },
            message03Fun: function (event) {
                alert("点击了蓝框")
            },
            message04Fun: function (event) {
                alert("点击了红框")
            },
            message05Fun: function (event) {
                alert("输入框值为："+ event.target.value)
            }
        }
    })



</script>
</html>
