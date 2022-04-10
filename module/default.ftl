<#macro default title>
<!DOCTYPE html>
<html lang="zh-CN">

    <#include "../_includes/head.ftl">
    <@head title="${title}"></@head>

    <body ontouchstart="">

        <#include "../_includes/nav.ftl">

        <#nested>

        <#include "../_includes/footer.ftl">
     </body>
</html>
</#macro>
