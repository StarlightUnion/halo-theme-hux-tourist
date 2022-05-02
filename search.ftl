<#include "module/default.ftl">
<@default title="${keyword!} - 搜索 - ${blog_title!}">
<header class="intro-header" style="background-image: url('${settings.search_cover!("${theme_base!}/source/img/tag-bg.jpg")}"')">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
                <div class="site-heading" id="tag-heading">
                    <h1>Search</h1>
                    <span class="subheading">${settings.search_slogn!}</span>
                </div>
            </div>
        </div>
    </div>
</header>

<div class="container">
    <div class="row">
        <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
            <!-- post-list -->
            <#if posts?? && posts.content?size gt 0>
                <#--  <#if posts?? && posts.getTotalElements() gt 0>  -->
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
                <#--  </#if>  -->
                <#if posts.totalPages gt 1>
                    <ul class="pager">
                        <@paginationTag method="index" page="${posts.number}" total="${posts.totalPages}" display="0">
                            <#if pagination.hasPrev>
                                <li class="previous">
                                    <a href="${pagination.prevPageFullPath!}">&larr; Newer Posts</a>
                                </li>
                            </#if>
                            <#if pagination.hasNext>
                                <li class="next">
                                    <a href="${pagination.nextPageFullPath!}">Older Posts &rarr;</a>
                                </li>
                            </#if>
                        </@paginationTag>
                    </ul>
              </#if>
            <#else>
                <div id="post-list" class="post-list inner">
                    <div class="search-box">
                        <!-- search start -->
                        <form class="s-search">
                            <i class="fa fa-search" aria-hidden="true"></i>
                            <input class="text-input" type="search" name="keyword" placeholder="Search..."
                                    autocomplete="off" required>
                        </form>
                        <!-- search end -->
                    </div>
                    <#include "module/search-none.ftl" />
                </div>
            </#if>
        </div>
    </div>
</div>
</@default>
