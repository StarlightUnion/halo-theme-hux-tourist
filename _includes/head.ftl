<#macro head title>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="google-site-verification" content=""/>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="${meta_description!}">
    <meta name="keyword" content="${meta_keywords!}">
    <@global.head />
    <title>${title}</title>
    <link rel="stylesheet" href="${theme_base!}/source/lib/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="${theme_base!}/source/css/hux-tourist.css">
    <link rel="stylesheet" href="${theme_base!}/source/css/syntax.css">
    <link rel="stylesheet" href="${theme_base!}/source/css/search.css">
    <link href="${theme_base!}/source/lib/highlight.js/github.min.css" rel="stylesheet">
    <link href="${theme_base!}/source/lib/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href='//fonts.loli.net/css?family=Lora:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
    <link href='//fonts.loli.net/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
    <script src="${theme_base!}/source/lib/jquery/jquery.min.js"></script>
    <script src="${theme_base!}/source/lib/bootstrap/js/bootstrap.min.js"></script>
    <script src="${theme_base!}/source/js/hux-blog.min.js"></script>
    <script src="${theme_base!}/source/js/layer/layer.js"></script>
    <script src="${theme_base!}/source/js/snackbar.js"></script>
    <script src="${theme_base!}/source/js/sw-registration.js"></script>
    <script src="${theme_base!}/source/js/archive.js"></script>
    <link href="//cdn.jsdelivr.net/npm/prismjs@1.19.0/themes/prism${settings.code_pretty!}.min.css" type="text/css" rel="stylesheet" />
    <script type="text/javascript" src="//cdn.jsdelivr.net/npm/prismjs@1.19.0/prism.min.js"></script>
    <style>
        @font-face{
            font-family:bili;
            src: url('${theme_base!}/source/fonts/Bilibili.ttf')
        }
        .biliFont{
            font-family:bili
        }
        .post-title{
            padding:10px 10px 20px 10px;
        }
        .post-preview{
            border-radius:10px;
        }
        .fa-width-90 {
            width: 90%;
        }
    </style>
</head>
</#macro>
