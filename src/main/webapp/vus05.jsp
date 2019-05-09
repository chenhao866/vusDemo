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
    <title>class和style属性的数据绑定</title>

    <style>
        .active01{
            color: blue;
        }
        .active02{
            color: red;
        }
    </style>
</head>
<body>

<div id="app">
    <h3>对属性的数据绑定，都需要配合v-bind指令</h3>

    <h3>01点击按钮，与vue绑定数据的元素会有变化</h3>
    <button onclick="Fun()">改变值</button>

    <h3>02与class属性的数据绑定,通过isActive01的真假显示class</h3>
    <div v-bind:class="{ active01: isActive01 }">class属性绑定</div>

    <h3>03配置多个class,通过真假切换class显示</h3>
    <div v-bind:class="{ active01: isActive01 , active02: isActive02 }">class属性绑定</div>

    <h3>04style内联样式属性绑定</h3>
    <div v-bind:style="{ color: isActive03, fontSize: isActive04 + 'px' }">style属性绑定</div>

    <h3>05style内联样式属性通过对象绑定</h3>
    <div v-bind:style="isActive05">style属性绑定</div>



</div>

</body>
<script>
    var vm = new Vue({
        el: '#app',
        data: {
            isActive01: true,
            isActive02: false,

            isActive03: 'red',
            isActive04: 30,

            isActive05: {
                color: 'red',
                fontSize: '30px'
            }

        }
    })

    // 当vue数据与标签元素绑定后，只要数据改变，标签显示也会随之改变
    var isoff = false;
    function Fun(){
        if(isoff){
            isoff=false;
            vm.isActive01 = true;//改变vue的数据
            vm.isActive02 = false;

            vm.isActive03 = 'red';
            vm.isActive04 = 30;

            vm.isActive05 = {
                color: 'red',
                fontSize: '30px'
            };


        }else {
            isoff=true;
            vm.isActive01 = false;
            vm.isActive02 = true;

            vm.isActive03 = 'blue';
            vm.isActive04 = 25;

            vm.isActive05 = {
                color: 'blue',
                fontSize: '25px'
            };


        }
    }

</script>
</html>
