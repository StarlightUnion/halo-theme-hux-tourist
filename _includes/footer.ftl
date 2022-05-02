<footer>
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">
                <ul class="list-inline text-center">
                    <#if settings.rss!true>
                    <li>
                        <a href="${rss_url!}" title="RSS">
                            <span class="fa-stack fa-lg">
                                <i class="fa fa-circle fa-stack-2x"></i>
                                <i class="fa fa-rss fa-stack-1x fa-inverse"></i>
                            </span>
                        </a>
                    </li>
                    </#if>
                    <#if settings.twitter??>
                    <li>
                        <a href="${settings.twitter}" title="twitter">
                            <span class="fa-stack fa-lg">
                                <i class="fa fa-circle fa-stack-2x"></i>
                                <i class="fa fa-twitter fa-stack-1x fa-inverse"></i>
                            </span>
                        </a>
                    </li>
                    </#if>
                    <#if settings.zhihu??>
                    <li>
                        <a target="_blank" href="${settings.zhihu}" title="zhihu">
                            <span class="fa-stack fa-lg">
                                <i class="fa fa-circle fa-stack-2x"></i>
                                <i class="fa  fa-stack-1x fa-inverse">知</i>
                            </span>
                        </a>
                    </li>
                    </#if>
                    <#if settings.weibo??>
                    <li>
                        <a target="_blank" href="${settings.weibo}" title="weibo">
                            <span class="fa-stack fa-lg">
                                <i class="fa fa-circle fa-stack-2x"></i>
                                <i class="fa fa-weibo fa-stack-1x fa-inverse"></i>
                            </span>
                        </a>
                    </li>
                    </#if>
                    <#if settings.facebook??>
                        <li>
                            <a target="_blank" href="${settings.facebook}" title="FaceBook">
                            <span class="fa-stack fa-lg">
                                <i class="fa fa-circle fa-stack-2x"></i>
                                <i class="fa fa-facebook fa-stack-1x fa-inverse"></i>
                            </span>
                            </a>
                        </li>
                    </#if>
                    <#if settings.github??>
                    <li>
                        <a target="_blank" href="${settings.github}" title="GitHub">
                            <span class="fa-stack fa-lg">
                                <i class="fa fa-circle fa-stack-2x"></i>
                                <i class="fa fa-github fa-stack-1x fa-inverse"></i>
                            </span>
                        </a>
                    </li>
                    </#if>
                    <#if settings.bilibili??>
                    <li>
                        <a target="_blank" href="${settings.bilibili}" title="BiliBili">
                            <span class="fa-stack fa-lg">
                                <i class="fa fa-circle fa-stack-2x"></i>
                                <i class="fa fa-stack-1x fa-width-90 biliFont fa-inverse">1</i>
                            </span>
                        </a>
                    </li>
                    </#if>
                </ul>
                <p class="copyright text-muted">
                    Copyright &copy; ${options.blog_title!} ${(options.birthday)?number_to_date?string("yyyy")}
                    <br>
                    Theme by <a href="https://github.com/StarlightUnion/halo-theme-hux-tourist">Hux-Tourist</a> |
                    Published with <a href="https://halo.run" target="_blank">Halo</a><br>
                    <@global.footer />
                </p>
            </div>
        </div>
    </div>
</footer>

<script>
    function async(u, c) {
        var d = document, t = 'script',
                o = d.createElement(t),
                s = d.getElementsByTagName(t)[0];
        o.src = u;
        if (c) {
            o.addEventListener('load', function (e) {
                c(null, e);
            }, false);
        }
        s.parentNode.insertBefore(o, s);
    }
</script>
<script>
    async("${theme_base!}/source/lib/highlight.js/highlight.min.js", function(){
        hljs.initHighlightingOnLoad();
    })
</script>

<script>
    // only load tagcloud.js in tag.html
    if ($('#tag_cloud').length !== 0) {
        async("${theme_base!}/source/js/jquery.tagcloud.js", function () {
            $.fn.tagcloud.defaults = {
                //size: {start: 1, end: 1, unit: 'em'},
                color: {start: '#bbbbee', end: '#1e90ff'},
            };
            $('#tag_cloud a').tagcloud();
        })
    }
</script>
<script>
    async("${theme_base!}/source/lib/fastclick/fastclick.min.js", function () {
        var $nav = document.querySelector("nav");
        if ($nav) FastClick.attach($nav);
    })
</script>

<#if post??>
    <script type="text/javascript">
        function generateCatalog(selector) {

            // interop with multilangual

            _containerSelector = 'div.post-container'

            // init
            var P = $(_containerSelector), a, n, t, l, i, c;
            a = P.find('h1,h2,h3,h4,h5,h6');

            // if there is no catalog, them clear catalog's html content
            if (a.length == 0) {
                $catalog = $('.side-catalog');
                // clean
                $catalog.html('')
            } else {
                // clean
                $(selector).html('')

                // appending
                a.each(function () {
                    n = $(this).prop('tagName').toLowerCase();
                    let tn = n.substring(1,n.length);
                    i = "#" + $(this).prop('id');
                    t = $(this).text();
                    c = $('<a '+'style="margin-left:'+(tn-1)*5+'%;"'+' href="' + i + '" rel="nofollow">' + t + '</a>');
                    l = $('<li class="' + n + '_nav"></li>').append(c);
                    $(selector).append(l);
                });
            }

            return true;
        }

        generateCatalog(".catalog-body");

        // toggle side catalog
        $(".catalog-toggle").click((function (e) {
            e.preventDefault();
            $('.side-catalog').toggleClass("fold")
        }));

        /*
         * Doc: https://github.com/davist11/jQuery-One-Page-Nav
         * Fork by Hux to support padding
         */
        async("${theme_base!}/source/js/jquery.nav.js", function () {
            $('.catalog-body').onePageNav({
                currentClass: "active",
                changeHash: !1,
                easing: "swing",
                filter: "",
                scrollSpeed: 700,
                scrollOffset: 0,
                scrollThreshold: .2,
                begin: null,
                end: null,
                scrollChange: null,
                padding: 80
            });
        });
    </script>
</#if>
