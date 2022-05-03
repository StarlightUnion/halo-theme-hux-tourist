<#include "module/page.ftl">
<@page title="${blog_title!}" pagetitle="${blog_title!}" slogn="${settings.index_slogn!}" cover="${settings.index_cover!'${theme_base!}/source/img/home-bg.jpg'}">
    <#list posts.content as post>
        <div class="post-preview">
            <a href="${post.fullPath!}">
                <h2 class="post-title">
                    ${post.title!}
                </h2>
                <div class="post-content-preview">
                    ${post.summary}
                </div>
            </a>
            <p class="post-meta">
                Posted by ${user.nickname!} on ${post.createTime?string("MM-dd，yyyy")}
            </p>
        </div>
        <hr>
    </#list>
    <#if posts.totalPages gt 1>
        <ul class="pager">
            <@paginationTag method="index" page="${posts.number}" total="${posts.totalPages}" display="0">
                <#if pagination.hasPrev>
                    <li class="previous">
                        <a href="${pagination.prevPageFullPath!}">&larr; 向前</a>
                    </li>
                </#if>
                <#if pagination.hasNext>
                    <li class="next">
                        <a href="${pagination.nextPageFullPath!}">往后 &rarr;</a>
                    </li>
                </#if>
            </@paginationTag>
        </ul>
    </#if>
</@page>
