<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>로그인</title>
<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
<script src="http://malsup.github.com/jquery.form.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">

</head>
<script type="text/javascript">

function join(){
   location.href="join";
}


</script>
<style type="text/css">
html{font-family:sans-serif;-ms-text-size-adjust:100%;-webkit-text-size-adjust:100%}body{margin:0}article,aside,details,figcaption,figure,footer,header,hgroup,main,menu,nav,section,summary{display:block}audio,canvas,progress,video{display:inline-block;vertical-align:baseline}audio:not([controls]){display:none;height:0}[hidden],template{display:none}a{background-color:transparent}a:active,a:hover{outline:0}abbr[title]{border-bottom:1px dotted}b,strong{font-weight:bold}dfn{font-style:italic}h1{font-size:2em;margin:0.67em 0}mark{background:#ff0;color:#000}small{font-size:80%}sub,sup{font-size:75%;line-height:0;position:relative;vertical-align:baseline}sup{top:-0.5em}sub{bottom:-0.25em}img{border:0}svg:not(:root){overflow:hidden}figure{margin:1em 40px}hr{-webkit-box-sizing:content-box;-moz-box-sizing:content-box;box-sizing:content-box;height:0}pre{overflow:auto}code,kbd,pre,samp{font-family:monospace, monospace;font-size:1em}button,input,optgroup,select,textarea{color:inherit;font:inherit;margin:0}button{overflow:visible}button,select{text-transform:none}button,html input[type="button"],input[type="reset"],input[type="submit"]{-webkit-appearance:button;cursor:pointer}button[disabled],html input[disabled]{cursor:default}button::-moz-focus-inner,input::-moz-focus-inner{border:0;padding:0}input{line-height:normal}input[type="checkbox"],input[type="radio"]{-webkit-box-sizing:border-box;-moz-box-sizing:border-box;box-sizing:border-box;padding:0}input[type="number"]::-webkit-inner-spin-button,input[type="number"]::-webkit-outer-spin-button{height:auto}input[type="search"]{-webkit-appearance:textfield;-webkit-box-sizing:content-box;-moz-box-sizing:content-box;box-sizing:content-box}input[type="search"]::-webkit-search-cancel-button,input[type="search"]::-webkit-search-decoration{-webkit-appearance:none}fieldset{border:1px solid #c0c0c0;margin:0 2px;padding:0.35em 0.625em 0.75em}legend{border:0;padding:0}textarea{overflow:auto}optgroup{font-weight:bold}table{border-collapse:collapse;border-spacing:0}td,th{padding:0}/*! Source: https://github.com/h5bp/html5-boilerplate/blob/master/src/css/main.css */@media print{*,*:before,*:after{background:transparent !important;color:#000 !important;-webkit-box-shadow:none !important;box-shadow:none !important;text-shadow:none !important}a,a:visited{text-decoration:underline}a[href]:after{content:" (" attr(href) ")"}abbr[title]:after{content:" (" attr(title) ")"}a[href^="#"]:after,a[href^="javascript:"]:after{content:""}pre,blockquote{border:1px solid #999;page-break-inside:avoid}thead{display:table-header-group}tr,img{page-break-inside:avoid}img{max-width:100% !important}p,h2,h3{orphans:3;widows:3}h2,h3{page-break-after:avoid}.navbar{display:none}.btn>.caret,.dropup>.btn>.caret{border-top-color:#000 !important}.label{border:1px solid #000}.table{border-collapse:collapse !important}.table td,.table th{background-color:#fff !important}.table-bordered th,.table-bordered td{border:1px solid #ddd !important}}*{-webkit-box-sizing:border-box;-moz-box-sizing:border-box;box-sizing:border-box}*:before,*:after{-webkit-box-sizing:border-box;-moz-box-sizing:border-box;box-sizing:border-box}html{font-size:10px;-webkit-tap-highlight-color:rgba(0,0,0,0)}body{font-family:"Helvetica Neue",Helvetica,Arial,sans-serif;font-size:14px;line-height:1.42857143;color:#333;background-color:#fff}input,button,select,textarea{font-family:inherit;font-size:inherit;line-height:inherit}a{color:#337ab7;text-decoration:none}a:hover,a:focus{color:#23527c;text-decoration:underline}a:focus{outline:thin dotted;outline:5px auto -webkit-focus-ring-color;outline-offset:-2px}figure{margin:0}img{vertical-align:middle}.img-responsive,.thumbnail>img,.thumbnail a>img,.carousel-inner>.item>img,.carousel-inner>.item>a>img{display:block;max-width:100%;height:auto}.img-rounded{border-radius:6px}.img-thumbnail{padding:4px;line-height:1.42857143;background-color:#fff;border:1px solid #ddd;border-radius:4px;-webkit-transition:all .2s ease-in-out;-o-transition:all .2s ease-in-out;transition:all .2s ease-in-out;display:inline-block;max-width:100%;height:auto}.img-circle{border-radius:50%}hr{margin-top:20px;margin-bottom:20px;border:0;border-top:1px solid #eee}.sr-only{position:absolute;width:1px;height:1px;margin:-1px;padding:0;overflow:hidden;clip:rect(0, 0, 0, 0);border:0}.sr-only-focusable:active,.sr-only-focusable:focus{position:static;width:auto;height:auto;margin:0;overflow:visible;clip:auto}[role="button"]{cursor:pointer}h1,h2,h3,h4,h5,h6,.h1,.h2,.h3,.h4,.h5,.h6{font-family:inherit;font-weight:500;line-height:1.1;color:inherit}h1 small,h2 small,h3 small,h4 small,h5 small,h6 small,.h1 small,.h2 small,.h3 small,.h4 small,.h5 small,.h6 small,h1 .small,h2 .small,h3 .small,h4 .small,h5 .small,h6 .small,.h1 .small,.h2 .small,.h3 .small,.h4 .small,.h5 .small,.h6 .small{font-weight:normal;line-height:1;color:#777}h1,.h1,h2,.h2,h3,.h3{margin-top:20px;margin-bottom:10px}h1 small,.h1 small,h2 small,.h2 small,h3 small,.h3 small,h1 .small,.h1 .small,h2 .small,.h2 .small,h3 .small,.h3 .small{font-size:65%}h4,.h4,h5,.h5,h6,.h6{margin-top:10px;margin-bottom:10px}h4 small,.h4 small,h5 small,.h5 small,h6 small,.h6 small,h4 .small,.h4 .small,h5 .small,.h5 .small,h6 .small,.h6 .small{font-size:75%}h1,.h1{font-size:36px}h2,.h2{font-size:30px}h3,.h3{font-size:24px}h4,.h4{font-size:18px}h5,.h5{font-size:14px}h6,.h6{font-size:12px}p{margin:0 0 10px}.lead{margin-bottom:20px;font-size:16px;font-weight:300;line-height:1.4}@media (min-width:768px){.lead{font-size:21px}}small,.small{font-size:85%}mark,.mark{background-color:#fcf8e3;padding:.2em}.text-left{text-align:left}.text-right{text-align:right}.text-center{text-align:center}.text-justify{text-align:justify}.text-nowrap{white-space:nowrap}.text-lowercase{text-transform:lowercase}.text-uppercase{text-transform:uppercase}.text-capitalize{text-transform:capitalize}.text-muted{color:#777}.text-primary{color:#337ab7}a.text-primary:hover,a.text-primary:focus{color:#286090}.text-success{color:#3c763d}a.text-success:hover,a.text-success:focus{color:#2b542c}.text-info{color:#31708f}a.text-info:hover,a.text-info:focus{color:#245269}.text-warning{color:#8a6d3b}a.text-warning:hover,a.text-warning:focus{color:#66512c}.text-danger{color:#a94442}a.text-danger:hover,a.text-danger:focus{color:#843534}.bg-primary{color:#fff;background-color:#337ab7}a.bg-primary:hover,a.bg-primary:focus{background-color:#286090}.bg-success{background-color:#dff0d8}a.bg-success:hover,a.bg-success:focus{background-color:#c1e2b3}.bg-info{background-color:#d9edf7}a.bg-info:hover,a.bg-info:focus{background-color:#afd9ee}.bg-warning{background-color:#fcf8e3}a.bg-warning:hover,a.bg-warning:focus{background-color:#f7ecb5}.bg-danger{background-color:#f2dede}a.bg-danger:hover,a.bg-danger:focus{background-color:#e4b9b9}.page-header{padding-bottom:9px;margin:40px 0 20px;border-bottom:1px solid #eee}ul,ol{margin-top:0;margin-bottom:10px}ul ul,ol ul,ul ol,ol ol{margin-bottom:0}.list-unstyled{padding-left:0;list-style:none}.list-inline{padding-left:0;list-style:none;margin-left:-5px}.list-inline>li{display:inline-block;padding-left:5px;padding-right:5px}dl{margin-top:0;margin-bottom:20px}dt,dd{line-height:1.42857143}dt{font-weight:bold}dd{margin-left:0}@media (min-width:768px){.dl-horizontal dt{float:left;width:160px;clear:left;text-align:right;overflow:hidden;text-overflow:ellipsis;white-space:nowrap}.dl-horizontal dd{margin-left:180px}}abbr[title],abbr[data-original-title]{cursor:help;border-bottom:1px dotted #777}.initialism{font-size:90%;text-transform:uppercase}blockquote{padding:10px 20px;margin:0 0 20px;font-size:17.5px;border-left:5px solid #eee}blockquote p:last-child,blockquote ul:last-child,blockquote ol:last-child{margin-bottom:0}blockquote footer,blockquote small,blockquote .small{display:block;font-size:80%;line-height:1.42857143;color:#777}blockquote footer:before,blockquote small:before,blockquote .small:before{content:'\2014 \00A0'}.blockquote-reverse,blockquote.pull-right{padding-right:15px;padding-left:0;border-right:5px solid #eee;border-left:0;text-align:right}.blockquote-reverse footer:before,blockquote.pull-right footer:before,.blockquote-reverse small:before,blockquote.pull-right small:before,.blockquote-reverse .small:before,blockquote.pull-right .small:before{content:''}.blockquote-reverse footer:after,blockquote.pull-right footer:after,.blockquote-reverse small:after,blockquote.pull-right small:after,.blockquote-reverse .small:after,blockquote.pull-right .small:after{content:'\00A0 \2014'}address{margin-bottom:20px;font-style:normal;line-height:1.42857143}code,kbd,pre,samp{font-family:Menlo,Monaco,Consolas,"Courier New",monospace}code{padding:2px 4px;font-size:90%;color:#c7254e;background-color:#f9f2f4;border-radius:4px}kbd{padding:2px 4px;font-size:90%;color:#fff;background-color:#333;border-radius:3px;-webkit-box-shadow:inset 0 -1px 0 rgba(0,0,0,0.25);box-shadow:inset 0 -1px 0 rgba(0,0,0,0.25)}kbd kbd{padding:0;font-size:100%;font-weight:bold;-webkit-box-shadow:none;box-shadow:none}pre{display:block;padding:9.5px;margin:0 0 10px;font-size:13px;line-height:1.42857143;word-break:break-all;word-wrap:break-word;color:#333;background-color:#f5f5f5;border:1px solid #ccc;border-radius:4px}pre code{padding:0;font-size:inherit;color:inherit;white-space:pre-wrap;background-color:transparent;border-radius:0}.pre-scrollable{max-height:340px;overflow-y:scroll}.container{margin-right:auto;margin-left:auto;padding-left:15px;padding-right:15px}@media (min-width:768px){.container{width:750px}}@media (min-width:992px){.container{width:970px}}@media (min-width:1200px){.container{width:1170px}}.container-fluid{margin-right:auto;margin-left:auto;padding-left:15px;padding-right:15px}.row{margin-left:-15px;margin-right:-15px}.col-xs-1, .col-sm-1, .col-md-1, .col-lg-1, .col-xs-2, .col-sm-2, .col-md-2, .col-lg-2, .col-xs-3, .col-sm-3, .col-md-3, .col-lg-3, .col-xs-4, .col-sm-4, .col-md-4, .col-lg-4, .col-xs-5, .col-sm-5, .col-md-5, .col-lg-5, .col-xs-6, .col-sm-6, .col-md-6, .col-lg-6, .col-xs-7, .col-sm-7, .col-md-7, .col-lg-7, .col-xs-8, .col-sm-8, .col-md-8, .col-lg-8, .col-xs-9, .col-sm-9, .col-md-9, .col-lg-9, .col-xs-10, .col-sm-10, .col-md-10, .col-lg-10, .col-xs-11, .col-sm-11, .col-md-11, .col-lg-11, .col-xs-12, .col-sm-12, .col-md-12, .col-lg-12{position:relative;min-height:1px;padding-left:15px;padding-right:15px}.col-xs-1, .col-xs-2, .col-xs-3, .col-xs-4, .col-xs-5, .col-xs-6, .col-xs-7, .col-xs-8, .col-xs-9, .col-xs-10, .col-xs-11, .col-xs-12{float:left}.col-xs-12{width:100%}.col-xs-11{width:91.66666667%}.col-xs-10{width:83.33333333%}.col-xs-9{width:75%}.col-xs-8{width:66.66666667%}.col-xs-7{width:58.33333333%}.col-xs-6{width:50%}.col-xs-5{width:41.66666667%}.col-xs-4{width:33.33333333%}.col-xs-3{width:25%}.col-xs-2{width:16.66666667%}.col-xs-1{width:8.33333333%}.col-xs-pull-12{right:100%}.col-xs-pull-11{right:91.66666667%}.col-xs-pull-10{right:83.33333333%}.col-xs-pull-9{right:75%}.col-xs-pull-8{right:66.66666667%}.col-xs-pull-7{right:58.33333333%}.col-xs-pull-6{right:50%}.col-xs-pull-5{right:41.66666667%}.col-xs-pull-4{right:33.33333333%}.col-xs-pull-3{right:25%}.col-xs-pull-2{right:16.66666667%}.col-xs-pull-1{right:8.33333333%}.col-xs-pull-0{right:auto}.col-xs-push-12{left:100%}.col-xs-push-11{left:91.66666667%}.col-xs-push-10{left:83.33333333%}.col-xs-push-9{left:75%}.col-xs-push-8{left:66.66666667%}.col-xs-push-7{left:58.33333333%}.col-xs-push-6{left:50%}.col-xs-push-5{left:41.66666667%}.col-xs-push-4{left:33.33333333%}.col-xs-push-3{left:25%}.col-xs-push-2{left:16.66666667%}.col-xs-push-1{left:8.33333333%}.col-xs-push-0{left:auto}.col-xs-offset-12{margin-left:100%}.col-xs-offset-11{margin-left:91.66666667%}.col-xs-offset-10{margin-left:83.33333333%}.col-xs-offset-9{margin-left:75%}.col-xs-offset-8{margin-left:66.66666667%}.col-xs-offset-7{margin-left:58.33333333%}.col-xs-offset-6{margin-left:50%}.col-xs-offset-5{margin-left:41.66666667%}.col-xs-offset-4{margin-left:33.33333333%}.col-xs-offset-3{margin-left:25%}.col-xs-offset-2{margin-left:16.66666667%}.col-xs-offset-1{margin-left:8.33333333%}.col-xs-offset-0{margin-left:0}@media (min-width:768px){.col-sm-1, .col-sm-2, .col-sm-3, .col-sm-4, .col-sm-5, .col-sm-6, .col-sm-7, .col-sm-8, .col-sm-9, .col-sm-10, .col-sm-11, .col-sm-12{float:left}.col-sm-12{width:100%}.col-sm-11{width:91.66666667%}.col-sm-10{width:83.33333333%}.col-sm-9{width:75%}.col-sm-8{width:66.66666667%}.col-sm-7{width:58.33333333%}.col-sm-6{width:50%}.col-sm-5{width:41.66666667%}.col-sm-4{width:33.33333333%}.col-sm-3{width:25%}.col-sm-2{width:16.66666667%}.col-sm-1{width:8.33333333%}.col-sm-pull-12{right:100%}.col-sm-pull-11{right:91.66666667%}.col-sm-pull-10{right:83.33333333%}.col-sm-pull-9{right:75%}.col-sm-pull-8{right:66.66666667%}.col-sm-pull-7{right:58.33333333%}.col-sm-pull-6{right:50%}.col-sm-pull-5{right:41.66666667%}.col-sm-pull-4{right:33.33333333%}.col-sm-pull-3{right:25%}.col-sm-pull-2{right:16.66666667%}.col-sm-pull-1{right:8.33333333%}.col-sm-pull-0{right:auto}.col-sm-push-12{left:100%}.col-sm-push-11{left:91.66666667%}.col-sm-push-10{left:83.33333333%}.col-sm-push-9{left:75%}.col-sm-push-8{left:66.66666667%}.col-sm-push-7{left:58.33333333%}.col-sm-push-6{left:50%}.col-sm-push-5{left:41.66666667%}.col-sm-push-4{left:33.33333333%}.col-sm-push-3{left:25%}.col-sm-push-2{left:16.66666667%}.col-sm-push-1{left:8.33333333%}.col-sm-push-0{left:auto}.col-sm-offset-12{margin-left:100%}.col-sm-offset-11{margin-left:91.66666667%}.col-sm-offset-10{margin-left:83.33333333%}.col-sm-offset-9{margin-left:75%}.col-sm-offset-8{margin-left:66.66666667%}.col-sm-offset-7{margin-left:58.33333333%}.col-sm-offset-6{margin-left:50%}.col-sm-offset-5{margin-left:41.66666667%}.col-sm-offset-4{margin-left:33.33333333%}.col-sm-offset-3{margin-left:25%}.col-sm-offset-2{margin-left:16.66666667%}.col-sm-offset-1{margin-left:8.33333333%}.col-sm-offset-0{margin-left:0}}@media (min-width:992px){.col-md-1, .col-md-2, .col-md-3, .col-md-4, .col-md-5, .col-md-6, .col-md-7, .col-md-8, .col-md-9, .col-md-10, .col-md-11, .col-md-12{float:left}.col-md-12{width:100%}.col-md-11{width:91.66666667%}.col-md-10{width:83.33333333%}.col-md-9{width:75%}.col-md-8{width:66.66666667%}.col-md-7{width:58.33333333%}.col-md-6{width:50%}.col-md-5{width:41.66666667%}.col-md-4{width:33.33333333%}.col-md-3{width:25%}.col-md-2{width:16.66666667%}.col-md-1{width:8.33333333%}.col-md-pull-12{right:100%}.col-md-pull-11{right:91.66666667%}.col-md-pull-10{right:83.33333333%}.col-md-pull-9{right:75%}.col-md-pull-8{right:66.66666667%}.col-md-pull-7{right:58.33333333%}.col-md-pull-6{right:50%}.col-md-pull-5{right:41.66666667%}.col-md-pull-4{right:33.33333333%}.col-md-pull-3{right:25%}.col-md-pull-2{right:16.66666667%}.col-md-pull-1{right:8.33333333%}.col-md-pull-0{right:auto}.col-md-push-12{left:100%}.col-md-push-11{left:91.66666667%}.col-md-push-10{left:83.33333333%}.col-md-push-9{left:75%}.col-md-push-8{left:66.66666667%}.col-md-push-7{left:58.33333333%}.col-md-push-6{left:50%}.col-md-push-5{left:41.66666667%}.col-md-push-4{left:33.33333333%}.col-md-push-3{left:25%}.col-md-push-2{left:16.66666667%}.col-md-push-1{left:8.33333333%}.col-md-push-0{left:auto}.col-md-offset-12{margin-left:100%}.col-md-offset-11{margin-left:91.66666667%}.col-md-offset-10{margin-left:83.33333333%}.col-md-offset-9{margin-left:75%}.col-md-offset-8{margin-left:66.66666667%}.col-md-offset-7{margin-left:58.33333333%}.col-md-offset-6{margin-left:50%}.col-md-offset-5{margin-left:41.66666667%}.col-md-offset-4{margin-left:33.33333333%}.col-md-offset-3{margin-left:25%}.col-md-offset-2{margin-left:16.66666667%}.col-md-offset-1{margin-left:8.33333333%}.col-md-offset-0{margin-left:0}}@media (min-width:1200px){.col-lg-1, .col-lg-2, .col-lg-3, .col-lg-4, .col-lg-5, .col-lg-6, .col-lg-7, .col-lg-8, .col-lg-9, .col-lg-10, .col-lg-11, .col-lg-12{float:left}.col-lg-12{width:100%}.col-lg-11{width:91.66666667%}.col-lg-10{width:83.33333333%}.col-lg-9{width:75%}.col-lg-8{width:66.66666667%}.col-lg-7{width:58.33333333%}.col-lg-6{width:50%}.col-lg-5{width:41.66666667%}.col-lg-4{width:33.33333333%}.col-lg-3{width:25%}.col-lg-2{width:16.66666667%}.col-lg-1{width:8.33333333%}.col-lg-pull-12{right:100%}.col-lg-pull-11{right:91.66666667%}.col-lg-pull-10{right:83.33333333%}.col-lg-pull-9{right:75%}.col-lg-pull-8{right:66.66666667%}.col-lg-pull-7{right:58.33333333%}.col-lg-pull-6{right:50%}.col-lg-pull-5{right:41.66666667%}.col-lg-pull-4{right:33.33333333%}.col-lg-pull-3{right:25%}.col-lg-pull-2{right:16.66666667%}.col-lg-pull-1{right:8.33333333%}.col-lg-pull-0{right:auto}.col-lg-push-12{left:100%}.col-lg-push-11{left:91.66666667%}.col-lg-push-10{left:83.33333333%}.col-lg-push-9{left:75%}.col-lg-push-8{left:66.66666667%}.col-lg-push-7{left:58.33333333%}.col-lg-push-6{left:50%}.col-lg-push-5{left:41.66666667%}.col-lg-push-4{left:33.33333333%}.col-lg-push-3{left:25%}.col-lg-push-2{left:16.66666667%}.col-lg-push-1{left:8.33333333%}.col-lg-push-0{left:auto}.col-lg-offset-12{margin-left:100%}.col-lg-offset-11{margin-left:91.66666667%}.col-lg-offset-10{margin-left:83.33333333%}.col-lg-offset-9{margin-left:75%}.col-lg-offset-8{margin-left:66.66666667%}.col-lg-offset-7{margin-left:58.33333333%}.col-lg-offset-6{margin-left:50%}.col-lg-offset-5{margin-left:41.66666667%}.col-lg-offset-4{margin-left:33.33333333%}.col-lg-offset-3{margin-left:25%}.col-lg-offset-2{margin-left:16.66666667%}.col-lg-offset-1{margin-left:8.33333333%}.col-lg-offset-0{margin-left:0}}table{background-color:transparent}caption{padding-top:8px;padding-bottom:8px;color:#777;text-align:left}th{text-align:left}.table{width:100%;max-width:100%;margin-bottom:20px}.table>thead>tr>th,.table>tbody>tr>th,.table>tfoot>tr>th,.table>thead>tr>td,.table>tbody>tr>td,.table>tfoot>tr>td{padding:8px;line-height:1.42857143;vertical-align:top;border-top:1px solid #ddd}.table>thead>tr>th{vertical-align:bottom;border-bottom:2px solid #ddd}.table>caption+thead>tr:first-child>th,.table>colgroup+thead>tr:first-child>th,.table>thead:first-child>tr:first-child>th,.table>caption+thead>tr:first-child>td,.table>colgroup+thead>tr:first-child>td,.table>thead:first-child>tr:first-child>td{border-top:0}.table>tbody+tbody{border-top:2px solid #ddd}.table .table{background-color:#fff}.table-condensed>thead>tr>th,.table-condensed>tbody>tr>th,.table-condensed>tfoot>tr>th,.table-condensed>thead>tr>td,.table-condensed>tbody>tr>td,.table-condensed>tfoot>tr>td{padding:5px}.table-bordered{border:1px solid #ddd}.table-bordered>thead>tr>th,.table-bordered>tbody>tr>th,.table-bordered>tfoot>tr>th,.table-bordered>thead>tr>td,.table-bordered>tbody>tr>td,.table-bordered>tfoot>tr>td{border:1px solid #ddd}.table-bordered>thead>tr>th,.table-bordered>thead>tr>td{border-bottom-width:2px}.table-striped>tbody>tr:nth-of-type(odd){background-color:#f9f9f9}.table-hover>tbody>tr:hover{background-color:#f5f5f5}table col[class*="col-"]{position:static;float:none;display:table-column}table td[class*="col-"],table th[class*="col-"]{position:static;float:none;display:table-cell}.table>thead>tr>td.active,.table>tbody>tr>td.active,.table>tfoot>tr>td.active,.table>thead>tr>th.active,.table>tbody>tr>th.active,.table>tfoot>tr>th.active,.table>thead>tr.active>td,.table>tbody>tr.active>td,.table>tfoot>tr.active>td,.table>thead>tr.active>th,.table>tbody>tr.active>th,.table>tfoot>tr.active>th{background-color:#f5f5f5}.table-hover>tbody>tr>td.active:hover,.table-hover>tbody>tr>th.active:hover,.table-hover>tbody>tr.active:hover>td,.table-hover>tbody>tr:hover>.active,.table-hover>tbody>tr.active:hover>th{background-color:#e8e8e8}.table>thead>tr>td.success,.table>tbody>tr>td.success,.table>tfoot>tr>td.success,.table>thead>tr>th.success,.table>tbody>tr>th.success,.table>tfoot>tr>th.success,.table>thead>tr.success>td,.table>tbody>tr.success>td,.table>tfoot>tr.success>td,.table>thead>tr.success>th,.table>tbody>tr.success>th,.table>tfoot>tr.success>th{background-color:#dff0d8}.table-hover>tbody>tr>td.success:hover,.table-hover>tbody>tr>th.success:hover,.table-hover>tbody>tr.success:hover>td,.table-hover>tbody>tr:hover>.success,.table-hover>tbody>tr.success:hover>th{background-color:#d0e9c6}.table>thead>tr>td.info,.table>tbody>tr>td.info,.table>tfoot>tr>td.info,.table>thead>tr>th.info,.table>tbody>tr>th.info,.table>tfoot>tr>th.info,.table>thead>tr.info>td,.table>tbody>tr.info>td,.table>tfoot>tr.info>td,.table>thead>tr.info>th,.table>tbody>tr.info>th,.table>tfoot>tr.info>th{background-color:#d9edf7}.table-hover>tbody>tr>td.info:hover,.table-hover>tbody>tr>th.info:hover,.table-hover>tbody>tr.info:hover>td,.table-hover>tbody>tr:hover>.info,.table-hover>tbody>tr.info:hover>th{background-color:#c4e3f3}.table>thead>tr>td.warning,.table>tbody>tr>td.warning,.table>tfoot>tr>td.warning,.table>thead>tr>th.warning,.table>tbody>tr>th.warning,.table>tfoot>tr>th.warning,.table>thead>tr.warning>td,.table>tbody>tr.warning>td,.table>tfoot>tr.warning>td,.table>thead>tr.warning>th,.table>tbody>tr.warning>th,.table>tfoot>tr.warning>th{background-color:#fcf8e3}.table-hover>tbody>tr>td.warning:hover,.table-hover>tbody>tr>th.warning:hover,.table-hover>tbody>tr.warning:hover>td,.table-hover>tbody>tr:hover>.warning,.table-hover>tbody>tr.warning:hover>th{background-color:#faf2cc}.table>thead>tr>td.danger,.table>tbody>tr>td.danger,.table>tfoot>tr>td.danger,.table>thead>tr>th.danger,.table>tbody>tr>th.danger,.table>tfoot>tr>th.danger,.table>thead>tr.danger>td,.table>tbody>tr.danger>td,.table>tfoot>tr.danger>td,.table>thead>tr.danger>th,.table>tbody>tr.danger>th,.table>tfoot>tr.danger>th{background-color:#f2dede}.table-hover>tbody>tr>td.danger:hover,.table-hover>tbody>tr>th.danger:hover,.table-hover>tbody>tr.danger:hover>td,.table-hover>tbody>tr:hover>.danger,.table-hover>tbody>tr.danger:hover>th{background-color:#ebcccc}.table-responsive{overflow-x:auto;min-height:0.01%}@media screen and (max-width:767px){.table-responsive{width:100%;margin-bottom:15px;overflow-y:hidden;-ms-overflow-style:-ms-autohiding-scrollbar;border:1px solid #ddd}.table-responsive>.table{margin-bottom:0}.table-responsive>.table>thead>tr>th,.table-responsive>.table>tbody>tr>th,.table-responsive>.table>tfoot>tr>th,.table-responsive>.table>thead>tr>td,.table-responsive>.table>tbody>tr>td,.table-responsive>.table>tfoot>tr>td{white-space:nowrap}.table-responsive>.table-bordered{border:0}.table-responsive>.table-bordered>thead>tr>th:first-child,.table-responsive>.table-bordered>tbody>tr>th:first-child,.table-responsive>.table-bordered>tfoot>tr>th:first-child,.table-responsive>.table-bordered>thead>tr>td:first-child,.table-responsive>.table-bordered>tbody>tr>td:first-child,.table-responsive>.table-bordered>tfoot>tr>td:first-child{border-left:0}.table-responsive>.table-bordered>thead>tr>th:last-child,.table-responsive>.table-bordered>tbody>tr>th:last-child,.table-responsive>.table-bordered>tfoot>tr>th:last-child,.table-responsive>.table-bordered>thead>tr>td:last-child,.table-responsive>.table-bordered>tbody>tr>td:last-child,.table-responsive>.table-bordered>tfoot>tr>td:last-child{border-right:0}.table-responsive>.table-bordered>tbody>tr:last-child>th,.table-responsive>.table-bordered>tfoot>tr:last-child>th,.table-responsive>.table-bordered>tbody>tr:last-child>td,.table-responsive>.table-bordered>tfoot>tr:last-child>td{border-bottom:0}}fieldset{padding:0;margin:0;border:0;min-width:0}legend{display:block;width:100%;padding:0;margin-bottom:20px;font-size:21px;line-height:inherit;color:#333;border:0;border-bottom:1px solid #e5e5e5}label{display:inline-block;max-width:100%;margin-bottom:5px;font-weight:bold}input[type="search"]{-webkit-box-sizing:border-box;-moz-box-sizing:border-box;box-sizing:border-box}input[type="radio"],input[type="checkbox"]{margin:4px 0 0;margin-top:1px \9;line-height:normal}input[type="file"]{display:block}input[type="range"]{display:block;width:100%}select[multiple],select[size]{height:auto}input[type="file"]:focus,input[type="radio"]:focus,input[type="checkbox"]:focus{outline:thin dotted;outline:5px auto -webkit-focus-ring-color;outline-offset:-2px}output{display:block;padding-top:7px;font-size:14px;line-height:1.42857143;color:#555}.form-control{display:block;width:100%;height:34px;padding:6px 12px;font-size:14px;line-height:1.42857143;color:#555;background-color:#fff;background-image:none;border:1px solid #ccc;border-radius:4px;-webkit-box-shadow:inset 0 1px 1px rgba(0,0,0,0.075);box-shadow:inset 0 1px 1px rgba(0,0,0,0.075);-webkit-transition:border-color ease-in-out .15s, -webkit-box-shadow ease-in-out .15s;-o-transition:border-color ease-in-out .15s, box-shadow ease-in-out .15s;transition:border-color ease-in-out .15s, box-shadow ease-in-out .15s}.form-control:focus{border-color:#66afe9;outline:0;-webkit-box-shadow:inset 0 1px 1px rgba(0,0,0,.075), 0 0 8px rgba(102, 175, 233, 0.6);box-shadow:inset 0 1px 1px rgba(0,0,0,.075), 0 0 8px rgba(102, 175, 233, 0.6)}.form-control::-moz-placeholder{color:#999;opacity:1}.form-control:-ms-input-placeholder{color:#999}.form-control::-webkit-input-placeholder{color:#999}.form-control::-ms-expand{border:0;background-color:transparent}.form-control[disabled],.form-control[readonly],fieldset[disabled] .form-control{background-color:#eee;opacity:1}.form-control[disabled],fieldset[disabled] .form-control{cursor:not-allowed}textarea.form-control{height:auto}input[type="search"]{-webkit-appearance:none}@media screen and (-webkit-min-device-pixel-ratio:0){input[type="date"].form-control,input[type="time"].form-control,input[type="datetime-local"].form-control,input[type="month"].form-control{line-height:34px}input[type="date"].input-sm,input[type="time"].input-sm,input[type="datetime-local"].input-sm,input[type="month"].input-sm,.input-group-sm input[type="date"],.input-group-sm input[type="time"],.input-group-sm input[type="datetime-local"],.input-group-sm input[type="month"]{line-height:30px}input[type="date"].input-lg,input[type="time"].input-lg,input[type="datetime-local"].input-lg,input[type="month"].input-lg,.input-group-lg input[type="date"],.input-group-lg input[type="time"],.input-group-lg input[type="datetime-local"],.input-group-lg input[type="month"]{line-height:46px}}.form-group{margin-bottom:15px}.radio,.checkbox{position:relative;display:block;margin-top:10px;margin-bottom:10px}.radio label,.checkbox label{min-height:20px;padding-left:20px;margin-bottom:0;font-weight:normal;cursor:pointer}.radio input[type="radio"],.radio-inline input[type="radio"],.checkbox input[type="checkbox"],.checkbox-inline input[type="checkbox"]{position:absolute;margin-left:-20px;margin-top:4px \9}.radio+.radio,.checkbox+.checkbox{margin-top:-5px}.radio-inline,.checkbox-inline{position:relative;display:inline-block;padding-left:20px;margin-bottom:0;vertical-align:middle;font-weight:normal;cursor:pointer}.radio-inline+.radio-inline,.checkbox-inline+.checkbox-inline{margin-top:0;margin-left:10px}input[type="radio"][disabled],input[type="checkbox"][disabled],input[type="radio"].disabled,input[type="checkbox"].disabled,fieldset[disabled] input[type="radio"],fieldset[disabled] input[type="checkbox"]{cursor:not-allowed}.radio-inline.disabled,.checkbox-inline.disabled,fieldset[disabled] .radio-inline,fieldset[disabled] .checkbox-inline{cursor:not-allowed}.radio.disabled label,.checkbox.disabled label,fieldset[disabled] .radio label,fieldset[disabled] .checkbox label{cursor:not-allowed}.form-control-static{padding-top:7px;padding-bottom:7px;margin-bottom:0;min-height:34px}.form-control-static.input-lg,.form-control-static.input-sm{padding-left:0;padding-right:0}.input-sm{height:30px;padding:5px 10px;font-size:12px;line-height:1.5;border-radius:3px}select.input-sm{height:30px;line-height:30px}textarea.input-sm,select[multiple].input-sm{height:auto}.form-group-sm .form-control{height:30px;padding:5px 10px;font-size:12px;line-height:1.5;border-radius:3px}.form-group-sm select.form-control{height:30px;line-height:30px}.form-group-sm textarea.form-control,.form-group-sm select[multiple].form-control{height:auto}.form-group-sm .form-control-static{height:30px;min-height:32px;padding:6px 10px;font-size:12px;line-height:1.5}.input-lg{height:46px;padding:10px 16px;font-size:18px;line-height:1.3333333;border-radius:6px}select.input-lg{height:46px;line-height:46px}textarea.input-lg,select[multiple].input-lg{height:auto}.form-group-lg .form-control{height:46px;padding:10px 16px;font-size:18px;line-height:1.3333333;border-radius:6px}.form-group-lg select.form-control{height:46px;line-height:46px}.form-group-lg textarea.form-control,.form-group-lg select[multiple].form-control{height:auto}.form-group-lg .form-control-static{height:46px;min-height:38px;padding:11px 16px;font-size:18px;line-height:1.3333333}.has-feedback{position:relative}.has-feedback .form-control{padding-right:42.5px}.form-control-feedback{position:absolute;top:0;right:0;z-index:2;display:block;width:34px;height:34px;line-height:34px;text-align:center;pointer-events:none}.input-lg+.form-control-feedback,.input-group-lg+.form-control-feedback,.form-group-lg .form-control+.form-control-feedback{width:46px;height:46px;line-height:46px}.input-sm+.form-control-feedback,.input-group-sm+.form-control-feedback,.form-group-sm .form-control+.form-control-feedback{width:30px;height:30px;line-height:30px}.has-success .help-block,.has-success .control-label,.has-success .radio,.has-success .checkbox,.has-success .radio-inline,.has-success .checkbox-inline,.has-success.radio label,.has-success.checkbox label,.has-success.radio-inline label,.has-success.checkbox-inline label{color:#3c763d}.has-success .form-control{border-color:#3c763d;-webkit-box-shadow:inset 0 1px 1px rgba(0,0,0,0.075);box-shadow:inset 0 1px 1px rgba(0,0,0,0.075)}.has-success .form-control:focus{border-color:#2b542c;-webkit-box-shadow:inset 0 1px 1px rgba(0,0,0,0.075),0 0 6px #67b168;box-shadow:inset 0 1px 1px rgba(0,0,0,0.075),0 0 6px #67b168}.has-success .input-group-addon{color:#3c763d;border-color:#3c763d;background-color:#dff0d8}.has-success .form-control-feedback{color:#3c763d}.has-warning .help-block,.has-warning .control-label,.has-warning .radio,.has-warning .checkbox,.has-warning .radio-inline,.has-warning .checkbox-inline,.has-warning.radio label,.has-warning.checkbox label,.has-warning.radio-inline label,.has-warning.checkbox-inline label{color:#8a6d3b}.has-warning .form-control{border-color:#8a6d3b;-webkit-box-shadow:inset 0 1px 1px rgba(0,0,0,0.075);box-shadow:inset 0 1px 1px rgba(0,0,0,0.075)}.has-warning .form-control:focus{border-color:#66512c;-webkit-box-shadow:inset 0 1px 1px rgba(0,0,0,0.075),0 0 6px #c0a16b;box-shadow:inset 0 1px 1px rgba(0,0,0,0.075),0 0 6px #c0a16b}.has-warning .input-group-addon{color:#8a6d3b;border-color:#8a6d3b;background-color:#fcf8e3}.has-warning .form-control-feedback{color:#8a6d3b}.has-error .help-block,.has-error .control-label,.has-error .radio,.has-error .checkbox,.has-error .radio-inline,.has-error .checkbox-inline,.has-error.radio label,.has-error.checkbox label,.has-error.radio-inline label,.has-error.checkbox-inline label{color:#a94442}.has-error .form-control{border-color:#a94442;-webkit-box-shadow:inset 0 1px 1px rgba(0,0,0,0.075);box-shadow:inset 0 1px 1px rgba(0,0,0,0.075)}.has-error .form-control:focus{border-color:#843534;-webkit-box-shadow:inset 0 1px 1px rgba(0,0,0,0.075),0 0 6px #ce8483;box-shadow:inset 0 1px 1px rgba(0,0,0,0.075),0 0 6px #ce8483}.has-error .input-group-addon{color:#a94442;border-color:#a94442;background-color:#f2dede}.has-error .form-control-feedback{color:#a94442}.has-feedback label~.form-control-feedback{top:25px}.has-feedback label.sr-only~.form-control-feedback{top:0}.help-block{display:block;margin-top:5px;margin-bottom:10px;color:#737373}@media (min-width:768px){.form-inline .form-group{display:inline-block;margin-bottom:0;vertical-align:middle}.form-inline .form-control{display:inline-block;width:auto;vertical-align:middle}.form-inline .form-control-static{display:inline-block}.form-inline .input-group{display:inline-table;vertical-align:middle}.form-inline .input-group .input-group-addon,.form-inline .input-group .input-group-btn,.form-inline .input-group .form-control{width:auto}.form-inline .input-group>.form-control{width:100%}.form-inline .control-label{margin-bottom:0;vertical-align:middle}.form-inline .radio,.form-inline .checkbox{display:inline-block;margin-top:0;margin-bottom:0;vertical-align:middle}.form-inline .radio label,.form-inline .checkbox label{padding-left:0}.form-inline .radio input[type="radio"],.form-inline .checkbox input[type="checkbox"]{position:relative;margin-left:0}.form-inline .has-feedback .form-control-feedback{top:0}}.form-horizontal .radio,.form-horizontal .checkbox,.form-horizontal .radio-inline,.form-horizontal .checkbox-inline{margin-top:0;margin-bottom:0;padding-top:7px}.form-horizontal .radio,.form-horizontal .checkbox{min-height:27px}.form-horizontal .form-group{margin-left:-15px;margin-right:-15px}@media (min-width:768px){.form-horizontal .control-label{text-align:right;margin-bottom:0;padding-top:7px}}.form-horizontal .has-feedback .form-control-feedback{right:15px}@media (min-width:768px){.form-horizontal .form-group-lg .control-label{padding-top:11px;font-size:18px}}@media (min-width:768px){.form-horizontal .form-group-sm .control-label{padding-top:6px;font-size:12px}}.btn{display:inline-block;margin-bottom:0;font-weight:normal;text-align:center;vertical-align:middle;-ms-touch-action:manipulation;touch-action:manipulation;cursor:pointer;background-image:none;border:1px solid transparent;white-space:nowrap;padding:6px 12px;font-size:14px;line-height:1.42857143;border-radius:4px;-webkit-user-select:none;-moz-user-select:none;-ms-user-select:none;user-select:none}.btn:focus,.btn:active:focus,.btn.active:focus,.btn.focus,.btn:active.focus,.btn.active.focus{outline:thin dotted;outline:5px auto -webkit-focus-ring-color;outline-offset:-2px}.btn:hover,.btn:focus,.btn.focus{color:#333;text-decoration:none}.btn:active,.btn.active{outline:0;background-image:none;-webkit-box-shadow:inset 0 3px 5px rgba(0,0,0,0.125);box-shadow:inset 0 3px 5px rgba(0,0,0,0.125)}.btn.disabled,.btn[disabled],fieldset[disabled] .btn{cursor:not-allowed;opacity:.65;filter:alpha(opacity=65);-webkit-box-shadow:none;box-shadow:none}a.btn.disabled,fieldset[disabled] a.btn{pointer-events:none}.btn-default{color:#333;background-color:#fff;border-color:#ccc}.btn-default:focus,.btn-default.focus{color:#333;background-color:#e6e6e6;border-color:#8c8c8c}.btn-default:hover{color:#333;background-color:#e6e6e6;border-color:#adadad}.btn-default:active,.btn-default.active,.open>.dropdown-toggle.btn-default{color:#333;background-color:#e6e6e6;border-color:#adadad}.btn-default:active:hover,.btn-default.active:hover,.open>.dropdown-toggle.btn-default:hover,.btn-default:active:focus,.btn-default.active:focus,.open>.dropdown-toggle.btn-default:focus,.btn-default:active.focus,.btn-default.active.focus,.open>.dropdown-toggle.btn-default.focus{color:#333;background-color:#d4d4d4;border-color:#8c8c8c}.btn-default:active,.btn-default.active,.open>.dropdown-toggle.btn-default{background-image:none}.btn-default.disabled:hover,.btn-default[disabled]:hover,fieldset[disabled] .btn-default:hover,.btn-default.disabled:focus,.btn-default[disabled]:focus,fieldset[disabled] .btn-default:focus,.btn-default.disabled.focus,.btn-default[disabled].focus,fieldset[disabled] .btn-default.focus{background-color:#fff;border-color:#ccc}.btn-default .badge{color:#fff;background-color:#333}.btn-primary{color:#fff;background-color:#337ab7;border-color:#2e6da4}.btn-primary:focus,.btn-primary.focus{color:#fff;background-color:#286090;border-color:#122b40}.btn-primary:hover{color:#fff;background-color:#286090;border-color:#204d74}.btn-primary:active,.btn-primary.active,.open>.dropdown-toggle.btn-primary{color:#fff;background-color:#286090;border-color:#204d74}.btn-primary:active:hover,.btn-primary.active:hover,.open>.dropdown-toggle.btn-primary:hover,.btn-primary:active:focus,.btn-primary.active:focus,.open>.dropdown-toggle.btn-primary:focus,.btn-primary:active.focus,.btn-primary.active.focus,.open>.dropdown-toggle.btn-primary.focus{color:#fff;background-color:#204d74;border-color:#122b40}.btn-primary:active,.btn-primary.active,.open>.dropdown-toggle.btn-primary{background-image:none}.btn-primary.disabled:hover,.btn-primary[disabled]:hover,fieldset[disabled] .btn-primary:hover,.btn-primary.disabled:focus,.btn-primary[disabled]:focus,fieldset[disabled] .btn-primary:focus,.btn-primary.disabled.focus,.btn-primary[disabled].focus,fieldset[disabled] .btn-primary.focus{background-color:#337ab7;border-color:#2e6da4}.btn-primary .badge{color:#337ab7;background-color:#fff}.btn-success{color:#fff;background-color:#5cb85c;border-color:#4cae4c}.btn-success:focus,.btn-success.focus{color:#fff;background-color:#449d44;border-color:#255625}.btn-success:hover{color:#fff;background-color:#449d44;border-color:#398439}.btn-success:active,.btn-success.active,.open>.dropdown-toggle.btn-success{color:#fff;background-color:#449d44;border-color:#398439}.btn-success:active:hover,.btn-success.active:hover,.open>.dropdown-toggle.btn-success:hover,.btn-success:active:focus,.btn-success.active:focus,.open>.dropdown-toggle.btn-success:focus,.btn-success:active.focus,.btn-success.active.focus,.open>.dropdown-toggle.btn-success.focus{color:#fff;background-color:#398439;border-color:#255625}.btn-success:active,.btn-success.active,.open>.dropdown-toggle.btn-success{background-image:none}.btn-success.disabled:hover,.btn-success[disabled]:hover,fieldset[disabled] .btn-success:hover,.btn-success.disabled:focus,.btn-success[disabled]:focus,fieldset[disabled] .btn-success:focus,.btn-success.disabled.focus,.btn-success[disabled].focus,fieldset[disabled] .btn-success.focus{background-color:#5cb85c;border-color:#4cae4c}.btn-success .badge{color:#5cb85c;background-color:#fff}.btn-info{color:#fff;background-color:#5bc0de;border-color:#46b8da}.btn-info:focus,.btn-info.focus{color:#fff;background-color:#31b0d5;border-color:#1b6d85}.btn-info:hover{color:#fff;background-color:#31b0d5;border-color:#269abc}.btn-info:active,.btn-info.active,.open>.dropdown-toggle.btn-info{color:#fff;background-color:#31b0d5;border-color:#269abc}.btn-info:active:hover,.btn-info.active:hover,.open>.dropdown-toggle.btn-info:hover,.btn-info:active:focus,.btn-info.active:focus,.open>.dropdown-toggle.btn-info:focus,.btn-info:active.focus,.btn-info.active.focus,.open>.dropdown-toggle.btn-info.focus{color:#fff;background-color:#269abc;border-color:#1b6d85}.btn-info:active,.btn-info.active,.open>.dropdown-toggle.btn-info{background-image:none}.btn-info.disabled:hover,.btn-info[disabled]:hover,fieldset[disabled] .btn-info:hover,.btn-info.disabled:focus,.btn-info[disabled]:focus,fieldset[disabled] .btn-info:focus,.btn-info.disabled.focus,.btn-info[disabled].focus,fieldset[disabled] .btn-info.focus{background-color:#5bc0de;border-color:#46b8da}.btn-info .badge{color:#5bc0de;background-color:#fff}.btn-warning{color:#fff;background-color:#f0ad4e;border-color:#eea236}.btn-warning:focus,.btn-warning.focus{color:#fff;background-color:#ec971f;border-color:#985f0d}.btn-warning:hover{color:#fff;background-color:#ec971f;border-color:#d58512}.btn-warning:active,.btn-warning.active,.open>.dropdown-toggle.btn-warning{color:#fff;background-color:#ec971f;border-color:#d58512}.btn-warning:active:hover,.btn-warning.active:hover,.open>.dropdown-toggle.btn-warning:hover,.btn-warning:active:focus,.btn-warning.active:focus,.open>.dropdown-toggle.btn-warning:focus,.btn-warning:active.focus,.btn-warning.active.focus,.open>.dropdown-toggle.btn-warning.focus{color:#fff;background-color:#d58512;border-color:#985f0d}.btn-warning:active,.btn-warning.active,.open>.dropdown-toggle.btn-warning{background-image:none}.btn-warning.disabled:hover,.btn-warning[disabled]:hover,fieldset[disabled] .btn-warning:hover,.btn-warning.disabled:focus,.btn-warning[disabled]:focus,fieldset[disabled] .btn-warning:focus,.btn-warning.disabled.focus,.btn-warning[disabled].focus,fieldset[disabled] .btn-warning.focus{background-color:#f0ad4e;border-color:#eea236}.btn-warning .badge{color:#f0ad4e;background-color:#fff}.btn-danger{color:#fff;background-color:#d9534f;border-color:#d43f3a}.btn-danger:focus,.btn-danger.focus{color:#fff;background-color:#c9302c;border-color:#761c19}.btn-danger:hover{color:#fff;background-color:#c9302c;border-color:#ac2925}.btn-danger:active,.btn-danger.active,.open>.dropdown-toggle.btn-danger{color:#fff;background-color:#c9302c;border-color:#ac2925}.btn-danger:active:hover,.btn-danger.active:hover,.open>.dropdown-toggle.btn-danger:hover,.btn-danger:active:focus,.btn-danger.active:focus,.open>.dropdown-toggle.btn-danger:focus,.btn-danger:active.focus,.btn-danger.active.focus,.open>.dropdown-toggle.btn-danger.focus{color:#fff;background-color:#ac2925;border-color:#761c19}.btn-danger:active,.btn-danger.active,.open>.dropdown-toggle.btn-danger{background-image:none}.btn-danger.disabled:hover,.btn-danger[disabled]:hover,fieldset[disabled] .btn-danger:hover,.btn-danger.disabled:focus,.btn-danger[disabled]:focus,fieldset[disabled] .btn-danger:focus,.btn-danger.disabled.focus,.btn-danger[disabled].focus,fieldset[disabled] .btn-danger.focus{background-color:#d9534f;border-color:#d43f3a}.btn-danger .badge{color:#d9534f;background-color:#fff}.btn-link{color:#337ab7;font-weight:normal;border-radius:0}.btn-link,.btn-link:active,.btn-link.active,.btn-link[disabled],fieldset[disabled] .btn-link{background-color:transparent;-webkit-box-shadow:none;box-shadow:none}.btn-link,.btn-link:hover,.btn-link:focus,.btn-link:active{border-color:transparent}.btn-link:hover,.btn-link:focus{color:#23527c;text-decoration:underline;background-color:transparent}.btn-link[disabled]:hover,fieldset[disabled] .btn-link:hover,.btn-link[disabled]:focus,fieldset[disabled] .btn-link:focus{color:#777;text-decoration:none}.btn-lg,.btn-group-lg>.btn{padding:10px 16px;font-size:18px;line-height:1.3333333;border-radius:6px}.btn-sm,.btn-group-sm>.btn{padding:5px 10px;font-size:12px;line-height:1.5;border-radius:3px}.btn-xs,.btn-group-xs>.btn{padding:1px 5px;font-size:12px;line-height:1.5;border-radius:3px}.btn-block{display:block;width:100%}.btn-block+.btn-block{margin-top:5px}input[type="submit"].btn-block,input[type="reset"].btn-block,input[type="button"].btn-block{width:100%}.fade{opacity:0;-webkit-transition:opacity .15s linear;-o-transition:opacity .15s linear;transition:opacity .15s linear}.fade.in{opacity:1}.collapse{display:none}.collapse.in{display:block}tr.collapse.in{display:table-row}tbody.collapse.in{display:table-row-group}.collapsing{position:relative;height:0;overflow:hidden;-webkit-transition-property:height, visibility;-o-transition-property:height, visibility;transition-property:height, visibility;-webkit-transition-duration:.35s;-o-transition-duration:.35s;transition-duration:.35s;-webkit-transition-timing-function:ease;-o-transition-timing-function:ease;transition-timing-function:ease}.caret{display:inline-block;width:0;height:0;margin-left:2px;vertical-align:middle;border-top:4px dashed;border-top:4px solid \9;border-right:4px solid transparent;border-left:4px solid transparent}.dropup,.dropdown{position:relative}.dropdown-toggle:focus{outline:0}.dropdown-menu{position:absolute;top:100%;left:0;z-index:1000;display:none;float:left;min-width:160px;padding:5px 0;margin:2px 0 0;list-style:none;font-size:14px;text-align:left;background-color:#fff;border:1px solid #ccc;border:1px solid rgba(0,0,0,0.15);border-radius:4px;-webkit-box-shadow:0 6px 12px rgba(0,0,0,0.175);box-shadow:0 6px 12px rgba(0,0,0,0.175);-webkit-background-clip:padding-box;background-clip:padding-box}.dropdown-menu.pull-right{right:0;left:auto}.dropdown-menu .divider{height:1px;margin:9px 0;overflow:hidden;background-color:#e5e5e5}.dropdown-menu>li>a{display:block;padding:3px 20px;clear:both;font-weight:normal;line-height:1.42857143;color:#333;white-space:nowrap}.dropdown-menu>li>a:hover,.dropdown-menu>li>a:focus{text-decoration:none;color:#262626;background-color:#f5f5f5}.dropdown-menu>.active>a,.dropdown-menu>.active>a:hover,.dropdown-menu>.active>a:focus{color:#fff;text-decoration:none;outline:0;background-color:#337ab7}.dropdown-menu>.disabled>a,.dropdown-menu>.disabled>a:hover,.dropdown-menu>.disabled>a:focus{color:#777}.dropdown-menu>.disabled>a:hover,.dropdown-menu>.disabled>a:focus{text-decoration:none;background-color:transparent;background-image:none;filter:progid:DXImageTransform.Microsoft.gradient(enabled = false);cursor:not-allowed}.open>.dropdown-menu{display:block}.open>a{outline:0}.dropdown-menu-right{left:auto;right:0}.dropdown-menu-left{left:0;right:auto}.dropdown-header{display:block;padding:3px 20px;font-size:12px;line-height:1.42857143;color:#777;white-space:nowrap}.dropdown-backdrop{position:fixed;left:0;right:0;bottom:0;top:0;z-index:990}.pull-right>.dropdown-menu{right:0;left:auto}.dropup .caret,.navbar-fixed-bottom .dropdown .caret{border-top:0;border-bottom:4px dashed;border-bottom:4px solid \9;content:""}.dropup .dropdown-menu,.navbar-fixed-bottom .dropdown .dropdown-menu{top:auto;bottom:100%;margin-bottom:2px}@media (min-width:768px){.navbar-right .dropdown-menu{left:auto;right:0}.navbar-right .dropdown-menu-left{left:0;right:auto}}.btn-group,.btn-group-vertical{position:relative;display:inline-block;vertical-align:middle}.btn-group>.btn,.btn-group-vertical>.btn{position:relative;float:left}.btn-group>.btn:hover,.btn-group-vertical>.btn:hover,.btn-group>.btn:focus,.btn-group-vertical>.btn:focus,.btn-group>.btn:active,.btn-group-vertical>.btn:active,.btn-group>.btn.active,.btn-group-vertical>.btn.active{z-index:2}.btn-group .btn+.btn,.btn-group .btn+.btn-group,.btn-group .btn-group+.btn,.btn-group .btn-group+.btn-group{margin-left:-1px}.btn-toolbar{margin-left:-5px}.btn-toolbar .btn,.btn-toolbar .btn-group,.btn-toolbar .input-group{float:left}.btn-toolbar>.btn,.btn-toolbar>.btn-group,.btn-toolbar>.input-group{margin-left:5px}.btn-group>.btn:not(:first-child):not(:last-child):not(.dropdown-toggle){border-radius:0}.btn-group>.btn:first-child{margin-left:0}.btn-group>.btn:first-child:not(:last-child):not(.dropdown-toggle){border-bottom-right-radius:0;border-top-right-radius:0}.btn-group>.btn:last-child:not(:first-child),.btn-group>.dropdown-toggle:not(:first-child){border-bottom-left-radius:0;border-top-left-radius:0}.btn-group>.btn-group{float:left}.btn-group>.btn-group:not(:first-child):not(:last-child)>.btn{border-radius:0}.btn-group>.btn-group:first-child:not(:last-child)>.btn:last-child,.btn-group>.btn-group:first-child:not(:last-child)>.dropdown-toggle{border-bottom-right-radius:0;border-top-right-radius:0}.btn-group>.btn-group:last-child:not(:first-child)>.btn:first-child{border-bottom-left-radius:0;border-top-left-radius:0}.btn-group .dropdown-toggle:active,.btn-group.open .dropdown-toggle{outline:0}.btn-group>.btn+.dropdown-toggle{padding-left:8px;padding-right:8px}.btn-group>.btn-lg+.dropdown-toggle{padding-left:12px;padding-right:12px}.btn-group.open .dropdown-toggle{-webkit-box-shadow:inset 0 3px 5px rgba(0,0,0,0.125);box-shadow:inset 0 3px 5px rgba(0,0,0,0.125)}.btn-group.open .dropdown-toggle.btn-link{-webkit-box-shadow:none;box-shadow:none}.btn .caret{margin-left:0}.btn-lg .caret{border-width:5px 5px 0;border-bottom-width:0}.dropup .btn-lg .caret{border-width:0 5px 5px}.btn-group-vertical>.btn,.btn-group-vertical>.btn-group,.btn-group-vertical>.btn-group>.btn{display:block;float:none;width:100%;max-width:100%}.btn-group-vertical>.btn-group>.btn{float:none}.btn-group-vertical>.btn+.btn,.btn-group-vertical>.btn+.btn-group,.btn-group-vertical>.btn-group+.btn,.btn-group-vertical>.btn-group+.btn-group{margin-top:-1px;margin-left:0}.btn-group-vertical>.btn:not(:first-child):not(:last-child){border-radius:0}.btn-group-vertical>.btn:first-child:not(:last-child){border-top-right-radius:4px;border-top-left-radius:4px;border-bottom-right-radius:0;border-bottom-left-radius:0}.btn-group-vertical>.btn:last-child:not(:first-child){border-top-right-radius:0;border-top-left-radius:0;border-bottom-right-radius:4px;border-bottom-left-radius:4px}.btn-group-vertical>.btn-group:not(:first-child):not(:last-child)>.btn{border-radius:0}.btn-group-vertical>.btn-group:first-child:not(:last-child)>.btn:last-child,.btn-group-vertical>.btn-group:first-child:not(:last-child)>.dropdown-toggle{border-bottom-right-radius:0;border-bottom-left-radius:0}.btn-group-vertical>.btn-group:last-child:not(:first-child)>.btn:first-child{border-top-right-radius:0;border-top-left-radius:0}.btn-group-justified{display:table;width:100%;table-layout:fixed;border-collapse:separate}.btn-group-justified>.btn,.btn-group-justified>.btn-group{float:none;display:table-cell;width:1%}.btn-group-justified>.btn-group .btn{width:100%}.btn-group-justified>.btn-group .dropdown-menu{left:auto}[data-toggle="buttons"]>.btn input[type="radio"],[data-toggle="buttons"]>.btn-group>.btn input[type="radio"],[data-toggle="buttons"]>.btn input[type="checkbox"],[data-toggle="buttons"]>.btn-group>.btn input[type="checkbox"]{position:absolute;clip:rect(0, 0, 0, 0);pointer-events:none}.input-group{position:relative;display:table;border-collapse:separate}.input-group[class*="col-"]{float:none;padding-left:0;padding-right:0}.input-group .form-control{position:relative;z-index:2;float:left;width:100%;margin-bottom:0}.input-group .form-control:focus{z-index:3}.input-group-lg>.form-control,.input-group-lg>.input-group-addon,.input-group-lg>.input-group-btn>.btn{height:46px;padding:10px 16px;font-size:18px;line-height:1.3333333;border-radius:6px}select.input-group-lg>.form-control,select.input-group-lg>.input-group-addon,select.input-group-lg>.input-group-btn>.btn{height:46px;line-height:46px}textarea.input-group-lg>.form-control,textarea.input-group-lg>.input-group-addon,textarea.input-group-lg>.input-group-btn>.btn,select[multiple].input-group-lg>.form-control,select[multiple].input-group-lg>.input-group-addon,select[multiple].input-group-lg>.input-group-btn>.btn{height:auto}.input-group-sm>.form-control,.input-group-sm>.input-group-addon,.input-group-sm>.input-group-btn>.btn{height:30px;padding:5px 10px;font-size:12px;line-height:1.5;border-radius:3px}select.input-group-sm>.form-control,select.input-group-sm>.input-group-addon,select.input-group-sm>.input-group-btn>.btn{height:30px;line-height:30px}textarea.input-group-sm>.form-control,textarea.input-group-sm>.input-group-addon,textarea.input-group-sm>.input-group-btn>.btn,select[multiple].input-group-sm>.form-control,select[multiple].input-group-sm>.input-group-addon,select[multiple].input-group-sm>.input-group-btn>.btn{height:auto}.input-group-addon,.input-group-btn,.input-group .form-control{display:table-cell}.input-group-addon:not(:first-child):not(:last-child),.input-group-btn:not(:first-child):not(:last-child),.input-group .form-control:not(:first-child):not(:last-child){border-radius:0}.input-group-addon,.input-group-btn{width:1%;white-space:nowrap;vertical-align:middle}.input-group-addon{padding:6px 12px;font-size:14px;font-weight:normal;line-height:1;color:#555;text-align:center;background-color:#eee;border:1px solid #ccc;border-radius:4px}.input-group-addon.input-sm{padding:5px 10px;font-size:12px;border-radius:3px}.input-group-addon.input-lg{padding:10px 16px;font-size:18px;border-radius:6px}.input-group-addon input[type="radio"],.input-group-addon input[type="checkbox"]{margin-top:0}.input-group .form-control:first-child,.input-group-addon:first-child,.input-group-btn:first-child>.btn,.input-group-btn:first-child>.btn-group>.btn,.input-group-btn:first-child>.dropdown-toggle,.input-group-btn:last-child>.btn:not(:last-child):not(.dropdown-toggle),.input-group-btn:last-child>.btn-group:not(:last-child)>.btn{border-bottom-right-radius:0;border-top-right-radius:0}.input-group-addon:first-child{border-right:0}.input-group .form-control:last-child,.input-group-addon:last-child,.input-group-btn:last-child>.btn,.input-group-btn:last-child>.btn-group>.btn,.input-group-btn:last-child>.dropdown-toggle,.input-group-btn:first-child>.btn:not(:first-child),.input-group-btn:first-child>.btn-group:not(:first-child)>.btn{border-bottom-left-radius:0;border-top-left-radius:0}.input-group-addon:last-child{border-left:0}.input-group-btn{position:relative;font-size:0;white-space:nowrap}.input-group-btn>.btn{position:relative}.input-group-btn>.btn+.btn{margin-left:-1px}.input-group-btn>.btn:hover,.input-group-btn>.btn:focus,.input-group-btn>.btn:active{z-index:2}.input-group-btn:first-child>.btn,.input-group-btn:first-child>.btn-group{margin-right:-1px}.input-group-btn:last-child>.btn,.input-group-btn:last-child>.btn-group{z-index:2;margin-left:-1px}.nav{margin-bottom:0;padding-left:0;list-style:none}.nav>li{position:relative;display:block}.nav>li>a{position:relative;display:block;padding:10px 15px}.nav>li>a:hover,.nav>li>a:focus{text-decoration:none;background-color:#eee}.nav>li.disabled>a{color:#777}.nav>li.disabled>a:hover,.nav>li.disabled>a:focus{color:#777;text-decoration:none;background-color:transparent;cursor:not-allowed}.nav .open>a,.nav .open>a:hover,.nav .open>a:focus{background-color:#eee;border-color:#337ab7}.nav .nav-divider{height:1px;margin:9px 0;overflow:hidden;background-color:#e5e5e5}.nav>li>a>img{max-width:none}.nav-tabs{border-bottom:1px solid #ddd}.nav-tabs>li{float:left;margin-bottom:-1px}.nav-tabs>li>a{margin-right:2px;line-height:1.42857143;border:1px solid transparent;border-radius:4px 4px 0 0}.nav-tabs>li>a:hover{border-color:#eee #eee #ddd}.nav-tabs>li.active>a,.nav-tabs>li.active>a:hover,.nav-tabs>li.active>a:focus{color:#555;background-color:#fff;border:1px solid #ddd;border-bottom-color:transparent;cursor:default}.nav-tabs.nav-justified{width:100%;border-bottom:0}.nav-tabs.nav-justified>li{float:none}.nav-tabs.nav-justified>li>a{text-align:center;margin-bottom:5px}.nav-tabs.nav-justified>.dropdown .dropdown-menu{top:auto;left:auto}@media (min-width:768px){.nav-tabs.nav-justified>li{display:table-cell;width:1%}.nav-tabs.nav-justified>li>a{margin-bottom:0}}.nav-tabs.nav-justified>li>a{margin-right:0;border-radius:4px}.nav-tabs.nav-justified>.active>a,.nav-tabs.nav-justified>.active>a:hover,.nav-tabs.nav-justified>.active>a:focus{border:1px solid #ddd}@media (min-width:768px){.nav-tabs.nav-justified>li>a{border-bottom:1px solid #ddd;border-radius:4px 4px 0 0}.nav-tabs.nav-justified>.active>a,.nav-tabs.nav-justified>.active>a:hover,.nav-tabs.nav-justified>.active>a:focus{border-bottom-color:#fff}}.nav-pills>li{float:left}.nav-pills>li>a{border-radius:4px}.nav-pills>li+li{margin-left:2px}.nav-pills>li.active>a,.nav-pills>li.active>a:hover,.nav-pills>li.active>a:focus{color:#fff;background-color:#337ab7}.nav-stacked>li{float:none}.nav-stacked>li+li{margin-top:2px;margin-left:0}.nav-justified{width:100%}.nav-justified>li{float:none}.nav-justified>li>a{text-align:center;margin-bottom:5px}.nav-justified>.dropdown .dropdown-menu{top:auto;left:auto}@media (min-width:768px){.nav-justified>li{display:table-cell;width:1%}.nav-justified>li>a{margin-bottom:0}}.nav-tabs-justified{border-bottom:0}.nav-tabs-justified>li>a{margin-right:0;border-radius:4px}.nav-tabs-justified>.active>a,.nav-tabs-justified>.active>a:hover,.nav-tabs-justified>.active>a:focus{border:1px solid #ddd}@media (min-width:768px){.nav-tabs-justified>li>a{border-bottom:1px solid #ddd;border-radius:4px 4px 0 0}.nav-tabs-justified>.active>a,.nav-tabs-justified>.active>a:hover,.nav-tabs-justified>.active>a:focus{border-bottom-color:#fff}}.tab-content>.tab-pane{display:none}.tab-content>.active{display:block}.nav-tabs .dropdown-menu{margin-top:-1px;border-top-right-radius:0;border-top-left-radius:0}.navbar{position:relative;min-height:50px;margin-bottom:20px;border:1px solid transparent}@media (min-width:768px){.navbar{border-radius:4px}}@media (min-width:768px){.navbar-header{float:left}}.navbar-collapse{overflow-x:visible;padding-right:15px;padding-left:15px;border-top:1px solid transparent;-webkit-box-shadow:inset 0 1px 0 rgba(255,255,255,0.1);box-shadow:inset 0 1px 0 rgba(255,255,255,0.1);-webkit-overflow-scrolling:touch}.navbar-collapse.in{overflow-y:auto}@media (min-width:768px){.navbar-collapse{width:auto;border-top:0;-webkit-box-shadow:none;box-shadow:none}.navbar-collapse.collapse{display:block !important;height:auto !important;padding-bottom:0;overflow:visible !important}.navbar-collapse.in{overflow-y:visible}.navbar-fixed-top .navbar-collapse,.navbar-static-top .navbar-collapse,.navbar-fixed-bottom .navbar-collapse{padding-left:0;padding-right:0}}.navbar-fixed-top .navbar-collapse,.navbar-fixed-bottom .navbar-collapse{max-height:340px}@media (max-device-width:480px) and (orientation:landscape){.navbar-fixed-top .navbar-collapse,.navbar-fixed-bottom .navbar-collapse{max-height:200px}}.container>.navbar-header,.container-fluid>.navbar-header,.container>.navbar-collapse,.container-fluid>.navbar-collapse{margin-right:-15px;margin-left:-15px}@media (min-width:768px){.container>.navbar-header,.container-fluid>.navbar-header,.container>.navbar-collapse,.container-fluid>.navbar-collapse{margin-right:0;margin-left:0}}.navbar-static-top{z-index:1000;border-width:0 0 1px}@media (min-width:768px){.navbar-static-top{border-radius:0}}.navbar-fixed-top,.navbar-fixed-bottom{position:fixed;right:0;left:0;z-index:1030}@media (min-width:768px){.navbar-fixed-top,.navbar-fixed-bottom{border-radius:0}}.navbar-fixed-top{top:0;border-width:0 0 1px}.navbar-fixed-bottom{bottom:0;margin-bottom:0;border-width:1px 0 0}.navbar-brand{float:left;padding:15px 15px;font-size:18px;line-height:20px;height:50px}.navbar-brand:hover,.navbar-brand:focus{text-decoration:none}.navbar-brand>img{display:block}@media (min-width:768px){.navbar>.container .navbar-brand,.navbar>.container-fluid .navbar-brand{margin-left:-15px}}.navbar-toggle{position:relative;float:right;margin-right:15px;padding:9px 10px;margin-top:8px;margin-bottom:8px;background-color:transparent;background-image:none;border:1px solid transparent;border-radius:4px}.navbar-toggle:focus{outline:0}.navbar-toggle .icon-bar{display:block;width:22px;height:2px;border-radius:1px}.navbar-toggle .icon-bar+.icon-bar{margin-top:4px}@media (min-width:768px){.navbar-toggle{display:none}}.navbar-nav{margin:7.5px -15px}.navbar-nav>li>a{padding-top:10px;padding-bottom:10px;line-height:20px}@media (max-width:767px){.navbar-nav .open .dropdown-menu{position:static;float:none;width:auto;margin-top:0;background-color:transparent;border:0;-webkit-box-shadow:none;box-shadow:none}.navbar-nav .open .dropdown-menu>li>a,.navbar-nav .open .dropdown-menu .dropdown-header{padding:5px 15px 5px 25px}.navbar-nav .open .dropdown-menu>li>a{line-height:20px}.navbar-nav .open .dropdown-menu>li>a:hover,.navbar-nav .open .dropdown-menu>li>a:focus{background-image:none}}@media (min-width:768px){.navbar-nav{float:left;margin:0}.navbar-nav>li{float:left}.navbar-nav>li>a{padding-top:15px;padding-bottom:15px}}.navbar-form{margin-left:-15px;margin-right:-15px;padding:10px 15px;border-top:1px solid transparent;border-bottom:1px solid transparent;-webkit-box-shadow:inset 0 1px 0 rgba(255,255,255,0.1),0 1px 0 rgba(255,255,255,0.1);box-shadow:inset 0 1px 0 rgba(255,255,255,0.1),0 1px 0 rgba(255,255,255,0.1);margin-top:8px;margin-bottom:8px}@media (min-width:768px){.navbar-form .form-group{display:inline-block;margin-bottom:0;vertical-align:middle}.navbar-form .form-control{display:inline-block;width:auto;vertical-align:middle}.navbar-form .form-control-static{display:inline-block}.navbar-form .input-group{display:inline-table;vertical-align:middle}.navbar-form .input-group .input-group-addon,.navbar-form .input-group .input-group-btn,.navbar-form .input-group .form-control{width:auto}.navbar-form .input-group>.form-control{width:100%}.navbar-form .control-label{margin-bottom:0;vertical-align:middle}.navbar-form .radio,.navbar-form .checkbox{display:inline-block;margin-top:0;margin-bottom:0;vertical-align:middle}.navbar-form .radio label,.navbar-form .checkbox label{padding-left:0}.navbar-form .radio input[type="radio"],.navbar-form .checkbox input[type="checkbox"]{position:relative;margin-left:0}.navbar-form .has-feedback .form-control-feedback{top:0}}@media (max-width:767px){.navbar-form .form-group{margin-bottom:5px}.navbar-form .form-group:last-child{margin-bottom:0}}@media (min-width:768px){.navbar-form{width:auto;border:0;margin-left:0;margin-right:0;padding-top:0;padding-bottom:0;-webkit-box-shadow:none;box-shadow:none}}.navbar-nav>li>.dropdown-menu{margin-top:0;border-top-right-radius:0;border-top-left-radius:0}.navbar-fixed-bottom .navbar-nav>li>.dropdown-menu{margin-bottom:0;border-top-right-radius:4px;border-top-left-radius:4px;border-bottom-right-radius:0;border-bottom-left-radius:0}.navbar-btn{margin-top:8px;margin-bottom:8px}.navbar-btn.btn-sm{margin-top:10px;margin-bottom:10px}.navbar-btn.btn-xs{margin-top:14px;margin-bottom:14px}.navbar-text{margin-top:15px;margin-bottom:15px}@media (min-width:768px){.navbar-text{float:left;margin-left:15px;margin-right:15px}}@media (min-width:768px){.navbar-left{float:left !important}.navbar-right{float:right !important;margin-right:-15px}.navbar-right~.navbar-right{margin-right:0}}.navbar-default{background-color:#f8f8f8;border-color:#e7e7e7}.navbar-default .navbar-brand{color:#777}.navbar-default .navbar-brand:hover,.navbar-default .navbar-brand:focus{color:#5e5e5e;background-color:transparent}.navbar-default .navbar-text{color:#777}.navbar-default .navbar-nav>li>a{color:#777}.navbar-default .navbar-nav>li>a:hover,.navbar-default .navbar-nav>li>a:focus{color:#333;background-color:transparent}.navbar-default .navbar-nav>.active>a,.navbar-default .navbar-nav>.active>a:hover,.navbar-default .navbar-nav>.active>a:focus{color:#555;background-color:#e7e7e7}.navbar-default .navbar-nav>.disabled>a,.navbar-default .navbar-nav>.disabled>a:hover,.navbar-default .navbar-nav>.disabled>a:focus{color:#ccc;background-color:transparent}.navbar-default .navbar-toggle{border-color:#ddd}.navbar-default .navbar-toggle:hover,.navbar-default .navbar-toggle:focus{background-color:#ddd}.navbar-default .navbar-toggle .icon-bar{background-color:#888}.navbar-default .navbar-collapse,.navbar-default .navbar-form{border-color:#e7e7e7}.navbar-default .navbar-nav>.open>a,.navbar-default .navbar-nav>.open>a:hover,.navbar-default .navbar-nav>.open>a:focus{background-color:#e7e7e7;color:#555}@media (max-width:767px){.navbar-default .navbar-nav .open .dropdown-menu>li>a{color:#777}.navbar-default .navbar-nav .open .dropdown-menu>li>a:hover,.navbar-default .navbar-nav .open .dropdown-menu>li>a:focus{color:#333;background-color:transparent}.navbar-default .navbar-nav .open .dropdown-menu>.active>a,.navbar-default .navbar-nav .open .dropdown-menu>.active>a:hover,.navbar-default .navbar-nav .open .dropdown-menu>.active>a:focus{color:#555;background-color:#e7e7e7}.navbar-default .navbar-nav .open .dropdown-menu>.disabled>a,.navbar-default .navbar-nav .open .dropdown-menu>.disabled>a:hover,.navbar-default .navbar-nav .open .dropdown-menu>.disabled>a:focus{color:#ccc;background-color:transparent}}.navbar-default .navbar-link{color:#777}.navbar-default .navbar-link:hover{color:#333}.navbar-default .btn-link{color:#777}.navbar-default .btn-link:hover,.navbar-default .btn-link:focus{color:#333}.navbar-default .btn-link[disabled]:hover,fieldset[disabled] .navbar-default .btn-link:hover,.navbar-default .btn-link[disabled]:focus,fieldset[disabled] .navbar-default .btn-link:focus{color:#ccc}.navbar-inverse{background-color:#222;border-color:#080808}.navbar-inverse .navbar-brand{color:#9d9d9d}.navbar-inverse .navbar-brand:hover,.navbar-inverse .navbar-brand:focus{color:#fff;background-color:transparent}.navbar-inverse .navbar-text{color:#9d9d9d}.navbar-inverse .navbar-nav>li>a{color:#9d9d9d}.navbar-inverse .navbar-nav>li>a:hover,.navbar-inverse .navbar-nav>li>a:focus{color:#fff;background-color:transparent}.navbar-inverse .navbar-nav>.active>a,.navbar-inverse .navbar-nav>.active>a:hover,.navbar-inverse .navbar-nav>.active>a:focus{color:#fff;background-color:#080808}.navbar-inverse .navbar-nav>.disabled>a,.navbar-inverse .navbar-nav>.disabled>a:hover,.navbar-inverse .navbar-nav>.disabled>a:focus{color:#444;background-color:transparent}.navbar-inverse .navbar-toggle{border-color:#333}.navbar-inverse .navbar-toggle:hover,.navbar-inverse .navbar-toggle:focus{background-color:#333}.navbar-inverse .navbar-toggle .icon-bar{background-color:#fff}.navbar-inverse .navbar-collapse,.navbar-inverse .navbar-form{border-color:#101010}.navbar-inverse .navbar-nav>.open>a,.navbar-inverse .navbar-nav>.open>a:hover,.navbar-inverse .navbar-nav>.open>a:focus{background-color:#080808;color:#fff}@media (max-width:767px){.navbar-inverse .navbar-nav .open .dropdown-menu>.dropdown-header{border-color:#080808}.navbar-inverse .navbar-nav .open .dropdown-menu .divider{background-color:#080808}.navbar-inverse .navbar-nav .open .dropdown-menu>li>a{color:#9d9d9d}.navbar-inverse .navbar-nav .open .dropdown-menu>li>a:hover,.navbar-inverse .navbar-nav .open .dropdown-menu>li>a:focus{color:#fff;background-color:transparent}.navbar-inverse .navbar-nav .open .dropdown-menu>.active>a,.navbar-inverse .navbar-nav .open .dropdown-menu>.active>a:hover,.navbar-inverse .navbar-nav .open .dropdown-menu>.active>a:focus{color:#fff;background-color:#080808}.navbar-inverse .navbar-nav .open .dropdown-menu>.disabled>a,.navbar-inverse .navbar-nav .open .dropdown-menu>.disabled>a:hover,.navbar-inverse .navbar-nav .open .dropdown-menu>.disabled>a:focus{color:#444;background-color:transparent}}.navbar-inverse .navbar-link{color:#9d9d9d}.navbar-inverse .navbar-link:hover{color:#fff}.navbar-inverse .btn-link{color:#9d9d9d}.navbar-inverse .btn-link:hover,.navbar-inverse .btn-link:focus{color:#fff}.navbar-inverse .btn-link[disabled]:hover,fieldset[disabled] .navbar-inverse .btn-link:hover,.navbar-inverse .btn-link[disabled]:focus,fieldset[disabled] .navbar-inverse .btn-link:focus{color:#444}.breadcrumb{padding:8px 15px;margin-bottom:20px;list-style:none;background-color:#f5f5f5;border-radius:4px}.breadcrumb>li{display:inline-block}.breadcrumb>li+li:before{content:"/\00a0";padding:0 5px;color:#ccc}.breadcrumb>.active{color:#777}.pagination{display:inline-block;padding-left:0;margin:20px 0;border-radius:4px}.pagination>li{display:inline}.pagination>li>a,.pagination>li>span{position:relative;float:left;padding:6px 12px;line-height:1.42857143;text-decoration:none;color:#337ab7;background-color:#fff;border:1px solid #ddd;margin-left:-1px}.pagination>li:first-child>a,.pagination>li:first-child>span{margin-left:0;border-bottom-left-radius:4px;border-top-left-radius:4px}.pagination>li:last-child>a,.pagination>li:last-child>span{border-bottom-right-radius:4px;border-top-right-radius:4px}.pagination>li>a:hover,.pagination>li>span:hover,.pagination>li>a:focus,.pagination>li>span:focus{z-index:2;color:#23527c;background-color:#eee;border-color:#ddd}.pagination>.active>a,.pagination>.active>span,.pagination>.active>a:hover,.pagination>.active>span:hover,.pagination>.active>a:focus,.pagination>.active>span:focus{z-index:3;color:#fff;background-color:#337ab7;border-color:#337ab7;cursor:default}.pagination>.disabled>span,.pagination>.disabled>span:hover,.pagination>.disabled>span:focus,.pagination>.disabled>a,.pagination>.disabled>a:hover,.pagination>.disabled>a:focus{color:#777;background-color:#fff;border-color:#ddd;cursor:not-allowed}.pagination-lg>li>a,.pagination-lg>li>span{padding:10px 16px;font-size:18px;line-height:1.3333333}.pagination-lg>li:first-child>a,.pagination-lg>li:first-child>span{border-bottom-left-radius:6px;border-top-left-radius:6px}.pagination-lg>li:last-child>a,.pagination-lg>li:last-child>span{border-bottom-right-radius:6px;border-top-right-radius:6px}.pagination-sm>li>a,.pagination-sm>li>span{padding:5px 10px;font-size:12px;line-height:1.5}.pagination-sm>li:first-child>a,.pagination-sm>li:first-child>span{border-bottom-left-radius:3px;border-top-left-radius:3px}.pagination-sm>li:last-child>a,.pagination-sm>li:last-child>span{border-bottom-right-radius:3px;border-top-right-radius:3px}.pager{padding-left:0;margin:20px 0;list-style:none;text-align:center}.pager li{display:inline}.pager li>a,.pager li>span{display:inline-block;padding:5px 14px;background-color:#fff;border:1px solid #ddd;border-radius:15px}.pager li>a:hover,.pager li>a:focus{text-decoration:none;background-color:#eee}.pager .next>a,.pager .next>span{float:right}.pager .previous>a,.pager .previous>span{float:left}.pager .disabled>a,.pager .disabled>a:hover,.pager .disabled>a:focus,.pager .disabled>span{color:#777;background-color:#fff;cursor:not-allowed}.label{display:inline;padding:.2em .6em .3em;font-size:75%;font-weight:bold;line-height:1;color:#fff;text-align:center;white-space:nowrap;vertical-align:baseline;border-radius:.25em}a.label:hover,a.label:focus{color:#fff;text-decoration:none;cursor:pointer}.label:empty{display:none}.btn .label{position:relative;top:-1px}.label-default{background-color:#777}.label-default[href]:hover,.label-default[href]:focus{background-color:#5e5e5e}.label-primary{background-color:#337ab7}.label-primary[href]:hover,.label-primary[href]:focus{background-color:#286090}.label-success{background-color:#5cb85c}.label-success[href]:hover,.label-success[href]:focus{background-color:#449d44}.label-info{background-color:#5bc0de}.label-info[href]:hover,.label-info[href]:focus{background-color:#31b0d5}.label-warning{background-color:#f0ad4e}.label-warning[href]:hover,.label-warning[href]:focus{background-color:#ec971f}.label-danger{background-color:#d9534f}.label-danger[href]:hover,.label-danger[href]:focus{background-color:#c9302c}.badge{display:inline-block;min-width:10px;padding:3px 7px;font-size:12px;font-weight:bold;color:#fff;line-height:1;vertical-align:middle;white-space:nowrap;text-align:center;background-color:#777;border-radius:10px}.badge:empty{display:none}.btn .badge{position:relative;top:-1px}.btn-xs .badge,.btn-group-xs>.btn .badge{top:0;padding:1px 5px}a.badge:hover,a.badge:focus{color:#fff;text-decoration:none;cursor:pointer}.list-group-item.active>.badge,.nav-pills>.active>a>.badge{color:#337ab7;background-color:#fff}.list-group-item>.badge{float:right}.list-group-item>.badge+.badge{margin-right:5px}.nav-pills>li>a>.badge{margin-left:3px}.jumbotron{padding-top:30px;padding-bottom:30px;margin-bottom:30px;color:inherit;background-color:#eee}.jumbotron h1,.jumbotron .h1{color:inherit}.jumbotron p{margin-bottom:15px;font-size:21px;font-weight:200}.jumbotron>hr{border-top-color:#d5d5d5}.container .jumbotron,.container-fluid .jumbotron{border-radius:6px;padding-left:15px;padding-right:15px}.jumbotron .container{max-width:100%}@media screen and (min-width:768px){.jumbotron{padding-top:48px;padding-bottom:48px}.container .jumbotron,.container-fluid .jumbotron{padding-left:60px;padding-right:60px}.jumbotron h1,.jumbotron .h1{font-size:63px}}.thumbnail{display:block;padding:4px;margin-bottom:20px;line-height:1.42857143;background-color:#fff;border:1px solid #ddd;border-radius:4px;-webkit-transition:border .2s ease-in-out;-o-transition:border .2s ease-in-out;transition:border .2s ease-in-out}.thumbnail>img,.thumbnail a>img{margin-left:auto;margin-right:auto}a.thumbnail:hover,a.thumbnail:focus,a.thumbnail.active{border-color:#337ab7}.thumbnail .caption{padding:9px;color:#333}.alert{padding:15px;margin-bottom:20px;border:1px solid transparent;border-radius:4px}.alert h4{margin-top:0;color:inherit}.alert .alert-link{font-weight:bold}.alert>p,.alert>ul{margin-bottom:0}.alert>p+p{margin-top:5px}.alert-dismissable,.alert-dismissible{padding-right:35px}.alert-dismissable .close,.alert-dismissible .close{position:relative;top:-2px;right:-21px;color:inherit}.alert-success{background-color:#dff0d8;border-color:#d6e9c6;color:#3c763d}.alert-success hr{border-top-color:#c9e2b3}.alert-success .alert-link{color:#2b542c}.alert-info{background-color:#d9edf7;border-color:#bce8f1;color:#31708f}.alert-info hr{border-top-color:#a6e1ec}.alert-info .alert-link{color:#245269}.alert-warning{background-color:#fcf8e3;border-color:#faebcc;color:#8a6d3b}.alert-warning hr{border-top-color:#f7e1b5}.alert-warning .alert-link{color:#66512c}.alert-danger{background-color:#f2dede;border-color:#ebccd1;color:#a94442}.alert-danger hr{border-top-color:#e4b9c0}.alert-danger .alert-link{color:#843534}@-webkit-keyframes progress-bar-stripes{from{background-position:40px 0}to{background-position:0 0}}@-o-keyframes progress-bar-stripes{from{background-position:40px 0}to{background-position:0 0}}@keyframes progress-bar-stripes{from{background-position:40px 0}to{background-position:0 0}}.progress{overflow:hidden;height:20px;margin-bottom:20px;background-color:#f5f5f5;border-radius:4px;-webkit-box-shadow:inset 0 1px 2px rgba(0,0,0,0.1);box-shadow:inset 0 1px 2px rgba(0,0,0,0.1)}.progress-bar{float:left;width:0%;height:100%;font-size:12px;line-height:20px;color:#fff;text-align:center;background-color:#337ab7;-webkit-box-shadow:inset 0 -1px 0 rgba(0,0,0,0.15);box-shadow:inset 0 -1px 0 rgba(0,0,0,0.15);-webkit-transition:width .6s ease;-o-transition:width .6s ease;transition:width .6s ease}.progress-striped .progress-bar,.progress-bar-striped{background-image:-webkit-linear-gradient(45deg, rgba(255,255,255,0.15) 25%, transparent 25%, transparent 50%, rgba(255,255,255,0.15) 50%, rgba(255,255,255,0.15) 75%, transparent 75%, transparent);background-image:-o-linear-gradient(45deg, rgba(255,255,255,0.15) 25%, transparent 25%, transparent 50%, rgba(255,255,255,0.15) 50%, rgba(255,255,255,0.15) 75%, transparent 75%, transparent);background-image:linear-gradient(45deg, rgba(255,255,255,0.15) 25%, transparent 25%, transparent 50%, rgba(255,255,255,0.15) 50%, rgba(255,255,255,0.15) 75%, transparent 75%, transparent);-webkit-background-size:40px 40px;background-size:40px 40px}.progress.active .progress-bar,.progress-bar.active{-webkit-animation:progress-bar-stripes 2s linear infinite;-o-animation:progress-bar-stripes 2s linear infinite;animation:progress-bar-stripes 2s linear infinite}.progress-bar-success{background-color:#5cb85c}.progress-striped .progress-bar-success{background-image:-webkit-linear-gradient(45deg, rgba(255,255,255,0.15) 25%, transparent 25%, transparent 50%, rgba(255,255,255,0.15) 50%, rgba(255,255,255,0.15) 75%, transparent 75%, transparent);background-image:-o-linear-gradient(45deg, rgba(255,255,255,0.15) 25%, transparent 25%, transparent 50%, rgba(255,255,255,0.15) 50%, rgba(255,255,255,0.15) 75%, transparent 75%, transparent);background-image:linear-gradient(45deg, rgba(255,255,255,0.15) 25%, transparent 25%, transparent 50%, rgba(255,255,255,0.15) 50%, rgba(255,255,255,0.15) 75%, transparent 75%, transparent)}.progress-bar-info{background-color:#5bc0de}.progress-striped .progress-bar-info{background-image:-webkit-linear-gradient(45deg, rgba(255,255,255,0.15) 25%, transparent 25%, transparent 50%, rgba(255,255,255,0.15) 50%, rgba(255,255,255,0.15) 75%, transparent 75%, transparent);background-image:-o-linear-gradient(45deg, rgba(255,255,255,0.15) 25%, transparent 25%, transparent 50%, rgba(255,255,255,0.15) 50%, rgba(255,255,255,0.15) 75%, transparent 75%, transparent);background-image:linear-gradient(45deg, rgba(255,255,255,0.15) 25%, transparent 25%, transparent 50%, rgba(255,255,255,0.15) 50%, rgba(255,255,255,0.15) 75%, transparent 75%, transparent)}.progress-bar-warning{background-color:#f0ad4e}.progress-striped .progress-bar-warning{background-image:-webkit-linear-gradient(45deg, rgba(255,255,255,0.15) 25%, transparent 25%, transparent 50%, rgba(255,255,255,0.15) 50%, rgba(255,255,255,0.15) 75%, transparent 75%, transparent);background-image:-o-linear-gradient(45deg, rgba(255,255,255,0.15) 25%, transparent 25%, transparent 50%, rgba(255,255,255,0.15) 50%, rgba(255,255,255,0.15) 75%, transparent 75%, transparent);background-image:linear-gradient(45deg, rgba(255,255,255,0.15) 25%, transparent 25%, transparent 50%, rgba(255,255,255,0.15) 50%, rgba(255,255,255,0.15) 75%, transparent 75%, transparent)}.progress-bar-danger{background-color:#d9534f}.progress-striped .progress-bar-danger{background-image:-webkit-linear-gradient(45deg, rgba(255,255,255,0.15) 25%, transparent 25%, transparent 50%, rgba(255,255,255,0.15) 50%, rgba(255,255,255,0.15) 75%, transparent 75%, transparent);background-image:-o-linear-gradient(45deg, rgba(255,255,255,0.15) 25%, transparent 25%, transparent 50%, rgba(255,255,255,0.15) 50%, rgba(255,255,255,0.15) 75%, transparent 75%, transparent);background-image:linear-gradient(45deg, rgba(255,255,255,0.15) 25%, transparent 25%, transparent 50%, rgba(255,255,255,0.15) 50%, rgba(255,255,255,0.15) 75%, transparent 75%, transparent)}.media{margin-top:15px}.media:first-child{margin-top:0}.media,.media-body{zoom:1;overflow:hidden}.media-body{width:10000px}.media-object{display:block}.media-object.img-thumbnail{max-width:none}.media-right,.media>.pull-right{padding-left:10px}.media-left,.media>.pull-left{padding-right:10px}.media-left,.media-right,.media-body{display:table-cell;vertical-align:top}.media-middle{vertical-align:middle}.media-bottom{vertical-align:bottom}.media-heading{margin-top:0;margin-bottom:5px}.media-list{padding-left:0;list-style:none}.list-group{margin-bottom:20px;padding-left:0}.list-group-item{position:relative;display:block;padding:10px 15px;margin-bottom:-1px;background-color:#fff;border:1px solid #ddd}.list-group-item:first-child{border-top-right-radius:4px;border-top-left-radius:4px}.list-group-item:last-child{margin-bottom:0;border-bottom-right-radius:4px;border-bottom-left-radius:4px}a.list-group-item,button.list-group-item{color:#555}a.list-group-item .list-group-item-heading,button.list-group-item .list-group-item-heading{color:#333}a.list-group-item:hover,button.list-group-item:hover,a.list-group-item:focus,button.list-group-item:focus{text-decoration:none;color:#555;background-color:#f5f5f5}button.list-group-item{width:100%;text-align:left}.list-group-item.disabled,.list-group-item.disabled:hover,.list-group-item.disabled:focus{background-color:#eee;color:#777;cursor:not-allowed}.list-group-item.disabled .list-group-item-heading,.list-group-item.disabled:hover .list-group-item-heading,.list-group-item.disabled:focus .list-group-item-heading{color:inherit}.list-group-item.disabled .list-group-item-text,.list-group-item.disabled:hover .list-group-item-text,.list-group-item.disabled:focus .list-group-item-text{color:#777}.list-group-item.active,.list-group-item.active:hover,.list-group-item.active:focus{z-index:2;color:#fff;background-color:#337ab7;border-color:#337ab7}.list-group-item.active .list-group-item-heading,.list-group-item.active:hover .list-group-item-heading,.list-group-item.active:focus .list-group-item-heading,.list-group-item.active .list-group-item-heading>small,.list-group-item.active:hover .list-group-item-heading>small,.list-group-item.active:focus .list-group-item-heading>small,.list-group-item.active .list-group-item-heading>.small,.list-group-item.active:hover .list-group-item-heading>.small,.list-group-item.active:focus .list-group-item-heading>.small{color:inherit}.list-group-item.active .list-group-item-text,.list-group-item.active:hover .list-group-item-text,.list-group-item.active:focus .list-group-item-text{color:#c7ddef}.list-group-item-success{color:#3c763d;background-color:#dff0d8}a.list-group-item-success,button.list-group-item-success{color:#3c763d}a.list-group-item-success .list-group-item-heading,button.list-group-item-success .list-group-item-heading{color:inherit}a.list-group-item-success:hover,button.list-group-item-success:hover,a.list-group-item-success:focus,button.list-group-item-success:focus{color:#3c763d;background-color:#d0e9c6}a.list-group-item-success.active,button.list-group-item-success.active,a.list-group-item-success.active:hover,button.list-group-item-success.active:hover,a.list-group-item-success.active:focus,button.list-group-item-success.active:focus{color:#fff;background-color:#3c763d;border-color:#3c763d}.list-group-item-info{color:#31708f;background-color:#d9edf7}a.list-group-item-info,button.list-group-item-info{color:#31708f}a.list-group-item-info .list-group-item-heading,button.list-group-item-info .list-group-item-heading{color:inherit}a.list-group-item-info:hover,button.list-group-item-info:hover,a.list-group-item-info:focus,button.list-group-item-info:focus{color:#31708f;background-color:#c4e3f3}a.list-group-item-info.active,button.list-group-item-info.active,a.list-group-item-info.active:hover,button.list-group-item-info.active:hover,a.list-group-item-info.active:focus,button.list-group-item-info.active:focus{color:#fff;background-color:#31708f;border-color:#31708f}.list-group-item-warning{color:#8a6d3b;background-color:#fcf8e3}a.list-group-item-warning,button.list-group-item-warning{color:#8a6d3b}a.list-group-item-warning .list-group-item-heading,button.list-group-item-warning .list-group-item-heading{color:inherit}a.list-group-item-warning:hover,button.list-group-item-warning:hover,a.list-group-item-warning:focus,button.list-group-item-warning:focus{color:#8a6d3b;background-color:#faf2cc}a.list-group-item-warning.active,button.list-group-item-warning.active,a.list-group-item-warning.active:hover,button.list-group-item-warning.active:hover,a.list-group-item-warning.active:focus,button.list-group-item-warning.active:focus{color:#fff;background-color:#8a6d3b;border-color:#8a6d3b}.list-group-item-danger{color:#a94442;background-color:#f2dede}a.list-group-item-danger,button.list-group-item-danger{color:#a94442}a.list-group-item-danger .list-group-item-heading,button.list-group-item-danger .list-group-item-heading{color:inherit}a.list-group-item-danger:hover,button.list-group-item-danger:hover,a.list-group-item-danger:focus,button.list-group-item-danger:focus{color:#a94442;background-color:#ebcccc}a.list-group-item-danger.active,button.list-group-item-danger.active,a.list-group-item-danger.active:hover,button.list-group-item-danger.active:hover,a.list-group-item-danger.active:focus,button.list-group-item-danger.active:focus{color:#fff;background-color:#a94442;border-color:#a94442}.list-group-item-heading{margin-top:0;margin-bottom:5px}.list-group-item-text{margin-bottom:0;line-height:1.3}.panel{margin-bottom:20px;background-color:#fff;border:1px solid transparent;border-radius:4px;-webkit-box-shadow:0 1px 1px rgba(0,0,0,0.05);box-shadow:0 1px 1px rgba(0,0,0,0.05)}.panel-body{padding:15px}.panel-heading{padding:10px 15px;border-bottom:1px solid transparent;border-top-right-radius:3px;border-top-left-radius:3px}.panel-heading>.dropdown .dropdown-toggle{color:inherit}.panel-title{margin-top:0;margin-bottom:0;font-size:16px;color:inherit}.panel-title>a,.panel-title>small,.panel-title>.small,.panel-title>small>a,.panel-title>.small>a{color:inherit}.panel-footer{padding:10px 15px;background-color:#f5f5f5;border-top:1px solid #ddd;border-bottom-right-radius:3px;border-bottom-left-radius:3px}.panel>.list-group,.panel>.panel-collapse>.list-group{margin-bottom:0}.panel>.list-group .list-group-item,.panel>.panel-collapse>.list-group .list-group-item{border-width:1px 0;border-radius:0}.panel>.list-group:first-child .list-group-item:first-child,.panel>.panel-collapse>.list-group:first-child .list-group-item:first-child{border-top:0;border-top-right-radius:3px;border-top-left-radius:3px}.panel>.list-group:last-child .list-group-item:last-child,.panel>.panel-collapse>.list-group:last-child .list-group-item:last-child{border-bottom:0;border-bottom-right-radius:3px;border-bottom-left-radius:3px}.panel>.panel-heading+.panel-collapse>.list-group .list-group-item:first-child{border-top-right-radius:0;border-top-left-radius:0}.panel-heading+.list-group .list-group-item:first-child{border-top-width:0}.list-group+.panel-footer{border-top-width:0}.panel>.table,.panel>.table-responsive>.table,.panel>.panel-collapse>.table{margin-bottom:0}.panel>.table caption,.panel>.table-responsive>.table caption,.panel>.panel-collapse>.table caption{padding-left:15px;padding-right:15px}.panel>.table:first-child,.panel>.table-responsive:first-child>.table:first-child{border-top-right-radius:3px;border-top-left-radius:3px}.panel>.table:first-child>thead:first-child>tr:first-child,.panel>.table-responsive:first-child>.table:first-child>thead:first-child>tr:first-child,.panel>.table:first-child>tbody:first-child>tr:first-child,.panel>.table-responsive:first-child>.table:first-child>tbody:first-child>tr:first-child{border-top-left-radius:3px;border-top-right-radius:3px}.panel>.table:first-child>thead:first-child>tr:first-child td:first-child,.panel>.table-responsive:first-child>.table:first-child>thead:first-child>tr:first-child td:first-child,.panel>.table:first-child>tbody:first-child>tr:first-child td:first-child,.panel>.table-responsive:first-child>.table:first-child>tbody:first-child>tr:first-child td:first-child,.panel>.table:first-child>thead:first-child>tr:first-child th:first-child,.panel>.table-responsive:first-child>.table:first-child>thead:first-child>tr:first-child th:first-child,.panel>.table:first-child>tbody:first-child>tr:first-child th:first-child,.panel>.table-responsive:first-child>.table:first-child>tbody:first-child>tr:first-child th:first-child{border-top-left-radius:3px}.panel>.table:first-child>thead:first-child>tr:first-child td:last-child,.panel>.table-responsive:first-child>.table:first-child>thead:first-child>tr:first-child td:last-child,.panel>.table:first-child>tbody:first-child>tr:first-child td:last-child,.panel>.table-responsive:first-child>.table:first-child>tbody:first-child>tr:first-child td:last-child,.panel>.table:first-child>thead:first-child>tr:first-child th:last-child,.panel>.table-responsive:first-child>.table:first-child>thead:first-child>tr:first-child th:last-child,.panel>.table:first-child>tbody:first-child>tr:first-child th:last-child,.panel>.table-responsive:first-child>.table:first-child>tbody:first-child>tr:first-child th:last-child{border-top-right-radius:3px}.panel>.table:last-child,.panel>.table-responsive:last-child>.table:last-child{border-bottom-right-radius:3px;border-bottom-left-radius:3px}.panel>.table:last-child>tbody:last-child>tr:last-child,.panel>.table-responsive:last-child>.table:last-child>tbody:last-child>tr:last-child,.panel>.table:last-child>tfoot:last-child>tr:last-child,.panel>.table-responsive:last-child>.table:last-child>tfoot:last-child>tr:last-child{border-bottom-left-radius:3px;border-bottom-right-radius:3px}.panel>.table:last-child>tbody:last-child>tr:last-child td:first-child,.panel>.table-responsive:last-child>.table:last-child>tbody:last-child>tr:last-child td:first-child,.panel>.table:last-child>tfoot:last-child>tr:last-child td:first-child,.panel>.table-responsive:last-child>.table:last-child>tfoot:last-child>tr:last-child td:first-child,.panel>.table:last-child>tbody:last-child>tr:last-child th:first-child,.panel>.table-responsive:last-child>.table:last-child>tbody:last-child>tr:last-child th:first-child,.panel>.table:last-child>tfoot:last-child>tr:last-child th:first-child,.panel>.table-responsive:last-child>.table:last-child>tfoot:last-child>tr:last-child th:first-child{border-bottom-left-radius:3px}.panel>.table:last-child>tbody:last-child>tr:last-child td:last-child,.panel>.table-responsive:last-child>.table:last-child>tbody:last-child>tr:last-child td:last-child,.panel>.table:last-child>tfoot:last-child>tr:last-child td:last-child,.panel>.table-responsive:last-child>.table:last-child>tfoot:last-child>tr:last-child td:last-child,.panel>.table:last-child>tbody:last-child>tr:last-child th:last-child,.panel>.table-responsive:last-child>.table:last-child>tbody:last-child>tr:last-child th:last-child,.panel>.table:last-child>tfoot:last-child>tr:last-child th:last-child,.panel>.table-responsive:last-child>.table:last-child>tfoot:last-child>tr:last-child th:last-child{border-bottom-right-radius:3px}.panel>.panel-body+.table,.panel>.panel-body+.table-responsive,.panel>.table+.panel-body,.panel>.table-responsive+.panel-body{border-top:1px solid #ddd}.panel>.table>tbody:first-child>tr:first-child th,.panel>.table>tbody:first-child>tr:first-child td{border-top:0}.panel>.table-bordered,.panel>.table-responsive>.table-bordered{border:0}.panel>.table-bordered>thead>tr>th:first-child,.panel>.table-responsive>.table-bordered>thead>tr>th:first-child,.panel>.table-bordered>tbody>tr>th:first-child,.panel>.table-responsive>.table-bordered>tbody>tr>th:first-child,.panel>.table-bordered>tfoot>tr>th:first-child,.panel>.table-responsive>.table-bordered>tfoot>tr>th:first-child,.panel>.table-bordered>thead>tr>td:first-child,.panel>.table-responsive>.table-bordered>thead>tr>td:first-child,.panel>.table-bordered>tbody>tr>td:first-child,.panel>.table-responsive>.table-bordered>tbody>tr>td:first-child,.panel>.table-bordered>tfoot>tr>td:first-child,.panel>.table-responsive>.table-bordered>tfoot>tr>td:first-child{border-left:0}.panel>.table-bordered>thead>tr>th:last-child,.panel>.table-responsive>.table-bordered>thead>tr>th:last-child,.panel>.table-bordered>tbody>tr>th:last-child,.panel>.table-responsive>.table-bordered>tbody>tr>th:last-child,.panel>.table-bordered>tfoot>tr>th:last-child,.panel>.table-responsive>.table-bordered>tfoot>tr>th:last-child,.panel>.table-bordered>thead>tr>td:last-child,.panel>.table-responsive>.table-bordered>thead>tr>td:last-child,.panel>.table-bordered>tbody>tr>td:last-child,.panel>.table-responsive>.table-bordered>tbody>tr>td:last-child,.panel>.table-bordered>tfoot>tr>td:last-child,.panel>.table-responsive>.table-bordered>tfoot>tr>td:last-child{border-right:0}.panel>.table-bordered>thead>tr:first-child>td,.panel>.table-responsive>.table-bordered>thead>tr:first-child>td,.panel>.table-bordered>tbody>tr:first-child>td,.panel>.table-responsive>.table-bordered>tbody>tr:first-child>td,.panel>.table-bordered>thead>tr:first-child>th,.panel>.table-responsive>.table-bordered>thead>tr:first-child>th,.panel>.table-bordered>tbody>tr:first-child>th,.panel>.table-responsive>.table-bordered>tbody>tr:first-child>th{border-bottom:0}.panel>.table-bordered>tbody>tr:last-child>td,.panel>.table-responsive>.table-bordered>tbody>tr:last-child>td,.panel>.table-bordered>tfoot>tr:last-child>td,.panel>.table-responsive>.table-bordered>tfoot>tr:last-child>td,.panel>.table-bordered>tbody>tr:last-child>th,.panel>.table-responsive>.table-bordered>tbody>tr:last-child>th,.panel>.table-bordered>tfoot>tr:last-child>th,.panel>.table-responsive>.table-bordered>tfoot>tr:last-child>th{border-bottom:0}.panel>.table-responsive{border:0;margin-bottom:0}.panel-group{margin-bottom:20px}.panel-group .panel{margin-bottom:0;border-radius:4px}.panel-group .panel+.panel{margin-top:5px}.panel-group .panel-heading{border-bottom:0}.panel-group .panel-heading+.panel-collapse>.panel-body,.panel-group .panel-heading+.panel-collapse>.list-group{border-top:1px solid #ddd}.panel-group .panel-footer{border-top:0}.panel-group .panel-footer+.panel-collapse .panel-body{border-bottom:1px solid #ddd}.panel-default{border-color:#ddd}.panel-default>.panel-heading{color:#333;background-color:#f5f5f5;border-color:#ddd}.panel-default>.panel-heading+.panel-collapse>.panel-body{border-top-color:#ddd}.panel-default>.panel-heading .badge{color:#f5f5f5;background-color:#333}.panel-default>.panel-footer+.panel-collapse>.panel-body{border-bottom-color:#ddd}.panel-primary{border-color:#337ab7}.panel-primary>.panel-heading{color:#fff;background-color:#337ab7;border-color:#337ab7}.panel-primary>.panel-heading+.panel-collapse>.panel-body{border-top-color:#337ab7}.panel-primary>.panel-heading .badge{color:#337ab7;background-color:#fff}.panel-primary>.panel-footer+.panel-collapse>.panel-body{border-bottom-color:#337ab7}.panel-success{border-color:#d6e9c6}.panel-success>.panel-heading{color:#3c763d;background-color:#dff0d8;border-color:#d6e9c6}.panel-success>.panel-heading+.panel-collapse>.panel-body{border-top-color:#d6e9c6}.panel-success>.panel-heading .badge{color:#dff0d8;background-color:#3c763d}.panel-success>.panel-footer+.panel-collapse>.panel-body{border-bottom-color:#d6e9c6}.panel-info{border-color:#bce8f1}.panel-info>.panel-heading{color:#31708f;background-color:#d9edf7;border-color:#bce8f1}.panel-info>.panel-heading+.panel-collapse>.panel-body{border-top-color:#bce8f1}.panel-info>.panel-heading .badge{color:#d9edf7;background-color:#31708f}.panel-info>.panel-footer+.panel-collapse>.panel-body{border-bottom-color:#bce8f1}.panel-warning{border-color:#faebcc}.panel-warning>.panel-heading{color:#8a6d3b;background-color:#fcf8e3;border-color:#faebcc}.panel-warning>.panel-heading+.panel-collapse>.panel-body{border-top-color:#faebcc}.panel-warning>.panel-heading .badge{color:#fcf8e3;background-color:#8a6d3b}.panel-warning>.panel-footer+.panel-collapse>.panel-body{border-bottom-color:#faebcc}.panel-danger{border-color:#ebccd1}.panel-danger>.panel-heading{color:#a94442;background-color:#f2dede;border-color:#ebccd1}.panel-danger>.panel-heading+.panel-collapse>.panel-body{border-top-color:#ebccd1}.panel-danger>.panel-heading .badge{color:#f2dede;background-color:#a94442}.panel-danger>.panel-footer+.panel-collapse>.panel-body{border-bottom-color:#ebccd1}.embed-responsive{position:relative;display:block;height:0;padding:0;overflow:hidden}.embed-responsive .embed-responsive-item,.embed-responsive iframe,.embed-responsive embed,.embed-responsive object,.embed-responsive video{position:absolute;top:0;left:0;bottom:0;height:100%;width:100%;border:0}.embed-responsive-16by9{padding-bottom:56.25%}.embed-responsive-4by3{padding-bottom:75%}.well{min-height:20px;padding:19px;margin-bottom:20px;background-color:#f5f5f5;border:1px solid #e3e3e3;border-radius:4px;-webkit-box-shadow:inset 0 1px 1px rgba(0,0,0,0.05);box-shadow:inset 0 1px 1px rgba(0,0,0,0.05)}.well blockquote{border-color:#ddd;border-color:rgba(0,0,0,0.15)}.well-lg{padding:24px;border-radius:6px}.well-sm{padding:9px;border-radius:3px}.close{float:right;font-size:21px;font-weight:bold;line-height:1;color:#000;text-shadow:0 1px 0 #fff;opacity:.2;filter:alpha(opacity=20)}.close:hover,.close:focus{color:#000;text-decoration:none;cursor:pointer;opacity:.5;filter:alpha(opacity=50)}button.close{padding:0;cursor:pointer;background:transparent;border:0;-webkit-appearance:none}.modal-open{overflow:hidden}.modal{display:none;overflow:hidden;position:fixed;top:0;right:0;bottom:0;left:0;z-index:1050;-webkit-overflow-scrolling:touch;outline:0}.modal.fade .modal-dialog{-webkit-transform:translate(0, -25%);-ms-transform:translate(0, -25%);-o-transform:translate(0, -25%);transform:translate(0, -25%);-webkit-transition:-webkit-transform 0.3s ease-out;-o-transition:-o-transform 0.3s ease-out;transition:transform 0.3s ease-out}.modal.in .modal-dialog{-webkit-transform:translate(0, 0);-ms-transform:translate(0, 0);-o-transform:translate(0, 0);transform:translate(0, 0)}.modal-open .modal{overflow-x:hidden;overflow-y:auto}.modal-dialog{position:relative;width:auto;margin:10px}.modal-content{position:relative;background-color:#fff;border:1px solid #999;border:1px solid rgba(0,0,0,0.2);border-radius:6px;-webkit-box-shadow:0 3px 9px rgba(0,0,0,0.5);box-shadow:0 3px 9px rgba(0,0,0,0.5);-webkit-background-clip:padding-box;background-clip:padding-box;outline:0}.modal-backdrop{position:fixed;top:0;right:0;bottom:0;left:0;z-index:1040;background-color:#000}.modal-backdrop.fade{opacity:0;filter:alpha(opacity=0)}.modal-backdrop.in{opacity:.5;filter:alpha(opacity=50)}.modal-header{padding:15px;border-bottom:1px solid #e5e5e5}.modal-header .close{margin-top:-2px}.modal-title{margin:0;line-height:1.42857143}.modal-body{position:relative;padding:15px}.modal-footer{padding:15px;text-align:right;border-top:1px solid #e5e5e5}.modal-footer .btn+.btn{margin-left:5px;margin-bottom:0}.modal-footer .btn-group .btn+.btn{margin-left:-1px}.modal-footer .btn-block+.btn-block{margin-left:0}.modal-scrollbar-measure{position:absolute;top:-9999px;width:50px;height:50px;overflow:scroll}@media (min-width:768px){.modal-dialog{width:600px;margin:30px auto}.modal-content{-webkit-box-shadow:0 5px 15px rgba(0,0,0,0.5);box-shadow:0 5px 15px rgba(0,0,0,0.5)}.modal-sm{width:300px}}@media (min-width:992px){.modal-lg{width:900px}}.tooltip{position:absolute;z-index:1070;display:block;font-family:"Helvetica Neue",Helvetica,Arial,sans-serif;font-style:normal;font-weight:normal;letter-spacing:normal;line-break:auto;line-height:1.42857143;text-align:left;text-align:start;text-decoration:none;text-shadow:none;text-transform:none;white-space:normal;word-break:normal;word-spacing:normal;word-wrap:normal;font-size:12px;opacity:0;filter:alpha(opacity=0)}.tooltip.in{opacity:.9;filter:alpha(opacity=90)}.tooltip.top{margin-top:-3px;padding:5px 0}.tooltip.right{margin-left:3px;padding:0 5px}.tooltip.bottom{margin-top:3px;padding:5px 0}.tooltip.left{margin-left:-3px;padding:0 5px}.tooltip-inner{max-width:200px;padding:3px 8px;color:#fff;text-align:center;background-color:#000;border-radius:4px}.tooltip-arrow{position:absolute;width:0;height:0;border-color:transparent;border-style:solid}.tooltip.top .tooltip-arrow{bottom:0;left:50%;margin-left:-5px;border-width:5px 5px 0;border-top-color:#000}.tooltip.top-left .tooltip-arrow{bottom:0;right:5px;margin-bottom:-5px;border-width:5px 5px 0;border-top-color:#000}.tooltip.top-right .tooltip-arrow{bottom:0;left:5px;margin-bottom:-5px;border-width:5px 5px 0;border-top-color:#000}.tooltip.right .tooltip-arrow{top:50%;left:0;margin-top:-5px;border-width:5px 5px 5px 0;border-right-color:#000}.tooltip.left .tooltip-arrow{top:50%;right:0;margin-top:-5px;border-width:5px 0 5px 5px;border-left-color:#000}.tooltip.bottom .tooltip-arrow{top:0;left:50%;margin-left:-5px;border-width:0 5px 5px;border-bottom-color:#000}.tooltip.bottom-left .tooltip-arrow{top:0;right:5px;margin-top:-5px;border-width:0 5px 5px;border-bottom-color:#000}.tooltip.bottom-right .tooltip-arrow{top:0;left:5px;margin-top:-5px;border-width:0 5px 5px;border-bottom-color:#000}.popover{position:absolute;top:0;left:0;z-index:1060;display:none;max-width:276px;padding:1px;font-family:"Helvetica Neue",Helvetica,Arial,sans-serif;font-style:normal;font-weight:normal;letter-spacing:normal;line-break:auto;line-height:1.42857143;text-align:left;text-align:start;text-decoration:none;text-shadow:none;text-transform:none;white-space:normal;word-break:normal;word-spacing:normal;word-wrap:normal;font-size:14px;background-color:#fff;-webkit-background-clip:padding-box;background-clip:padding-box;border:1px solid #ccc;border:1px solid rgba(0,0,0,0.2);border-radius:6px;-webkit-box-shadow:0 5px 10px rgba(0,0,0,0.2);box-shadow:0 5px 10px rgba(0,0,0,0.2)}.popover.top{margin-top:-10px}.popover.right{margin-left:10px}.popover.bottom{margin-top:10px}.popover.left{margin-left:-10px}.popover-title{margin:0;padding:8px 14px;font-size:14px;background-color:#f7f7f7;border-bottom:1px solid #ebebeb;border-radius:5px 5px 0 0}.popover-content{padding:9px 14px}.popover>.arrow,.popover>.arrow:after{position:absolute;display:block;width:0;height:0;border-color:transparent;border-style:solid}.popover>.arrow{border-width:11px}.popover>.arrow:after{border-width:10px;content:""}.popover.top>.arrow{left:50%;margin-left:-11px;border-bottom-width:0;border-top-color:#999;border-top-color:rgba(0,0,0,0.25);bottom:-11px}.popover.top>.arrow:after{content:" ";bottom:1px;margin-left:-10px;border-bottom-width:0;border-top-color:#fff}.popover.right>.arrow{top:50%;left:-11px;margin-top:-11px;border-left-width:0;border-right-color:#999;border-right-color:rgba(0,0,0,0.25)}.popover.right>.arrow:after{content:" ";left:1px;bottom:-10px;border-left-width:0;border-right-color:#fff}.popover.bottom>.arrow{left:50%;margin-left:-11px;border-top-width:0;border-bottom-color:#999;border-bottom-color:rgba(0,0,0,0.25);top:-11px}.popover.bottom>.arrow:after{content:" ";top:1px;margin-left:-10px;border-top-width:0;border-bottom-color:#fff}.popover.left>.arrow{top:50%;right:-11px;margin-top:-11px;border-right-width:0;border-left-color:#999;border-left-color:rgba(0,0,0,0.25)}.popover.left>.arrow:after{content:" ";right:1px;border-right-width:0;border-left-color:#fff;bottom:-10px}.carousel{position:relative}.carousel-inner{position:relative;overflow:hidden;width:100%}.carousel-inner>.item{display:none;position:relative;-webkit-transition:.6s ease-in-out left;-o-transition:.6s ease-in-out left;transition:.6s ease-in-out left}.carousel-inner>.item>img,.carousel-inner>.item>a>img{line-height:1}@media all and (transform-3d),(-webkit-transform-3d){.carousel-inner>.item{-webkit-transition:-webkit-transform 0.6s ease-in-out;-o-transition:-o-transform 0.6s ease-in-out;transition:transform 0.6s ease-in-out;-webkit-backface-visibility:hidden;backface-visibility:hidden;-webkit-perspective:1000px;perspective:1000px}.carousel-inner>.item.next,.carousel-inner>.item.active.right{-webkit-transform:translate3d(100%, 0, 0);transform:translate3d(100%, 0, 0);left:0}.carousel-inner>.item.prev,.carousel-inner>.item.active.left{-webkit-transform:translate3d(-100%, 0, 0);transform:translate3d(-100%, 0, 0);left:0}.carousel-inner>.item.next.left,.carousel-inner>.item.prev.right,.carousel-inner>.item.active{-webkit-transform:translate3d(0, 0, 0);transform:translate3d(0, 0, 0);left:0}}.carousel-inner>.active,.carousel-inner>.next,.carousel-inner>.prev{display:block}.carousel-inner>.active{left:0}.carousel-inner>.next,.carousel-inner>.prev{position:absolute;top:0;width:100%}.carousel-inner>.next{left:100%}.carousel-inner>.prev{left:-100%}.carousel-inner>.next.left,.carousel-inner>.prev.right{left:0}.carousel-inner>.active.left{left:-100%}.carousel-inner>.active.right{left:100%}.carousel-control{position:absolute;top:0;left:0;bottom:0;width:15%;opacity:.5;filter:alpha(opacity=50);font-size:20px;color:#fff;text-align:center;text-shadow:0 1px 2px rgba(0,0,0,0.6);background-color:rgba(0,0,0,0)}.carousel-control.left{background-image:-webkit-linear-gradient(left, rgba(0,0,0,0.5) 0, rgba(0,0,0,0.0001) 100%);background-image:-o-linear-gradient(left, rgba(0,0,0,0.5) 0, rgba(0,0,0,0.0001) 100%);background-image:-webkit-gradient(linear, left top, right top, color-stop(0, rgba(0,0,0,0.5)), to(rgba(0,0,0,0.0001)));background-image:linear-gradient(to right, rgba(0,0,0,0.5) 0, rgba(0,0,0,0.0001) 100%);background-repeat:repeat-x;filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#80000000', endColorstr='#00000000', GradientType=1)}.carousel-control.right{left:auto;right:0;background-image:-webkit-linear-gradient(left, rgba(0,0,0,0.0001) 0, rgba(0,0,0,0.5) 100%);background-image:-o-linear-gradient(left, rgba(0,0,0,0.0001) 0, rgba(0,0,0,0.5) 100%);background-image:-webkit-gradient(linear, left top, right top, color-stop(0, rgba(0,0,0,0.0001)), to(rgba(0,0,0,0.5)));background-image:linear-gradient(to right, rgba(0,0,0,0.0001) 0, rgba(0,0,0,0.5) 100%);background-repeat:repeat-x;filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#00000000', endColorstr='#80000000', GradientType=1)}.carousel-control:hover,.carousel-control:focus{outline:0;color:#fff;text-decoration:none;opacity:.9;filter:alpha(opacity=90)}.carousel-control .icon-prev,.carousel-control .icon-next,.carousel-control .glyphicon-chevron-left,.carousel-control .glyphicon-chevron-right{position:absolute;top:50%;margin-top:-10px;z-index:5;display:inline-block}.carousel-control .icon-prev,.carousel-control .glyphicon-chevron-left{left:50%;margin-left:-10px}.carousel-control .icon-next,.carousel-control .glyphicon-chevron-right{right:50%;margin-right:-10px}.carousel-control .icon-prev,.carousel-control .icon-next{width:20px;height:20px;line-height:1;font-family:serif}.carousel-control .icon-prev:before{content:'\2039'}.carousel-control .icon-next:before{content:'\203a'}.carousel-indicators{position:absolute;bottom:10px;left:50%;z-index:15;width:60%;margin-left:-30%;padding-left:0;list-style:none;text-align:center}.carousel-indicators li{display:inline-block;width:10px;height:10px;margin:1px;text-indent:-999px;border:1px solid #fff;border-radius:10px;cursor:pointer;background-color:#000 \9;background-color:rgba(0,0,0,0)}.carousel-indicators .active{margin:0;width:12px;height:12px;background-color:#fff}.carousel-caption{position:absolute;left:15%;right:15%;bottom:20px;z-index:10;padding-top:20px;padding-bottom:20px;color:#fff;text-align:center;text-shadow:0 1px 2px rgba(0,0,0,0.6)}.carousel-caption .btn{text-shadow:none}@media screen and (min-width:768px){.carousel-control .glyphicon-chevron-left,.carousel-control .glyphicon-chevron-right,.carousel-control .icon-prev,.carousel-control .icon-next{width:30px;height:30px;margin-top:-10px;font-size:30px}.carousel-control .glyphicon-chevron-left,.carousel-control .icon-prev{margin-left:-10px}.carousel-control .glyphicon-chevron-right,.carousel-control .icon-next{margin-right:-10px}.carousel-caption{left:20%;right:20%;padding-bottom:30px}.carousel-indicators{bottom:20px}}.clearfix:before,.clearfix:after,.dl-horizontal dd:before,.dl-horizontal dd:after,.container:before,.container:after,.container-fluid:before,.container-fluid:after,.row:before,.row:after,.form-horizontal .form-group:before,.form-horizontal .form-group:after,.btn-toolbar:before,.btn-toolbar:after,.btn-group-vertical>.btn-group:before,.btn-group-vertical>.btn-group:after,.nav:before,.nav:after,.navbar:before,.navbar:after,.navbar-header:before,.navbar-header:after,.navbar-collapse:before,.navbar-collapse:after,.pager:before,.pager:after,.panel-body:before,.panel-body:after,.modal-header:before,.modal-header:after,.modal-footer:before,.modal-footer:after{content:" ";display:table}.clearfix:after,.dl-horizontal dd:after,.container:after,.container-fluid:after,.row:after,.form-horizontal .form-group:after,.btn-toolbar:after,.btn-group-vertical>.btn-group:after,.nav:after,.navbar:after,.navbar-header:after,.navbar-collapse:after,.pager:after,.panel-body:after,.modal-header:after,.modal-footer:after{clear:both}.center-block{display:block;margin-left:auto;margin-right:auto}.pull-right{float:right !important}.pull-left{float:left !important}.hide{display:none !important}.show{display:block !important}.invisible{visibility:hidden}.text-hide{font:0/0 a;color:transparent;text-shadow:none;background-color:transparent;border:0}.hidden{display:none !important}.affix{position:fixed}@-ms-viewport{width:device-width}.visible-xs,.visible-sm,.visible-md,.visible-lg{display:none !important}.visible-xs-block,.visible-xs-inline,.visible-xs-inline-block,.visible-sm-block,.visible-sm-inline,.visible-sm-inline-block,.visible-md-block,.visible-md-inline,.visible-md-inline-block,.visible-lg-block,.visible-lg-inline,.visible-lg-inline-block{display:none !important}@media (max-width:767px){.visible-xs{display:block !important}table.visible-xs{display:table !important}tr.visible-xs{display:table-row !important}th.visible-xs,td.visible-xs{display:table-cell !important}}@media (max-width:767px){.visible-xs-block{display:block !important}}@media (max-width:767px){.visible-xs-inline{display:inline !important}}@media (max-width:767px){.visible-xs-inline-block{display:inline-block !important}}@media (min-width:768px) and (max-width:991px){.visible-sm{display:block !important}table.visible-sm{display:table !important}tr.visible-sm{display:table-row !important}th.visible-sm,td.visible-sm{display:table-cell !important}}@media (min-width:768px) and (max-width:991px){.visible-sm-block{display:block !important}}@media (min-width:768px) and (max-width:991px){.visible-sm-inline{display:inline !important}}@media (min-width:768px) and (max-width:991px){.visible-sm-inline-block{display:inline-block !important}}@media (min-width:992px) and (max-width:1199px){.visible-md{display:block !important}table.visible-md{display:table !important}tr.visible-md{display:table-row !important}th.visible-md,td.visible-md{display:table-cell !important}}@media (min-width:992px) and (max-width:1199px){.visible-md-block{display:block !important}}@media (min-width:992px) and (max-width:1199px){.visible-md-inline{display:inline !important}}@media (min-width:992px) and (max-width:1199px){.visible-md-inline-block{display:inline-block !important}}@media (min-width:1200px){.visible-lg{display:block !important}table.visible-lg{display:table !important}tr.visible-lg{display:table-row !important}th.visible-lg,td.visible-lg{display:table-cell !important}}@media (min-width:1200px){.visible-lg-block{display:block !important}}@media (min-width:1200px){.visible-lg-inline{display:inline !important}}@media (min-width:1200px){.visible-lg-inline-block{display:inline-block !important}}@media (max-width:767px){.hidden-xs{display:none !important}}@media (min-width:768px) and (max-width:991px){.hidden-sm{display:none !important}}@media (min-width:992px) and (max-width:1199px){.hidden-md{display:none !important}}@media (min-width:1200px){.hidden-lg{display:none !important}}.visible-print{display:none !important}@media print{.visible-print{display:block !important}table.visible-print{display:table !important}tr.visible-print{display:table-row !important}th.visible-print,td.visible-print{display:table-cell !important}}.visible-print-block{display:none !important}@media print{.visible-print-block{display:block !important}}.visible-print-inline{display:none !important}@media print{.visible-print-inline{display:inline !important}}.visible-print-inline-block{display:none !important}@media print{.visible-print-inline-block{display:inline-block !important}}@media print{.hidden-print{display:none !important}}
.tim-row{
    margin-bottom: 20px;
}

.tim-white-buttons {
    background-color: #777777;
}
.title{
    margin-top: 30px;
    margin-bottom: 25px;
    min-height: 32px;
}
.title.text-center{
    margin-bottom: 50px;
}
.tim-typo{
    padding-left: 25%;
    margin-bottom: 40px;
    position: relative;
}
.tim-typo .tim-note{
    bottom: 10px;
    color: #c0c1c2;
    display: block;
    font-weight: 400;
    font-size: 13px;
    line-height: 13px;
    left: 0;
    margin-left: 20px;
    position: absolute;
    width: 260px;
}
.tim-row{
    padding-top: 50px;
}
.tim-row h3{
    margin-top: 0;
}
.switch{
    margin-right: 20px;
}
#navbar-full .navbar{
    border-radius: 0 !important;
    margin-bottom: 15px;
    z-index: 2;
}
.space{
    height: 130px;
    display: block;
}
.space-110{
    height: 110px;
    display: block;
}
.space-50{
    height: 50px;
    display: block;
}
.space-70{
    height: 70px;
    display: block;
}
.navigation-example .img-src{
    background-attachment: scroll;
}

.navigation-example{
    background-image: url('../img/bg.jpg');
    background-position: center center;
    background-size: cover;
    margin-top:0;
    min-height: 740px;
}
#notifications{
    background-color: #FFFFFF;
    display: block;
    width: 100%;
    position: relative;
}
.tim-note{
    text-transform: capitalize;
}

#buttons .btn{
    margin: 0 0px 15px;
}
.space-100{
    height: 100px;
    display: block;
    width: 100%;
}

.be-social{
    padding-bottom: 20px;
/*     border-bottom: 1px solid #aaa; */
    margin: 0 auto 40px;
}
.txt-white{
    color: #FFFFFF;
}
.txt-gray{
    color: #ddd !important;
}


.parallax{
  width:100%;
  height:570px;

  display: block;
  background-attachment: fixed;
    background-repeat:no-repeat;
    background-size:cover;
    background-position: center center;

}

.logo-container .logo{
    overflow: hidden;
    border-radius: 50%;
    border: 1px solid #333333;
    width: 50px;
    float: left;
}

.logo-container .brand{
    font-size: 16px;
    color: #FFFFFF;
    line-height: 18px;
    float: left;
    margin-left: 10px;
    margin-top: 7px;
    width: 70px;
    height: 40px;
    text-align: left;
}
.logo-container .brand-material{
    font-size: 18px;
    margin-top: 15px;
    height: 25px;
    width: auto;
}
.logo-container .logo img{
    width: 100%;
}
.navbar-small .logo-container .brand{
    color: #333333;
}

.fixed-section{
    top: 90px;
    max-height: 80vh;
    overflow: scroll;
}
.fixed-section ul li{
    list-style: none;
}
.fixed-section li a{
    font-size: 14px;
    padding: 2px;
    display: block;
    color: #666666;
}
.fixed-section li a.active{
    color: #00bbff;
}
.fixed-section.float{
    position: fixed;
    top: 100px;
    width: 200px;
    margin-top: 0;
}


.parallax .parallax-image{
    width: 100%;
    overflow: hidden;
    position: absolute;
}
.parallax .parallax-image img{
    width: 100%;
}

@media (max-width: 768px){
    .parallax .parallax-image{
         width: 100%;
         height: 640px;
         overflow: hidden;
     }
    .parallax .parallax-image img{
       height: 100%;
       width: auto;
   }
}

.separator{
    content: "Separator";
    color: #FFFFFF;
    display: block;
    width: 100%;
    padding: 20px;
}
.separator-line{
    background-color: #EEE;
    height: 1px;
    width: 100%;
    display: block;
}
.separator.separator-gray{
    background-color: #EEEEEE;
}
.social-buttons-demo .btn{
    margin-right: 5px;
    margin-bottom: 7px;
}

.img-container{
    width: 100%;
    overflow: hidden;
}
.img-container img{
    width: 100%;
}

.lightbox img{
    width: 100%;
}
.lightbox .modal-content{
    overflow: hidden;
}
.lightbox .modal-body{
    padding: 0;
}
@media screen and (min-width: 991px){
    .lightbox .modal-dialog{
        width: 960px;
    }
}
@media (max-width: 991px){
    .fixed-section.affix{
        position: relative;
        margin-bottom: 100px;
    }
}
@media (max-width: 768px){
    .btn, .btn-morphing{
        margin-bottom: 10px;
    }
    .parallax .motto{
        top: 170px;
        margin-top: 0;
        font-size: 60px;
        width: 270px;
    }
}

/*       Loading dots  */

/*      transitions */
.presentation .front, .presentation .front:after, .presentation .front .btn, .logo-container .logo, .logo-container .brand{
     -webkit-transition: all .2s;
    -moz-transition: all .2s;
    -o-transition: all .2s;
    transition: all .2s;
}


#images h4{
    margin-bottom: 30px;
}
#javascriptComponents{
    padding-bottom: 0;
}
#javascriptComponents .btn-raised{
    margin: 10px 5px;
}


/*      layer animation          */

.layers-container{
    display: block;
    margin-top: 50px;
    position: relative;
}
.layers-container img {
  position: absolute;
  width: 100%;
  height: auto;
  top: 0;
  left: 0;
  text-align: center;
}

.section-black {
  background-color: #333;
}

.animate {
  transition: 1.5s ease-in-out;
  -moz-transition: 1.5s ease-in-out;
  -webkit-transition: 1.5s ease-in-out;
}

.navbar-default.navbar-small .logo-container .brand{
    color: #333333;
}
.navbar-transparent.navbar-small .logo-container .brand{
    color: #FFFFFF;
}
.navbar-default.navbar-small .logo-container .brand{
    color: #333333;
}

.sharing-area{
    margin-top: 80px;
}
.sharing-area .btn{
    margin: 15px 4px 0;
    color: #FFFFFF;
}
.sharing-area .btn i{
    font-size: 18px;
    position: relative;
    top: 2px;
    margin-right: 5px;
}
.sharing-area .btn-twitter{
    background-color: #55acee;
    box-shadow: 0 2px 2px 0 rgba(85, 172, 238, 0.14), 0 3px 1px -2px rgba(85, 172, 238, 0.2), 0 1px 5px 0 rgba(85, 172, 238, 0.12);
}
.sharing-area .btn-twitter:hover{
    box-shadow: 0 14px 26px -12px rgba(85, 172, 238, 0.42), 0 4px 23px 0px rgba(0, 0, 0, 0.12), 0 8px 10px -5px rgba(85, 172, 238, 0.2);
}

.sharing-area .btn-facebook{
    background-color: #3b5998;
    box-shadow: 0 2px 2px 0 rgba(59, 89, 152, 0.14), 0 3px 1px -2px rgba(59, 89, 152, 0.2), 0 1px 5px 0 rgba(59, 89, 152, 0.12);
}
.sharing-area .btn-facebook:hover{
    box-shadow: 0 14px 26px -12px rgba(59, 89, 152, 0.42), 0 4px 23px 0px rgba(0, 0, 0, 0.12), 0 8px 10px -5px rgba(59, 89, 152, 0.2);
}

.sharing-area .btn-google-plus{
    background-color: #dd4b39;
    box-shadow: 0 2px 2px 0 rgba(221, 75, 57, 0.14), 0 3px 1px -2px rgba(221, 75, 57, 0.2), 0 1px 5px 0 rgba(221, 75, 57, 0.12);
}
.sharing-area .btn-google-plus:hover{
    background-color: #dd4b39;
    box-shadow: 0 14px 26px -12px rgba(221, 75, 57, 0.42), 0 4px 23px 0px rgba(0, 0, 0, 0.12), 0 8px 10px -5px rgba(221, 75, 57, 0.2);
}

.sharing-area .btn-github{
    background-color: #333333;
    box-shadow: 0 2px 2px 0 rgba(51, 51, 51, 0.14), 0 3px 1px -2px rgba(51, 51, 51, 0.2), 0 1px 5px 0 rgba(51, 51, 51, 0.12);
}
.sharing-area .btn-github:hover{
    background-color: #333333;
    box-shadow: 0 14px 26px -12px rgba(51, 51, 51, 0.42), 0 4px 23px 0px rgba(0, 0, 0, 0.12), 0 8px 10px -5px rgba(51, 51, 51, 0.2);
}

.section-thin,
.section-notifications{
    padding: 0;
}
.section-navbars{
    padding-top: 0;
}
#navbar .navbar{
    border-radius: 0;
}
.section-tabs{
    background: #EEEEEE;
}
.section-pagination{
    padding-bottom: 0;
}
.section-download h4{
    margin-bottom: 25px;
}
.section-examples a{
    text-decoration: none;
}
.section-examples h5{
    margin-top: 30px;
}
.components-page .wrapper > .header,
.tutorial-page .wrapper > .header{
    height: 400px;
    padding-top: 100px;
    background-size: cover;
    background-position: center center;
}
.components-page .title,
.tutorial-page .title{
    color: #FFFFFF;
}
body {
  background-color: #CCCCCC;
}
body.inverse {
  background: #333333;
}
body.inverse, body.inverse .form-control {
  color: #ffffff;
}
body.inverse .modal,
body.inverse .modal .form-control,
body.inverse .panel-default,
body.inverse .panel-default .form-control,
body.inverse .card,
body.inverse .card .form-control {
  background-color: initial;
  color: initial;
}

.life-of-material-kit {
  background: #FFFFFF;
}

body, h1, h2, h3, h4, h5, h6, .h1, .h2, .h3, .h4 {
  font-family: "Roboto", "Helvetica", "Arial", sans-serif;
  font-weight: 300;
  line-height: 1.5em;
}

a, a:hover, a:focus {
  color: #9c27b0;
}
a .material-icons, a:hover .material-icons, a:focus .material-icons {
  vertical-align: middle;
}

/*           Animations              */
.animation-transition-general, .carousel .carousel-indicators li {
  -webkit-transition: all 300ms linear;
  -moz-transition: all 300ms linear;
  -o-transition: all 300ms linear;
  -ms-transition: all 300ms linear;
  transition: all 300ms linear;
}

.animation-transition-slow {
  -webkit-transition: all 370ms linear;
  -moz-transition: all 370ms linear;
  -o-transition: all 370ms linear;
  -ms-transition: all 370ms linear;
  transition: all 370ms linear;
}

.animation-transition-fast, .navbar {
  -webkit-transition: all 150ms ease 0s;
  -moz-transition: all 150ms ease 0s;
  -o-transition: all 150ms ease 0s;
  -ms-transition: all 150ms ease 0s;
  transition: all 150ms ease 0s;
}

.form-horizontal .radio,
.form-horizontal .checkbox,
.form-horizontal .radio-inline,
.form-horizontal .checkbox-inline {
  padding-top: 0;
}
.form-horizontal .radio {
  margin-bottom: 10px;
}
.form-horizontal label {
  text-align: right;
}
.form-horizontal label.control-label {
  margin: 0;
}

.btn,
.navbar .navbar-nav > li > a.btn {
  border: none;
  border-radius: 3px;
  position: relative;
  padding: 12px 30px;
  margin: 10px 1px;
  font-size: 12px;
  font-weight: 400;
  text-transform: uppercase;
  letter-spacing: 0;
  will-change: box-shadow, transform;
  transition: box-shadow 0.2s cubic-bezier(0.4, 0, 1, 1), background-color 0.2s cubic-bezier(0.4, 0, 0.2, 1);
}
.btn::-moz-focus-inner,
.navbar .navbar-nav > li > a.btn::-moz-focus-inner {
  border: 0;
}
.btn, .btn.btn-default,
.navbar .navbar-nav > li > a.btn,
.navbar .navbar-nav > li > a.btn.btn-default {
  box-shadow: 0 2px 2px 0 rgba(153, 153, 153, 0.14), 0 3px 1px -2px rgba(153, 153, 153, 0.2), 0 1px 5px 0 rgba(153, 153, 153, 0.12);
}
.btn, .btn:hover, .btn:focus, .btn:active, .btn.active, .btn:active:focus, .btn:active:hover, .btn.active:focus, .btn.active:hover, .open > .btn.dropdown-toggle, .open > .btn.dropdown-toggle:focus, .open > .btn.dropdown-toggle:hover, .btn.btn-default, .btn.btn-default:hover, .btn.btn-default:focus, .btn.btn-default:active, .btn.btn-default.active, .btn.btn-default:active:focus, .btn.btn-default:active:hover, .btn.btn-default.active:focus, .btn.btn-default.active:hover, .open > .btn.btn-default.dropdown-toggle, .open > .btn.btn-default.dropdown-toggle:focus, .open > .btn.btn-default.dropdown-toggle:hover,
.navbar .navbar-nav > li > a.btn,
.navbar .navbar-nav > li > a.btn:hover,
.navbar .navbar-nav > li > a.btn:focus,
.navbar .navbar-nav > li > a.btn:active,
.navbar .navbar-nav > li > a.btn.active,
.navbar .navbar-nav > li > a.btn:active:focus,
.navbar .navbar-nav > li > a.btn:active:hover,
.navbar .navbar-nav > li > a.btn.active:focus,
.navbar .navbar-nav > li > a.btn.active:hover, .open >
.navbar .navbar-nav > li > a.btn.dropdown-toggle, .open >
.navbar .navbar-nav > li > a.btn.dropdown-toggle:focus, .open >
.navbar .navbar-nav > li > a.btn.dropdown-toggle:hover,
.navbar .navbar-nav > li > a.btn.btn-default,
.navbar .navbar-nav > li > a.btn.btn-default:hover,
.navbar .navbar-nav > li > a.btn.btn-default:focus,
.navbar .navbar-nav > li > a.btn.btn-default:active,
.navbar .navbar-nav > li > a.btn.btn-default.active,
.navbar .navbar-nav > li > a.btn.btn-default:active:focus,
.navbar .navbar-nav > li > a.btn.btn-default:active:hover,
.navbar .navbar-nav > li > a.btn.btn-default.active:focus,
.navbar .navbar-nav > li > a.btn.btn-default.active:hover, .open >
.navbar .navbar-nav > li > a.btn.btn-default.dropdown-toggle, .open >
.navbar .navbar-nav > li > a.btn.btn-default.dropdown-toggle:focus, .open >
.navbar .navbar-nav > li > a.btn.btn-default.dropdown-toggle:hover {
  background-color: #999999;
  color: #FFFFFF;
}
.btn:focus, .btn:active, .btn:hover, .btn.btn-default:focus, .btn.btn-default:active, .btn.btn-default:hover,
.navbar .navbar-nav > li > a.btn:focus,
.navbar .navbar-nav > li > a.btn:active,
.navbar .navbar-nav > li > a.btn:hover,
.navbar .navbar-nav > li > a.btn.btn-default:focus,
.navbar .navbar-nav > li > a.btn.btn-default:active,
.navbar .navbar-nav > li > a.btn.btn-default:hover {
  box-shadow: 0 14px 26px -12px rgba(153, 153, 153, 0.42), 0 4px 23px 0px rgba(0, 0, 0, 0.12), 0 8px 10px -5px rgba(153, 153, 153, 0.2);
}
.btn.disabled, .btn.disabled:hover, .btn.disabled:focus, .btn.disabled.focus, .btn.disabled:active, .btn.disabled.active, .btn:disabled, .btn:disabled:hover, .btn:disabled:focus, .btn:disabled.focus, .btn:disabled:active, .btn:disabled.active, .btn[disabled], .btn[disabled]:hover, .btn[disabled]:focus, .btn[disabled].focus, .btn[disabled]:active, .btn[disabled].active, fieldset[disabled] .btn, fieldset[disabled] .btn:hover, fieldset[disabled] .btn:focus, fieldset[disabled] .btn.focus, fieldset[disabled] .btn:active, fieldset[disabled] .btn.active, .btn.btn-default.disabled, .btn.btn-default.disabled:hover, .btn.btn-default.disabled:focus, .btn.btn-default.disabled.focus, .btn.btn-default.disabled:active, .btn.btn-default.disabled.active, .btn.btn-default:disabled, .btn.btn-default:disabled:hover, .btn.btn-default:disabled:focus, .btn.btn-default:disabled.focus, .btn.btn-default:disabled:active, .btn.btn-default:disabled.active, .btn.btn-default[disabled], .btn.btn-default[disabled]:hover, .btn.btn-default[disabled]:focus, .btn.btn-default[disabled].focus, .btn.btn-default[disabled]:active, .btn.btn-default[disabled].active, fieldset[disabled] .btn.btn-default, fieldset[disabled] .btn.btn-default:hover, fieldset[disabled] .btn.btn-default:focus, fieldset[disabled] .btn.btn-default.focus, fieldset[disabled] .btn.btn-default:active, fieldset[disabled] .btn.btn-default.active,
.navbar .navbar-nav > li > a.btn.disabled,
.navbar .navbar-nav > li > a.btn.disabled:hover,
.navbar .navbar-nav > li > a.btn.disabled:focus,
.navbar .navbar-nav > li > a.btn.disabled.focus,
.navbar .navbar-nav > li > a.btn.disabled:active,
.navbar .navbar-nav > li > a.btn.disabled.active,
.navbar .navbar-nav > li > a.btn:disabled,
.navbar .navbar-nav > li > a.btn:disabled:hover,
.navbar .navbar-nav > li > a.btn:disabled:focus,
.navbar .navbar-nav > li > a.btn:disabled.focus,
.navbar .navbar-nav > li > a.btn:disabled:active,
.navbar .navbar-nav > li > a.btn:disabled.active,
.navbar .navbar-nav > li > a.btn[disabled],
.navbar .navbar-nav > li > a.btn[disabled]:hover,
.navbar .navbar-nav > li > a.btn[disabled]:focus,
.navbar .navbar-nav > li > a.btn[disabled].focus,
.navbar .navbar-nav > li > a.btn[disabled]:active,
.navbar .navbar-nav > li > a.btn[disabled].active, fieldset[disabled]
.navbar .navbar-nav > li > a.btn, fieldset[disabled]
.navbar .navbar-nav > li > a.btn:hover, fieldset[disabled]
.navbar .navbar-nav > li > a.btn:focus, fieldset[disabled]
.navbar .navbar-nav > li > a.btn.focus, fieldset[disabled]
.navbar .navbar-nav > li > a.btn:active, fieldset[disabled]
.navbar .navbar-nav > li > a.btn.active,
.navbar .navbar-nav > li > a.btn.btn-default.disabled,
.navbar .navbar-nav > li > a.btn.btn-default.disabled:hover,
.navbar .navbar-nav > li > a.btn.btn-default.disabled:focus,
.navbar .navbar-nav > li > a.btn.btn-default.disabled.focus,
.navbar .navbar-nav > li > a.btn.btn-default.disabled:active,
.navbar .navbar-nav > li > a.btn.btn-default.disabled.active,
.navbar .navbar-nav > li > a.btn.btn-default:disabled,
.navbar .navbar-nav > li > a.btn.btn-default:disabled:hover,
.navbar .navbar-nav > li > a.btn.btn-default:disabled:focus,
.navbar .navbar-nav > li > a.btn.btn-default:disabled.focus,
.navbar .navbar-nav > li > a.btn.btn-default:disabled:active,
.navbar .navbar-nav > li > a.btn.btn-default:disabled.active,
.navbar .navbar-nav > li > a.btn.btn-default[disabled],
.navbar .navbar-nav > li > a.btn.btn-default[disabled]:hover,
.navbar .navbar-nav > li > a.btn.btn-default[disabled]:focus,
.navbar .navbar-nav > li > a.btn.btn-default[disabled].focus,
.navbar .navbar-nav > li > a.btn.btn-default[disabled]:active,
.navbar .navbar-nav > li > a.btn.btn-default[disabled].active, fieldset[disabled]
.navbar .navbar-nav > li > a.btn.btn-default, fieldset[disabled]
.navbar .navbar-nav > li > a.btn.btn-default:hover, fieldset[disabled]
.navbar .navbar-nav > li > a.btn.btn-default:focus, fieldset[disabled]
.navbar .navbar-nav > li > a.btn.btn-default.focus, fieldset[disabled]
.navbar .navbar-nav > li > a.btn.btn-default:active, fieldset[disabled]
.navbar .navbar-nav > li > a.btn.btn-default.active {
  box-shadow: none;
}
.btn.btn-simple, .btn.btn-default.btn-simple,
.navbar .navbar-nav > li > a.btn.btn-simple,
.navbar .navbar-nav > li > a.btn.btn-default.btn-simple {
  background-color: transparent;
  color: #999999;
  box-shadow: none;
}
.btn.btn-simple:hover, .btn.btn-simple:focus, .btn.btn-simple:active, .btn.btn-default.btn-simple:hover, .btn.btn-default.btn-simple:focus, .btn.btn-default.btn-simple:active,
.navbar .navbar-nav > li > a.btn.btn-simple:hover,
.navbar .navbar-nav > li > a.btn.btn-simple:focus,
.navbar .navbar-nav > li > a.btn.btn-simple:active,
.navbar .navbar-nav > li > a.btn.btn-default.btn-simple:hover,
.navbar .navbar-nav > li > a.btn.btn-default.btn-simple:focus,
.navbar .navbar-nav > li > a.btn.btn-default.btn-simple:active {
  background-color: transparent;
  color: #999999;
}
.btn.btn-primary,
.navbar .navbar-nav > li > a.btn.btn-primary {
  box-shadow: 0 2px 2px 0 rgba(156, 39, 176, 0.14), 0 3px 1px -2px rgba(156, 39, 176, 0.2), 0 1px 5px 0 rgba(156, 39, 176, 0.12);
}
.btn.btn-primary, .btn.btn-primary:hover, .btn.btn-primary:focus, .btn.btn-primary:active, .btn.btn-primary.active, .btn.btn-primary:active:focus, .btn.btn-primary:active:hover, .btn.btn-primary.active:focus, .btn.btn-primary.active:hover, .open > .btn.btn-primary.dropdown-toggle, .open > .btn.btn-primary.dropdown-toggle:focus, .open > .btn.btn-primary.dropdown-toggle:hover,
.navbar .navbar-nav > li > a.btn.btn-primary,
.navbar .navbar-nav > li > a.btn.btn-primary:hover,
.navbar .navbar-nav > li > a.btn.btn-primary:focus,
.navbar .navbar-nav > li > a.btn.btn-primary:active,
.navbar .navbar-nav > li > a.btn.btn-primary.active,
.navbar .navbar-nav > li > a.btn.btn-primary:active:focus,
.navbar .navbar-nav > li > a.btn.btn-primary:active:hover,
.navbar .navbar-nav > li > a.btn.btn-primary.active:focus,
.navbar .navbar-nav > li > a.btn.btn-primary.active:hover, .open >
.navbar .navbar-nav > li > a.btn.btn-primary.dropdown-toggle, .open >
.navbar .navbar-nav > li > a.btn.btn-primary.dropdown-toggle:focus, .open >
.navbar .navbar-nav > li > a.btn.btn-primary.dropdown-toggle:hover {
  background-color: #9c27b0;
  color: #FFFFFF;
}
.btn.btn-primary:focus, .btn.btn-primary:active, .btn.btn-primary:hover,
.navbar .navbar-nav > li > a.btn.btn-primary:focus,
.navbar .navbar-nav > li > a.btn.btn-primary:active,
.navbar .navbar-nav > li > a.btn.btn-primary:hover {
  box-shadow: 0 14px 26px -12px rgba(156, 39, 176, 0.42), 0 4px 23px 0px rgba(0, 0, 0, 0.12), 0 8px 10px -5px rgba(156, 39, 176, 0.2);
}
.btn.btn-primary.disabled, .btn.btn-primary.disabled:hover, .btn.btn-primary.disabled:focus, .btn.btn-primary.disabled.focus, .btn.btn-primary.disabled:active, .btn.btn-primary.disabled.active, .btn.btn-primary:disabled, .btn.btn-primary:disabled:hover, .btn.btn-primary:disabled:focus, .btn.btn-primary:disabled.focus, .btn.btn-primary:disabled:active, .btn.btn-primary:disabled.active, .btn.btn-primary[disabled], .btn.btn-primary[disabled]:hover, .btn.btn-primary[disabled]:focus, .btn.btn-primary[disabled].focus, .btn.btn-primary[disabled]:active, .btn.btn-primary[disabled].active, fieldset[disabled] .btn.btn-primary, fieldset[disabled] .btn.btn-primary:hover, fieldset[disabled] .btn.btn-primary:focus, fieldset[disabled] .btn.btn-primary.focus, fieldset[disabled] .btn.btn-primary:active, fieldset[disabled] .btn.btn-primary.active,
.navbar .navbar-nav > li > a.btn.btn-primary.disabled,
.navbar .navbar-nav > li > a.btn.btn-primary.disabled:hover,
.navbar .navbar-nav > li > a.btn.btn-primary.disabled:focus,
.navbar .navbar-nav > li > a.btn.btn-primary.disabled.focus,
.navbar .navbar-nav > li > a.btn.btn-primary.disabled:active,
.navbar .navbar-nav > li > a.btn.btn-primary.disabled.active,
.navbar .navbar-nav > li > a.btn.btn-primary:disabled,
.navbar .navbar-nav > li > a.btn.btn-primary:disabled:hover,
.navbar .navbar-nav > li > a.btn.btn-primary:disabled:focus,
.navbar .navbar-nav > li > a.btn.btn-primary:disabled.focus,
.navbar .navbar-nav > li > a.btn.btn-primary:disabled:active,
.navbar .navbar-nav > li > a.btn.btn-primary:disabled.active,
.navbar .navbar-nav > li > a.btn.btn-primary[disabled],
.navbar .navbar-nav > li > a.btn.btn-primary[disabled]:hover,
.navbar .navbar-nav > li > a.btn.btn-primary[disabled]:focus,
.navbar .navbar-nav > li > a.btn.btn-primary[disabled].focus,
.navbar .navbar-nav > li > a.btn.btn-primary[disabled]:active,
.navbar .navbar-nav > li > a.btn.btn-primary[disabled].active, fieldset[disabled]
.navbar .navbar-nav > li > a.btn.btn-primary, fieldset[disabled]
.navbar .navbar-nav > li > a.btn.btn-primary:hover, fieldset[disabled]
.navbar .navbar-nav > li > a.btn.btn-primary:focus, fieldset[disabled]
.navbar .navbar-nav > li > a.btn.btn-primary.focus, fieldset[disabled]
.navbar .navbar-nav > li > a.btn.btn-primary:active, fieldset[disabled]
.navbar .navbar-nav > li > a.btn.btn-primary.active {
  box-shadow: none;
}
.btn.btn-primary.btn-simple,
.navbar .navbar-nav > li > a.btn.btn-primary.btn-simple {
  background-color: transparent;
  color: #9c27b0;
  box-shadow: none;
}
.btn.btn-primary.btn-simple:hover, .btn.btn-primary.btn-simple:focus, .btn.btn-primary.btn-simple:active,
.navbar .navbar-nav > li > a.btn.btn-primary.btn-simple:hover,
.navbar .navbar-nav > li > a.btn.btn-primary.btn-simple:focus,
.navbar .navbar-nav > li > a.btn.btn-primary.btn-simple:active {
  background-color: transparent;
  color: #9c27b0;
}
.btn.btn-info,
.navbar .navbar-nav > li > a.btn.btn-info {
  box-shadow: 0 2px 2px 0 rgba(3, 169, 244, 0.14), 0 3px 1px -2px rgba(3, 169, 244, 0.2), 0 1px 5px 0 rgba(3, 169, 244, 0.12);
}
.btn.btn-info, .btn.btn-info:hover, .btn.btn-info:focus, .btn.btn-info:active, .btn.btn-info.active, .btn.btn-info:active:focus, .btn.btn-info:active:hover, .btn.btn-info.active:focus, .btn.btn-info.active:hover, .open > .btn.btn-info.dropdown-toggle, .open > .btn.btn-info.dropdown-toggle:focus, .open > .btn.btn-info.dropdown-toggle:hover,
.navbar .navbar-nav > li > a.btn.btn-info,
.navbar .navbar-nav > li > a.btn.btn-info:hover,
.navbar .navbar-nav > li > a.btn.btn-info:focus,
.navbar .navbar-nav > li > a.btn.btn-info:active,
.navbar .navbar-nav > li > a.btn.btn-info.active,
.navbar .navbar-nav > li > a.btn.btn-info:active:focus,
.navbar .navbar-nav > li > a.btn.btn-info:active:hover,
.navbar .navbar-nav > li > a.btn.btn-info.active:focus,
.navbar .navbar-nav > li > a.btn.btn-info.active:hover, .open >
.navbar .navbar-nav > li > a.btn.btn-info.dropdown-toggle, .open >
.navbar .navbar-nav > li > a.btn.btn-info.dropdown-toggle:focus, .open >
.navbar .navbar-nav > li > a.btn.btn-info.dropdown-toggle:hover {
  background-color: #03a9f4;
  color: #FFFFFF;
}
.btn.btn-info:focus, .btn.btn-info:active, .btn.btn-info:hover,
.navbar .navbar-nav > li > a.btn.btn-info:focus,
.navbar .navbar-nav > li > a.btn.btn-info:active,
.navbar .navbar-nav > li > a.btn.btn-info:hover {
  box-shadow: 0 14px 26px -12px rgba(3, 169, 244, 0.42), 0 4px 23px 0px rgba(0, 0, 0, 0.12), 0 8px 10px -5px rgba(3, 169, 244, 0.2);
}
.btn.btn-info.disabled, .btn.btn-info.disabled:hover, .btn.btn-info.disabled:focus, .btn.btn-info.disabled.focus, .btn.btn-info.disabled:active, .btn.btn-info.disabled.active, .btn.btn-info:disabled, .btn.btn-info:disabled:hover, .btn.btn-info:disabled:focus, .btn.btn-info:disabled.focus, .btn.btn-info:disabled:active, .btn.btn-info:disabled.active, .btn.btn-info[disabled], .btn.btn-info[disabled]:hover, .btn.btn-info[disabled]:focus, .btn.btn-info[disabled].focus, .btn.btn-info[disabled]:active, .btn.btn-info[disabled].active, fieldset[disabled] .btn.btn-info, fieldset[disabled] .btn.btn-info:hover, fieldset[disabled] .btn.btn-info:focus, fieldset[disabled] .btn.btn-info.focus, fieldset[disabled] .btn.btn-info:active, fieldset[disabled] .btn.btn-info.active,
.navbar .navbar-nav > li > a.btn.btn-info.disabled,
.navbar .navbar-nav > li > a.btn.btn-info.disabled:hover,
.navbar .navbar-nav > li > a.btn.btn-info.disabled:focus,
.navbar .navbar-nav > li > a.btn.btn-info.disabled.focus,
.navbar .navbar-nav > li > a.btn.btn-info.disabled:active,
.navbar .navbar-nav > li > a.btn.btn-info.disabled.active,
.navbar .navbar-nav > li > a.btn.btn-info:disabled,
.navbar .navbar-nav > li > a.btn.btn-info:disabled:hover,
.navbar .navbar-nav > li > a.btn.btn-info:disabled:focus,
.navbar .navbar-nav > li > a.btn.btn-info:disabled.focus,
.navbar .navbar-nav > li > a.btn.btn-info:disabled:active,
.navbar .navbar-nav > li > a.btn.btn-info:disabled.active,
.navbar .navbar-nav > li > a.btn.btn-info[disabled],
.navbar .navbar-nav > li > a.btn.btn-info[disabled]:hover,
.navbar .navbar-nav > li > a.btn.btn-info[disabled]:focus,
.navbar .navbar-nav > li > a.btn.btn-info[disabled].focus,
.navbar .navbar-nav > li > a.btn.btn-info[disabled]:active,
.navbar .navbar-nav > li > a.btn.btn-info[disabled].active, fieldset[disabled]
.navbar .navbar-nav > li > a.btn.btn-info, fieldset[disabled]
.navbar .navbar-nav > li > a.btn.btn-info:hover, fieldset[disabled]
.navbar .navbar-nav > li > a.btn.btn-info:focus, fieldset[disabled]
.navbar .navbar-nav > li > a.btn.btn-info.focus, fieldset[disabled]
.navbar .navbar-nav > li > a.btn.btn-info:active, fieldset[disabled]
.navbar .navbar-nav > li > a.btn.btn-info.active {
  box-shadow: none;
}
.btn.btn-info.btn-simple,
.navbar .navbar-nav > li > a.btn.btn-info.btn-simple {
  background-color: transparent;
  color: #03a9f4;
  box-shadow: none;
}
.btn.btn-info.btn-simple:hover, .btn.btn-info.btn-simple:focus, .btn.btn-info.btn-simple:active,
.navbar .navbar-nav > li > a.btn.btn-info.btn-simple:hover,
.navbar .navbar-nav > li > a.btn.btn-info.btn-simple:focus,
.navbar .navbar-nav > li > a.btn.btn-info.btn-simple:active {
  background-color: transparent;
  color: #03a9f4;
}
.btn.btn-success,
.navbar .navbar-nav > li > a.btn.btn-success {
  box-shadow: 0 2px 2px 0 rgba(76, 175, 80, 0.14), 0 3px 1px -2px rgba(76, 175, 80, 0.2), 0 1px 5px 0 rgba(76, 175, 80, 0.12);
}
.btn.btn-success, .btn.btn-success:hover, .btn.btn-success:focus, .btn.btn-success:active, .btn.btn-success.active, .btn.btn-success:active:focus, .btn.btn-success:active:hover, .btn.btn-success.active:focus, .btn.btn-success.active:hover, .open > .btn.btn-success.dropdown-toggle, .open > .btn.btn-success.dropdown-toggle:focus, .open > .btn.btn-success.dropdown-toggle:hover,
.navbar .navbar-nav > li > a.btn.btn-success,
.navbar .navbar-nav > li > a.btn.btn-success:hover,
.navbar .navbar-nav > li > a.btn.btn-success:focus,
.navbar .navbar-nav > li > a.btn.btn-success:active,
.navbar .navbar-nav > li > a.btn.btn-success.active,
.navbar .navbar-nav > li > a.btn.btn-success:active:focus,
.navbar .navbar-nav > li > a.btn.btn-success:active:hover,
.navbar .navbar-nav > li > a.btn.btn-success.active:focus,
.navbar .navbar-nav > li > a.btn.btn-success.active:hover, .open >
.navbar .navbar-nav > li > a.btn.btn-success.dropdown-toggle, .open >
.navbar .navbar-nav > li > a.btn.btn-success.dropdown-toggle:focus, .open >
.navbar .navbar-nav > li > a.btn.btn-success.dropdown-toggle:hover {
  background-color: #4caf50;
  color: #FFFFFF;
}
.btn.btn-success:focus, .btn.btn-success:active, .btn.btn-success:hover,
.navbar .navbar-nav > li > a.btn.btn-success:focus,
.navbar .navbar-nav > li > a.btn.btn-success:active,
.navbar .navbar-nav > li > a.btn.btn-success:hover {
  box-shadow: 0 14px 26px -12px rgba(76, 175, 80, 0.42), 0 4px 23px 0px rgba(0, 0, 0, 0.12), 0 8px 10px -5px rgba(76, 175, 80, 0.2);
}
.btn.btn-success.disabled, .btn.btn-success.disabled:hover, .btn.btn-success.disabled:focus, .btn.btn-success.disabled.focus, .btn.btn-success.disabled:active, .btn.btn-success.disabled.active, .btn.btn-success:disabled, .btn.btn-success:disabled:hover, .btn.btn-success:disabled:focus, .btn.btn-success:disabled.focus, .btn.btn-success:disabled:active, .btn.btn-success:disabled.active, .btn.btn-success[disabled], .btn.btn-success[disabled]:hover, .btn.btn-success[disabled]:focus, .btn.btn-success[disabled].focus, .btn.btn-success[disabled]:active, .btn.btn-success[disabled].active, fieldset[disabled] .btn.btn-success, fieldset[disabled] .btn.btn-success:hover, fieldset[disabled] .btn.btn-success:focus, fieldset[disabled] .btn.btn-success.focus, fieldset[disabled] .btn.btn-success:active, fieldset[disabled] .btn.btn-success.active,
.navbar .navbar-nav > li > a.btn.btn-success.disabled,
.navbar .navbar-nav > li > a.btn.btn-success.disabled:hover,
.navbar .navbar-nav > li > a.btn.btn-success.disabled:focus,
.navbar .navbar-nav > li > a.btn.btn-success.disabled.focus,
.navbar .navbar-nav > li > a.btn.btn-success.disabled:active,
.navbar .navbar-nav > li > a.btn.btn-success.disabled.active,
.navbar .navbar-nav > li > a.btn.btn-success:disabled,
.navbar .navbar-nav > li > a.btn.btn-success:disabled:hover,
.navbar .navbar-nav > li > a.btn.btn-success:disabled:focus,
.navbar .navbar-nav > li > a.btn.btn-success:disabled.focus,
.navbar .navbar-nav > li > a.btn.btn-success:disabled:active,
.navbar .navbar-nav > li > a.btn.btn-success:disabled.active,
.navbar .navbar-nav > li > a.btn.btn-success[disabled],
.navbar .navbar-nav > li > a.btn.btn-success[disabled]:hover,
.navbar .navbar-nav > li > a.btn.btn-success[disabled]:focus,
.navbar .navbar-nav > li > a.btn.btn-success[disabled].focus,
.navbar .navbar-nav > li > a.btn.btn-success[disabled]:active,
.navbar .navbar-nav > li > a.btn.btn-success[disabled].active, fieldset[disabled]
.navbar .navbar-nav > li > a.btn.btn-success, fieldset[disabled]
.navbar .navbar-nav > li > a.btn.btn-success:hover, fieldset[disabled]
.navbar .navbar-nav > li > a.btn.btn-success:focus, fieldset[disabled]
.navbar .navbar-nav > li > a.btn.btn-success.focus, fieldset[disabled]
.navbar .navbar-nav > li > a.btn.btn-success:active, fieldset[disabled]
.navbar .navbar-nav > li > a.btn.btn-success.active {
  box-shadow: none;
}
.btn.btn-success.btn-simple,
.navbar .navbar-nav > li > a.btn.btn-success.btn-simple {
  background-color: transparent;
  color: #4caf50;
  box-shadow: none;
}
.btn.btn-success.btn-simple:hover, .btn.btn-success.btn-simple:focus, .btn.btn-success.btn-simple:active,
.navbar .navbar-nav > li > a.btn.btn-success.btn-simple:hover,
.navbar .navbar-nav > li > a.btn.btn-success.btn-simple:focus,
.navbar .navbar-nav > li > a.btn.btn-success.btn-simple:active {
  background-color: transparent;
  color: #4caf50;
}
.btn.btn-warning,
.navbar .navbar-nav > li > a.btn.btn-warning {
  box-shadow: 0 2px 2px 0 rgba(251, 192, 45, 0.14), 0 3px 1px -2px rgba(251, 192, 45, 0.2), 0 1px 5px 0 rgba(251, 192, 45, 0.12);
}
.btn.btn-warning, .btn.btn-warning:hover, .btn.btn-warning:focus, .btn.btn-warning:active, .btn.btn-warning.active, .btn.btn-warning:active:focus, .btn.btn-warning:active:hover, .btn.btn-warning.active:focus, .btn.btn-warning.active:hover, .open > .btn.btn-warning.dropdown-toggle, .open > .btn.btn-warning.dropdown-toggle:focus, .open > .btn.btn-warning.dropdown-toggle:hover,
.navbar .navbar-nav > li > a.btn.btn-warning,
.navbar .navbar-nav > li > a.btn.btn-warning:hover,
.navbar .navbar-nav > li > a.btn.btn-warning:focus,
.navbar .navbar-nav > li > a.btn.btn-warning:active,
.navbar .navbar-nav > li > a.btn.btn-warning.active,
.navbar .navbar-nav > li > a.btn.btn-warning:active:focus,
.navbar .navbar-nav > li > a.btn.btn-warning:active:hover,
.navbar .navbar-nav > li > a.btn.btn-warning.active:focus,
.navbar .navbar-nav > li > a.btn.btn-warning.active:hover, .open >
.navbar .navbar-nav > li > a.btn.btn-warning.dropdown-toggle, .open >
.navbar .navbar-nav > li > a.btn.btn-warning.dropdown-toggle:focus, .open >
.navbar .navbar-nav > li > a.btn.btn-warning.dropdown-toggle:hover {
  background-color: #fbc02d;
  color: #FFFFFF;
}
.btn.btn-warning:focus, .btn.btn-warning:active, .btn.btn-warning:hover,
.navbar .navbar-nav > li > a.btn.btn-warning:focus,
.navbar .navbar-nav > li > a.btn.btn-warning:active,
.navbar .navbar-nav > li > a.btn.btn-warning:hover {
  box-shadow: 0 14px 26px -12px rgba(251, 192, 45, 0.42), 0 4px 23px 0px rgba(0, 0, 0, 0.12), 0 8px 10px -5px rgba(251, 192, 45, 0.2);
}
.btn.btn-warning.disabled, .btn.btn-warning.disabled:hover, .btn.btn-warning.disabled:focus, .btn.btn-warning.disabled.focus, .btn.btn-warning.disabled:active, .btn.btn-warning.disabled.active, .btn.btn-warning:disabled, .btn.btn-warning:disabled:hover, .btn.btn-warning:disabled:focus, .btn.btn-warning:disabled.focus, .btn.btn-warning:disabled:active, .btn.btn-warning:disabled.active, .btn.btn-warning[disabled], .btn.btn-warning[disabled]:hover, .btn.btn-warning[disabled]:focus, .btn.btn-warning[disabled].focus, .btn.btn-warning[disabled]:active, .btn.btn-warning[disabled].active, fieldset[disabled] .btn.btn-warning, fieldset[disabled] .btn.btn-warning:hover, fieldset[disabled] .btn.btn-warning:focus, fieldset[disabled] .btn.btn-warning.focus, fieldset[disabled] .btn.btn-warning:active, fieldset[disabled] .btn.btn-warning.active,
.navbar .navbar-nav > li > a.btn.btn-warning.disabled,
.navbar .navbar-nav > li > a.btn.btn-warning.disabled:hover,
.navbar .navbar-nav > li > a.btn.btn-warning.disabled:focus,
.navbar .navbar-nav > li > a.btn.btn-warning.disabled.focus,
.navbar .navbar-nav > li > a.btn.btn-warning.disabled:active,
.navbar .navbar-nav > li > a.btn.btn-warning.disabled.active,
.navbar .navbar-nav > li > a.btn.btn-warning:disabled,
.navbar .navbar-nav > li > a.btn.btn-warning:disabled:hover,
.navbar .navbar-nav > li > a.btn.btn-warning:disabled:focus,
.navbar .navbar-nav > li > a.btn.btn-warning:disabled.focus,
.navbar .navbar-nav > li > a.btn.btn-warning:disabled:active,
.navbar .navbar-nav > li > a.btn.btn-warning:disabled.active,
.navbar .navbar-nav > li > a.btn.btn-warning[disabled],
.navbar .navbar-nav > li > a.btn.btn-warning[disabled]:hover,
.navbar .navbar-nav > li > a.btn.btn-warning[disabled]:focus,
.navbar .navbar-nav > li > a.btn.btn-warning[disabled].focus,
.navbar .navbar-nav > li > a.btn.btn-warning[disabled]:active,
.navbar .navbar-nav > li > a.btn.btn-warning[disabled].active, fieldset[disabled]
.navbar .navbar-nav > li > a.btn.btn-warning, fieldset[disabled]
.navbar .navbar-nav > li > a.btn.btn-warning:hover, fieldset[disabled]
.navbar .navbar-nav > li > a.btn.btn-warning:focus, fieldset[disabled]
.navbar .navbar-nav > li > a.btn.btn-warning.focus, fieldset[disabled]
.navbar .navbar-nav > li > a.btn.btn-warning:active, fieldset[disabled]
.navbar .navbar-nav > li > a.btn.btn-warning.active {
  box-shadow: none;
}
.btn.btn-warning.btn-simple,
.navbar .navbar-nav > li > a.btn.btn-warning.btn-simple {
  background-color: transparent;
  color: #fbc02d;
  box-shadow: none;
}
.btn.btn-warning.btn-simple:hover, .btn.btn-warning.btn-simple:focus, .btn.btn-warning.btn-simple:active,
.navbar .navbar-nav > li > a.btn.btn-warning.btn-simple:hover,
.navbar .navbar-nav > li > a.btn.btn-warning.btn-simple:focus,
.navbar .navbar-nav > li > a.btn.btn-warning.btn-simple:active {
  background-color: transparent;
  color: #fbc02d;
}
.btn.btn-danger,
.navbar .navbar-nav > li > a.btn.btn-danger {
  box-shadow: 0 2px 2px 0 rgba(244, 67, 54, 0.14), 0 3px 1px -2px rgba(244, 67, 54, 0.2), 0 1px 5px 0 rgba(244, 67, 54, 0.12);
}
.btn.btn-danger, .btn.btn-danger:hover, .btn.btn-danger:focus, .btn.btn-danger:active, .btn.btn-danger.active, .btn.btn-danger:active:focus, .btn.btn-danger:active:hover, .btn.btn-danger.active:focus, .btn.btn-danger.active:hover, .open > .btn.btn-danger.dropdown-toggle, .open > .btn.btn-danger.dropdown-toggle:focus, .open > .btn.btn-danger.dropdown-toggle:hover,
.navbar .navbar-nav > li > a.btn.btn-danger,
.navbar .navbar-nav > li > a.btn.btn-danger:hover,
.navbar .navbar-nav > li > a.btn.btn-danger:focus,
.navbar .navbar-nav > li > a.btn.btn-danger:active,
.navbar .navbar-nav > li > a.btn.btn-danger.active,
.navbar .navbar-nav > li > a.btn.btn-danger:active:focus,
.navbar .navbar-nav > li > a.btn.btn-danger:active:hover,
.navbar .navbar-nav > li > a.btn.btn-danger.active:focus,
.navbar .navbar-nav > li > a.btn.btn-danger.active:hover, .open >
.navbar .navbar-nav > li > a.btn.btn-danger.dropdown-toggle, .open >
.navbar .navbar-nav > li > a.btn.btn-danger.dropdown-toggle:focus, .open >
.navbar .navbar-nav > li > a.btn.btn-danger.dropdown-toggle:hover {
  background-color: #f44336;
  color: #FFFFFF;
}
.btn.btn-danger:focus, .btn.btn-danger:active, .btn.btn-danger:hover,
.navbar .navbar-nav > li > a.btn.btn-danger:focus,
.navbar .navbar-nav > li > a.btn.btn-danger:active,
.navbar .navbar-nav > li > a.btn.btn-danger:hover {
  box-shadow: 0 14px 26px -12px rgba(244, 67, 54, 0.42), 0 4px 23px 0px rgba(0, 0, 0, 0.12), 0 8px 10px -5px rgba(244, 67, 54, 0.2);
}
.btn.btn-danger.disabled, .btn.btn-danger.disabled:hover, .btn.btn-danger.disabled:focus, .btn.btn-danger.disabled.focus, .btn.btn-danger.disabled:active, .btn.btn-danger.disabled.active, .btn.btn-danger:disabled, .btn.btn-danger:disabled:hover, .btn.btn-danger:disabled:focus, .btn.btn-danger:disabled.focus, .btn.btn-danger:disabled:active, .btn.btn-danger:disabled.active, .btn.btn-danger[disabled], .btn.btn-danger[disabled]:hover, .btn.btn-danger[disabled]:focus, .btn.btn-danger[disabled].focus, .btn.btn-danger[disabled]:active, .btn.btn-danger[disabled].active, fieldset[disabled] .btn.btn-danger, fieldset[disabled] .btn.btn-danger:hover, fieldset[disabled] .btn.btn-danger:focus, fieldset[disabled] .btn.btn-danger.focus, fieldset[disabled] .btn.btn-danger:active, fieldset[disabled] .btn.btn-danger.active,
.navbar .navbar-nav > li > a.btn.btn-danger.disabled,
.navbar .navbar-nav > li > a.btn.btn-danger.disabled:hover,
.navbar .navbar-nav > li > a.btn.btn-danger.disabled:focus,
.navbar .navbar-nav > li > a.btn.btn-danger.disabled.focus,
.navbar .navbar-nav > li > a.btn.btn-danger.disabled:active,
.navbar .navbar-nav > li > a.btn.btn-danger.disabled.active,
.navbar .navbar-nav > li > a.btn.btn-danger:disabled,
.navbar .navbar-nav > li > a.btn.btn-danger:disabled:hover,
.navbar .navbar-nav > li > a.btn.btn-danger:disabled:focus,
.navbar .navbar-nav > li > a.btn.btn-danger:disabled.focus,
.navbar .navbar-nav > li > a.btn.btn-danger:disabled:active,
.navbar .navbar-nav > li > a.btn.btn-danger:disabled.active,
.navbar .navbar-nav > li > a.btn.btn-danger[disabled],
.navbar .navbar-nav > li > a.btn.btn-danger[disabled]:hover,
.navbar .navbar-nav > li > a.btn.btn-danger[disabled]:focus,
.navbar .navbar-nav > li > a.btn.btn-danger[disabled].focus,
.navbar .navbar-nav > li > a.btn.btn-danger[disabled]:active,
.navbar .navbar-nav > li > a.btn.btn-danger[disabled].active, fieldset[disabled]
.navbar .navbar-nav > li > a.btn.btn-danger, fieldset[disabled]
.navbar .navbar-nav > li > a.btn.btn-danger:hover, fieldset[disabled]
.navbar .navbar-nav > li > a.btn.btn-danger:focus, fieldset[disabled]
.navbar .navbar-nav > li > a.btn.btn-danger.focus, fieldset[disabled]
.navbar .navbar-nav > li > a.btn.btn-danger:active, fieldset[disabled]
.navbar .navbar-nav > li > a.btn.btn-danger.active {
  box-shadow: none;
}
.btn.btn-danger.btn-simple,
.navbar .navbar-nav > li > a.btn.btn-danger.btn-simple {
  background-color: transparent;
  color: #f44336;
  box-shadow: none;
}
.btn.btn-danger.btn-simple:hover, .btn.btn-danger.btn-simple:focus, .btn.btn-danger.btn-simple:active,
.navbar .navbar-nav > li > a.btn.btn-danger.btn-simple:hover,
.navbar .navbar-nav > li > a.btn.btn-danger.btn-simple:focus,
.navbar .navbar-nav > li > a.btn.btn-danger.btn-simple:active {
  background-color: transparent;
  color: #f44336;
}
.btn.btn-upgrade,
.navbar .navbar-nav > li > a.btn.btn-upgrade {
  box-shadow: 0 2px 2px 0 rgba(233, 30, 99, 0.14), 0 3px 1px -2px rgba(233, 30, 99, 0.2), 0 1px 5px 0 rgba(233, 30, 99, 0.12);
}
.btn.btn-upgrade, .btn.btn-upgrade:hover, .btn.btn-upgrade:focus, .btn.btn-upgrade:active, .btn.btn-upgrade.active, .btn.btn-upgrade:active:focus, .btn.btn-upgrade:active:hover, .btn.btn-upgrade.active:focus, .btn.btn-upgrade.active:hover, .open > .btn.btn-upgrade.dropdown-toggle, .open > .btn.btn-upgrade.dropdown-toggle:focus, .open > .btn.btn-upgrade.dropdown-toggle:hover,
.navbar .navbar-nav > li > a.btn.btn-upgrade,
.navbar .navbar-nav > li > a.btn.btn-upgrade:hover,
.navbar .navbar-nav > li > a.btn.btn-upgrade:focus,
.navbar .navbar-nav > li > a.btn.btn-upgrade:active,
.navbar .navbar-nav > li > a.btn.btn-upgrade.active,
.navbar .navbar-nav > li > a.btn.btn-upgrade:active:focus,
.navbar .navbar-nav > li > a.btn.btn-upgrade:active:hover,
.navbar .navbar-nav > li > a.btn.btn-upgrade.active:focus,
.navbar .navbar-nav > li > a.btn.btn-upgrade.active:hover, .open >
.navbar .navbar-nav > li > a.btn.btn-upgrade.dropdown-toggle, .open >
.navbar .navbar-nav > li > a.btn.btn-upgrade.dropdown-toggle:focus, .open >
.navbar .navbar-nav > li > a.btn.btn-upgrade.dropdown-toggle:hover {
  background-color: #e91e63;
  color: #FFFFFF;
}
.btn.btn-upgrade:focus, .btn.btn-upgrade:active, .btn.btn-upgrade:hover,
.navbar .navbar-nav > li > a.btn.btn-upgrade:focus,
.navbar .navbar-nav > li > a.btn.btn-upgrade:active,
.navbar .navbar-nav > li > a.btn.btn-upgrade:hover {
  box-shadow: 0 14px 26px -12px rgba(233, 30, 99, 0.42), 0 4px 23px 0px rgba(0, 0, 0, 0.12), 0 8px 10px -5px rgba(233, 30, 99, 0.2);
}
.btn.btn-upgrade.disabled, .btn.btn-upgrade.disabled:hover, .btn.btn-upgrade.disabled:focus, .btn.btn-upgrade.disabled.focus, .btn.btn-upgrade.disabled:active, .btn.btn-upgrade.disabled.active, .btn.btn-upgrade:disabled, .btn.btn-upgrade:disabled:hover, .btn.btn-upgrade:disabled:focus, .btn.btn-upgrade:disabled.focus, .btn.btn-upgrade:disabled:active, .btn.btn-upgrade:disabled.active, .btn.btn-upgrade[disabled], .btn.btn-upgrade[disabled]:hover, .btn.btn-upgrade[disabled]:focus, .btn.btn-upgrade[disabled].focus, .btn.btn-upgrade[disabled]:active, .btn.btn-upgrade[disabled].active, fieldset[disabled] .btn.btn-upgrade, fieldset[disabled] .btn.btn-upgrade:hover, fieldset[disabled] .btn.btn-upgrade:focus, fieldset[disabled] .btn.btn-upgrade.focus, fieldset[disabled] .btn.btn-upgrade:active, fieldset[disabled] .btn.btn-upgrade.active,
.navbar .navbar-nav > li > a.btn.btn-upgrade.disabled,
.navbar .navbar-nav > li > a.btn.btn-upgrade.disabled:hover,
.navbar .navbar-nav > li > a.btn.btn-upgrade.disabled:focus,
.navbar .navbar-nav > li > a.btn.btn-upgrade.disabled.focus,
.navbar .navbar-nav > li > a.btn.btn-upgrade.disabled:active,
.navbar .navbar-nav > li > a.btn.btn-upgrade.disabled.active,
.navbar .navbar-nav > li > a.btn.btn-upgrade:disabled,
.navbar .navbar-nav > li > a.btn.btn-upgrade:disabled:hover,
.navbar .navbar-nav > li > a.btn.btn-upgrade:disabled:focus,
.navbar .navbar-nav > li > a.btn.btn-upgrade:disabled.focus,
.navbar .navbar-nav > li > a.btn.btn-upgrade:disabled:active,
.navbar .navbar-nav > li > a.btn.btn-upgrade:disabled.active,
.navbar .navbar-nav > li > a.btn.btn-upgrade[disabled],
.navbar .navbar-nav > li > a.btn.btn-upgrade[disabled]:hover,
.navbar .navbar-nav > li > a.btn.btn-upgrade[disabled]:focus,
.navbar .navbar-nav > li > a.btn.btn-upgrade[disabled].focus,
.navbar .navbar-nav > li > a.btn.btn-upgrade[disabled]:active,
.navbar .navbar-nav > li > a.btn.btn-upgrade[disabled].active, fieldset[disabled]
.navbar .navbar-nav > li > a.btn.btn-upgrade, fieldset[disabled]
.navbar .navbar-nav > li > a.btn.btn-upgrade:hover, fieldset[disabled]
.navbar .navbar-nav > li > a.btn.btn-upgrade:focus, fieldset[disabled]
.navbar .navbar-nav > li > a.btn.btn-upgrade.focus, fieldset[disabled]
.navbar .navbar-nav > li > a.btn.btn-upgrade:active, fieldset[disabled]
.navbar .navbar-nav > li > a.btn.btn-upgrade.active {
  box-shadow: none;
}
.btn.btn-upgrade.btn-simple,
.navbar .navbar-nav > li > a.btn.btn-upgrade.btn-simple {
  background-color: transparent;
  color: #e91e63;
  box-shadow: none;
}
.btn.btn-upgrade.btn-simple:hover, .btn.btn-upgrade.btn-simple:focus, .btn.btn-upgrade.btn-simple:active,
.navbar .navbar-nav > li > a.btn.btn-upgrade.btn-simple:hover,
.navbar .navbar-nav > li > a.btn.btn-upgrade.btn-simple:focus,
.navbar .navbar-nav > li > a.btn.btn-upgrade.btn-simple:active {
  background-color: transparent;
  color: #e91e63;
}
.btn.btn-white, .btn.btn-white:focus, .btn.btn-white:hover,
.navbar .navbar-nav > li > a.btn.btn-white,
.navbar .navbar-nav > li > a.btn.btn-white:focus,
.navbar .navbar-nav > li > a.btn.btn-white:hover {
  background-color: #FFFFFF;
  color: #999999;
}
.btn.btn-white.btn-simple,
.navbar .navbar-nav > li > a.btn.btn-white.btn-simple {
  color: #FFFFFF;
  background: transparent;
  box-shadow: none;
}
.btn:focus, .btn:active, .btn:active:focus,
.navbar .navbar-nav > li > a.btn:focus,
.navbar .navbar-nav > li > a.btn:active,
.navbar .navbar-nav > li > a.btn:active:focus {
  outline: 0;
}
.btn.btn-round,
.navbar .navbar-nav > li > a.btn.btn-round {
  border-radius: 30px;
}
.btn:not(.btn-just-icon):not(.btn-fab) .fa,
.navbar .navbar-nav > li > a.btn:not(.btn-just-icon):not(.btn-fab) .fa {
  font-size: 18px;
  margin-top: -2px;
  position: relative;
  top: 2px;
}
.btn.btn-fab,
.navbar .navbar-nav > li > a.btn.btn-fab {
  border-radius: 50%;
  font-size: 24px;
  height: 56px;
  margin: auto;
  min-width: 56px;
  width: 56px;
  padding: 0;
  overflow: hidden;
  position: relative;
  line-height: normal;
}
.btn.btn-fab .ripple-container,
.navbar .navbar-nav > li > a.btn.btn-fab .ripple-container {
  border-radius: 50%;
}
.btn.btn-fab.btn-fab-mini, .btn-group-sm .btn.btn-fab,
.navbar .navbar-nav > li > a.btn.btn-fab.btn-fab-mini, .btn-group-sm
.navbar .navbar-nav > li > a.btn.btn-fab {
  height: 40px;
  min-width: 40px;
  width: 40px;
}
.btn.btn-fab.btn-fab-mini.material-icons, .btn-group-sm .btn.btn-fab.material-icons,
.navbar .navbar-nav > li > a.btn.btn-fab.btn-fab-mini.material-icons, .btn-group-sm
.navbar .navbar-nav > li > a.btn.btn-fab.material-icons {
  top: -3.5px;
  left: -3.5px;
}
.btn.btn-fab.btn-fab-mini .material-icons, .btn-group-sm .btn.btn-fab .material-icons,
.navbar .navbar-nav > li > a.btn.btn-fab.btn-fab-mini .material-icons, .btn-group-sm
.navbar .navbar-nav > li > a.btn.btn-fab .material-icons {
  font-size: 17px;
}
.btn.btn-fab i.material-icons,
.navbar .navbar-nav > li > a.btn.btn-fab i.material-icons {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-12px, -12px);
  line-height: 24px;
  width: 24px;
  font-size: 24px;
}
.btn.btn-lg, .btn-group-lg .btn,
.navbar .navbar-nav > li > a.btn.btn-lg, .btn-group-lg
.navbar .navbar-nav > li > a.btn {
  font-size: 14px;
  padding: 18px 36px;
}
.btn.btn-sm, .btn-group-sm .btn,
.navbar .navbar-nav > li > a.btn.btn-sm, .btn-group-sm
.navbar .navbar-nav > li > a.btn {
  padding: 5px 20px;
  font-size: 11px;
}
.btn.btn-xs, .btn-group-xs .btn,
.navbar .navbar-nav > li > a.btn.btn-xs, .btn-group-xs
.navbar .navbar-nav > li > a.btn {
  padding: 4px 15px;
  font-size: 10px;
}
.btn.btn-just-icon,
.navbar .navbar-nav > li > a.btn.btn-just-icon {
  font-size: 18px;
  padding: 10px 10px;
  line-height: 1em;
}
.btn.btn-just-icon i,
.navbar .navbar-nav > li > a.btn.btn-just-icon i {
  width: 20px;
}
.btn.btn-just-icon.btn-lg,
.navbar .navbar-nav > li > a.btn.btn-just-icon.btn-lg {
  font-size: 22px;
  padding: 13px 18px;
}

.btn .material-icons {
  vertical-align: middle;
  font-size: 17px;
  top: -1px;
  position: relative;
}

.navbar .navbar-nav > li > a.btn {
  margin-top: 2px;
  margin-bottom: 2px;
}
.navbar .navbar-nav > li > a.btn.btn-fab {
  margin: 5px 2px;
}
.navbar .navbar-nav > li > a:not(.btn) .material-icons {
  margin-top: -3px;
  top: 0px;
  position: relative;
  margin-right: 3px;
}
.navbar .navbar-nav > li > .profile-photo {
  margin: 5px 2px;
}

.navbar-default:not(.navbar-transparent) .navbar-nav > li > a.btn.btn-white.btn-simple {
  color: #555555;
}

.btn-group,
.btn-group-vertical {
  position: relative;
  margin: 10px 1px;
}
.btn-group.open > .dropdown-toggle.btn, .btn-group.open > .dropdown-toggle.btn.btn-default,
.btn-group-vertical.open > .dropdown-toggle.btn,
.btn-group-vertical.open > .dropdown-toggle.btn.btn-default {
  background-color: #EEEEEE;
}
.btn-group.open > .dropdown-toggle.btn.btn-inverse,
.btn-group-vertical.open > .dropdown-toggle.btn.btn-inverse {
  background-color: #3f51b5;
}
.btn-group.open > .dropdown-toggle.btn.btn-primary,
.btn-group-vertical.open > .dropdown-toggle.btn.btn-primary {
  background-color: #9c27b0;
}
.btn-group.open > .dropdown-toggle.btn.btn-success,
.btn-group-vertical.open > .dropdown-toggle.btn.btn-success {
  background-color: #4caf50;
}
.btn-group.open > .dropdown-toggle.btn.btn-info,
.btn-group-vertical.open > .dropdown-toggle.btn.btn-info {
  background-color: #03a9f4;
}
.btn-group.open > .dropdown-toggle.btn.btn-warning,
.btn-group-vertical.open > .dropdown-toggle.btn.btn-warning {
  background-color: #fbc02d;
}
.btn-group.open > .dropdown-toggle.btn.btn-danger,
.btn-group-vertical.open > .dropdown-toggle.btn.btn-danger {
  background-color: #f44336;
}
.btn-group .dropdown-menu,
.btn-group-vertical .dropdown-menu {
  border-radius: 0 0 3px 3px;
}
.btn-group.btn-group-raised,
.btn-group-vertical.btn-group-raised {
  box-shadow: 0 2px 2px 0 rgba(0, 0, 0, 0.14), 0 3px 1px -2px rgba(0, 0, 0, 0.2), 0 1px 5px 0 rgba(0, 0, 0, 0.12);
}
.btn-group .btn + .btn,
.btn-group .btn,
.btn-group .btn:active,
.btn-group .btn-group,
.btn-group-vertical .btn + .btn,
.btn-group-vertical .btn,
.btn-group-vertical .btn:active,
.btn-group-vertical .btn-group {
  margin: 0;
}

.close {
  font-size: inherit;
  color: #FFFFFF;
  opacity: .9;
  text-shadow: none;
}
.close:hover, .close:focus {
  opacity: 1;
  color: #FFFFFF;
}
.close i {
  font-size: 20px;
}

.checkbox label {
  cursor: pointer;
  padding-left: 0;
  color: rgba(0,0,0, 0.26);
}
.form-group.is-focused .checkbox label {
  color: rgba(0,0,0, 0.26);
}
.form-group.is-focused .checkbox label:hover, .form-group.is-focused .checkbox label:focus {
  color: rgba(0,0,0, .54);
}
fieldset[disabled] .form-group.is-focused .checkbox label {
  color: rgba(0,0,0, 0.26);
}
.checkbox input[type=checkbox] {
  opacity: 0;
  position: absolute;
  margin: 0;
  z-index: -1;
  width: 0;
  height: 0;
  overflow: hidden;
  left: 0;
  pointer-events: none;
}
.checkbox .checkbox-material {
  vertical-align: middle;
  position: relative;
  top: 1px;
  padding-right: 5px;
  display: inline-block;
}
.checkbox .checkbox-material:before {
  display: block;
  position: absolute;
  left: 0;
  content: "";
  background-color: rgba(0, 0, 0, 0.84);
  height: 20px;
  width: 20px;
  border-radius: 100%;
  z-index: 1;
  opacity: 0;
  margin: 0;
  top: 0;
  -webkit-transform: scale3d(2.3,2.3,1);
  -moz-transform: scale3d(2.3,2.3,1);
  -o-transform: scale3d(2.3,2.3,1);
  -ms-transform: scale3d(2.3,2.3,1);
  transform: scale3d(2.3,2.3,1);
}
.checkbox .checkbox-material .check {
  position: relative;
  display: inline-block;
  width: 20px;
  height: 20px;
  border: 1px solid rgba(0,0,0, .54);
  overflow: hidden;
  z-index: 1;
  border-radius: 3px;
}
.checkbox .checkbox-material .check:before {
  position: absolute;
  content: "";
  transform: rotate(45deg);
  display: block;
  margin-top: -3px;
  margin-left: 7px;
  width: 0;
  height: 0;
  background: red;
  box-shadow: 0 0 0 0, 0 0 0 0, 0 0 0 0, 0 0 0 0, 0 0 0 0, 0 0 0 0, 0 0 0 0 inset;
  -webkit-animation: checkbox-off 0.3s forwards;
  -moz-animation: checkbox-off 0.3s forwards;
  -o-animation: checkbox-off 0.3s forwards;
  -ms-animation: checkbox-off 0.3s forwards;
  animation: checkbox-off 0.3s forwards;
}
.checkbox input[type=checkbox]:focus + .checkbox-material .check:after {
  opacity: 0.2;
}
.checkbox input[type=checkbox]:checked + .checkbox-material .check {
  background: #9c27b0;
}
.checkbox input[type=checkbox]:checked + .checkbox-material .check:before {
  color: #FFFFFF;
  box-shadow: 0 0 0 10px, 10px -10px 0 10px, 32px 0 0 20px, 0px 32px 0 20px, -5px 5px 0 10px, 20px -12px 0 11px;
  -webkit-animation: checkbox-on 0.3s forwards;
  -moz-animation: checkbox-on 0.3s forwards;
  -o-animation: checkbox-on 0.3s forwards;
  -ms-animation: checkbox-on 0.3s forwards;
  animation: checkbox-on 0.3s forwards;
}
.checkbox input[type=checkbox]:checked + .checkbox-material:before {
  -webkit-animation: rippleOn 500ms;
  -moz-animation: rippleOn 500ms;
  -o-animation: rippleOn 500ms;
  -ms-animation: rippleOn 500ms;
  animation: rippleOn 500ms;
}
.checkbox input[type=checkbox]:checked + .checkbox-material .check:after {
  -webkit-animation: rippleOn 500ms forwards;
  -moz-animation: rippleOn 500ms forwards;
  -o-animation: rippleOn 500ms forwards;
  -ms-animation: rippleOn 500ms forwards;
  animation: rippleOn 500ms forwards;
}
.checkbox input[type=checkbox]:not(:checked) + .checkbox-material:before {
  -webkit-animation: rippleOff 500ms;
  -moz-animation: rippleOff 500ms;
  -o-animation: rippleOff 500ms;
  -ms-animation: rippleOff 500ms;
  animation: rippleOff 500ms;
}
.checkbox input[type=checkbox]:not(:checked) + .checkbox-material .check:after {
  -webkit-animation: rippleOff 500ms;
  -moz-animation: rippleOff 500ms;
  -o-animation: rippleOff 500ms;
  -ms-animation: rippleOff 500ms;
  animation: rippleOff 500ms;
}
fieldset[disabled] .checkbox, fieldset[disabled] .checkbox input[type=checkbox],
.checkbox input[type=checkbox][disabled] ~ .checkbox-material .check,
.checkbox input[type=checkbox][disabled] + .circle {
  opacity: 0.5;
}
.checkbox input[type=checkbox][disabled] ~ .checkbox-material .check {
  border-color: #000000;
  opacity: .26;
}
.checkbox input[type=checkbox][disabled] + .checkbox-material .check:after {
  background-color: rgba(0,0,0, 0.87);
  transform: rotate(-45deg);
}

@keyframes checkbox-on {
  0% {
    box-shadow: 0 0 0 10px, 10px -10px 0 10px, 32px 0 0 20px, 0px 32px 0 20px, -5px 5px 0 10px, 15px 2px 0 11px;
  }
  50% {
    box-shadow: 0 0 0 10px, 10px -10px 0 10px, 32px 0 0 20px, 0px 32px 0 20px, -5px 5px 0 10px, 20px 2px 0 11px;
  }
  100% {
    box-shadow: 0 0 0 10px, 10px -10px 0 10px, 32px 0 0 20px, 0px 32px 0 20px, -5px 5px 0 10px, 20px -12px 0 11px;
  }
}
@keyframes rippleOn {
  0% {
    opacity: 0;
  }
  50% {
    opacity: 0.2;
  }
  100% {
    opacity: 0;
  }
}
@keyframes rippleOff {
  0% {
    opacity: 0;
  }
  50% {
    opacity: 0.2;
  }
  100% {
    opacity: 0;
  }
}
.togglebutton {
  vertical-align: middle;
}
.togglebutton, .togglebutton label, .togglebutton input, .togglebutton .toggle {
  user-select: none;
}
.togglebutton label {
  cursor: pointer;
  color: rgba(0,0,0, 0.26);
}
.form-group.is-focused .togglebutton label {
  color: rgba(0,0,0, 0.26);
}
.form-group.is-focused .togglebutton label:hover, .form-group.is-focused .togglebutton label:focus {
  color: rgba(0,0,0, .54);
}
fieldset[disabled] .form-group.is-focused .togglebutton label {
  color: rgba(0,0,0, 0.26);
}
.togglebutton label input[type=checkbox] {
  opacity: 0;
  width: 0;
  height: 0;
}
.togglebutton label .toggle {
  text-align: left;
  margin-left: 5px;
}
.togglebutton label .toggle,
.togglebutton label input[type=checkbox][disabled] + .toggle {
  content: "";
  display: inline-block;
  width: 30px;
  height: 15px;
  background-color: rgba(80, 80, 80, 0.7);
  border-radius: 15px;
  margin-right: 15px;
  transition: background 0.3s ease;
  vertical-align: middle;
}
.togglebutton label .toggle:after {
  content: "";
  display: inline-block;
  width: 20px;
  height: 20px;
  background-color: #FFFFFF;
  border-radius: 20px;
  position: relative;
  box-shadow: 0 1px 3px 1px rgba(0, 0, 0, 0.4);
  left: -5px;
  top: -3px;
  border: 1px solid rgba(0,0,0, .54);
  transition: left 0.3s ease, background 0.3s ease, box-shadow 0.1s ease;
}
.togglebutton label input[type=checkbox][disabled] + .toggle:after, .togglebutton label input[type=checkbox][disabled]:checked + .toggle:after {
  background-color: #BDBDBD;
}
.togglebutton label input[type=checkbox] + .toggle:active:after, .togglebutton label input[type=checkbox][disabled] + .toggle:active:after {
  box-shadow: 0 1px 3px 1px rgba(0, 0, 0, 0.4), 0 0 0 15px rgba(0, 0, 0, 0.1);
}
.togglebutton label input[type=checkbox]:checked + .toggle:after {
  left: 15px;
}
.togglebutton label input[type=checkbox]:checked + .toggle {
  background-color: rgba(156, 39, 176, 0.7);
}
.togglebutton label input[type=checkbox]:checked + .toggle:after {
  border-color: #9c27b0;
}
.togglebutton label input[type=checkbox]:checked + .toggle:active:after {
  box-shadow: 0 1px 3px 1px rgba(0, 0, 0, 0.4), 0 0 0 15px rgba(156, 39, 176, 0.1);
}

.radio label {
  cursor: pointer;
  padding-left: 35px;
  position: relative;
  color: rgba(0,0,0, 0.26);
}
.form-group.is-focused .radio label {
  color: rgba(0,0,0, 0.26);
}
.form-group.is-focused .radio label:hover, .form-group.is-focused .radio label:focus {
  color: rgba(0,0,0, .54);
}
fieldset[disabled] .form-group.is-focused .radio label {
  color: rgba(0,0,0, 0.26);
}
.radio label span {
  display: block;
  position: absolute;
  left: 10px;
  top: 2px;
  transition-duration: 0.2s;
}
.radio label .circle {
  border: 1px solid rgba(0,0,0, .54);
  height: 15px;
  width: 15px;
  border-radius: 100%;
}
.radio label .check {
  height: 15px;
  width: 15px;
  border-radius: 100%;
  background-color: #9c27b0;
  -webkit-transform: scale3d(0,0,0);
  -moz-transform: scale3d(0,0,0);
  -o-transform: scale3d(0,0,0);
  -ms-transform: scale3d(0,0,0);
  transform: scale3d(0,0,0);
}
.radio label .check:after {
  display: block;
  position: absolute;
  content: "";
  background-color: rgba(0,0,0, 0.87);
  left: -18px;
  top: -18px;
  height: 50px;
  width: 50px;
  border-radius: 100%;
  z-index: 1;
  opacity: 0;
  margin: 0;
  -webkit-transform: scale3d(1.5,1.5,1);
  -moz-transform: scale3d(1.5,1.5,1);
  -o-transform: scale3d(1.5,1.5,1);
  -ms-transform: scale3d(1.5,1.5,1);
  transform: scale3d(1.5,1.5,1);
}
.radio label input[type=radio]:not(:checked) ~ .check:after {
  -webkit-animation: rippleOff 500ms;
  -moz-animation: rippleOff 500ms;
  -o-animation: rippleOff 500ms;
  -ms-animation: rippleOff 500ms;
  animation: rippleOff 500ms;
}
.radio label input[type=radio]:checked ~ .check:after {
  -webkit-animation: rippleOff 500ms;
  -moz-animation: rippleOff 500ms;
  -o-animation: rippleOff 500ms;
  -ms-animation: rippleOff 500ms;
  animation: rippleOff 500ms;
}
.radio input[type=radio] {
  opacity: 0;
  height: 0;
  width: 0;
  overflow: hidden;
}
.radio input[type=radio]:checked ~ .check, .radio input[type=radio]:checked ~ .circle {
  opacity: 1;
}
.radio input[type=radio]:checked ~ .check {
  background-color: #9c27b0;
}
.radio input[type=radio]:checked ~ .circle {
  border-color: #9c27b0;
}
.radio input[type=radio]:checked ~ .check {
  -webkit-transform: scale3d(0.65, 0.65, 1);
  -moz-transform: scale3d(0.65, 0.65, 1);
  -o-transform: scale3d(0.65, 0.65, 1);
  -ms-transform: scale3d(0.65, 0.65, 1);
  transform: scale3d(0.65, 0.65, 1);
}
.radio input[type=radio][disabled] ~ .check, .radio input[type=radio][disabled] ~ .circle {
  opacity: 0.26;
}
.radio input[type=radio][disabled] ~ .check {
  background-color: #000000;
}
.radio input[type=radio][disabled] ~ .circle {
  border-color: #000000;
}

@keyframes rippleOn {
  0% {
    opacity: 0;
  }
  50% {
    opacity: 0.2;
  }
  100% {
    opacity: 0;
  }
}
@keyframes rippleOff {
  0% {
    opacity: 0;
  }
  50% {
    opacity: 0.2;
  }
  100% {
    opacity: 0;
  }
}
legend {
  margin-bottom: 20px;
  font-size: 21px;
}

output {
  padding-top: 8px;
  font-size: 14px;
  line-height: 1.42857;
}

.form-control {
  height: 36px;
  padding: 7px 0;
  font-size: 14px;
  line-height: 1.42857;
}

@media screen and (-webkit-min-device-pixel-ratio: 0) {
  input[type="date"].form-control,
  input[type="time"].form-control,
  input[type="datetime-local"].form-control,
  input[type="month"].form-control {
    line-height: 36px;
  }
  input[type="date"].input-sm, .input-group-sm input[type="date"],
  input[type="time"].input-sm, .input-group-sm
  input[type="time"],
  input[type="datetime-local"].input-sm, .input-group-sm
  input[type="datetime-local"],
  input[type="month"].input-sm, .input-group-sm
  input[type="month"] {
    line-height: 24px;
  }
  input[type="date"].input-lg, .input-group-lg input[type="date"],
  input[type="time"].input-lg, .input-group-lg
  input[type="time"],
  input[type="datetime-local"].input-lg, .input-group-lg
  input[type="datetime-local"],
  input[type="month"].input-lg, .input-group-lg
  input[type="month"] {
    line-height: 44px;
  }
}
.radio label,
.checkbox label {
  min-height: 20px;
}

.form-control-static {
  padding-top: 8px;
  padding-bottom: 8px;
  min-height: 34px;
}

.input-sm .input-sm {
  height: 24px;
  padding: 3px 0;
  font-size: 11px;
  line-height: 1.5;
  border-radius: 0;
}
.input-sm select.input-sm {
  height: 24px;
  line-height: 24px;
}
.input-sm textarea.input-sm,
.input-sm select[multiple].input-sm {
  height: auto;
}

.form-group-sm .form-control {
  height: 24px;
  padding: 3px 0;
  font-size: 11px;
  line-height: 1.5;
}
.form-group-sm select.form-control {
  height: 24px;
  line-height: 24px;
}
.form-group-sm textarea.form-control,
.form-group-sm select[multiple].form-control {
  height: auto;
}
.form-group-sm .form-control-static {
  height: 24px;
  min-height: 31px;
  padding: 4px 0;
  font-size: 11px;
  line-height: 1.5;
}

.input-lg .input-lg {
  height: 44px;
  padding: 9px 0;
  font-size: 18px;
  line-height: 1.33333;
  border-radius: 0;
}
.input-lg select.input-lg {
  height: 44px;
  line-height: 44px;
}
.input-lg textarea.input-lg,
.input-lg select[multiple].input-lg {
  height: auto;
}

.form-group-lg .form-control {
  height: 44px;
  padding: 9px 0;
  font-size: 18px;
  line-height: 1.33333;
}
.form-group-lg select.form-control {
  height: 44px;
  line-height: 44px;
}
.form-group-lg textarea.form-control,
.form-group-lg select[multiple].form-control {
  height: auto;
}
.form-group-lg .form-control-static {
  height: 44px;
  min-height: 38px;
  padding: 10px 0;
  font-size: 18px;
  line-height: 1.33333;
}

.form-horizontal .radio,
.form-horizontal .checkbox,
.form-horizontal .radio-inline,
.form-horizontal .checkbox-inline {
  padding-top: 8px;
}
.form-horizontal .radio,
.form-horizontal .checkbox {
  min-height: 28px;
}
@media (min-width: 768px) {
  .form-horizontal .control-label {
    padding-top: 8px;
  }
}
@media (min-width: 768px) {
  .form-horizontal .form-group-lg .control-label {
    padding-top: 13.0px;
    font-size: 18px;
  }
}
@media (min-width: 768px) {
  .form-horizontal .form-group-sm .control-label {
    padding-top: 4px;
    font-size: 11px;
  }
}

.label {
  border-radius: 2px;
}
.label, .label.label-default {
  background-color: #9e9e9e;
}
.label.label-inverse {
  background-color: #3f51b5;
}
.label.label-primary {
  background-color: #9c27b0;
}
.label.label-success {
  background-color: #4caf50;
}
.label.label-info {
  background-color: #03a9f4;
}
.label.label-warning {
  background-color: #fbc02d;
}
.label.label-danger {
  background-color: #f44336;
}

.form-control,
.form-group .form-control {
  border: 0;
  background-image: linear-gradient(#9c27b0, #9c27b0), linear-gradient(#D2D2D2, #D2D2D2);
  background-size: 0 2px, 100% 1px;
  background-repeat: no-repeat;
  background-position: center bottom, center calc(100% - 1px);
  background-color: transparent;
  transition: background 0s ease-out;
  float: none;
  box-shadow: none;
  border-radius: 0;
  font-weight: 400;
}
.form-control::-moz-placeholder,
.form-group .form-control::-moz-placeholder {
  color: #AAAAAA;
  font-weight: 400;
}
.form-control:-ms-input-placeholder,
.form-group .form-control:-ms-input-placeholder {
  color: #AAAAAA;
  font-weight: 400;
}
.form-control::-webkit-input-placeholder,
.form-group .form-control::-webkit-input-placeholder {
  color: #AAAAAA;
  font-weight: 400;
}
.form-control[readonly], .form-control[disabled], fieldset[disabled] .form-control,
.form-group .form-control[readonly],
.form-group .form-control[disabled], fieldset[disabled]
.form-group .form-control {
  background-color: transparent;
}
.form-control[disabled], fieldset[disabled] .form-control,
.form-group .form-control[disabled], fieldset[disabled]
.form-group .form-control {
  background-image: none;
  border-bottom: 1px dotted #D2D2D2;
}

.form-group {
  position: relative;
}
.form-group.label-static label.control-label, .form-group.label-placeholder label.control-label, .form-group.label-floating label.control-label {
  position: absolute;
  pointer-events: none;
  transition: 0.3s ease all;
}
.form-group.label-floating label.control-label {
  will-change: left, top, contents;
}
.form-group.label-placeholder:not(.is-empty) label.control-label {
  display: none;
}
.form-group .help-block {
  position: absolute;
  display: none;
}
.form-group.is-focused .form-control {
  outline: none;
  background-image: linear-gradient(#9c27b0, #9c27b0), linear-gradient(#D2D2D2, #D2D2D2);
  background-size: 100% 2px, 100% 1px;
  box-shadow: none;
  transition-duration: 0.3s;
}
.form-group.is-focused .form-control .material-input:after {
  background-color: #9c27b0;
}
.form-group.is-focused label,
.form-group.is-focused label.control-label {
  color: #9c27b0;
}
.form-group.is-focused.label-placeholder label,
.form-group.is-focused.label-placeholder label.control-label {
  color: #AAAAAA;
}
.form-group.is-focused .help-block {
  display: block;
}
.form-group.has-warning .form-control {
  box-shadow: none;
}
.form-group.has-warning.is-focused .form-control {
  background-image: linear-gradient(#fbc02d, #fbc02d), linear-gradient(#D2D2D2, #D2D2D2);
}
.form-group.has-warning label.control-label,
.form-group.has-warning .help-block {
  color: #fbc02d;
}
.form-group.has-error .form-control {
  box-shadow: none;
}
.form-group.has-error.is-focused .form-control {
  background-image: linear-gradient(#f44336, #f44336), linear-gradient(#D2D2D2, #D2D2D2);
}
.form-group.has-error label.control-label,
.form-group.has-error .help-block {
  color: #f44336;
}
.form-group.has-success .form-control {
  box-shadow: none;
}
.form-group.has-success.is-focused .form-control {
  background-image: linear-gradient(#4caf50, #4caf50), linear-gradient(#D2D2D2, #D2D2D2);
}
.form-group.has-success label.control-label,
.form-group.has-success .help-block {
  color: #4caf50;
}
.form-group.has-info .form-control {
  box-shadow: none;
}
.form-group.has-info.is-focused .form-control {
  background-image: linear-gradient(#03a9f4, #03a9f4), linear-gradient(#D2D2D2, #D2D2D2);
}
.form-group.has-info label.control-label,
.form-group.has-info .help-block {
  color: #03a9f4;
}
.form-group textarea {
  resize: none;
}
.form-group textarea ~ .form-control-highlight {
  margin-top: -11px;
}
.form-group select {
  appearance: none;
}
.form-group select ~ .material-input:after {
  display: none;
}

.form-control {
  margin-bottom: 7px;
}
.form-control::-moz-placeholder {
  font-size: 14px;
  line-height: 1.42857;
  color: #AAAAAA;
  font-weight: 400;
}
.form-control:-ms-input-placeholder {
  font-size: 14px;
  line-height: 1.42857;
  color: #AAAAAA;
  font-weight: 400;
}
.form-control::-webkit-input-placeholder {
  font-size: 14px;
  line-height: 1.42857;
  color: #AAAAAA;
  font-weight: 400;
}

.checkbox label,
.radio label,
label {
  font-size: 14px;
  line-height: 1.42857;
  color: #AAAAAA;
  font-weight: 400;
}

label.control-label {
  font-size: 11px;
  line-height: 1.07143;
  color: #AAAAAA;
  font-weight: 400;
  margin: 16px 0 0 0;
}

.help-block {
  margin-top: 0;
  font-size: 11px;
}

.form-group {
  padding-bottom: 7px;
  margin: 27px 0 0 0;
}
.form-group .form-control {
  margin-bottom: 7px;
}
.form-group .form-control::-moz-placeholder {
  font-size: 14px;
  line-height: 1.42857;
  color: #AAAAAA;
  font-weight: 400;
}
.form-group .form-control:-ms-input-placeholder {
  font-size: 14px;
  line-height: 1.42857;
  color: #AAAAAA;
  font-weight: 400;
}
.form-group .form-control::-webkit-input-placeholder {
  font-size: 14px;
  line-height: 1.42857;
  color: #AAAAAA;
  font-weight: 400;
}
.form-group .checkbox label,
.form-group .radio label,
.form-group label {
  font-size: 14px;
  line-height: 1.42857;
  color: #AAAAAA;
  font-weight: 400;
}
.form-group label.control-label {
  font-size: 11px;
  line-height: 1.07143;
  color: #AAAAAA;
  font-weight: 400;
  margin: 16px 0 0 0;
}
.form-group .help-block {
  margin-top: 0;
  font-size: 11px;
}
.form-group.label-floating label.control-label, .form-group.label-placeholder label.control-label {
  top: -7px;
  font-size: 14px;
  line-height: 1.42857;
}
.form-group.label-static label.control-label, .form-group.label-floating.is-focused label.control-label, .form-group.label-floating:not(.is-empty) label.control-label {
  top: -28px;
  left: 0;
  font-size: 11px;
  line-height: 1.07143;
}
.form-group.label-floating input.form-control:-webkit-autofill ~ label.control-label label.control-label {
  top: -28px;
  left: 0;
  font-size: 11px;
  line-height: 1.07143;
}

.form-group.form-group-sm {
  padding-bottom: 3px;
  margin: 21px 0 0 0;
}
.form-group.form-group-sm .form-control {
  margin-bottom: 3px;
}
.form-group.form-group-sm .form-control::-moz-placeholder {
  font-size: 11px;
  line-height: 1.5;
  color: #AAAAAA;
  font-weight: 400;
}
.form-group.form-group-sm .form-control:-ms-input-placeholder {
  font-size: 11px;
  line-height: 1.5;
  color: #AAAAAA;
  font-weight: 400;
}
.form-group.form-group-sm .form-control::-webkit-input-placeholder {
  font-size: 11px;
  line-height: 1.5;
  color: #AAAAAA;
  font-weight: 400;
}
.form-group.form-group-sm .checkbox label,
.form-group.form-group-sm .radio label,
.form-group.form-group-sm label {
  font-size: 11px;
  line-height: 1.5;
  color: #AAAAAA;
  font-weight: 400;
}
.form-group.form-group-sm label.control-label {
  font-size: 9px;
  line-height: 1.125;
  color: #AAAAAA;
  font-weight: 400;
  margin: 16px 0 0 0;
}
.form-group.form-group-sm .help-block {
  margin-top: 0;
  font-size: 9px;
}
.form-group.form-group-sm.label-floating label.control-label, .form-group.form-group-sm.label-placeholder label.control-label {
  top: -11px;
  font-size: 11px;
  line-height: 1.5;
}
.form-group.form-group-sm.label-static label.control-label, .form-group.form-group-sm.label-floating.is-focused label.control-label, .form-group.form-group-sm.label-floating:not(.is-empty) label.control-label {
  top: -25px;
  left: 0;
  font-size: 9px;
  line-height: 1.125;
}
.form-group.form-group-sm.label-floating input.form-control:-webkit-autofill ~ label.control-label label.control-label {
  top: -25px;
  left: 0;
  font-size: 9px;
  line-height: 1.125;
}

.form-group.form-group-lg {
  padding-bottom: 9px;
  margin: 30px 0 0 0;
}
.form-group.form-group-lg .form-control {
  margin-bottom: 9px;
}
.form-group.form-group-lg .form-control::-moz-placeholder {
  font-size: 18px;
  line-height: 1.33333;
  color: #AAAAAA;
  font-weight: 400;
}
.form-group.form-group-lg .form-control:-ms-input-placeholder {
  font-size: 18px;
  line-height: 1.33333;
  color: #AAAAAA;
  font-weight: 400;
}
.form-group.form-group-lg .form-control::-webkit-input-placeholder {
  font-size: 18px;
  line-height: 1.33333;
  color: #AAAAAA;
  font-weight: 400;
}
.form-group.form-group-lg .checkbox label,
.form-group.form-group-lg .radio label,
.form-group.form-group-lg label {
  font-size: 18px;
  line-height: 1.33333;
  color: #AAAAAA;
  font-weight: 400;
}
.form-group.form-group-lg label.control-label {
  font-size: 14px;
  line-height: 1.0;
  color: #AAAAAA;
  font-weight: 400;
  margin: 16px 0 0 0;
}
.form-group.form-group-lg .help-block {
  margin-top: 0;
  font-size: 14px;
}
.form-group.form-group-lg.label-floating label.control-label, .form-group.form-group-lg.label-placeholder label.control-label {
  top: -5px;
  font-size: 18px;
  line-height: 1.33333;
}
.form-group.form-group-lg.label-static label.control-label, .form-group.form-group-lg.label-floating.is-focused label.control-label, .form-group.form-group-lg.label-floating:not(.is-empty) label.control-label {
  top: -32px;
  left: 0;
  font-size: 14px;
  line-height: 1.0;
}
.form-group.form-group-lg.label-floating input.form-control:-webkit-autofill ~ label.control-label label.control-label {
  top: -32px;
  left: 0;
  font-size: 14px;
  line-height: 1.0;
}

select.form-control {
  border: 0;
  box-shadow: none;
  border-radius: 0;
}
.form-group.is-focused select.form-control {
  box-shadow: none;
  border-color: #D2D2D2;
}
select.form-control[multiple], .form-group.is-focused select.form-control[multiple] {
  height: 85px;
}

.input-group-btn .btn {
  margin: 0 0 7px 0;
}

.form-group.form-group-sm .input-group-btn .btn {
  margin: 0 0 3px 0;
}
.form-group.form-group-lg .input-group-btn .btn {
  margin: 0 0 9px 0;
}

.input-group .input-group-btn {
  padding: 0 12px;
}
.input-group .input-group-addon {
  border: 0;
  background: transparent;
  padding: 12px 15px 0px;
}

.form-group input[type=file] {
  opacity: 0;
  position: absolute;
  top: 0;
  right: 0;
  bottom: 0;
  left: 0;
  width: 100%;
  height: 100%;
  z-index: 100;
}

.form-control-feedback {
  opacity: 0;
}
.has-success .form-control-feedback {
  color: #4caf50;
  opacity: 1;
}
.has-error .form-control-feedback {
  color: #f44336;
  opacity: 1;
}

.pagination > li > a,
.pagination > li > span {
  border: 0;
  border-radius: 30px !important;
  transition: all .3s;
  padding: 0px 11px;
  margin: 0 3px;
  min-width: 30px;
  height: 30px;
  line-height: 30px;
  color: #999999;
  font-weight: 400;
  font-size: 12px;
  text-transform: uppercase;
  background: transparent;
}
.pagination > li > a:hover, .pagination > li > a:focus,
.pagination > li > span:hover,
.pagination > li > span:focus {
  color: #999999;
}
.pagination > .active > a,
.pagination > .active > span {
  color: #999999;
}
.pagination > .active > a, .pagination > .active > a:focus, .pagination > .active > a:hover,
.pagination > .active > span,
.pagination > .active > span:focus,
.pagination > .active > span:hover {
  background-color: #9c27b0;
  border-color: #9c27b0;
  color: #FFFFFF;
  box-shadow: 0 4px 5px 0 rgba(156, 39, 176, 0.14), 0 1px 10px 0 rgba(156, 39, 176, 0.12), 0 2px 4px -1px rgba(156, 39, 176, 0.2);
}
.pagination.pagination-info > .active > a, .pagination.pagination-info > .active > a:focus, .pagination.pagination-info > .active > a:hover,
.pagination.pagination-info > .active > span,
.pagination.pagination-info > .active > span:focus,
.pagination.pagination-info > .active > span:hover {
  background-color: #03a9f4;
  border-color: #03a9f4;
  box-shadow: 0 4px 5px 0 rgba(3, 169, 244, 0.14), 0 1px 10px 0 rgba(3, 169, 244, 0.12), 0 2px 4px -1px rgba(3, 169, 244, 0.2);
}
.pagination.pagination-success > .active > a, .pagination.pagination-success > .active > a:focus, .pagination.pagination-success > .active > a:hover,
.pagination.pagination-success > .active > span,
.pagination.pagination-success > .active > span:focus,
.pagination.pagination-success > .active > span:hover {
  background-color: #4caf50;
  border-color: #4caf50;
  box-shadow: 0 4px 5px 0 rgba(76, 175, 80, 0.14), 0 1px 10px 0 rgba(76, 175, 80, 0.12), 0 2px 4px -1px rgba(76, 175, 80, 0.2);
}
.pagination.pagination-warning > .active > a, .pagination.pagination-warning > .active > a:focus, .pagination.pagination-warning > .active > a:hover,
.pagination.pagination-warning > .active > span,
.pagination.pagination-warning > .active > span:focus,
.pagination.pagination-warning > .active > span:hover {
  background-color: #fbc02d;
  border-color: #fbc02d;
  box-shadow: 0 4px 5px 0 rgba(251, 192, 45, 0.14), 0 1px 10px 0 rgba(251, 192, 45, 0.12), 0 2px 4px -1px rgba(251, 192, 45, 0.2);
}
.pagination.pagination-danger > .active > a, .pagination.pagination-danger > .active > a:focus, .pagination.pagination-danger > .active > a:hover,
.pagination.pagination-danger > .active > span,
.pagination.pagination-danger > .active > span:focus,
.pagination.pagination-danger > .active > span:hover {
  background-color: #f44336;
  border-color: #f44336;
  box-shadow: 0 4px 5px 0 rgba(244, 67, 54, 0.14), 0 1px 10px 0 rgba(244, 67, 54, 0.12), 0 2px 4px -1px rgba(244, 67, 54, 0.2);
}

.label {
  border-radius: 10px;
  padding: 5px 12px;
  text-transform: uppercase;
  font-size: 10px;
}
.label.label-default {
  background-color: #999999;
}

.nav-pills > li > a {
  line-height: 24px;
  text-transform: uppercase;
  font-size: 12px;
  font-weight: 500;
  min-width: 100px;
  text-align: center;
  color: #555555;
  transition: all .3s;
}
.nav-pills > li > a:hover {
  background-color: rgba(200, 200, 200, 0.2);
}
.nav-pills > li i {
  display: block;
  font-size: 30px;
  padding: 15px 0;
}
.nav-pills > li.active > a, .nav-pills > li.active > a:focus, .nav-pills > li.active > a:hover {
  background-color: #9c27b0;
  color: #FFFFFF;
  box-shadow: 0 16px 26px -10px rgba(156, 39, 176, 0.56), 0 4px 25px 0px rgba(0, 0, 0, 0.12), 0 8px 10px -5px rgba(156, 39, 176, 0.2);
}
.nav-pills.nav-pills-info > li.active > a, .nav-pills.nav-pills-info > li.active > a:focus, .nav-pills.nav-pills-info > li.active > a:hover {
  background-color: #03a9f4;
  box-shadow: 0 16px 26px -10px rgba(3, 169, 244, 0.56), 0 4px 25px 0px rgba(0, 0, 0, 0.12), 0 8px 10px -5px rgba(3, 169, 244, 0.2);
}
.nav-pills.nav-pills-success > li.active > a, .nav-pills.nav-pills-success > li.active > a:focus, .nav-pills.nav-pills-success > li.active > a:hover {
  background-color: #4caf50;
  box-shadow: 0 16px 26px -10px rgba(76, 175, 80, 0.56), 0 4px 25px 0px rgba(0, 0, 0, 0.12), 0 8px 10px -5px rgba(76, 175, 80, 0.2);
}
.nav-pills.nav-pills-warning > li.active > a, .nav-pills.nav-pills-warning > li.active > a:focus, .nav-pills.nav-pills-warning > li.active > a:hover {
  background-color: #fbc02d;
  box-shadow: 0 16px 26px -10px rgba(251, 192, 45, 0.56), 0 4px 25px 0px rgba(0, 0, 0, 0.12), 0 8px 10px -5px rgba(251, 192, 45, 0.2);
}
.nav-pills.nav-pills-danger > li.active > a, .nav-pills.nav-pills-danger > li.active > a:focus, .nav-pills.nav-pills-danger > li.active > a:hover {
  background-color: #f44336;
  box-shadow: 0 16px 26px -10px rgba(244, 67, 54, 0.56), 0 4px 25px 0px rgba(0, 0, 0, 0.12), 0 8px 10px -5px rgba(244, 67, 54, 0.2);
}

.tab-space {
  padding: 20px 0 50px 0px;
}

footer {
  padding: 15px 0;
}
footer ul {
  margin-bottom: 0;
  padding: 0;
  list-style: none;
}
footer ul li {
  display: inline-block;
}
footer ul li a {
  color: inherit;
  padding: 15px;
  font-weight: 500;
  font-size: 12px;
  text-transform: uppercase;
  border-radius: 3px;
  text-decoration: none;
  position: relative;
  display: block;
}
footer ul li a:hover {
  text-decoration: none;
}
footer .copyright {
  padding: 15px 0;
}
footer .copyright .material-icons {
  font-size: 18px;
  position: relative;
  top: 3px;
}

legend {
  border-bottom: 0;
}

.navbar {
  border: 0;
  border-radius: 3px;
  box-shadow: 0 10px 20px -12px rgba(0, 0, 0, 0.42), 0 3px 20px 0px rgba(0, 0, 0, 0.12), 0 8px 10px -5px rgba(0, 0, 0, 0.2);
  padding: 10px 0;
}
.navbar .navbar-brand {
  position: relative;
  height: 50px;
  line-height: 30px;
  color: inherit;
  padding: 10px 15px;
}
.navbar .navbar-brand:hover, .navbar .navbar-brand:focus {
  color: inherit;
  background-color: transparent;
}
.navbar .navbar-text {
  color: inherit;
  margin-top: 15px;
  margin-bottom: 15px;
}
.navbar .navbar-nav > li > a {
  color: inherit;
  padding-top: 15px;
  padding-bottom: 15px;
  font-weight: 400;
  font-size: 12px;
  text-transform: uppercase;
  border-radius: 3px;
}
.navbar .navbar-nav > li > a:hover, .navbar .navbar-nav > li > a:focus {
  color: inherit;
  background-color: transparent;
}
.navbar .navbar-nav > li > a .material-icons,
.navbar .navbar-nav > li > a .fa {
  font-size: 20px;
  max-width: 20px;
}
.navbar .navbar-nav > li > a:not(.btn-just-icon) .fa {
  position: relative;
  top: 2px;
  margin-top: -4px;
  margin-right: 4px;
}
.navbar .navbar-nav > li > .dropdown-menu {
  margin-top: -20px;
}
.navbar .navbar-nav > li.open > .dropdown-menu {
  margin-top: 0;
}
.navbar .navbar-nav > .active > a, .navbar .navbar-nav > .active > a:hover, .navbar .navbar-nav > .active > a:focus {
  color: inherit;
  background-color: rgba(255, 255, 255, 0.1);
}
.navbar .navbar-nav > .disabled > a, .navbar .navbar-nav > .disabled > a:hover, .navbar .navbar-nav > .disabled > a:focus {
  color: inherit;
  background-color: transparent;
  opacity: 0.9;
}
.navbar .navbar-toggle {
  border: 0;
}
.navbar .navbar-toggle:hover, .navbar .navbar-toggle:focus {
  background-color: transparent;
}
.navbar .navbar-toggle .icon-bar {
  background-color: inherit;
  border: 1px solid;
}
.navbar .navbar-default .navbar-toggle,
.navbar .navbar-inverse .navbar-toggle {
  border-color: transparent;
}
.navbar .navbar-collapse,
.navbar .navbar-form {
  border-top: none;
  box-shadow: none;
}
.navbar .navbar-nav > .open > a, .navbar .navbar-nav > .open > a:hover, .navbar .navbar-nav > .open > a:focus {
  background-color: transparent;
  color: inherit;
}
@media (max-width: 767px) {
  .navbar .navbar-nav .navbar-text {
    color: inherit;
    margin-top: 15px;
    margin-bottom: 15px;
  }
  .navbar .navbar-nav .open .dropdown-menu > .dropdown-header {
    border: 0;
    color: inherit;
  }
  .navbar .navbar-nav .open .dropdown-menu .divider {
    border-bottom: 1px solid;
    opacity: 0.08;
  }
  .navbar .navbar-nav .open .dropdown-menu > li > a {
    color: inherit;
  }
  .navbar .navbar-nav .open .dropdown-menu > li > a:hover, .navbar .navbar-nav .open .dropdown-menu > li > a:focus {
    color: inherit;
    background-color: transparent;
  }
  .navbar .navbar-nav .open .dropdown-menu > .active > a, .navbar .navbar-nav .open .dropdown-menu > .active > a:hover, .navbar .navbar-nav .open .dropdown-menu > .active > a:focus {
    color: inherit;
    background-color: transparent;
  }
  .navbar .navbar-nav .open .dropdown-menu > .disabled > a, .navbar .navbar-nav .open .dropdown-menu > .disabled > a:hover, .navbar .navbar-nav .open .dropdown-menu > .disabled > a:focus {
    color: inherit;
    background-color: transparent;
  }
}
.navbar.navbar-default .logo-container .brand {
  color: #555555;
}
.navbar .navbar-link {
  color: inherit;
}
.navbar .navbar-link:hover {
  color: inherit;
}
.navbar .btn {
  margin-top: 0;
  margin-bottom: 0;
}
.navbar .btn-link {
  color: inherit;
}
.navbar .btn-link:hover, .navbar .btn-link:focus {
  color: inherit;
}
.navbar .btn-link[disabled]:hover, .navbar .btn-link[disabled]:focus, fieldset[disabled] .navbar .btn-link:hover, fieldset[disabled] .navbar .btn-link:focus {
  color: inherit;
}
.navbar .navbar-form {
  margin: 4px 0 0;
}
.navbar .navbar-form .form-group {
  margin: 0;
  padding: 0;
}
.navbar .navbar-form .form-group .material-input:before, .navbar .navbar-form .form-group.is-focused .material-input:after {
  background-color: inherit;
}
.navbar .navbar-form .form-group .form-control,
.navbar .navbar-form .form-control {
  border-color: inherit;
  color: inherit;
  padding: 0;
  margin: 0;
  height: 28px;
  font-size: 14px;
  line-height: 1.42857;
}
.navbar, .navbar.navbar-default {
  background-color: #9c27b0;
  color: #ffffff;
}
.navbar .navbar-form .form-group input.form-control::-moz-placeholder,
.navbar .navbar-form input.form-control::-moz-placeholder, .navbar.navbar-default .navbar-form .form-group input.form-control::-moz-placeholder,
.navbar.navbar-default .navbar-form input.form-control::-moz-placeholder {
  color: #ffffff;
}
.navbar .navbar-form .form-group input.form-control:-ms-input-placeholder,
.navbar .navbar-form input.form-control:-ms-input-placeholder, .navbar.navbar-default .navbar-form .form-group input.form-control:-ms-input-placeholder,
.navbar.navbar-default .navbar-form input.form-control:-ms-input-placeholder {
  color: #ffffff;
}
.navbar .navbar-form .form-group input.form-control::-webkit-input-placeholder,
.navbar .navbar-form input.form-control::-webkit-input-placeholder, .navbar.navbar-default .navbar-form .form-group input.form-control::-webkit-input-placeholder,
.navbar.navbar-default .navbar-form input.form-control::-webkit-input-placeholder {
  color: #ffffff;
}
.navbar .dropdown-menu, .navbar.navbar-default .dropdown-menu {
  border-radius: 3px !important;
}
.navbar .dropdown-menu li > a:hover, .navbar .dropdown-menu li > a:focus, .navbar.navbar-default .dropdown-menu li > a:hover, .navbar.navbar-default .dropdown-menu li > a:focus {
  color: #FFFFFF;
  background-color: #9c27b0;
}
.navbar .dropdown-menu .active > a, .navbar.navbar-default .dropdown-menu .active > a {
  background-color: #9c27b0;
  color: #ffffff;
}
.navbar .dropdown-menu .active > a:hover, .navbar .dropdown-menu .active > a:focus, .navbar.navbar-default .dropdown-menu .active > a:hover, .navbar.navbar-default .dropdown-menu .active > a:focus {
  color: #ffffff;
}
.navbar.navbar-inverse {
  background-color: #3f51b5;
  color: contrast-color(#3f51b5, #000000, #ffffff);
}
.navbar.navbar-inverse .navbar-form .form-group input.form-control::-moz-placeholder,
.navbar.navbar-inverse .navbar-form input.form-control::-moz-placeholder {
  color: contrast-color(#3f51b5, #000000, #ffffff);
}
.navbar.navbar-inverse .navbar-form .form-group input.form-control:-ms-input-placeholder,
.navbar.navbar-inverse .navbar-form input.form-control:-ms-input-placeholder {
  color: contrast-color(#3f51b5, #000000, #ffffff);
}
.navbar.navbar-inverse .navbar-form .form-group input.form-control::-webkit-input-placeholder,
.navbar.navbar-inverse .navbar-form input.form-control::-webkit-input-placeholder {
  color: contrast-color(#3f51b5, #000000, #ffffff);
}
.navbar.navbar-inverse .dropdown-menu {
  border-radius: 3px !important;
}
.navbar.navbar-inverse .dropdown-menu li > a:hover, .navbar.navbar-inverse .dropdown-menu li > a:focus {
  color: #FFFFFF;
  background-color: #3f51b5;
}
.navbar.navbar-inverse .dropdown-menu .active > a {
  background-color: #3f51b5;
  color: contrast-color(#3f51b5, #000000, #ffffff);
}
.navbar.navbar-inverse .dropdown-menu .active > a:hover, .navbar.navbar-inverse .dropdown-menu .active > a:focus {
  color: contrast-color(#3f51b5, #000000, #ffffff);
}
.navbar.navbar-primary {
  background-color: #9c27b0;
  color: #ffffff;
}
.navbar.navbar-primary .navbar-form .form-group input.form-control::-moz-placeholder,
.navbar.navbar-primary .navbar-form input.form-control::-moz-placeholder {
  color: #ffffff;
}
.navbar.navbar-primary .navbar-form .form-group input.form-control:-ms-input-placeholder,
.navbar.navbar-primary .navbar-form input.form-control:-ms-input-placeholder {
  color: #ffffff;
}
.navbar.navbar-primary .navbar-form .form-group input.form-control::-webkit-input-placeholder,
.navbar.navbar-primary .navbar-form input.form-control::-webkit-input-placeholder {
  color: #ffffff;
}
.navbar.navbar-primary .dropdown-menu {
  border-radius: 3px !important;
}
.navbar.navbar-primary .dropdown-menu li > a:hover, .navbar.navbar-primary .dropdown-menu li > a:focus {
  color: #FFFFFF;
  background-color: #9c27b0;
}
.navbar.navbar-primary .dropdown-menu .active > a {
  background-color: #9c27b0;
  color: #ffffff;
}
.navbar.navbar-primary .dropdown-menu .active > a:hover, .navbar.navbar-primary .dropdown-menu .active > a:focus {
  color: #ffffff;
}
.navbar.navbar-success {
  background-color: #4caf50;
  color: #ffffff;
}
.navbar.navbar-success .navbar-form .form-group input.form-control::-moz-placeholder,
.navbar.navbar-success .navbar-form input.form-control::-moz-placeholder {
  color: #ffffff;
}
.navbar.navbar-success .navbar-form .form-group input.form-control:-ms-input-placeholder,
.navbar.navbar-success .navbar-form input.form-control:-ms-input-placeholder {
  color: #ffffff;
}
.navbar.navbar-success .navbar-form .form-group input.form-control::-webkit-input-placeholder,
.navbar.navbar-success .navbar-form input.form-control::-webkit-input-placeholder {
  color: #ffffff;
}
.navbar.navbar-success .dropdown-menu {
  border-radius: 3px !important;
}
.navbar.navbar-success .dropdown-menu li > a:hover, .navbar.navbar-success .dropdown-menu li > a:focus {
  color: #FFFFFF;
  background-color: #4caf50;
}
.navbar.navbar-success .dropdown-menu .active > a {
  background-color: #4caf50;
  color: #ffffff;
}
.navbar.navbar-success .dropdown-menu .active > a:hover, .navbar.navbar-success .dropdown-menu .active > a:focus {
  color: #ffffff;
}
.navbar.navbar-info {
  background-color: #03a9f4;
  color: #ffffff;
}
.navbar.navbar-info .navbar-form .form-group input.form-control::-moz-placeholder,
.navbar.navbar-info .navbar-form input.form-control::-moz-placeholder {
  color: #ffffff;
}
.navbar.navbar-info .navbar-form .form-group input.form-control:-ms-input-placeholder,
.navbar.navbar-info .navbar-form input.form-control:-ms-input-placeholder {
  color: #ffffff;
}
.navbar.navbar-info .navbar-form .form-group input.form-control::-webkit-input-placeholder,
.navbar.navbar-info .navbar-form input.form-control::-webkit-input-placeholder {
  color: #ffffff;
}
.navbar.navbar-info .dropdown-menu {
  border-radius: 3px !important;
}
.navbar.navbar-info .dropdown-menu li > a:hover, .navbar.navbar-info .dropdown-menu li > a:focus {
  color: #FFFFFF;
  background-color: #03a9f4;
}
.navbar.navbar-info .dropdown-menu .active > a {
  background-color: #03a9f4;
  color: #ffffff;
}
.navbar.navbar-info .dropdown-menu .active > a:hover, .navbar.navbar-info .dropdown-menu .active > a:focus {
  color: #ffffff;
}
.navbar.navbar-warning {
  background-color: #fbc02d;
  color: #ffffff;
}
.navbar.navbar-warning .navbar-form .form-group input.form-control::-moz-placeholder,
.navbar.navbar-warning .navbar-form input.form-control::-moz-placeholder {
  color: #ffffff;
}
.navbar.navbar-warning .navbar-form .form-group input.form-control:-ms-input-placeholder,
.navbar.navbar-warning .navbar-form input.form-control:-ms-input-placeholder {
  color: #ffffff;
}
.navbar.navbar-warning .navbar-form .form-group input.form-control::-webkit-input-placeholder,
.navbar.navbar-warning .navbar-form input.form-control::-webkit-input-placeholder {
  color: #ffffff;
}
.navbar.navbar-warning .dropdown-menu {
  border-radius: 3px !important;
}
.navbar.navbar-warning .dropdown-menu li > a:hover, .navbar.navbar-warning .dropdown-menu li > a:focus {
  color: #FFFFFF;
  background-color: #fbc02d;
}
.navbar.navbar-warning .dropdown-menu .active > a {
  background-color: #fbc02d;
  color: #ffffff;
}
.navbar.navbar-warning .dropdown-menu .active > a:hover, .navbar.navbar-warning .dropdown-menu .active > a:focus {
  color: #ffffff;
}
.navbar.navbar-danger {
  background-color: #f44336;
  color: #ffffff;
}
.navbar.navbar-danger .navbar-form .form-group input.form-control::-moz-placeholder,
.navbar.navbar-danger .navbar-form input.form-control::-moz-placeholder {
  color: #ffffff;
}
.navbar.navbar-danger .navbar-form .form-group input.form-control:-ms-input-placeholder,
.navbar.navbar-danger .navbar-form input.form-control:-ms-input-placeholder {
  color: #ffffff;
}
.navbar.navbar-danger .navbar-form .form-group input.form-control::-webkit-input-placeholder,
.navbar.navbar-danger .navbar-form input.form-control::-webkit-input-placeholder {
  color: #ffffff;
}
.navbar.navbar-danger .dropdown-menu {
  border-radius: 3px !important;
}
.navbar.navbar-danger .dropdown-menu li > a:hover, .navbar.navbar-danger .dropdown-menu li > a:focus {
  color: #FFFFFF;
  background-color: #f44336;
}
.navbar.navbar-danger .dropdown-menu .active > a {
  background-color: #f44336;
  color: #ffffff;
}
.navbar.navbar-danger .dropdown-menu .active > a:hover, .navbar.navbar-danger .dropdown-menu .active > a:focus {
  color: #ffffff;
}
.navbar-inverse {
  background-color: #3f51b5;
}
.navbar.navbar-transparent {
  background-color: transparent;
  box-shadow: none;
  color: #fff;
  padding-top: 25px;
}
.navbar.navbar-transparent .logo-container .brand {
  color: #FFFFFF;
}
.navbar-fixed-top {
  border-radius: 0;
}
@media (max-width: 1199px) {
  .navbar {
    /*
        .navbar-form {
          margin-top: 10px;
        }
    */
  }
  .navbar .navbar-brand {
    height: 50px;
    padding: 10px 15px;
  }
  .navbar .navbar-nav > li > a {
    padding-top: 15px;
    padding-bottom: 15px;
  }
}
.navbar .alert {
  border-radius: 0;
  left: 0;
  position: absolute;
  right: 0;
  top: 85px;
  width: 100%;
  z-index: 3;
  transition: all 0.3s;
}

.dropdown-menu {
  border: 0;
  box-shadow: 0 2px 5px 0 rgba(0, 0, 0, 0.26);
}
.dropdown-menu .divider {
  background-color: rgba(0, 0, 0, 0.12);
}
.dropdown-menu li > a {
  font-size: 13px;
  padding: 10px 20px;
  margin: 0 5px;
  border-radius: 2px;
  -webkit-transition: all 150ms linear;
  -moz-transition: all 150ms linear;
  -o-transition: all 150ms linear;
  -ms-transition: all 150ms linear;
  transition: all 150ms linear;
}
.dropdown-menu li > a:hover, .dropdown-menu li > a:focus {
  box-shadow: 0 8px 10px 1px rgba(0, 0, 0, 0.14), 0 3px 14px 2px rgba(0, 0, 0, 0.12), 0 5px 5px -3px rgba(0, 0, 0, 0.2);
}
.dropdown-menu li {
  position: relative;
}
.dropdown-menu li a:hover,
.dropdown-menu li a:focus,
.dropdown-menu li a:active {
  background-color: #9c27b0;
  color: #FFFFFF;
}
.dropdown-menu .divider {
  margin: 5px 0;
}

@media (min-width: 992px) {
  .dropdown .dropdown-menu {
    -webkit-transition: all 150ms linear;
    -moz-transition: all 150ms linear;
    -o-transition: all 150ms linear;
    -ms-transition: all 150ms linear;
    transition: all 150ms linear;
    margin-top: -20px;
    opacity: 0;
    visibility: hidden;
    display: block;
  }
  .dropdown.open .dropdown-menu {
    opacity: 1;
    visibility: visible;
    margin-top: 1px;
  }
}
.info {
  max-width: 360px;
  margin: 0 auto;
  padding: 70px 0 30px;
}
.info .icon {
  color: #999999;
}
.info .icon > i {
  font-size: 4.4em;
}
.info .info-title {
  color: #3C4858;
  margin: 30px 0 15px;
}
.info p {
  color: #999999;
}

.icon.icon-primary {
  color: #9c27b0;
}
.icon.icon-info {
  color: #03a9f4;
}
.icon.icon-success {
  color: #4caf50;
}
.icon.icon-warning {
  color: #fbc02d;
}
.icon.icon-danger {
  color: #f44336;
}

.alert {
  border: 0;
  border-radius: 0;
  padding: 20px 15px;
  line-height: 20px;
}
.alert b {
  font-weight: 500;
  text-transform: uppercase;
  font-size: 12px;
}
.alert, .alert.alert-default {
  background-color: white;
  color: #ffffff;
}
.alert a, .alert .alert-link, .alert.alert-default a, .alert.alert-default .alert-link {
  color: #ffffff;
}
.alert.alert-inverse {
  background-color: #4558be;
  color: contrast-color(#3f51b5, #000000, #ffffff);
}
.alert.alert-inverse a, .alert.alert-inverse .alert-link {
  color: contrast-color(#3f51b5, #000000, #ffffff);
}
.alert.alert-primary {
  background-color: #a72abd;
  color: #ffffff;
}
.alert.alert-primary a, .alert.alert-primary .alert-link {
  color: #ffffff;
}
.alert.alert-success {
  background-color: #55b559;
  color: #ffffff;
}
.alert.alert-success a, .alert.alert-success .alert-link {
  color: #ffffff;
}
.alert.alert-info {
  background-color: #0ab1fc;
  color: #ffffff;
}
.alert.alert-info a, .alert.alert-info .alert-link {
  color: #ffffff;
}
.alert.alert-warning {
  background-color: #fbc53c;
  color: #ffffff;
}
.alert.alert-warning a, .alert.alert-warning .alert-link {
  color: #ffffff;
}
.alert.alert-danger {
  background-color: #f55145;
  color: #ffffff;
}
.alert.alert-danger a, .alert.alert-danger .alert-link {
  color: #ffffff;
}
.alert-info, .alert-danger, .alert-warning, .alert-success {
  color: #ffffff;
}
.alert-default a, .alert-default .alert-link {
  color: rgba(0,0,0, 0.87);
}
.alert .alert-icon {
  display: block;
  float: left;
  margin-right: 15px;
}
.alert .alert-icon i {
  margin-top: -7px;
  top: 5px;
  position: relative;
}

.progress {
  height: 4px;
  border-radius: 0;
  box-shadow: none;
  background: #DDDDDD;
}
.progress .progress-bar {
  box-shadow: none;
}
.progress .progress-bar, .progress .progress-bar.progress-bar-default {
  background-color: #9c27b0;
}
.progress .progress-bar.progress-bar-inverse {
  background-color: #3f51b5;
}
.progress .progress-bar.progress-bar-primary {
  background-color: #9c27b0;
}
.progress .progress-bar.progress-bar-success {
  background-color: #4caf50;
}
.progress .progress-bar.progress-bar-info {
  background-color: #03a9f4;
}
.progress .progress-bar.progress-bar-warning {
  background-color: #fbc02d;
}
.progress .progress-bar.progress-bar-danger {
  background-color: #f44336;
}
.progress.progress-line-primary {
  background: rgba(156, 39, 176, 0.2);
}
.progress.progress-line-info {
  background: rgba(3, 169, 244, 0.2);
}
.progress.progress-line-success {
  background: rgba(76, 175, 80, 0.2);
}
.progress.progress-line-warning {
  background: rgba(251, 192, 45, 0.2);
}
.progress.progress-line-danger {
  background: rgba(244, 67, 54, 0.2);
}

h1, .h1 {
  font-size: 3.8em;
  line-height: 1.15em;
}

h2, .h2 {
  font-size: 2.6em;
}

h3, .h3 {
  font-size: 1.825em;
  line-height: 1.4em;
  margin: 20px 0 10px;
}

h4, .h4 {
  font-size: 1.3em;
  line-height: 1.4em;
}

h5, .h5 {
  font-size: 1.25em;
  line-height: 1.4em;
  margin-bottom: 15px;
}

h6, .h6 {
  font-size: 1em;
  text-transform: uppercase;
}

.title,
.card-title,
.info-title,
.footer-brand,
.footer-big h5,
.footer-big h4,
.media .media-heading {
  font-weight: 700;
}
.title,
.title a,
.card-title,
.card-title a,
.info-title,
.info-title a,
.footer-brand,
.footer-brand a,
.footer-big h5,
.footer-big h5 a,
.footer-big h4,
.footer-big h4 a,
.media .media-heading,
.media .media-heading a {
  color: #3C4858;
  text-decoration: none;
}

h2.title {
  margin-bottom: 30px;
}

.description,
.card-description,
.footer-big p {
  color: #999999;
}

.text-warning {
  color: #fbc02d;
}

.text-primary {
  color: #9c27b0;
}

.text-danger {
  color: #f44336;
}

.text-success {
  color: #4caf50;
}

.text-info {
  color: #03a9f4;
}

.nav-tabs {
  background: #9c27b0;
  border: 0;
  border-radius: 3px;
  padding: 0 15px;
}
.nav-tabs > li > a {
  color: #FFFFFF;
  border: 0;
  margin: 0;
  border-radius: 3px;
  line-height: 24px;
  text-transform: uppercase;
  font-size: 12px;
}
.nav-tabs > li > a:hover {
  background-color: transparent;
  border: 0;
}
.nav-tabs > li > a, .nav-tabs > li > a:hover, .nav-tabs > li > a:focus {
  background-color: transparent;
  border: 0 !important;
  color: #FFFFFF !important;
  font-weight: 500;
}
.nav-tabs > li.disabled > a, .nav-tabs > li.disabled > a:hover {
  color: rgba(255, 255, 255, 0.5);
}
.nav-tabs > li .material-icons {
  margin: -1px 5px 0 0;
}
.nav-tabs > li.active > a, .nav-tabs > li.active > a:hover, .nav-tabs > li.active > a:focus {
  background-color: rgba(255, 255, 255, 0.2);
  transition: background-color .1s .2s;
}

.popover, .tooltip-inner {
  color: #555555;
  line-height: 1.5em;
  background: #FFFFFF;
  border: none;
  border-radius: 3px;
  box-shadow: 0 8px 10px 1px rgba(0, 0, 0, 0.14), 0 3px 14px 2px rgba(0, 0, 0, 0.12), 0 5px 5px -3px rgba(0, 0, 0, 0.2);
}

.popover {
  padding: 0;
  box-shadow: 0 16px 24px 2px rgba(0, 0, 0, 0.14), 0 6px 30px 5px rgba(0, 0, 0, 0.12), 0 8px 10px -5px rgba(0, 0, 0, 0.2);
}
.popover.left > .arrow, .popover.right > .arrow, .popover.top > .arrow, .popover.bottom > .arrow {
  border: none;
}

.popover-title {
  background-color: #FFFFFF;
  border: none;
  padding: 15px 15px 5px;
  font-size: 1.3em;
}

.popover-content {
  padding: 10px 15px 15px;
  line-height: 1.4;
}

.tooltip.in {
  opacity: 1;
  -webkit-transform: translate3d(0, 0px, 0);
  -moz-transform: translate3d(0, 0px, 0);
  -o-transform: translate3d(0, 0px, 0);
  -ms-transform: translate3d(0, 0px, 0);
  transform: translate3d(0, 0px, 0);
}

.tooltip {
  opacity: 0;
  transition: opacity, transform .2s ease;
  -webkit-transform: translate3d(0, 5px, 0);
  -moz-transform: translate3d(0, 5px, 0);
  -o-transform: translate3d(0, 5px, 0);
  -ms-transform: translate3d(0, 5px, 0);
  transform: translate3d(0, 5px, 0);
}
.tooltip.left .tooltip-arrow {
  border-left-color: #FFFFFF;
}
.tooltip.right .tooltip-arrow {
  border-right-color: #FFFFFF;
}
.tooltip.top .tooltip-arrow {
  border-top-color: #FFFFFF;
}
.tooltip.bottom .tooltip-arrow {
  border-bottom-color: #FFFFFF;
}

.tooltip-inner {
  padding: 10px 15px;
  min-width: 130px;
}

.carousel .carousel-control {
  width: 50%;
}
.carousel .carousel-control.left, .carousel .carousel-control.right {
  background-image: none;
}
.carousel .carousel-control .material-icons,
.carousel .carousel-control .fa {
  display: none;
}
.carousel .left {
  cursor: url("../img/arrow-left.png"), url("../img/arrow-left.cur"), default !important;
}
.carousel .right {
  cursor: url("../img/arrow-right.png"), url("../img/arrow-right.cur"), default !important;
}
.carousel .carousel-indicators {
  bottom: 5px;
}
.carousel .carousel-indicators li,
.carousel .carousel-indicators .active {
  margin: 11px 10px;
}
.carousel .carousel-indicators li {
  background: #FFFFFF;
  box-shadow: 0 2px 2px 0 rgba(0, 0, 0, 0.14), 0 3px 1px -2px rgba(0, 0, 0, 0.2), 0 1px 5px 0 rgba(0, 0, 0, 0.12);
  border-radius: 2px;
}
.carousel .carousel-indicators .active {
  margin-top: 10px;
  -webkit-transform: scale(1.5);
  -moz-transform: scale(1.5);
  -o-transform: scale(1.5);
  -ms-transform: scale(1.5);
  transform: scale(1.5);
  box-shadow: 0 4px 5px 0 rgba(0, 0, 0, 0.14), 0 1px 10px 0 rgba(0, 0, 0, 0.12), 0 2px 4px -1px rgba(0, 0, 0, 0.2);
}
.carousel .carousel-caption {
  padding-bottom: 45px;
}
.carousel .carousel-caption .material-icons {
  position: relative;
  top: 5px;
}

.card {
  display: inline-block;
  position: relative;
  width: 100%;
  border-radius: 3px;
  color: rgba(0,0,0, 0.87);
  background: #fff;
  box-shadow: 0 2px 2px 0 rgba(0, 0, 0, 0.14), 0 3px 1px -2px rgba(0, 0, 0, 0.2), 0 1px 5px 0 rgba(0, 0, 0, 0.12);
}
.card .card-height-indicator {
  margin-top: 100%;
}
.card .card-content {
  position: absolute;
  top: 0;
  bottom: 0;
  left: 0;
  right: 0;
}
.card .card-image {
  height: 60%;
  position: relative;
  overflow: hidden;
}
.card .card-image img {
  width: 100%;
  height: 100%;
  border-top-left-radius: 2px;
  border-top-right-radius: 2px;
  pointer-events: none;
}
.card .card-image .card-image-headline {
  position: absolute;
  bottom: 16px;
  left: 18px;
  color: #fff;
  font-size: 2em;
}
.card .content {
  padding: 15px;
}
.card .card-body {
  height: 30%;
  padding: 18px;
}
.card .card-footer {
  height: 10%;
  padding: 18px;
}
.card .card-footer button, .card .card-footer a {
  margin: 0 !important;
  position: relative;
  bottom: 25px;
  width: auto;
}
.card .card-footer button:first-child, .card .card-footer a:first-child {
  left: -15px;
}
.card .header {
  box-shadow: 0 16px 38px -12px rgba(0, 0, 0, 0.56), 0 4px 25px 0px rgba(0, 0, 0, 0.12), 0 8px 10px -5px rgba(0, 0, 0, 0.2);
  margin: 15px;
  border-radius: 3px;
  padding: 15px 0;
  background-color: #FFFFFF;
}
.card .header-primary {
  background: linear-gradient(60deg, #ab47bc, #7b1fa2);
}
.card .header-info {
  background: linear-gradient(60deg, #29b6f6, #0288d1);
}
.card .header-success {
  background: linear-gradient(60deg, #66bb6a, #388e3c);
}
.card .header-warning {
  background: linear-gradient(60deg, #fdd835, #fbc02d);
}
.card .header-danger {
  background: linear-gradient(60deg, #ef5350, #d32f2f);
}
.card [class*="header-"] {
  color: #FFFFFF;
}

.card-raised {
  box-shadow: 0 16px 38px -12px rgba(0, 0, 0, 0.56), 0 4px 25px 0px rgba(0, 0, 0, 0.12), 0 8px 10px -5px rgba(0, 0, 0, 0.2);
}

.card-signup .header {
  box-shadow: 0 16px 38px -12px rgba(0, 0, 0, 0.56), 0 4px 25px 0px rgba(0, 0, 0, 0.12), 0 8px 10px -5px rgba(0, 0, 0, 0.2);
  margin-left: 20px;
  margin-right: 20px;
  margin-top: -40px;
  padding: 20px 0;
}
.card-signup .text-divider {
  margin-top: 30px;
  margin-bottom: 0px;
  text-align: center;
}
.card-signup .content {
  padding: 0px 30px 0px 10px;
}
.card-signup .checkbox {
  margin-top: 20px;
}
.card-signup .checkbox label {
  margin-left: 17px;
}
.card-signup .checkbox .checkbox-material {
  padding-right: 12px;
}
.card-signup .social-line {
  margin-top: 15px;
  text-align: center;
}
.card-signup .social-line .btn {
  color: #FFFFFF;
  margin-left: 5px;
  margin-right: 5px;
}

.card-nav-tabs {
  margin-top: 45px;
}
.card-nav-tabs .header {
  margin-top: -30px;
}
.card-nav-tabs .nav-tabs {
  background: transparent;
}

.card-plain {
  background: transparent;
  box-shadow: none;
}
.card-plain .header {
  margin-left: 0;
  margin-right: 0;
}
.card-plain .content {
  padding-left: 0;
  padding-right: 0;
}

.modal-content {
  box-shadow: 0 27px 24px 0 rgba(0, 0, 0, 0.2), 0 40px 77px 0 rgba(0, 0, 0, 0.22);
  border-radius: 3px;
  border: none;
}
.modal-content .modal-header {
  border-bottom: none;
  padding-top: 24px;
  padding-right: 24px;
  padding-bottom: 0;
  padding-left: 24px;
}
.modal-content .modal-body {
  padding-top: 24px;
  padding-right: 24px;
  padding-bottom: 16px;
  padding-left: 24px;
}
.modal-content .modal-footer {
  border-top: none;
  padding: 7px;
}
.modal-content .modal-footer button {
  margin: 0;
  padding-left: 16px;
  padding-right: 16px;
  width: auto;
}
.modal-content .modal-footer button.pull-left {
  padding-left: 5px;
  padding-right: 5px;
  position: relative;
  left: -5px;
}
.modal-content .modal-footer button + button {
  margin-bottom: 16px;
}
.modal-content .modal-body + .modal-footer {
  padding-top: 0;
}

.modal-backdrop {
  background: rgba(0, 0, 0, 0.3);
}

.modal .modal-dialog {
  margin-top: 100px;
}
.modal .modal-header .close {
  color: #555555;
}
.modal .modal-header .close:hover, .modal .modal-header .close:focus {
  opacity: 1;
  color: #555555;
}

.panel {
  border-radius: 2px;
  border: 0;
  box-shadow: 0 1px 6px 0 rgba(0, 0, 0, 0.12), 0 1px 6px 0 rgba(0, 0, 0, 0.12);
}
.panel > .panel-heading, .panel.panel-default > .panel-heading {
  background-color: #eeeeee;
}
.panel.panel-inverse > .panel-heading {
  background-color: #3f51b5;
}
.panel.panel-primary > .panel-heading {
  background-color: #9c27b0;
}
.panel.panel-success > .panel-heading {
  background-color: #4caf50;
}
.panel.panel-info > .panel-heading {
  background-color: #03a9f4;
}
.panel.panel-warning > .panel-heading {
  background-color: #fbc02d;
}
.panel.panel-danger > .panel-heading {
  background-color: #f44336;
}

[class*="panel-"] > .panel-heading {
  color: #ffffff;
  border: 0;
}

.panel-default > .panel-heading, .panel:not([class*="panel-"]) > .panel-heading {
  color: rgba(0,0,0, 0.87);
}

.panel-footer {
  background-color: #eeeeee;
}

hr.on-dark {
  color: #1a1a1a;
}
hr.on-light {
  color: white;
}
@media (-webkit-min-device-pixel-ratio: 0.75), (min--moz-device-pixel-ratio: 0.75), (-o-device-pixel-ratio: 3 / 4), (min-device-pixel-ratio: 0.75), (min-resolution: 0.75dppx), (min-resolution: 120dpi) {
  hr {
    height: 0.75px;
  }
}
@media (-webkit-min-device-pixel-ratio: 1), (min--moz-device-pixel-ratio: 1), (-o-device-pixel-ratio: 1), (min-device-pixel-ratio: 1), (min-resolution: 1dppx), (min-resolution: 160dpi) {
  hr {
    height: 1px;
  }
}
@media (-webkit-min-device-pixel-ratio: 1.33), (min--moz-device-pixel-ratio: 1.33), (-o-device-pixel-ratio: 133 / 100), (min-device-pixel-ratio: 1.33), (min-resolution: 1.33dppx), (min-resolution: 213dpi) {
  hr {
    height: 1.333px;
  }
}
@media (-webkit-min-device-pixel-ratio: 1.5), (min--moz-device-pixel-ratio: 1.5), (-o-device-pixel-ratio: 3 / 2), (min-device-pixel-ratio: 1.5), (min-resolution: 1.5dppx), (min-resolution: 240dpi) {
  hr {
    height: 1.5px;
  }
}
@media (-webkit-min-device-pixel-ratio: 2), (min--moz-device-pixel-ratio: 2), (-o-device-pixel-ratio: 2 / 1), (min-device-pixel-ratio: 2), (min-resolution: 2dppx), (min-resolution: 380dpi) {
  hr {
    height: 2px;
  }
}
@media (-webkit-min-device-pixel-ratio: 3), (min--moz-device-pixel-ratio: 3), (-o-device-pixel-ratio: 3 / 1), (min-device-pixel-ratio: 3), (min-resolution: 3dppx), (min-resolution: 480dpi) {
  hr {
    height: 3px;
  }
}
@media (-webkit-min-device-pixel-ratio: 4), (min--moz-device-pixel-ratio: 4), (-o-device-pixel-ratio: 4 / 1), (min-device-pixel-ratio: 3), (min-resolution: 4dppx), (min-resolution: 640dpi) {
  hr {
    height: 4px;
  }
}

.img-thumbnail {
  border-radius: 16px;
}

.img-raised {
  box-shadow: 0 16px 38px -12px rgba(0, 0, 0, 0.56), 0 4px 25px 0px rgba(0, 0, 0, 0.12), 0 8px 10px -5px rgba(0, 0, 0, 0.2);
}

* {
  -webkit-tap-highlight-color: rgba(255, 255, 255, 0);
  -webkit-tap-highlight-color: transparent;
}
*:focus {
  outline: 0;
}

a:focus, a:active,
button:active, button:focus, button:hover,
button::-moz-focus-inner,
input[type="reset"]::-moz-focus-inner,
input[type="button"]::-moz-focus-inner,
input[type="submit"]::-moz-focus-inner,
select::-moz-focus-inner,
input[type="file"] > input[type="button"]::-moz-focus-inner {
  outline: 0 !important;
}

.section {
  padding: 70px 0;
}

.section-navbars {
  padding-bottom: 0;
}

.section-full-screen {
  height: 100vh;
}

.section-signup {
  padding-top: 20vh;
}

.noUi-target,
.noUi-target * {
  -webkit-touch-callout: none;
  -ms-touch-action: none;
  user-select: none;
  box-sizing: border-box;
}

.noUi-base {
  width: 100%;
  height: 100%;
  position: relative;
}

.noUi-origin {
  position: absolute;
  right: 0;
  top: 0;
  left: 0;
  bottom: 0;
}

.noUi-handle {
  position: relative;
  z-index: 1;
  box-sizing: border-box;
}

.noUi-stacking .noUi-handle {
  z-index: 10;
}

.noUi-state-tap .noUi-origin {
  transition: left 0.3s, top 0.3s;
}

.noUi-state-drag * {
  cursor: inherit !important;
}

.noUi-horizontal {
  height: 10px;
}

.noUi-handle {
  box-sizing: border-box;
  width: 14px;
  height: 14px;
  left: -10px;
  top: -6px;
  cursor: pointer;
  border-radius: 100%;
  transition: all 0.2s ease-out;
  border: 1px solid;
  background: #FFFFFF;
  box-shadow: 0 2px 2px 0 rgba(0, 0, 0, 0.14), 0 3px 1px -2px rgba(0, 0, 0, 0.2), 0 1px 5px 0 rgba(0, 0, 0, 0.12);
}

.noUi-vertical .noUi-handle {
  margin-left: 5px;
  cursor: ns-resize;
}

.noUi-horizontal.noUi-extended {
  padding: 0 15px;
}

.noUi-horizontal.noUi-extended .noUi-origin {
  right: -15px;
}

.noUi-background {
  height: 2px;
  margin: 20px 0;
}

.noUi-origin {
  margin: 0;
  border-radius: 0;
  height: 2px;
  background: #c8c8c8;
}
.noUi-origin[style^="left: 0"] .noUi-handle {
  background-color: #fff;
  border: 2px solid #c8c8c8;
}
.noUi-origin[style^="left: 0"] .noUi-handle.noUi-active {
  border-width: 1px;
}

.noUi-target {
  border-radius: 3px;
}

.noUi-horizontal {
  height: 2px;
  margin: 15px 0;
}

.noUi-vertical {
  height: 100%;
  width: 2px;
  margin: 0 15px;
  display: inline-block;
}

.noUi-handle.noUi-active {
  transform: scale3d(2, 2, 1);
}

[disabled].noUi-slider {
  opacity: 0.5;
}

[disabled] .noUi-handle {
  cursor: not-allowed;
}

.slider {
  background: #c8c8c8;
}

.slider.noUi-connect {
  background-color: #9c27b0;
}
.slider .noUi-handle {
  border-color: #9c27b0;
}
.slider.slider-info .noUi-connect, .slider.slider-info.noUi-connect {
  background-color: #03a9f4;
}
.slider.slider-info .noUi-handle {
  border-color: #03a9f4;
}
.slider.slider-success .noUi-connect, .slider.slider-success.noUi-connect {
  background-color: #4caf50;
}
.slider.slider-success .noUi-handle {
  border-color: #4caf50;
}
.slider.slider-warning .noUi-connect, .slider.slider-warning.noUi-connect {
  background-color: #fbc02d;
}
.slider.slider-warning .noUi-handle {
  border-color: #fbc02d;
}
.slider.slider-danger .noUi-connect, .slider.slider-danger.noUi-connect {
  background-color: #f44336;
}
.slider.slider-danger .noUi-handle {
  border-color: #f44336;
}

.dropdownjs::after {
  right: 5px;
  top: 3px;
  font-size: 25px;
  position: absolute;
  font-family: 'Material Icons';
  font-style: normal;
  font-weight: 400;
  content: "\e5c5";
  pointer-events: none;
  color: #757575;
}

/*!
 * Datepicker for Bootstrap
 *
 * Copyright 2012 Stefan Petre
 * Licensed under the Apache License v2.0
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 */
/*
 *
 *   SCSS by Creative Tim
 *   http://www.creative-tim.com
 *
 */
.datepicker {
  top: 0;
  left: 0;
  padding: 4px;
  margin-top: 1px;
  -webkit-border-radius: 4px;
  -moz-border-radius: 4px;
  border-radius: 4px;
}
.datepicker > div {
  display: none;
}
.datepicker table {
  width: 100%;
  margin: 0;
}
.datepicker td,
.datepicker th {
  text-align: center;
  width: 20px;
  height: 20px;
  -webkit-border-radius: 4px;
  -moz-border-radius: 4px;
  border-radius: 4px;
}
.datepicker td {
  text-align: center;
}
.datepicker td p {
  font-size: 1em;
  font-weight: 400;
  border-radius: 50%;
  height: 29px;
  line-height: 29px;
  margin: 3px 0 8px;
  width: 29px;
}
.datepicker td :hover {
  cursor: pointer;
}
.datepicker th {
  font-weight: 500;
}
.datepicker th.switch-datepicker {
  font-size: 1em;
}
.datepicker .prev p,
.datepicker .next p {
  font-size: 1.825em;
}
.datepicker p:hover {
  background: #eeeeee;
}
.datepicker .day.disabled {
  color: #eeeeee;
}
.datepicker td.old,
.datepicker td.new {
  color: #999999;
  border-top: 0;
}
.datepicker td.active p,
.datepicker td.active:hover p {
  box-shadow: 0 4px 5px 0 rgba(0, 0, 0, 0.14), 0 1px 10px 0 rgba(0, 0, 0, 0.12), 0 2px 4px -1px rgba(0, 0, 0, 0.2);
  color: #ffffff;
  background-color: #9c27b0;
}
.datepicker td.primary p,
.datepicker td.primary:hover p {
  background-color: #9c27b0;
}
.datepicker td.info p,
.datepicker td.info:hover p {
  background-color: #03a9f4;
}
.datepicker td.success p,
.datepicker td.success:hover p {
  background-color: #4caf50;
}
.datepicker td.warning p,
.datepicker td.warning:hover p {
  background-color: #fbc02d;
}
.datepicker td.danger p,
.datepicker td.danger:hover p {
  background-color: #f44336;
}
.datepicker span {
  display: block;
  width: 55px;
  height: 54px;
  line-height: 54px;
  float: left;
  margin: 2px;
  cursor: pointer;
  -webkit-border-radius: 4px;
  -moz-border-radius: 4px;
  border-radius: 4px;
}
.datepicker span.old {
  color: #999999;
}
.datepicker span.active, .datepicker span.active:focus, .datepicker span.active:hover, .datepicker span.active:active {
  background-color: #9c27b0;
  box-shadow: 0 4px 5px 0 rgba(0, 0, 0, 0.14), 0 1px 10px 0 rgba(0, 0, 0, 0.12), 0 2px 4px -1px rgba(0, 0, 0, 0.2);
}
.datepicker span.active {
  color: #FFFFFF;
}
.datepicker span:hover {
  background-color: #EEEEEE;
}
.datepicker span.primary,
.datepicker span.primary:hover {
  background-color: #9c27b0;
}
.datepicker span.info,
.datepicker span.info:hover {
  background-color: #03a9f4;
}
.datepicker span.success,
.datepicker span.success:hover {
  background-color: #4caf50;
}
.datepicker span.warning,
.datepicker span.warning:hover {
  background-color: #fbc02d;
}
.datepicker span.danger,
.datepicker span.danger:hover {
  background-color: #f44336;
}
.datepicker th.switch-datepicker {
  width: 145px;
}
.datepicker th.next,
.datepicker th.prev {
  font-size: 21px;
}
.datepicker thead tr:first-child th {
  cursor: pointer;
}
.datepicker thead tr:first-child th:hover {
  background: #eeeeee;
}
.datepicker.dropdown-menu {
  border-radius: 3px;
  box-shadow: 0 16px 38px -12px rgba(0, 0, 0, 0.56), 0 4px 25px 0px rgba(0, 0, 0, 0.12), 0 8px 10px -5px rgba(0, 0, 0, 0.2);
  -webkit-transition: all 150ms linear;
  -moz-transition: all 150ms linear;
  -o-transition: all 150ms linear;
  -ms-transition: all 150ms linear;
  transition: all 150ms linear;
  margin-top: -20px;
  opacity: 0;
  visibility: hidden;
}
.datepicker.dropdown-menu.open {
  opacity: 1;
  visibility: visible;
  margin-top: 1px;
}
.datepicker .table-condensed > tbody > tr > td {
  padding: 2px;
}
.datepicker .table-condensed > thead > tr > th {
  padding: 0;
}

.input-append.date .add-on i,
.input-prepend.date .add-on i {
  display: block;
  cursor: pointer;
  width: 16px;
  height: 16px;
}

.datepicker-months thead {
  padding: 0 0 3px;
  display: block;
}

.withripple {
  position: relative;
}

.ripple-container {
  position: absolute;
  top: 0;
  left: 0;
  z-index: 1;
  width: 100%;
  height: 100%;
  overflow: hidden;
  border-radius: inherit;
  pointer-events: none;
}

.ripple {
  position: absolute;
  width: 20px;
  height: 20px;
  margin-left: -10px;
  margin-top: -10px;
  border-radius: 100%;
  background-color: #000;
  background-color: rgba(0, 0, 0, 0.05);
  transform: scale(1);
  transform-origin: 50%;
  opacity: 0;
  pointer-events: none;
}

.ripple.ripple-on {
  transition: opacity 0.15s ease-in 0s, transform 0.5s cubic-bezier(0.4, 0, 0.2, 1) 0.1s;
  opacity: 0.1;
}

.ripple.ripple-out {
  transition: opacity 0.1s linear 0s !important;
  opacity: 0;
}

.wrapper > .header {
  min-height: 300px;
  background-position: center center;
  background-size: cover;
}

.main {
  background: #FFFFFF;
  position: relative;
  z-index: 3;
}

.main-raised {
  margin: -60px 30px 0px;
  border-radius: 6px;
  box-shadow: 0 16px 24px 2px rgba(0, 0, 0, 0.14), 0 6px 30px 5px rgba(0, 0, 0, 0.12), 0 8px 10px -5px rgba(0, 0, 0, 0.2);
}

.title {
  font-weight: 500;
  color: #3C4858;
}

h2.title {
  margin-bottom: 30px;
}

.description {
  color: #999999;
}

.header-filter {
  position: relative;
}
.header-filter:after {
  position: absolute;
  z-index: 1;
  width: 100%;
  height: 100%;
  display: block;
  left: 0;
  top: 0;
  content: "";
  background-color: rgba(0, 0, 0, 0.4);
}
.header-filter .container {
  z-index: 2;
  position: relative;
}

.gallery .image img {
  width: 100%;
}

.features {
  padding: 80px 0 0;
}

.team {
  margin-top: 80px;
}
.team .team-player .title {
  margin: 30px auto;
}
.team .team-player img {
  max-width: 170px;
}

.nav-align-center {
  text-align: center;
}
.nav-align-center .nav-pills {
  display: inline-block;
}

.navbar-absolute {
  position: absolute;
  width: 100%;
  padding-top: 10px;
  z-index: 1031;
}

.index-page .wrapper > .header {
  height: 90vh;
}
.index-page .brand {
  margin-top: 30vh;
  color: #FFFFFF;
  text-align: center;
}
.index-page .brand h1 {
  font-size: 4.8em;
  font-weight: 600;
}
.index-page .brand h3 {
  font-size: 1.5em;
  text-transform: uppercase;
  max-width: 400px;
  margin: 10px auto 0;
}
.index-page .section-basic {
  padding-top: 15px;
}
.index-page .header-filter:after {
  background: rgba(101, 47, 142, 0.64);
  background: linear-gradient(45deg, rgba(101, 47, 142, 0.88) 0%, rgba(125, 46, 185, 0.45) 100%);
  background: -moz-linear-gradient(135deg, rgba(101, 47, 142, 0.88) 0%, rgba(125, 46, 185, 0.45) 100%);
  background: -webkit-linear-gradient(135deg, rgba(101, 47, 142, 0.88) 0%, rgba(125, 46, 185, 0.45) 100%);
}

.landing-page .header {
  height: 100vh;
}
.landing-page .header .container {
  padding-top: 26vh;
  color: #FFFFFF;
}
.landing-page .header .share {
  margin-top: 150px;
}
.landing-page .header h1 {
  font-weight: 600;
}
.landing-page .header .title {
  color: #FFFFFF;
}
.landing-page .wrapper {
  background: #CCCCCC;
}

.profile-page .header {
  height: 380px;
  background-position: top center;
}
.profile-page .profile {
  text-align: center;
}
.profile-page .profile img {
  max-width: 160px;
  margin: -80px auto 0;
}
.profile-page .description {
  margin: 30px auto 0;
  max-width: 600px;
}
.profile-page .profile-tabs {
  margin-top: 60px;
}
.profile-page .gallery {
  margin-top: 45px;
  padding-bottom: 50px;
}
.profile-page .gallery img {
  width: 100%;
  margin-bottom: 30px;
}

.signup-page .wrapper > .header {
  min-height: 100vh;
}
.signup-page .wrapper .card-signup {
  margin: 160px 0 40px;
}
.signup-page .footer .copyright,
.signup-page .footer a {
  color: #FFFFFF;
}

.landing-page .navbar-transparent,
.profile-page .navbar-transparent,
.signup-page .navbar-transparent,
.index-page .navbar-transparent {
  padding-top: 25px;
}

@media (max-width: 991px) {
  .landing-page .header {
    height: auto;
    min-height: 100vh;
  }
  .landing-page .header .container {
    padding-bottom: 70px;
  }
}
@media (max-width: 768px) {
  .footer .copyright {
    display: inline-block;
    text-align: center;
    padding: 10px 0;
    float: none !important;
    width: 100%;
  }

  .navbar.navbar-transparent {
    background-color: rgba(0, 0, 0, 0.4);
    padding-top: 10px;
    border-radius: 0;
  }

  .main-raised {
    margin-left: 10px;
    margin-right: 10px;
  }
}


.dropdown-menu {
    border: 0;
    box-shadow: 0 2px 5px 0 rgba(0, 0, 0, 0.26);

    .divider {
        background-color: rgba(0, 0, 0, .12);
    }


    li > a{
        font-size: $mdb-dropdown-font-size;
        padding: 10px 20px;
        margin: 0 5px;
        border-radius: $border-radius-small;
        @include transition($fast-transition-time, $transition-linear);

        &:hover,
        &:focus {
          @include shadow-8dp();

        }
    }

    li {
        position: relative;
        a:hover,
        a:focus,
        a:active {
            background-color: $brand-primary;
            color: #FFFFFF;
        }
    }

    .divider{
        margin: 5px 0;
    }
}

@media (min-width: $screen-md-min){
    .dropdown{
        .dropdown-menu{
            @include transition($fast-transition-time, $transition-linear);
            margin-top: -20px;
            opacity: 0;
            visibility: hidden;
            display: block;
        }

        &.open{
            .dropdown-menu{
                opacity: 1;
                visibility: visible;
                margin-top: 1px;
            }
        }
    }

}
    /* Remove the navbar's default margin-bottom and rounded borders */
    .navbar {
      margin-bottom: 0;
      border-radius: 0;
    }
    
    /* Set height of the grid so .sidenav can be 100% (adjust as needed) */
    .row.content {height: 838px}
    
    /* Set gray background color and 100% height */
    .sidenav {
      padding-top: 20px;
      background-color: #f1f1f1;
      height: 100%;
    }
    

    
    /* On small screens, set height to 'auto' for sidenav and grid */
    @media screen and (max-width: 1100px) {
      .sidenav {
        height: auto;
        padding: 15px;
      }
      .row.content {height:auto;}
    }



.filebox input[type="file"] {  /* 파일 필드 숨기기 */
    position: absolute;
    width: 1px;
    height: 1px;
    padding: 0;
    margin: -1px;
    overflow: hidden;
    clip:rect(0,0,0,0);
    border: 0;
}


</style>
<body class="signup-page" >

<c:if test="${not empty param.error}">
      <h1><span class="alert alert-danger" role="alert" style="text-align: center;"> 오류 : ${SPRING_SECURITY_LAST_EXCEPTION.message}</span></h1>
</c:if>

    <div class="wrapper">
		<div class="header header-filter" style="background-image: url('/SNS/resources/background/galaxy.jpg'); background-size: cover; background-position: top center;">
			<div class="container">
				<div class="row">
					<div class="col-md-4 col-md-offset-4 col-sm-6 col-sm-offset-3">
						<div class="card card-signup">
                   			<form role="form"  id="input" method="post" action="<c:url value='/members/logingo'/>">
								<div class="header header-primary text-center">
									<h4>Login</h4>
								</div>
								<div class="content">

                      <div class="form-group">
                         <input type="text" name="id" class="form-control input-sm" placeholder="ID">
                      </div>   
                      
                      <div class="form-group">
                         <input type="password" name="pwd" class="form-control input-sm" placeholder="PASSWORD">
                      </div>                          
                      
								</div>
								<div class="footer text-center">
								<button type="submit" class="btn btn-primary">로그인</button>
								<button type="button" class="btn btn-primary" onclick="join();">회원가입</button>		<br>	
								<a href="searchId" style="color: black;">ID 찾기</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
								<a href="searchPwd"  style="color: black;">PWD 찾기</a>													

								</div>
							</form>
						</div>
					</div>
				</div>
			</div>

			<footer class="footer">
		        <div class="container">
		            <nav class="pull-left">
		            </nav>
		        </div>
		    </footer>

		</div>

    </div>

   <c:if test="${not empty param.error}">
      <h1>
         <span class="alert alert-danger" role="alert">
            ${SPRING_SECURITY_LAST_EXCEPTION.message}</span>
      </h1>
   </c:if>


</body>
</html>