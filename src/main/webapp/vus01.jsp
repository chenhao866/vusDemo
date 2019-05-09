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
    <title>Hello Vue!</title>
</head>
<body>

    <div id="app">
        <h3>01点击按钮，与vue绑定数据的元素会有变化</h3>
        <button onclick="Fun()">改变值</button>

        <h3>02Mustache语法基本使用，即双大括号</h3>
        <div>显示内容与vue绑定：{{ message01 }}</div>

        <h3>03Mustache语法会将数据解析为纯字符串，如果想要输入html标签，需要使用v-html指令</h3>
        <div v-html="message02"></div>

        <h3>04Mustache语法不会作用于标签属性的值，如果想要标签属性value值和vue数据绑定，需要使用v-bind指令</h3>
        <button v-bind:disabled="message03">按钮是否禁用</button>

        <h3>05对from表单类型的元素进行双向数据绑定，需要使用v-model指令</h3>
        <input type="text" v-model="message04">
        <p>输入的值会与vue数据绑定，即输入值得同时直接就对vue中data的数据进行了赋值：{{message04}}</p>

    </div>

</body>
<script>
    // 根据id找到根标签元素，创建vue实例，即通过vue管理它下面的所有元素
    var vm = new Vue({
        el: '#app',
        data: {
            message01: 'Hello Vue!',
            message02: '<p style="color: red">我是html标签</p>',
            message03:true,
            message04:'默认值1'
        }
    })

    // 当vue数据与标签元素绑定后，只要数据改变，标签显示也会随之改变
    var isoff = false;
    function Fun(){
        if(isoff){
            isoff=false;
            vm.message01 = "Hello Vue!";//改变vue的数据
            vm.message02 = '<p style="color: red">我是html标签</p>';
            vm.message03 = true;
            vm.message04 = '默认值1';
        }else {
            isoff=true;
            vm.message01 = "我改变了";
            vm.message02 = '<p style="color: blue">我是html标签</p>';
            vm.message03 = false;
            vm.message04 = '默认值2';
        }
    }

</script>
</html>
