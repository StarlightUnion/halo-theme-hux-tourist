<section class="no-results not-found">
    <header class="not-found-header">
        <h1 class="not-found-title">未查询到任何结果...</h1>
    </header>

    <div class="page-content">
        <#if is_search??>
            <div class="sorry">
                <p>没有找到你想要的，看看其他的吧。</p>
                <div class="sorry-inner">
                    <ul class="search-no-results">
                        <@postTag method="latest" top="10">
                            <#list posts as post>
                                <li><a href="${post.fullPath!}" title="${post.title!}">${post.title!}</a> </li>
                            </#list>
                        </@postTag>
                    </ul>
                </div>
            </div>
        <#else>
            <p>我们似乎没有找到你想要的东西. 或许你可以搜索一下试试.</p>
        </#if>
    </div>
</section>