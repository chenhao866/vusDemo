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
    <title>v-for使用和特殊数据绑定</title>


</head>
<body>

<div id="app">

    <h3>01点击按钮，与vue绑定数据的元素会有变化</h3>
    <button onclick="Fun()">改变值</button>

    <h3>02遍历数组，根据数组长度生成对应的标签元素</h3>
    <ul>
        <li v-for="item in message01">{{item}}</li>
    </ul>

    <h3>03遍历数组，分别获取值和索引</h3>
    <ul>
        <li v-for="(v,i) in message01">{{v}}==={{i}}</li>
    </ul>

    <h3>04遍历对象，v是值，k是键</h3>
    <ul>
        <li v-for="(v,k) in message02">{{v}}==={{k}}</li>
    </ul>

    <h3>05遍历数组对象，v是对象，i为索引</h3>
    <ul>
        <li v-for="(v,i) in message03">{{v.id}}==={{v.name}}==={{v.age}}==={{i}}</li>
    </ul>

    <h3>06遍历数组对象，v是对象,无索引用法</h3>
    <ul>
        <li v-for="v in message03">{{v.id}}==={{v.name}}==={{v.age}}</li>
    </ul>





</div>

</body>
<script>
    var vm = new Vue({
        el: '#app',
        data: {
            message01: ["a","b","c","d"],
            message02:{id:1,name:'张三',age:18},
            message03:[{id:1,name:'张三',age:18},{id:2,name:'李四',age:20}]
        }
    })

    // 当vue数据与标签元素绑定后，只要数据改变，标签显示也会随之改变
    var isoff = false;
    function Fun(){
        if(isoff){
            isoff=false;
            vm.message01 = ["a","b","c","d"];//改变vue的数据
            vm.message02 = {id:1,name:'张三',age:18};
            vm.message03 = [{id:1,name:'张三',age:18},{id:2,name:'李四',age:20}];

        }else {
            isoff=true;
            vm.message01 = [1,2,3,4];
            vm.message02 = {id:2,name:'李四',age:20};
            vm.message03 = [{id:3,name:'王五',age:25},{id:4,name:'赵六',age:30}];
        }
    }

</script>
</html>
