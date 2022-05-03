<#if is_post!false>
    <#if post.thumbnail?length gt 0>
        <nav class="navbar navbar-default navbar-custom navbar-fixed-top">
    <#else>
        <nav class="navbar navbar-default navbar-custom navbar-fixed-top invert">
    </#if>
<#else>
    <nav class="navbar navbar-default navbar-custom navbar-fixed-top">
</#if>
<div class="container-fluid">
        <div class="navbar-header page-scroll">
            <button type="button" class="navbar-toggle">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="${blog_url!}">${blog_title!}</a>
        </div>

        <div id="hux_navbar">
            <div class="navbar-collapse">
                <ul class="nav navbar-nav navbar-right">
                    <@menuTag method="list">
                        <#list menus?sort_by("priority") as menu>
                            <li>
                                <a href="${menu.url}" target="${menu.target!}">${menu.name}</a>
                            </li>
                        </#list>
                    </@menuTag>
                </ul>

                <#include "../module/search-box.ftl">
            </div>
        </div>
    </div>
</nav>
<script>
    var $body = document.body;
    var $toggle = document.querySelector('.navbar-toggle');
    var $navbar = document.querySelector('#hux_navbar');
    var $collapse = document.querySelector('.navbar-collapse');
    var $search = document.querySelector('.search-box');
    var $searchInput = document.querySelector('.text-input');

    var __navbar = {
        close: function () {
            $navbar.className = " ";
            setTimeout(function () {
                if ($navbar.className.indexOf('in') < 0) {
                    $collapse.style.height = "0px"
                }
            }, 400)
        },
        open: function () {
            $collapse.style.height = "auto";
            $navbar.className += " in";
        }
    };

    $toggle.addEventListener('click', function (e) {
        if ($navbar.className.indexOf('in') > 0) {
            __navbar.close()
        } else {
            __navbar.open()
        }
    });

    $search.addEventListener('click', function (e) {
        $searchInput.focus();
    });

    document.addEventListener('click', function (e) {
        const classNames = [
            'icon-bar',
            'text-input',
            'fa fa-search',
            'search-box',
            's-search'
        ];
        if (e.target == $toggle) return;
        if (classNames.includes(e.target.className)) return;
        __navbar.close();
    });
</script>
