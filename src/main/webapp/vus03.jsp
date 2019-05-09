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
    <title>vue过滤器</title>
</head>
<body>

<div id="app">
    <h3>过滤器通常用作常见的文本格式化，可以度娘vue自带的一些过滤器</h3>
    <h3>01点击按钮，与vue绑定数据的元素会有变化</h3>
    <button onclick="Fun()">改变值</button>

    <h3>02使用过滤器保留小数点2位小数</h3>
    <div>过滤器之后的值：{{ message01 | mymessage01 }}</div>

    <h3>03通过传递参数让过滤器保留对应小数位</h3>
    <div>传参为3，保留三位小数：{{ message02 | mymessage02(3) }}</div>



</div>

</body>
<script>
    var vm = new Vue({
        el: '#app',
        data: {
            message01: 3.1415926,
            message02: 7.58521
        },
        filters: {
            mymessage01: function (data,n) {
                return data.toFixed(2);
            },
            mymessage02: function (data,n) {//data为需要处理的值，n为传递的参数
                return data.toFixed(n);
            }
        }
    })

    // 当vue数据与标签元素绑定后，只要数据改变，标签显示也会随之改变
    var isoff = false;
    function Fun(){
        if(isoff){
            isoff=false;
            vm.message01 = 3.1415926;//改变vue的数据
            vm.message02 = 7.58521;
        }else {
            isoff=true;
            vm.message01 = 7.5689;
            vm.message02 = 95.36521;
        }
    }

</script>
</html>
