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
    <title>vue计算属性</title>
</head>
<body>

<div id="app">
    <h3>计算属性用于处理数据的复杂逻辑，最终将处理的数据显示在元素中；相比较简单表达式和过滤器，它可以处理更为复杂的数据逻辑；
    它依赖于缓存，且与vue data中的数据存在依赖关系，只有data数据改变了，才会响应计算属性函数；不然缓存值不会改变
    ps:感觉计算属性可以用作监听事件，监听某个值是否改变，改变的话处理某些逻辑</h3>

    <h3>01点击按钮，与vue绑定数据的元素会有变化</h3>
    <button onclick="Fun()">改变值</button>

    <h3>02使用计算属性将值反转显示</h3>
    <div>反转之后的值：{{ mymessage01 }}</div>

    <h3>03计算属性可以与多个data值存在依赖</h3>
    <div>无论哪个值改变了都会触发计算属性：{{ mymessage02 }}</div>

    <h3>04watch监听data数据改变;与计算属性大同小异，不过计算属性在效率上会更好点;但watch会携带两个参数，修改前的值和修改后的值</h3>
    <div>{{ message05 }}</div>



</div>

</body>
<script>
    var vm = new Vue({
        el: '#app',
        data: {
            message01: "Hello Vue!",

            message02: "我是第一个值",
            message03: "我是第二个值",

            message04: 1,
            message05:"watch值"
        },
        computed:{
            mymessage01: function (){
                return this.message01.split('').reverse().join('')
            },
            mymessage02: function (){
                return this.message02 +'===='+ this.message03 ;
            }
        },
        watch: {
            // 如果 message04 发生改变，这个函数就会运行
            message04: function (newValue,oldValue) {

                console.log("新值为："+ newValue +" 旧值为："+ oldValue)
                if(this.message04 == 1){
                    this.message05 = 'watch值改变为1';
                }else {
                    this.message05 = 'watch值改变为0'
                }
            }
        }
    })

    // 当vue数据与标签元素绑定后，只要数据改变，标签显示也会随之改变
    var isoff = false;
    function Fun(){
        if(isoff){
            isoff=false;
            vm.message01 = "Hello Vue!";//改变vue的数据

            vm.message03 = "第二个值改变";

            vm.message04 = 1;
        }else {
            isoff=true;
            vm.message01 = "你好，世界";

            vm.message02 = "第一个值改变";

            vm.message04 = 0;
        }
    }

</script>
</html>
