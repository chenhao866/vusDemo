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
    <title>根据条件渲染显示元素</title>


</head>
<body>

<div id="app">
    <h3>根据v-if和v-show指令，对标签元素进行渲染显示; v-if会根据条件是否真实渲染，v-show只是切换display属性</h3>

    <h3>01点击按钮，与vue绑定数据的元素会有变化</h3>
    <button onclick="Fun()">改变值</button>

    <h3>02 v-if显示元素</h3>
    <div v-if=" message01 > 9 ">v-if元素</div>

    <h3>03 v-if配合v-else显示元素</h3>
    <div v-if=" message02 == 1 ">v-if元素</div>
    <div v-else>v-else元素</div>

    <h3>04 v-if配合template标签显示多个元素</h3>
    <template v-if=" message03 == 1 ">
        <div>元素01</div>
        <div>元素02</div>
        <div>元素03</div>
    </template>

    <h3>05 v-show显示元素</h3>
    <div v-if=" message01 > 9 ">v-show元素</div>

    <h3>06 v-show配合v-else显示元素;v-show无法配合template标签使用</h3>
    <div v-if=" message02 == 1 ">v-show元素</div>
    <div v-else>v-else元素</div>





</div>

</body>
<script>
    var vm = new Vue({
        el: '#app',
        data: {
            message01: 10,
            message02:1,
            message03:1
        }
    })

    // 当vue数据与标签元素绑定后，只要数据改变，标签显示也会随之改变
    var isoff = false;
    function Fun(){
        if(isoff){
            isoff=false;
            vm.message01 = 10;//改变vue的数据
            vm.message02 = 1;
            vm.message03 = 1;

        }else {
            isoff=true;
            vm.message01 = 1;
            vm.message02 = 0;
            vm.message03 = 0;
        }
    }

</script>
</html>
