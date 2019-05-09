<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body style="align-content: center;text-align: center">

    <h2>这是一个关于vue.js的示例项目</h2>

    <div style="width: 100%;background: aqua;" align="left">
        <button onclick="document.getElementById('myiframe').src = 'vus01.jsp'">首页</button>
        <button onclick="document.getElementById('myiframe').src = 'vus02.jsp'">简单表达式</button>
        <button onclick="document.getElementById('myiframe').src = 'vus03.jsp'">过滤器</button>
        <button onclick="document.getElementById('myiframe').src = 'vus04.jsp'">计算属性</button>
        <button onclick="document.getElementById('myiframe').src = 'vus05.jsp'">Class与Style数据绑定</button>
        <button onclick="document.getElementById('myiframe').src = 'vus06.jsp'">条件渲染</button>
        <button onclick="document.getElementById('myiframe').src = 'vus07.jsp'">v-for数组、对象数据绑定</button>
        <button onclick="document.getElementById('myiframe').src = 'vus08.jsp'">事件绑定</button>
        <button onclick="document.getElementById('myiframe').src = 'vus09.jsp'">from表单数据获取</button>
    </div>

    <br>
    <iframe id="myiframe" style="width:100%;height: 80%" src="vus01.jsp"></iframe>

</body>
</html>
