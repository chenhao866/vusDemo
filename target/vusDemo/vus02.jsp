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
    <title>vue的简单表达式</title>
</head>
<body>

<div id="app">
    <h3>01点击按钮，与vue绑定数据的元素会有变化</h3>
    <button onclick="Fun()">改变值</button>

    <h3>02在vue中使用简单表达式：加减乘除</h3>
    <div>计算后的值：{{ message01 + 5 }}</div>

    <h3>03vue中三元运算符的使用</h3>
    <div>三元运算计算后的值：{{message02 ? '值一' : '值二'}}</div>

    <h3>04vue表达式在元素属性value值中的使用,需要v-bind指令配合使用</h3>
    <div v-bind:style="{color: message03 > 90 ? 'red' : 'blue' }">根据表达式值显示不同title的值</div>

</div>

</body>
<script>
    // 根据id找到根标签元素，创建vue实例，即通过vue管理它下面的所有元素
    var vm = new Vue({
        el: '#app',
        data: {
            message01: 10,
            message02: 1,
            message03:100
        }
    })

    // 当vue数据与标签元素绑定后，只要数据改变，标签显示也会随之改变
    var isoff = false;
    function Fun(){
        if(isoff){
            isoff=false;
            vm.message01 = 10;//改变vue的数据
            vm.message02 = 0;
            vm.message03 = 100;
        }else {
            isoff=true;
            vm.message01 = 20;
            vm.message02 = 1;
            vm.message03 = 90;
        }
    }

</script>
</html>
