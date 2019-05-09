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
    <title>from标点数据获取</title>


</head>
<body>

<div id="app">

    <h3>通过v-model指令绑定from表单,添加prevent关键字禁止表单自动提交，下拉框数据绑定有些区别</h3>
    <from @submit.prevent="Fun">
        <input type="text" v-model="message01"> 输入框：{{ message01 }} <br>

        <input type="password" v-model="message02"> 密码框：{{ message02 }} <br>

        <input type="radio" value=1 v-model="message03">
        <lable >男</lable>
        <input type="radio" value=0 v-model="message03">
        <lable style="margin-right:85px" >女</lable>     单选框：{{ message03 }} <br>

        <input type="checkbox" value=1 v-model="message04">
        <lable >篮球</lable>
        <input type="checkbox" value=2 v-model="message04">
        <lable style="margin-right:55px">足球</lable>    多选框：{{ message04 }} <br>

        <select style="margin-right:110px" v-model="message06">
            <option value="">未选择</option>
            <option v-bind:value="v.id" v-for="v in message05">{{v.name}}</option>
        </select>                                       下拉框：{{ message06 }} <br>

        <textarea rows="10" v-model="message07"></textarea> 多行输入框：{{ message07 }} <br>

        <input type="submit" value="提交" v-on:click="Fun">
    </from>








</div>

</body>
<script>
    var vm = new Vue({
        el: '#app',
        data: {
            message01: '',
            message02: '',
            message03: 1,
            message04:[1],
            message05:[{id:1,name:"郑州"},{id:2,name:"许昌"},{id:3,name:"洛阳"}],
            message06:"1",
            message07:""
        },
        methods: {
           Fun: function (event) {
               var str="输入框："+ vm.message01 +" \n密码框："+ vm.message02 +
                   " \n点选框："+ vm.message03 +" \n多选框："+ vm.message04 +
                   " \n下拉框："+ vm.message06 +" \n多行输入框："+ vm.message07;
               alert(str)
            }
        }
    })
</script>
</html>
