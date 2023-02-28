<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%@ page import="java.lang.Long"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js  classOfHtml" lang="ko" style="	--main100: #ECF2FF;
    --main200: #D5E3FF;
    --main300: #B3CDFF;
    --main400: #81ACFF;
    --main500: #5383E8;
    --main600: #4171D6;
    --main700: #2F5EC0;
    --main800: #2F436E;
    --main900: #28344E;
    --gray0: #FFF;
    --gray100: #F7F7F9;
    --gray200: #ebeef1;
    --gray250: #DBE0E4;
    --gray300: #C3CBD1;
    --gray400: #9AA4AF;
    --gray500: #758592;
    --gray600: #57646F;
    --gray700: #44515C;
    --gray800: #34414D;
    --gray900: #202D37;
    --red100: #FFF1F3;
    --red200: #FFD8D9;
    --red300: #FFBAC3;
    --red400: #FF6C81;
    --red500: #E84057;
    --red600: #D31A45;
    --red700: #B61337;
    --red800: #703C47;
    --red900: #59343B;
    --orange100: #FFF1E6;
    --orange200: #FFD1A9;
    --orange300: #FCB77A;
    --orange400: #FF9F4A;
    --orange500: #FF8200;
    --orange600: #F06F00;
    --orange700: #C55900;
    --orange800: #8E3E00;
    --orange900: #703100;
    --yellow100: #FFF9DB;
    --yellow200: #FEEC9C;
    --yellow300: #FFD424;
    --yellow400: #FFB900;
    --yellow500: #EB9C00;
    --yellow600: #E28400;
    --yellow700: #AC6306;
    --yellow800: #76480F;
    --yellow900: #4A340E;
    --green100: #E6F7DB;
    --green200: #D0F1BB;
    --green300: #A8E082;
    --green400: #6CC92D;
    --green500: #00AE0A;
    --green600: #139020;
    --green700: #1B7D25;
    --green800: #24662B;
    --green900: #304A1D;
    --teal100: #E5FAF3;
    --teal200: #BBECDB;
    --teal300: #89DFC4;
    --teal400: #00D7B0;
    --teal500: #00BBA3;
    --teal600: #00A399;
    --teal700: #008889;
    --teal800: #00666E;
    --teal900: #1D4346;
    --blue100: #DDF9FF;
    --blue200: #90E5F7;
    --blue300: #52D5F3;
    --blue400: #00B8ED;
    --blue500: #0093FF;
    --blue600: #006DE2;
    --blue700: #095BB3;
    --blue800: #114882;
    --blue900: #183955;
    --purple100: #F3EEFF;
    --purple200: #DECFFF;
    --purple300: #C0A5FF;
    --purple400: #A072FF;
    --purple500: #7D59EA;
    --purple600: #6B42DC;
    --purple700: #5836B2;
    --purple800: #3F2A75;
    --purple900: #332353;
    --pink100: #FFE4F4;
    --pink200: #FFCDEA;
    --pink300: #FF9BD2;
    --pink400: #F56CB6;
    --pink500: #E537A2;
    --pink600: #D932D6;
    --pink700: #B920B7;
    --pink800: #8F178D;
    --pink900: #5F225E;
    --bronze100: #F6EDE3;
    --bronze200: #E6D4BF;
    --bronze300: #D7B792;
    --bronze400: #A88A67;
    --bronze500: #907659;
    --bronze600: #7C6750;
    --bronze700: #6B5D4D;
    --bronze800: #52493F;
    --bronze900: #3A3734;
    --homeDesktop: #5383E8;
    --homeMobile: #ebeef1;">
<head>

<!--  <style data-emotion="css-global" data-s="">@font-face{font-family:"Roboto";font-style:normal;font-weight:400;font-display:swap;src:url(https://s-lol-web.op.gg/fonts/Roboto/Roboto-Regular.woff2) format("woff2"),url(https://s-lol-web.op.gg/fonts/Roboto/Roboto-Regular.woff) format("woff");}@font-face{font-family:"Roboto";font-style:normal;font-weight:700;font-display:swap;src:url(https://s-lol-web.op.gg/fonts/Roboto/Roboto-Bold.woff2) format("woff2"),url(https://s-lol-web.op.gg/fonts/Roboto/Roboto-Bold.woff) format("woff");}#nprogress{pointer-events:none;}#nprogress .bar{background:#EB9C00;position:fixed;z-index:10000006;top:0;left:0;width:100%;height:2px;}#nprogress .peg{display:block;position:absolute;right:0px;width:100px;height:100%;box-shadow:0 0 10px #EB9C00,0 0 5px #EB9C00;opacity:1;-webkit-transform:rotate(3deg) translate(0px, -4px);-ms-transform:rotate(3deg) translate(0px, -4px);-webkit-transform:rotate(3deg) translate(0px, -4px);-moz-transform:rotate(3deg) translate(0px, -4px);-ms-transform:rotate(3deg) translate(0px, -4px);transform:rotate(3deg) translate(0px, -4px);}html,body,button,select,input,textarea,label,a,table{font-family:"Roboto",sans-serif;}html:lang(ko),html:lang(ko) body,html:lang(ko) button,html:lang(ko) select,html:lang(ko) input,html:lang(ko) textarea,html:lang(ko) label,html:lang(ko) a,html:lang(ko) table{font-family:"Apple SD Gothic Neo","Roboto",sans-serif;}[data-emotion]{display:none!important;}body,h1,h2,h3,h4,p,ol,ul,dl,dd,button{margin:0;padding:0;}html{font-family:sans-serif;-webkit-text-size-adjust:100%;-ms-text-size-adjust:100%;background-color:#ebeef1;background-color:var(--gray200);}h1,h2,h3,h4,h5,h6{margin:0;}ul,li{list-style:none;}dl,dt,dd,ol,ul,li{list-style:none;margin:0;padding:0;}iframe{border:0;}img{border:0;vertical-align:middle;max-width:100%;}a:focus{outline:thin dotted;}a:active,a:hover{outline:0;}a{-webkit-text-decoration:none;text-decoration:none;color:#202D37;color:var(--gray900);}input{margin:0;padding:0;outline:none;}input,select{background:#fff;border:none;vertical-align:middle;}input[type="text"]::-ms-clear{display:none;width:0;height:0;}textarea{width:100%;background:none;border:0;margin:0;padding:0;resize:none;word-break:break-all;overflow-y:hidden;font-size:14px;line-height:1.43;color:#202d37;}label{cursor:pointer;}button{margin:0;padding:0;border:0;cursor:pointer;background:none;}a{cursor:pointer;}input,textarea{-webkit-appearance:none;-webkit-border-radius:0;}.hidden{position:absolute;}caption,.hidden{clip:rect(0 0 0 0);width:1px;height:1px;margin:-1px;overflow:hidden;}footer,header{display:block;}ol,ul,li{list-style:none;}button{border:0;padding:0;background:transparent;cursor:pointer;}b,strong{font-weight:bold;}textarea{overflow:auto;vertical-align:top;}table{border-collapse:collapse;border-spacing:0;}th,td{padding:0;margin:0;}select{border-radius:0;-webkit-appearance:none;-moz-appearance:none;-ms-appearance:none;appearance:none;}.react-tooltip-lite{max-width:300px;color:#fff;font-size:11px;background:#1c1e1e;}.react-tooltip-lite-arrow{border-color:#1c1e1e;}.tooltip320{display:inline-block;vertical-align:middle;margin-left:5px;}.tooltip320 .react-tooltip-lite{max-width:320px!important;}.tooltip690-light .react-tooltip-lite{background:none!important;}.tooltip690-light .react-tooltip-lite-arrow{border-color:#1d2f51;}#__next{display:-webkit-box;display:-webkit-flex;display:-ms-flexbox;display:flex;-webkit-flex-direction:column;-ms-flex-direction:column;flex-direction:column;height:100%;}.react-tooltip-lite{max-width:300px;background:#000;}.react-tooltip-lite-arrow{border-color:#000;}.bg-image{background-color:#ebeef1;background-color:var(--gray200);}.loader,.loader:after{border-radius:50%;width:10em;height:10em;}.loader{margin:60px auto;font-size:10px;position:relative;text-indent:-9999em;border-top:1.1em solid rgba(255, 255, 255, 0.2);border-right:1.1em solid rgba(255, 255, 255, 0.2);border-bottom:1.1em solid rgba(255, 255, 255, 0.2);border-left:1.1em solid #ffffff;-webkit-transform:translateZ(0);-ms-transform:translateZ(0);-webkit-transform:translateZ(0);-moz-transform:translateZ(0);-ms-transform:translateZ(0);transform:translateZ(0);-webkit-animation:load8 1.1s infinite linear;-webkit-animation:load8 1.1s infinite linear;animation:load8 1.1s infinite linear;}@-webkit-keyframes load8{0%{-webkit-transform:rotate(0deg);-webkit-transform:rotate(0deg);-moz-transform:rotate(0deg);-ms-transform:rotate(0deg);transform:rotate(0deg);}100%{-webkit-transform:rotate(360deg);-webkit-transform:rotate(360deg);-moz-transform:rotate(360deg);-ms-transform:rotate(360deg);transform:rotate(360deg);}}@-webkit-keyframes load8{0%{-webkit-transform:rotate(0deg);-webkit-transform:rotate(0deg);-moz-transform:rotate(0deg);-ms-transform:rotate(0deg);transform:rotate(0deg);}100%{-webkit-transform:rotate(360deg);-webkit-transform:rotate(360deg);-moz-transform:rotate(360deg);-ms-transform:rotate(360deg);transform:rotate(360deg);}}@keyframes load8{0%{-webkit-transform:rotate(0deg);-webkit-transform:rotate(0deg);-moz-transform:rotate(0deg);-ms-transform:rotate(0deg);transform:rotate(0deg);}100%{-webkit-transform:rotate(360deg);-webkit-transform:rotate(360deg);-moz-transform:rotate(360deg);-ms-transform:rotate(360deg);transform:rotate(360deg);}}#measure-layer *{-ms-overflow-style:none;scrollbar-width:none;}#measure-layer *::-webkit-scrollbar{width:0;}#measure-layer *::-webkit-scrollbar-track{background:transparent;box-shadow:none;}#measure-layer *::-webkit-scrollbar-thumb{background-color:transparent;box-shadow:none;}.simplebar-track.simplebar-vertical{width:12px;}.simplebar-scrollbar:before{border-radius:4px;background:rgba(0, 0, 0, 0.4);}[data-theme="dark"] .simplebar-scrollbar:before{background:hsla(0, 0%, 100%, 0.5);}.simplebar-scrollbar.simplebar-visible:before{opacity:1;}</style>
<style data-emotion="css 16nzi5j" data-s="">.css-16nzi5j{min-width:1080px;}</style>
<style data-emotion="css 158fcuv" data-s="">.css-158fcuv{position:relative;background-color:#FFF;background-color:var(--gray0);}</style>
<style data-emotion="css 1b3kvro" data-s="">.css-1b3kvro{position:relative;z-index:2;}.css-1b3kvro:before{content:"";display:block;position:absolute;left:50%;margin-left:-450px;width:900px;top:0;bottom:-45px;background:url(https://opgg-static.akamaized.net/meta/images/lol/champion/centered/Jhin_5.jpg?image=c_crop,w_1280,y_-120,x_0) no-repeat center center;-webkit-background-size:cover;background-size:cover;opacity:0.4;z-index:1;}.css-1b3kvro:after{content:"";display:block;position:absolute;left:50%;margin-left:-450px;width:900px;top:0;bottom:-45px;opacity:1;background:url(https://s-lol-web.op.gg/static/images/site/summoner/mask.svg) no-repeat center center;-webkit-background-size:cover;background-size:cover;z-index:1;}[data-theme="dark"] .css-1b3kvro:after{background:url(https://s-lol-web.op.gg/static/images/site/summoner/mask_dark.svg) no-repeat center center;}.wrapper{position:relative;z-index:2;display:-webkit-box;display:-webkit-flex;display:-ms-flexbox;display:flex;width:1080px;margin:0 auto;-webkit-box-pack:justify;-webkit-justify-content:space-between;justify-content:space-between;}.wrapper .header-profile-info{padding:10px 10px 16px 0;display:-webkit-box;display:-webkit-flex;display:-ms-flexbox;display:flex;-webkit-flex:1;-ms-flex:1;flex:1;box-sizing:border-box;}.wrapper >div+div{display:-webkit-box;display:-webkit-flex;display:-ms-flexbox;display:flex;-webkit-align-items:center;-webkit-box-align:center;-ms-flex-align:center;align-items:center;}.wrapper .e17e77tq5{margin:0;-webkit-flex-basis:405px;-ms-flex-preferred-size:405px;flex-basis:405px;}.profile-icon{margin-top:32px;position:relative;width:100px;height:100px;-webkit-flex-basis:100px;-ms-flex-preferred-size:100px;flex-basis:100px;}.profile-icon img{border-radius:20px;}.profile-icon div.level{height:20px;margin-top:-11px;text-align:center;}.profile-icon div.level span.level{display:inline-block;line-height:20px;padding:0 8px;font-size:12px;border-radius:10px;color:#FFF;background-color:#202D37;font-family:"Roboto",sans-serif;}.profile-icon div.verified{position:absolute;top:0;right:0;}.profile-icon div.verified img{display:block;}.header-profile-info .info{-webkit-flex:1;-ms-flex:1;flex:1;margin-left:24px;box-sizing:border-box;}.header-profile-info .info .tier-and-cover-img{display:-webkit-box;display:-webkit-flex;display:-ms-flexbox;display:flex;-webkit-align-items:center;-webkit-box-align:center;-ms-flex-align:center;align-items:center;-webkit-box-pack:justify;-webkit-justify-content:space-between;justify-content:space-between;height:32px;}.header-profile-info .info .prev-tier{position:relative;display:-webkit-box;display:-webkit-flex;display:-ms-flexbox;display:flex;font-family:"Roboto",sans-serif;}.header-profile-info .info .prev-tier .tier-list{display:-webkit-box;display:-webkit-flex;display:-ms-flexbox;display:flex;}.header-profile-info .info .prev-tier .tier-list li{line-height:18px;padding:0 4px;border-radius:2px;font-size:11px;color:#9AA4AF;color:var(--gray400);background-color:#ebeef1;background-color:var(--gray200);text-transform:capitalize;margin-left:4px;}.header-profile-info .info .prev-tier .tier-list li:first-of-type{margin-left:0;}.header-profile-info .info .prev-tier .more-tier{position:relative;margin-left:4px;padding:0 16px 0 4px;font-size:12px;color:#9AA4AF;color:var(--gray400);line-height:16px;font-family:"Roboto",sans-serif;}.header-profile-info .info .prev-tier .more-tier:after{content:"";position:absolute;top:0;right:0;display:block;width:16px;height:16px;background-image:url(https://s-lol-web.op.gg/images/icon/icon-down-small.svg);}.header-profile-info .info .prev-tier .more-tier:hover{background-color:#ebeef1;background-color:var(--gray200);border-radius:2px;}.header-profile-info .info .prev-tier .more-tier-list{position:absolute;top:20px;right:0;border-radius:4px;color:#9AA4AF;color:var(--gray400);background-color:#ebeef1;background-color:var(--gray200);box-shadow:0 8px 12px 0 rgba(0, 0, 0, 0.2);font-size:11px;text-align:center;font-family:"Roboto",sans-serif;}.header-profile-info .info .prev-tier .more-tier-list li{width:90px;line-height:14px;padding:4px 12px;border-bottom:1px solid;border-bottom-color:#DBE0E4;border-bottom-color:var(--gray250);text-transform:capitalize;}.header-profile-info .info>.name{display:-webkit-box;display:-webkit-flex;display:-ms-flexbox;display:flex;-webkit-align-items:center;-webkit-box-align:center;-ms-flex-align:center;align-items:center;height:32px;font-size:24px;font-weight:bold;color:#202D37;color:var(--gray900);}.header-profile-info .info>.name .summoner-name{margin-right:8px;font-size:24px;}.header-profile-info .info>.team-and-rank{display:-webkit-box;display:-webkit-flex;display:-ms-flexbox;display:flex;line-height:16px;margin-top:6px;color:#758592;color:var(--gray500);font-size:12px;}.header-profile-info .info>.team-and-rank .team{position:relative;padding-right:8px;margin-right:8px;font-family:"Roboto",sans-serif;}.header-profile-info .info>.team-and-rank .team:after{position:absolute;left:0;content:"";width:1px;height:16px;background-color:#C3CBD1;background-color:var(--gray300);left:auto;right:0;height:10px;top:3px;}.header-profile-info .info>.team-and-rank .rank a{color:#758592;color:var(--gray500);}.header-profile-info .info>.team-and-rank .rank a .ranking{color:#4171D6;color:var(--main600);}.header-profile-info .info>.buttons{display:-webkit-box;display:-webkit-flex;display:-ms-flexbox;display:flex;margin-top:8px;}.header-profile-info .info>.buttons button{padding:0 14px;border-radius:4px;font-size:14px;margin-right:8px;height:40px;display:-webkit-box;display:-webkit-flex;display:-ms-flexbox;display:flex;-webkit-align-items:center;-webkit-box-align:center;-ms-flex-align:center;align-items:center;-webkit-box-pack:center;-ms-flex-pack:center;-webkit-justify-content:center;justify-content:center;}.header-profile-info .info>.last-update{margin-top:8px;font-size:12px;color:#9AA4AF;color:var(--gray400);width:-webkit-max-content;width:-moz-max-content;width:max-content;}</style>
<style data-emotion="css 4e9tnt" data-s="">.css-4e9tnt{position:relative;border:1px solid #5383E8;border:var(--main500);background:#5383E8;background:var(--main500);color:#FFF;cursor:cursor;}.css-4e9tnt:hover{background:#4171D6;background:var(--main600);}[data-theme="dark"] .css-4e9tnt:hover{background:#81ACFF;background:var(--main400);}.css-4e9tnt .loading{position:relative;z-index:1;border-top-color:transparent;}</style>
<style data-emotion="css 6naflr" data-s="">.css-6naflr{border:1px solid;border-color:#81ACFF;border-color:var(--main400);color:#4171D6;color:var(--main600);background-color:#FFF;background-color:var(--gray0);}.css-6naflr:hover{background-color:#ECF2FF;background-color:var(--main100);}</style>
<style data-emotion="css cjro43" data-s="">.css-cjro43{display:block;min-width:60px;height:36px;line-height:36px;padding:0 16px;margin-right:4px;border-radius:4px;font-size:14px;font-weight:normal;-webkit-text-decoration:none;text-decoration:none;text-align:center;color:#202D37;color:var(--gray900);}.css-cjro43:hover{background-color:#F7F7F9;}[data-theme="dark"] .css-cjro43{color:#202D37;color:var(--gray900);}[data-theme="dark"] .css-cjro43:hover{background:#282830;}</style>
<style data-emotion="css 150oaqg" data-s="">.css-150oaqg{display:inline-block;width:740px;margin-top:8px;margin-left:8px;font-size:12px;vertical-align:top;}.css-150oaqg .loading{padding:150px 0;text-align:center;}.css-150oaqg .no-data{border-bottom-left-radius:4px;border-bottom-right-radius:4px;padding:96px 0 40px;text-align:center;background-image:url(https://s-lol-web.op.gg/images/icon/icon-nodata.svg);-webkit-background-position:50% 40px;background-position:50% 40px;background-repeat:no-repeat;background-color:#FFF;background-color:var(--gray0);font-size:14px;color:#9AA4AF;color:var(--gray400);}[data-theme="dark"] .css-150oaqg .no-data{background-image:url(https://s-lol-web.op.gg/images/icon/icon-nodata-dark.svg);}.css-150oaqg .more{border:1px solid;border-color:#DBE0E4;border-color:var(--gray250);background-color:#FFF;background-color:var(--gray0);border-radius:4px;display:block;width:100%;height:40px;padding:8px 0;color:#202D37;color:var(--gray900);font-size:13px;text-align:center;-webkit-text-decoration:none;text-decoration:none;box-sizing:border-box;}.css-150oaqg .more span{vertical-align:middle;}</style>
<style data-emotion="css 164r41r" data-s="">.css-164r41r{margin-top:8px;}</style>
<style data-emotion="css uz18fj" data-s="">.css-uz18fj{position:relative;display:inline-block;width:100%;height:20px;vertical-align:middle;border-radius:3px;overflow:hidden;}.css-uz18fj .fill{display:inline-block;vertical-align:middle;height:100%;}.css-uz18fj .fill.left{background:#5383E8;background:var(--main500);}.css-uz18fj .fill.right{background:#E84057;background:var(--red500);}.css-uz18fj .text{position:absolute;top:3px;font-size:11px;color:#f2f2f2;line-height:14px;white-space:nowrap;overflow:hidden;text-overflow:ellipsis;}.css-uz18fj .text.left{display:block;left:4px;}.css-uz18fj .text.right{display:block;right:4px;}</style>
<style data-emotion="css s6qg8" data-s="">.css-s6qg8{-webkit-flex:1;-ms-flex:1;flex:1;margin-left:4px;vertical-align:middle;cursor:pointer;text-align:center;border-radius:4px;background-color:#FFF;background-color:var(--gray0);color:#202D37;color:var(--gray900);}.css-s6qg8:nth-of-type(1){margin-left:0;}.css-s6qg8:hover{background-color:#F7F7F9;}[data-theme="dark"] .css-s6qg8{background-color:#FFF;background-color:var(--gray0);color:#202D37;color:var(--gray900);}[data-theme="dark"] .css-s6qg8:hover{background-color:#282830;}.css-s6qg8 button{display:block;width:100%;color:inherit;padding:4px 0;font-size:14px;height:28px;box-sizing:border-box;font-weight:normal;}</style>
<style data-emotion="css 1lteyi9" data-s="">.css-1lteyi9{-webkit-flex:1;-ms-flex:1;flex:1;margin-left:4px;vertical-align:middle;cursor:pointer;text-align:center;border-radius:4px;background-color:#ECF2FF;color:#4171D6;}.css-1lteyi9:nth-of-type(1){margin-left:0;}.css-1lteyi9:hover{background-color:#ECF2FF;}[data-theme="dark"] .css-1lteyi9{background-color:#515163;color:#FFF;}[data-theme="dark"] .css-1lteyi9:hover{background-color:#515163;}.css-1lteyi9 button{display:block;width:100%;color:inherit;padding:4px 0;font-size:14px;height:28px;box-sizing:border-box;font-weight:bold;}</style>
<style data-emotion="css e9xk5o" data-s="">.css-e9xk5o{margin-top:8px;background-color:#FFF;background-color:var(--gray0);border-radius:4px;overflow:hidden;}.css-e9xk5o>ul{display:-webkit-box;display:-webkit-flex;display:-ms-flexbox;display:flex;-webkit-box-pack:justify;-webkit-justify-content:space-between;justify-content:space-between;padding:4px;border-bottom:1px solid;border-color:#ebeef1;border-color:var(--gray200);}.css-e9xk5o>div .champion-box{display:table;width:100%;height:48px;border-bottom:1px solid;border-color:#ebeef1;border-color:var(--gray200);color:#9AA4AF;color:var(--gray400);text-align:center;table-layout:fixed;}.css-e9xk5o>div .champion-box .face{display:table-cell;width:44px;text-align:right;vertical-align:middle;}.css-e9xk5o>div .champion-box .face >a{display:inline-block;width:32px;height:32px;}.css-e9xk5o>div .champion-box .face img{display:inline-block;width:32px;height:32px;border-radius:50%;}.css-e9xk5o>div .champion-box .info{display:table-cell;width:100px;text-align:left;vertical-align:middle;padding-left:8px;box-sizing:border-box;}.css-e9xk5o>div .champion-box .info .name{color:#202D37;color:var(--gray900);font-weight:bold;font-size:12px;text-overflow:ellipsis;overflow:hidden;white-space:nowrap;}.css-e9xk5o>div .champion-box .info .name a{color:inherit;-webkit-text-decoration:none;text-decoration:none;}.css-e9xk5o>div .champion-box .info .cs{margin-top:2px;font-size:11px;white-space:nowrap;}.css-e9xk5o>div .champion-box .kda{display:table-cell;width:100px;vertical-align:middle;text-align:center;box-sizing:border-box;}.css-e9xk5o>div .champion-box .kda .detail{margin-top:2px;font-size:11px;white-space:nowrap;font-family:"Roboto",sans-serif;}.css-e9xk5o>div .champion-box .played{display:table-cell;width:88px;padding-right:0;vertical-align:middle;text-align:center;padding-right:12px;box-sizing:border-box;}.css-e9xk5o>div .champion-box .played .count{margin-top:2px;font-size:11px;white-space:nowrap;text-align:right;}.css-e9xk5o>div .more{display:-webkit-box;display:-webkit-flex;display:-ms-flexbox;display:flex;-webkit-box-pack:center;-ms-flex-pack:center;-webkit-justify-content:center;justify-content:center;-webkit-align-items:center;-webkit-box-align:center;-ms-flex-align:center;align-items:center;-webkit-text-decoration:none;text-decoration:none;padding:8px 0 8px;font-size:12px;text-align:center;background-color:#F7F7F9;background-color:var(--gray100);color:#758592;color:var(--gray500);box-sizing:border-box;}.css-e9xk5o>div .no-data{display:block;padding:116px 0 70px;text-align:center;background:url(https://s-lol-web.op.gg/images/icon/icon-nodata.svg) 50% 55px no-repeat;background-color:#FFF;background-color:var(--gray0);font-size:14px;color:#9AA4AF;color:var(--gray400);}[data-theme="dark"] .css-e9xk5o>div .no-data{background:url(https://s-lol-web.op.gg/images/icon/icon-nodata-dark.svg) 50% 55px no-repeat;}.css-e9xk5o>div .loading{text-align:center;padding:150px 0;}</style>
<style data-emotion="css 8whjbz" data-s="">.css-8whjbz{width:1080px;margin:0 auto;}.css-8whjbz>div:nth-of-type(1){display:inline-block;width:332px;font-size:12px;vertical-align:top;min-height:870px;}</style>
<style data-emotion="css 1v663t" data-s="">.css-1v663t{margin-top:8px;border-radius:4px;background-color:#FFF;background-color:var(--gray0);}.css-1v663t .header{display:-webkit-box;display:-webkit-flex;display:-ms-flexbox;display:flex;-webkit-box-pack:justify;-webkit-justify-content:space-between;justify-content:space-between;line-height:35px;padding:0 12px;font-size:14px;color:#202D37;color:var(--gray900);}.css-1v663t .header .unranked{font-size:14px;font-weight:bold;color:#C3CBD1;color:var(--gray300);font-family:"Roboto",sans-serif;}.css-1v663t>.content{display:-webkit-box;display:-webkit-flex;display:-ms-flexbox;display:flex;-webkit-align-items:center;-webkit-box-align:center;-ms-flex-align:center;align-items:center;padding:12px;border-top:1px solid;border-color:#ebeef1;border-color:var(--gray200);}.css-1v663t>.content img{background-color:#F7F7F9;background-color:var(--gray100);border-radius:50%;}.css-1v663t>.content .info{-webkit-flex:1;-ms-flex:1;flex:1;position:relative;margin-left:16px;}.css-1v663t>.content .info .tier{line-height:26px;font-size:20px;font-weight:bold;text-transform:capitalize;color:#202D37;color:var(--gray900);font-family:"Roboto",sans-serif;}.css-1v663t>.content .info .lp{line-height:16px;margin-top:2px;font-size:12px;color:#758592;color:var(--gray500);font-family:"Roboto",sans-serif;}.css-1v663t>.content .win-lose-container{font-size:12px;text-align:right;color:#9AA4AF;color:var(--gray400);}.css-1v663t>.content .win-lose-container .win-lose{line-height:26px;}.css-1v663t>.content .win-lose-container .ratio{margin-top:2px;line-height:16px;}</style>
<style data-emotion="css 1474l3c" data-s="">.css-1474l3c{margin-top:8px;border-radius:4px;background-color:#FFF;background-color:var(--gray0);}.css-1474l3c .header{display:-webkit-box;display:-webkit-flex;display:-ms-flexbox;display:flex;-webkit-box-pack:justify;-webkit-justify-content:space-between;justify-content:space-between;line-height:35px;padding:0 12px;font-size:14px;color:#202D37;color:var(--gray900);}.css-1474l3c .header .unranked{font-size:14px;font-weight:bold;color:#C3CBD1;color:var(--gray300);font-family:"Roboto",sans-serif;}.css-1474l3c>.content{display:-webkit-box;display:-webkit-flex;display:-ms-flexbox;display:flex;-webkit-align-items:center;-webkit-box-align:center;-ms-flex-align:center;align-items:center;padding:12px;border-top:1px solid;border-color:#ebeef1;border-color:var(--gray200);}.css-1474l3c>.content img{background-color:#F7F7F9;background-color:var(--gray100);border-radius:50%;}.css-1474l3c>.content .info{-webkit-flex:1;-ms-flex:1;flex:1;position:relative;margin-left:8px;}.css-1474l3c>.content .info .tier{line-height:20px;font-size:14px;font-weight:bold;text-transform:capitalize;color:#202D37;color:var(--gray900);font-family:"Roboto",sans-serif;}.css-1474l3c>.content .info .lp{line-height:16px;font-size:12px;color:#758592;color:var(--gray500);font-family:"Roboto",sans-serif;}.css-1474l3c>.content .win-lose-container{font-size:12px;text-align:right;color:#9AA4AF;color:var(--gray400);}.css-1474l3c>.content .win-lose-container .win-lose{line-height:20px;}.css-1474l3c>.content .win-lose-container .ratio{margin-top:2px;line-height:16px;}</style>
<style data-emotion="css 954ezp" data-s="">.css-954ezp{font-size:12px;font-weight:bold;white-space:nowrap;color:#758592;color:var(--gray500);}</style>
<style data-emotion="css 1nuoroq" data-s="">.css-1nuoroq{line-height:15px;font-size:12px;color:#758592;color:var(--gray500);font-family:"Roboto",sans-serif;text-align:right;}</style>
<style data-emotion="css b0uosc" data-s="">.css-b0uosc{line-height:15px;font-size:12px;color:#D31A45;color:var(--red600);font-family:"Roboto",sans-serif;text-align:right;}</style>
<style data-emotion="css 1w55eix" data-s="">.css-1w55eix{font-size:12px;font-weight:bold;white-space:nowrap;color:#00BBA3;color:var(--teal500);}</style>
<style data-emotion="css 10uuukx" data-s="">.css-10uuukx{font-size:12px;font-weight:bold;white-space:nowrap;color:#0093FF;color:var(--blue500);}</style>
<style data-emotion="css k5hsyz" data-s="">.css-k5hsyz{margin-top:8px;background-color:#FFF;background-color:var(--gray0);border-radius:4px;}.css-k5hsyz>.title{position:relative;display:block;line-height:20px;padding:8px 12px;border-bottom:1px solid;border-color:#ebeef1;border-color:var(--gray200);color:#202D37;color:var(--gray900);font-size:14px;}.css-k5hsyz>.header{display:-webkit-box;display:-webkit-flex;display:-ms-flexbox;display:flex;line-height:30px;padding:0 12px;background-color:#F7F7F9;background-color:var(--gray100);font-size:12px;color:#9AA4AF;color:var(--gray400);border-bottom:1px solid;border-color:#ebeef1;border-color:var(--gray200);}.css-k5hsyz>.header div:nth-of-type(1){width:152px;}.css-k5hsyz>.header div:nth-of-type(2){-webkit-flex:1;-ms-flex:1;flex:1;text-align:center;}.css-k5hsyz>ul li{display:table;width:100%;border-bottom:1px solid;border-color:#ebeef1;border-color:var(--gray200);color:#202D37;color:var(--gray900);text-align:center;font-size:12px;table-layout:fixed;}.css-k5hsyz>ul li .face{display:table-cell;width:36px;text-align:right;vertical-align:middle;}.css-k5hsyz>ul li .face img{width:24px;height:24px;border-radius:50%;}.css-k5hsyz>ul li .info{display:table-cell;width:108px;text-align:left;vertical-align:middle;}.css-k5hsyz>ul li .info .name{width:100%;margin-left:8px;text-overflow:ellipsis;white-space:nowrap;overflow:hidden;-webkit-text-decoration:none;text-decoration:none;}.css-k5hsyz>ul li .info .name a{color:#202D37;color:var(--gray900);}.css-k5hsyz>ul li .info .name a:hover{-webkit-text-decoration:underline;text-decoration:underline;}.css-k5hsyz>ul li .winratio{display:table-cell;width:43px;vertical-align:middle;color:#758592;color:var(--gray500);}.css-k5hsyz>ul li .graph{display:table-cell;height:40px;vertical-align:middle;padding-left:20px;}</style>
<style data-emotion="css z219cj" data-s="">.css-z219cj{position:relative;display:inline-block;width:100%;height:20px;vertical-align:middle;border-radius:3px;overflow:hidden;}.css-z219cj .fill{display:inline-block;vertical-align:middle;height:100%;}.css-z219cj .fill.left{background:#5383E8;background:var(--main500);}.css-z219cj .fill.right{background:#E84057;background:var(--red500);}.css-z219cj .text{position:absolute;top:3px;font-size:11px;color:#f2f2f2;line-height:14px;white-space:nowrap;overflow:hidden;text-overflow:ellipsis;}.css-z219cj .text.left{display:none;left:4px;}.css-z219cj .text.right{display:block;right:4px;}</style>
<style data-emotion="css ut2tyh" data-s="">.css-ut2tyh{margin-top:8px;background:#FFF;background:var(--gray0);border-radius:4px;}.css-ut2tyh>div{position:relative;display:block;line-height:20px;padding:8px 12px;border-bottom:1px solid;border-color:#ebeef1;border-color:var(--gray200);color:#202D37;color:var(--gray900);font-size:14px;-webkit-text-decoration:none;text-decoration:none;}.css-ut2tyh>table{width:100%;table-layout:fixed;}.css-ut2tyh>table thead th{padding:9px 0;background-color:#F7F7F9;background-color:var(--gray100);color:#9AA4AF;color:var(--gray400);font-weight:normal;font-size:12px;}.css-ut2tyh>table thead th.name{padding-left:12px;text-align:left;}.css-ut2tyh>table thead th.winratio{padding-right:12px;text-align:right;}.css-ut2tyh>table tbody tr{border-top:1px solid;border-color:#ebeef1;border-color:var(--gray200);}.css-ut2tyh>table tbody tr td{padding:4px 0;color:#758592;color:var(--gray500);font-size:12px;text-align:center;}.css-ut2tyh>table tbody tr td +td{font-family:"Roboto",sans-serif;}.css-ut2tyh>table tbody tr td.name{text-align:left;padding-left:12px;white-space:nowrap;text-overflow:ellipsis;overflow:hidden;}.css-ut2tyh>table tbody tr td.name a{color:#202D37;color:var(--gray900);font-size:12px;-webkit-text-decoration:none;text-decoration:none;}.css-ut2tyh>table tbody tr td.name a img{width:24px;height:24px;border-radius:50%;margin-right:8px;}.css-ut2tyh>table tbody tr td.name a:hover{-webkit-text-decoration:underline;text-decoration:underline;}.css-ut2tyh>table tbody tr td.winratio{padding-right:12px;text-align:right;}</style>
<style data-emotion="css jizu2z" data-s="">.css-jizu2z{position:relative;display:-webkit-box;display:-webkit-flex;display:-ms-flexbox;display:flex;-webkit-box-pack:justify;-webkit-justify-content:space-between;justify-content:space-between;padding:4px;background-color:#FFF;background-color:var(--gray0);border-top-left-radius:4px;border-top-right-radius:4px;border-bottom:1px solid;border-color:#ebeef1;border-color:var(--gray200);}.css-jizu2z>ul{display:-webkit-box;display:-webkit-flex;display:-ms-flexbox;display:flex;height:28px;}.css-jizu2z .m-champion-list{display:inline;line-height:28px;text-overflow:ellipsis;white-space:nowrap;overflow:hidden;}.css-jizu2z .m-champion-list select{cursor:pointer;color:#202D37;color:var(--gray900);font-size:13px;background:none;outline:none;}</style>
<style data-emotion="css ywzb36" data-s="">.css-ywzb36{margin-left:4px;vertical-align:top;}.css-ywzb36:nth-of-type(1){margin-left:0;}.css-ywzb36 button{display:block;padding:4px 12px;border-radius:4px;font-weight:bold;font-size:14px;-webkit-text-decoration:none;text-decoration:none;background:#ECF2FF;color:#4171D6;box-sizing:border-box;height:28px;}.css-ywzb36 button:hover{background:#ECF2FF;}[data-theme="dark"] .css-ywzb36 button{background:#515163;color:#FFF;}[data-theme="dark"] .css-ywzb36 button:hover{background:#515163;}.css-ywzb36 span{display:inline-block;line-height:20px;}.css-ywzb36 span select{padding:4px 24px 4px 12px;border-radius:4px;cursor:pointer;font-size:13px;font-weight:bold;background:none;outline:none;line-height:20px;background:url(https://s-lol-web.op.gg/images/icon/icon-down.svg) no-repeat right center;background-color:#ECF2FF;color:#4171D6;}.css-ywzb36 span select:hover{background-color:#ECF2FF;}[data-theme="dark"] .css-ywzb36 span select{background-color:#515163;color:#FFF;}[data-theme="dark"] .css-ywzb36 span select:hover{background-color:#515163;}[data-ie="true"] .css-ywzb36 span select::-ms-expand{display:none;}</style>
<style data-emotion="css 1oynv5f" data-s="">.css-1oynv5f{margin-left:4px;vertical-align:top;}.css-1oynv5f:nth-of-type(1){margin-left:0;}.css-1oynv5f button{display:block;padding:4px 12px;border-radius:4px;font-weight:normal;font-size:14px;-webkit-text-decoration:none;text-decoration:none;background:#FFF;background-color:var(--gray0);color:#202D37;color:var(--gray900);box-sizing:border-box;height:28px;}.css-1oynv5f button:hover{background:#F7F7F9;}[data-theme="dark"] .css-1oynv5f button{background:#FFF;background-color:var(--gray0);color:#202D37;color:var(--gray900);}[data-theme="dark"] .css-1oynv5f button:hover{background:#282830;}.css-1oynv5f span{display:inline-block;line-height:20px;}.css-1oynv5f span select{padding:4px 24px 4px 12px;border-radius:4px;cursor:pointer;font-size:13px;font-weight:normal;background:none;outline:none;line-height:20px;background:url(https://s-lol-web.op.gg/images/icon/icon-down.svg) no-repeat right center;background-color:#FFF;background-color:var(--gray0);color:#202D37;color:var(--gray900);}.css-1oynv5f span select:hover{background-color:#F7F7F9;}[data-theme="dark"] .css-1oynv5f span select{background-color:#FFF;background-color:var(--gray0);color:#202D37;color:var(--gray900);}[data-theme="dark"] .css-1oynv5f span select:hover{background-color:#282830;}[data-ie="true"] .css-1oynv5f span select::-ms-expand{display:none;}</style>
<style data-emotion="css" data-s=""></style>  -->




<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Transportation HTML-5 Template</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="manifest" href="site.webmanifest">
<link rel="shortcut icon" type="image/x-icon"
	href="${pageContext.request.contextPath }/resources/assets/img/LOL/LOGO.jpg">

<!-- CSS here -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/assets/css/bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/assets/css/owl.carousel.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/assets/css/slicknav.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/assets/css/flaticon.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/assets/css/animate.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/assets/css/magnific-popup.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/assets/css/fontawesome-all.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/assets/css/themify-icons.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/assets/css/slick.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/assets/css/nice-select.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/assets/css/style.css">

<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/assets/css/lolezRecord.css">

<!-- Custom styles for this page -->
<link
	href="${pageContext.request.contextPath }/resources/assets/datatables/dataTables.bootstrap4.min.css"
	rel="stylesheet">

</head>

<body
	style="background-position: center 201px; background-attachment: scroll !important;">
	<!--? Preloader Start -->
	<header>
		<!-- Header Start -->
		<%@ include file="/WEB-INF/views/includes/header.jsp"%>
		<!-- Header End -->
	</header>
	<div class="" id="__next">
		<div id="content-header" class="css-158fcuv e8nboil1">
			<div class="css-1b3kvro eioz3429">
				<div class="wrapper">
					<div class="header-profile-info">
						<div class="profile-icon">
							<img
								src="http://ddragon.leagueoflegends.com/cdn/13.3.1/img/profileicon/${Summoner.profileIconId}.png"
								alt="profile image">
							<div class="level">
								<span class="level">${Summoner.summonerLevel}</span>
							</div>
						</div>
						<div class="info">
							<div class="name">
								<h1 class="summoner-name">${Summoner.name}</h1>
							</div>
							<div class="buttons">
								<button class="css-4e9tnt eapd0am1">전적 갱신</button>
							</div>
							<div class="last-update">
								<div class="" style="position: relative;">최근 업데이트: 5분 전</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="css-19oge0q e10wh5kk2">
				<ul>
					<!-- 메뉴바 -->
				</ul>
			</div>
		</div>
		<div id="content-container" class="css-8whjbz e8nboil2">
			<div>
				<%-- 
			<c:choose>
				<c:when test="${SoloList.soloboolean}">
					<div>
					</div>
				</c:when>
				

				
				<c:otherwise>
				
				</c:otherwise>
			
			</c:choose>
			 --%>


				<%-- 			<c:if test="${Unrank.unrankboolean}">
				<div class="css-1v663t e1x14w4w1"><div class="header">솔로랭크<span class="unranked">Unranked</span></div></div>
				<div class="css-1474l3c e1x14w4w1"><div class="header">자유랭크<span class="unranked">Unranked</span></div></div>
			</c:if> 
			
			
		
			
			--%>



				<c:if test="${SoloList.soloboolean}">
					<div class="css-1v663t e1x14w4w1">
						<div class="header">솔로랭크</div>
						<div class="contents">
							<div class="" style="position: relative;">
								<img id="tierImg_of_SoloList" src="" width="72"
									alt="${SoloList.tier }">
							</div>
							<div class="info">
								<div class="tier">${SoloList.tier}${SoloList.rank}</div>
								<div class="lp">${SoloList.leaguePoints}LP</div>
							</div>
							<div class="win-lose-container">
								<div class="win-lose" id="result_SL">${SoloList.wins}승
									${SoloList.losses} 패</div>

								<div class="ratio" id="winning_rate_of_SoloList"></div>
							</div>
						</div>

					</div>


				</c:if>

				<c:if test="${DuoList.duoboolean}">
					<div class="css-1474l3c e1x14w4w1">
						<div class="header">자유랭크</div>
						<div class="contents">
							<div class="" style="position: relative;">
								<img id="tierImg_of_DuoList" src="" width="40"
									alt="${DuoList.tier }">
							</div>
							<div class="info">
								<div class="tier">${DuoList.tier}${DuoList.rank}</div>
								<div class="lp">${DuoList.leaguePoints}LP</div>
							</div>
							<div class="win-lose-container">
								<div class="win-lose">${DuoList.wins}승 ${DuoList.losses} 패</div>
								<div class="ratio" id="winning_rate_of_DuoList"></div>
							</div>
						</div>
					</div>
				</c:if>


				<c:if test="${!SoloList.soloboolean}">
					<div class="css-1v663t e1x14w4w1">
						<div class="header">
							솔로랭크<span class="unranked">Unranked</span>
						</div>
					</div>
				</c:if>

				<c:if test="${!DuoList.duoboolean}">
					<div class="css-1474l3c e1x14w4w1">
						<div class="header">
							자유랭크<span class="unranked">Unranked</span>
						</div>
					</div>
				</c:if>


				<div class="css-e9xk5o e1g7spwk3">
					<ul>
						<!-- 						<li class="css-1lteyi9 e1g7spwk2"><button>S2023 전체</button></li> -->
						<li class="css-s6qg8 e1g7spwk2"><button>솔로랭크</button></li>
						<!-- 						<li class="css-s6qg8 e1g7spwk2"><button>자유랭크</button></li> -->
					</ul>
					<div>
						<div class="champion-box">
							<div class="face">
								<a href="/champions/varus" target="_blank" rel="noreferrer"><img
									src="https://opgg-static.akamaized.net/meta/images/lol/champion/Varus.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_64&amp;v=1675751623266"
									width="32" alt="바루스"></a>
							</div>
							<div class="info">
								<div class="name">
									<a href="/champions/varus" target="_blank" rel="noreferrer">바루스</a>
								</div>
								<div class="cs">CS 219 (8.9)</div>
							</div>
							<div class="kda">
								<div class="" style="position: relative;">
									<div class="css-954ezp e1g7spwk1">2.72:1 평점</div>
								</div>
								<div class="detail">6.6 / 5.4 / 8.1</div>
							</div>
							<div class="played">
								<div class="" style="position: relative;">
									<div class="css-b0uosc e1g7spwk0">66%</div>
								</div>
								<div class="count">29 게임</div>
							</div>
						</div>
						<div class="champion-box">
							<div class="face">
								<a href="/champions/ezreal" target="_blank" rel="noreferrer"><img
									src="https://opgg-static.akamaized.net/meta/images/lol/champion/Ezreal.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_64&amp;v=1675751623266"
									width="32" alt="이즈리얼"></a>
							</div>
							<div class="info">
								<div class="name">
									<a href="/champions/ezreal" target="_blank" rel="noreferrer">이즈리얼</a>
								</div>
								<div class="cs">CS 217.3 (8.9)</div>
							</div>
							<div class="kda">
								<div class="" style="position: relative;">
									<div class="css-954ezp e1g7spwk1">2.88:1 평점</div>
								</div>
								<div class="detail">6.6 / 4.7 / 6.9</div>
							</div>
							<div class="played">
								<div class="" style="position: relative;">
									<div class="css-b0uosc e1g7spwk0">65%</div>
								</div>
								<div class="count">23 게임</div>
							</div>
						</div>
						<div class="champion-box">
							<div class="face">
								<a href="/champions/draven" target="_blank" rel="noreferrer"><img
									src="https://opgg-static.akamaized.net/meta/images/lol/champion/Draven.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_64&amp;v=1675751623266"
									width="32" alt="드레이븐"></a>
							</div>
							<div class="info">
								<div class="name">
									<a href="/champions/draven" target="_blank" rel="noreferrer">드레이븐</a>
								</div>
								<div class="cs">CS 227.7 (9.3)</div>
							</div>
							<div class="kda">
								<div class="" style="position: relative;">
									<div class="css-10uuukx e1g7spwk1">4.11:1 평점</div>
								</div>
								<div class="detail">9.0 / 3.5 / 5.2</div>
							</div>
							<div class="played">
								<div class="" style="position: relative;">
									<div class="css-b0uosc e1g7spwk0">62%</div>
								</div>
								<div class="count">13 게임</div>
							</div>
						</div>
						<div class="champion-box">
							<div class="face">
								<a href="/champions/caitlyn" target="_blank" rel="noreferrer"><img
									src="https://opgg-static.akamaized.net/meta/images/lol/champion/Caitlyn.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_64&amp;v=1675751623266"
									width="32" alt="케이틀린"></a>
							</div>
							<div class="info">
								<div class="name">
									<a href="/champions/caitlyn" target="_blank" rel="noreferrer">케이틀린</a>
								</div>
								<div class="cs">CS 199.2 (8.8)</div>
							</div>
							<div class="kda">
								<div class="" style="position: relative;">
									<div class="css-954ezp e1g7spwk1">2.35:1 평점</div>
								</div>
								<div class="detail">6.6 / 4.8 / 4.8</div>
							</div>
							<div class="played">
								<div class="" style="position: relative;">
									<div class="css-1nuoroq e1g7spwk0">38%</div>
								</div>
								<div class="count">13 게임</div>
							</div>
						</div>
						<div class="champion-box">
							<div class="face">
								<a href="/champions/sivir" target="_blank" rel="noreferrer"><img
									src="https://opgg-static.akamaized.net/meta/images/lol/champion/Sivir.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_64&amp;v=1675751623266"
									width="32" alt="시비르"></a>
							</div>
							<div class="info">
								<div class="name">
									<a href="/champions/sivir" target="_blank" rel="noreferrer">시비르</a>
								</div>
								<div class="cs">CS 211.6 (8.6)</div>
							</div>
							<div class="kda">
								<div class="" style="position: relative;">
									<div class="css-954ezp e1g7spwk1">2.56:1 평점</div>
								</div>
								<div class="detail">6.0 / 6.0 / 9.4</div>
							</div>
							<div class="played">
								<div class="" style="position: relative;">
									<div class="css-1nuoroq e1g7spwk0">55%</div>
								</div>
								<div class="count">11 게임</div>
							</div>
						</div>
						<div class="champion-box">
							<div class="face">
								<a href="/champions/lucian" target="_blank" rel="noreferrer"><img
									src="https://opgg-static.akamaized.net/meta/images/lol/champion/Lucian.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_64&amp;v=1675751623266"
									width="32" alt="루시안"></a>
							</div>
							<div class="info">
								<div class="name">
									<a href="/champions/lucian" target="_blank" rel="noreferrer">루시안</a>
								</div>
								<div class="cs">CS 195.4 (9)</div>
							</div>
							<div class="kda">
								<div class="" style="position: relative;">
									<div class="css-1w55eix e1g7spwk1">3.7:1 평점</div>
								</div>
								<div class="detail">8.2 / 3.7 / 5.3</div>
							</div>
							<div class="played">
								<div class="" style="position: relative;">
									<div class="css-b0uosc e1g7spwk0">78%</div>
								</div>
								<div class="count">9 게임</div>
							</div>
						</div>
						<div class="champion-box">
							<div class="face">
								<a href="/champions/zeri" target="_blank" rel="noreferrer"><img
									src="https://opgg-static.akamaized.net/meta/images/lol/champion/Zeri.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_64&amp;v=1675751623266"
									width="32" alt="제리"></a>
							</div>
							<div class="info">
								<div class="name">
									<a href="/champions/zeri" target="_blank" rel="noreferrer">제리</a>
								</div>
								<div class="cs">CS 207.7 (9.3)</div>
							</div>
							<div class="kda">
								<div class="" style="position: relative;">
									<div class="css-10uuukx e1g7spwk1">4.28:1 평점</div>
								</div>
								<div class="detail">6.6 / 3.6 / 8.7</div>
							</div>
							<div class="played">
								<div class="" style="position: relative;">
									<div class="css-b0uosc e1g7spwk0">71%</div>
								</div>
								<div class="count">7 게임</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="css-150oaqg e1shm8tx0">
				<div class="css-jizu2z emr8enm3">
					<ul>
						<!-- <li class="css-ywzb36 emr8enm1"><button value="TOTAL">전체</button></li> -->
						<li class="css-1oynv5f emr8enm1"><button value="SOLORANKED">솔로랭크</button></li>
						<!-- <li class="css-1oynv5f emr8enm1"><button value="FLEXRANKED">자유랭크</button></li> -->
						<!-- 						<li class="css-1oynv5f emr8enm1"><span><label
								class="hidden" for="queueType">큐 타입</label><select
								id="queueType"><option value="TOTAL">큐 타입</option>
									<option value="NORMAL">일반 (비공개 선택)</option>
									<option value="ARAM">무작위 총력전</option>
									<option value="BOT">AI 상대 대전</option>
									<option value="CLASH">격전</option>
									<option value="EVENT">이벤트 게임</option>
									<option value="URF">우르프</option></select></span></li> -->
					</ul>
				</div>
				<div class="css-3i6n1d ehasqiv3">
				<c:set var="uesr_SI" value="${Summoner.puuid}" />
				<c:set var="buleTeam_s" value="0" />
				<c:set var="redTeam_s" value="1" />
				
					<c:forEach begin="0"     end="${MatchList.size()-1}"  var="s_i">
						<c:forEach begin="0" end="${MatchList.get(s_i).getInfo().getParticipants().size()- 1}" var="si_i">
							<c:if test="${uesr_SI eq MatchList.get(s_i).getInfo().getParticipants().get(si_i).getPuuid()}">
							
									<c:set var="teamID_s" value="${MatchList.get(s_i).getInfo().getParticipants().get(si_i).getTeamId()}" />

									<c:if test="${teamID_s == 100 }">
										<c:set var="buleTEAM_Kill_s" value="${buleTEAM_Kill_s + MatchList.get(s_i).getInfo().getTeams().get(buleTeam_s).getObjectives().getChampion().getKills()}" />
									</c:if>
									
									<c:if test="${teamID_s == 200 }">
										<c:set var="redTEAM_Kill_s" value="${redTEAM_Kill_s + MatchList.get(s_i).getInfo().getTeams().get(redTeam_s).getObjectives().getChampion().getKills()}" />
									</c:if>
							
							
							
							
								<c:set var="kill_s"	    value="${kill_s + MatchList.get(s_i).getInfo().getParticipants().get(si_i).getKills() }" />
								<c:set var="deaths_s"	value="${deaths_s + MatchList.get(s_i).getInfo().getParticipants().get(si_i).getDeaths() }" />
								<c:set var="assists_s"  value="${assists_s +MatchList.get(s_i).getInfo().getParticipants().get(si_i).getAssists() }" />
								<c:set var="Gametype_s" value="${MatchList.get(s_i).getInfo().getQueueId()}" />
								${buleTEAM_Kill_s }
								
							</c:if>
						
						</c:forEach>
					
					</c:forEach>
					<c:set var="allKills" value="${buleTEAM_Kill_s + teamID_s }"/>
					
				${buleTEAM_Kill_s }
				${redTEAM_Kill_s }
					${kill_s }
					${deaths_s }
					${assists_s } 
					${allKills }
								
				
				
					<div class="stats">
						<div class="kda">
							<div class="info">
								<div class="k-d-a">
									<span>12.5</span> / <span class="death">7.1</span> / <span>11.3</span>
								</div>
								<div class="ratio">3.35:1</div>
								<div class="kill-participantion">킬관여 65%</div>
							</div>
						</div>
					</div>
					<div class="champions">
						<div class="title">플레이한 챔피언 (최근 ${MatchList.size()}게임)</div>
						<ul class="">
							<li><img
								src="https://opgg-static.akamaized.net/meta/images/lol/champion/Kaisa.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_48&amp;v=1677504686476"
								width="24" alt="카이사">
							<div class="win-lose">
									<div class="" style="position: relative; display: inline;">
										<span class="css-6kn5on ehasqiv0">50%</span>
									</div>
									(1승 1패)
								</div>
								<div class="css-18ljion ehasqiv1">1.57 평점</div></li>
							<li><img
								src="https://opgg-static.akamaized.net/meta/images/lol/champion/Zeri.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_48&amp;v=1677504686476"
								width="24" alt="제리">
							<div class="win-lose">
									<div class="" style="position: relative; display: inline;">
										<span class="css-6kn5on ehasqiv0">50%</span>
									</div>
									(1승 1패)
								</div>
								<div class="css-1mz60y0 ehasqiv1">3.6 평점</div></li>
							<li><img
								src="https://opgg-static.akamaized.net/meta/images/lol/champion/Samira.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_48&amp;v=1677504686476"
								width="24" alt="사미라">
							<div class="win-lose">
									<div class="" style="position: relative; display: inline;">
										<span class="css-6kn5on ehasqiv0">50%</span>
									</div>
									(1승 1패)
								</div>
								<div class="css-18ljion ehasqiv1">1.82 평점</div></li>
						</ul>
					</div>
					<div class="positions">
						<div class="title">선호 포지션 (랭크)</div>
						<ul>
							<li><div class="bar">
									<div class="gauge" style="height: 25%;"></div>
								</div>
								<div class="position">
									<img
										src="https://s-lol-web.op.gg/images/icon/icon-position-top.svg?v=1677504686476"
										width="16" alt="TOP">
								</div></li>
							<li><div class="bar">
									<div class="gauge" style="height: 0%;"></div>
								</div>
								<div class="position">
									<img
										src="https://s-lol-web.op.gg/images/icon/icon-position-jungle.svg?v=1677504686476"
										width="16" alt="JUNGLE">
								</div></li>
							<li><div class="bar">
									<div class="gauge" style="height: 0%;"></div>
								</div>
								<div class="position">
									<img
										src="https://s-lol-web.op.gg/images/icon/icon-position-mid.svg?v=1677504686476"
										width="16" alt="MID">
								</div></li>
							<li><div class="bar">
									<div class="gauge" style="height: 75%;"></div>
								</div>
								<div class="position">
									<img
										src="https://s-lol-web.op.gg/images/icon/icon-position-adc.svg?v=1677504686476"
										width="16" alt="ADC">
								</div></li>
							<li><div class="bar">
									<div class="gauge" style="height: 0%;"></div>
								</div>
								<div class="position">
									<img
										src="https://s-lol-web.op.gg/images/icon/icon-position-support.svg?v=1677504686476"
										width="16" alt="SUPPORT">
								</div></li>
						</ul>
					</div>
				</div>


				<div class="css-164r41r e1r5v5160">
					<c:set var="uesr" value="${Summoner.puuid}" />
					<c:set var="FiddleSticks" value="FiddleSticks" />
					<c:set var="Fiddlesticks_s" value="Fiddlesticks" />






					<c:forEach begin="0" end="${MatchList.size()-1}" var="i">
						<!-- 20개의 전적을 반복문으로  수행 -->
						<c:forEach begin="0" end="${MatchList.get(i).getInfo().getParticipants().size()- 1}"	var="MIP_I">
							<!-- 20개의 전적중 각 판마다 의 게임 인원 10명 (0~9) 근거로 수행  -->

							<c:if test="${uesr eq MatchList.get(i).getInfo().getParticipants().get(MIP_I).getPuuid()}">
								<c:set var="kill"
									value="${MatchList.get(i).getInfo().getParticipants().get(MIP_I).getKills() }" />
								<c:set var="deaths"
									value="${MatchList.get(i).getInfo().getParticipants().get(MIP_I).getDeaths() }" />
								<c:set var="assists"
									value="${MatchList.get(i).getInfo().getParticipants().get(MIP_I).getAssists() }" />
								<c:set var="Gametype"
									value="${MatchList.get(i).getInfo().getQueueId()}" />



								<c:if
									test="${MatchList.get(i).getInfo().getParticipants().get(MIP_I).isWin()  eq true}">
									<c:set var="buleTeam" value="0" />
									<c:set var="redTeam" value="1" />

									<c:set var="playTiemWin"
										value="${MatchList.get(i).getInfo().getParticipants().get(MIP_I).getTimePlayed() }" />
									<c:set var="minWIN" value="${playTiemWin / 60 }" />
									<c:set var="secWIN" value="${playTiemWin % 60 }" />
									<c:set var="totalCSW"
										value="${MatchList.get(i).getInfo().getParticipants().get(MIP_I).getTotalMinionsKilled()
		 + MatchList.get(i).getInfo().getParticipants().get(MIP_I).getNeutralMinionsKilled()}" />
									<c:set var="MinInt" value="${minWIN.intValue()}" />

									<c:set var="CS_SecW" value="${secWIN/100.0 }" />
									<c:set var="CStotal_tiemW" value="${(MinInt/1.0) + CS_SecW  }" />
									<c:set var="MINCS_stapW" value="${totalCSW / CStotal_tiemW}" />
									<fmt:formatNumber var="MINCSW" value="${MINCS_stapW }"
										pattern="0.0" />


									<c:set var="teamID"
										value="${MatchList.get(i).getInfo().getParticipants().get(MIP_I).getTeamId()}" />



									<c:if test="${teamID == 100 }">
										<c:set var="buleTEAM_Kill"
											value="${MatchList.get(i).getInfo().getTeams().get(buleTeam).getObjectives().getChampion().getKills()}" />
										<c:set var="KA_bule"
											value="${(kill +  assists) / buleTEAM_Kill * 100}" />

										<fmt:formatNumber var="KA_T_bule" value="${KA_bule }"
											pattern="0" />
									</c:if>

									<c:if test="${teamID == 200 }">
										<c:set var="RedTEAM_Kill"
											value="${MatchList.get(i).getInfo().getTeams().get(redTeam).getObjectives().getChampion().getKills()}" />
										<c:set var="KA_red"
											value="${(kill +  assists) / RedTEAM_Kill * 100}" />

										<fmt:formatNumber var="KA_T_red" value="${KA_red }"
											pattern="0" />
									</c:if>


									<li class="css-1qq23jn e1iiyghw3"><div result="WIN"
											class="css-1shak8a e1iiyghw2">
											<div class="contents">
												<div class="game-content">
													<div class="game">
														<div class="type">
															<c:choose>
																<c:when test="${Gametype == 420 }">
																솔로 랭크
																
																</c:when>

																<c:when test="${Gametype == 440 }">
																자유 5:5 랭크
																
																</c:when>

																<c:when test="${Gametype == 430 }">
																일반
																
																</c:when>

																<c:when test="${Gametype == 450 }">
																무작위 총력전
																
																</c:when>

																<c:when test="${Gametype == 900 }">
																모두 무작위 U.R.F.
																
																</c:when>
																<c:when test="${Gametype == 1900 }">
																	U.R.F
																	
																</c:when>



															</c:choose>


														</div>
														<div class="time-stamp">


															<c:set var="gameEndTimeStampex_w"
																value="${MatchList.get(i).getInfo().getGameEndTimestampex()}" />
															<c:set var="now_w"
																value="<%=System.currentTimeMillis() / 1000%>" />
															<c:set var="time1_w"
																value="${now_w - gameEndTimeStampex_w}" />


															<c:set var="y_w" value="${time1_w / 31104000 }" />
															<c:set var="mo_w" value="${time1_w / 2592000 }" />
															<c:set var="d_w" value="${time1_w / 86000 }" />
															<c:set var="h_w" value="${time1_w / 3600 }" />
															<c:set var="m_w" value="${time1_w / 60 }" />

															<fmt:formatNumber var="totaly_w" value="${y_w }"
																pattern="#" />
															<fmt:formatNumber var="totalmo_w" value="${mo_w }"
																pattern="#" />
															<fmt:formatNumber var="totald_w" value="${d_w }"
																pattern="#" />
															<fmt:formatNumber var="totalH_w" value="${h_w }"
																pattern="#" />
															<fmt:formatNumber var="totalm_w" value="${m_w }"
																pattern="#" />





															<div class="" style="position: relative;">
																<c:choose>
																	<c:when test="${y_w >=1 }">
																	${totaly_w }년 전
																	
																	</c:when>

																	<c:when test="${totald_w >= 30 }">
																	${totalmo_w }달 전
																	
																	</c:when>

																	<c:when test="${totalH_w >= 24 }">
																		<c:choose>
																			<c:when test="${totald_w < 2 }">
																				하루 전
																			</c:when>
																			<c:otherwise>
													
																			${totald_w }일 전
																		
																		</c:otherwise>

																		</c:choose>

																	</c:when>


																	<c:when test="${totalm_w >= 60}">
																		${totalH_w }시간 전
																	
																	</c:when>
																	<c:otherwise>
											
																		${totalm_w }분 전
																	
																	</c:otherwise>

																</c:choose>

															</div>
														</div>
														<div class="bar"></div>
														<div class="result">승리</div>
														<div class="length">${MinInt}분${secWIN}초</div>

													</div>
													<div class="info">
														<div>
															<div class="champion">

																<c:set var="ChampionNamew"
																	value="${MatchList.get(i).getInfo().getParticipants().get(MIP_I).getChampionName()}" />
																<c:set var="FiddleSticks_w" value="FiddleSticks" />
																<c:set var="Fiddlesticks_sw" value="Fiddlesticks" />

																<div class="icon">
																	<a href="/champions/lulu" target="_blank"
																		rel="noreferrer"> <c:choose>
																			<c:when test="${ChampionNamew eq FiddleSticks}">
																				<img
																					src="http://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/${Fiddlesticks_s }.png"
																					width="48" alt="제리" height="48">

																			</c:when>

																			<c:otherwise>
																				<img
																					src="http://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/${ChampionNamew }.png"
																					width="48" alt="제리" height="48">

																			</c:otherwise>

																		</c:choose> <span class="champion-level">${MatchList.get(i).getInfo().getParticipants().get(MIP_I).getChampLevel() }</span></a>
																</div>

																<div class="spells">

																	<c:set var="spC1"
																		value="${MatchList.get(i).getInfo().getParticipants().get(MIP_I).getSummoner1Id() }" />
																	<c:set var="spC2"
																		value="${MatchList.get(i).getInfo().getParticipants().get(MIP_I).getSummoner2Id() }" />
																	<div class="spell">
																		<div class="" style="position: relative;">

																			<c:choose>
																				<c:when test="${spC1 eq 1}">
																					<img
																						src="http://ddragon.leagueoflegends.com/cdn/13.4.1/img/spell/SummonerBoost.png"
																						width="22" alt="정화" height="22">

																				</c:when>

																				<c:when test="${spC1 eq 3}">
																					<img
																						src="http://ddragon.leagueoflegends.com/cdn/13.4.1/img/spell/SummonerExhaust.png"
																						width="22" alt="탈진" height="22">

																				</c:when>

																				<c:when test="${spC1 eq 4}">
																					<img
																						src="http://ddragon.leagueoflegends.com/cdn/13.4.1/img/spell/SummonerFlash.png"
																						width="22" alt="점멸" height="22">

																				</c:when>

																				<c:when test="${spC1 eq 6}">
																					<img
																						src="http://ddragon.leagueoflegends.com/cdn/13.4.1/img/spell/SummonerHaste.png"
																						width="22" alt="유체화" height="22">

																				</c:when>

																				<c:when test="${spC1 eq 7}">
																					<img
																						src="http://ddragon.leagueoflegends.com/cdn/13.4.1/img/spell/SummonerHeal.png"
																						width="22" alt="치유" height="22">

																				</c:when>

																				<c:when test="${spC1 eq 11}">
																					<img
																						src="http://ddragon.leagueoflegends.com/cdn/13.4.1/img/spell/SummonerSmite.png"
																						width="22" alt="강타" height="22">

																				</c:when>

																				<c:when test="${spC1 eq 12}">
																					<img
																						src="http://ddragon.leagueoflegends.com/cdn/13.4.1/img/spell/SummonerTeleport.png"
																						width="22" alt="순간이동" height="22">

																				</c:when>

																				<c:when test="${spC1 eq 13}">
																					<img
																						src="http://ddragon.leagueoflegends.com/cdn/13.4.1/img/spell/SummonerMana.png"
																						width="22" alt="총명" height="22">

																				</c:when>

																				<c:when test="${spC1 eq 14}">
																					<img
																						src="http://ddragon.leagueoflegends.com/cdn/13.4.1/img/spell/SummonerDot.png"
																						width="22" alt="점화" height="22">

																				</c:when>

																				<c:when test="${spC1 eq 21}">
																					<img
																						src="http://ddragon.leagueoflegends.com/cdn/13.4.1/img/spell/SummonerBarrier.png"
																						width="22" alt="방어막" height="22">

																				</c:when>

																				<c:when test="${spC1 eq 32}">
																					<img
																						src="http://ddragon.leagueoflegends.com/cdn/13.4.1/img/spell/SummonerSnowball.png"
																						width="22" alt="표식" height="22">

																				</c:when>



																			</c:choose>
																		</div>
																	</div>

																	<div class="spell">
																		<div class="" style="position: relative;">
																			<c:choose>
																				<c:when test="${spC2 eq 1}">
																					<img
																						src="http://ddragon.leagueoflegends.com/cdn/13.4.1/img/spell/SummonerBoost.png"
																						width="22" alt="정화" height="22">

																				</c:when>

																				<c:when test="${spC2 eq 3}">
																					<img
																						src="http://ddragon.leagueoflegends.com/cdn/13.4.1/img/spell/SummonerExhaust.png"
																						width="22" alt="탈진" height="22">

																				</c:when>

																				<c:when test="${spC2 eq 4}">
																					<img
																						src="http://ddragon.leagueoflegends.com/cdn/13.4.1/img/spell/SummonerFlash.png"
																						width="22" alt="점멸" height="22">

																				</c:when>

																				<c:when test="${spC2 eq 6}">
																					<img
																						src="http://ddragon.leagueoflegends.com/cdn/13.4.1/img/spell/SummonerHaste.png"
																						width="22" alt="유체화" height="22">

																				</c:when>

																				<c:when test="${spC2 eq 7}">
																					<img
																						src="http://ddragon.leagueoflegends.com/cdn/13.4.1/img/spell/SummonerHeal.png"
																						width="22" alt="치유" height="22">

																				</c:when>

																				<c:when test="${spC2 eq 11}">
																					<img
																						src="http://ddragon.leagueoflegends.com/cdn/13.4.1/img/spell/SummonerSmite.png"
																						width="22" alt="강타" height="22">

																				</c:when>

																				<c:when test="${spC2 eq 12}">
																					<img
																						src="http://ddragon.leagueoflegends.com/cdn/13.4.1/img/spell/SummonerTeleport.png"
																						width="22" alt="순간이동" height="22">

																				</c:when>

																				<c:when test="${spC2 eq 13}">
																					<img
																						src="http://ddragon.leagueoflegends.com/cdn/13.4.1/img/spell/SummonerMana.png"
																						width="22" alt="총명" height="22">

																				</c:when>

																				<c:when test="${spC2 eq 14}">
																					<img
																						src="http://ddragon.leagueoflegends.com/cdn/13.4.1/img/spell/SummonerDot.png"
																						width="22" alt="점화" height="22">

																				</c:when>

																				<c:when test="${spC2 eq 21}">
																					<img
																						src="http://ddragon.leagueoflegends.com/cdn/13.4.1/img/spell/SummonerBarrier.png"
																						width="22" alt="방어막" height="22">

																				</c:when>

																				<c:when test="${spC2 eq 32}">
																					<img
																						src="http://ddragon.leagueoflegends.com/cdn/13.4.1/img/spell/SummonerSnowball.png"
																						width="22" alt="표식" height="22">

																				</c:when>



																			</c:choose>
																		</div>
																	</div>

																</div>
																<div class="runes">
																	<%-- 								<c:set var="runstestD" value="${MatchList.get(i).getInfo().getParticipants().get(MIP_I).getPerks().getStyles().get(0).getDescription() }"/>
								<c:set var="runstestN" value="${MatchList.get(i).getInfo().getParticipants().get(MIP_I).getPerks().getStyles().get(0).getStyle() }"/> --%>

																	<%-- <c:set var="runs_1_W_s" value="${MatchList.get(i).getInfo().getParticipants().get(MIP_I).getPerks().getStyles().get(0).getSelections().get(0).getDescription() }"/> --%>
																	<c:set var="runs_1_W"
																		value="${MatchList.get(i).getInfo().getParticipants().get(MIP_I).getPerks().getStyles().get(0).getSelections().get(0).getPerk() }" />

																	<%-- ${runs_1_W_s} --%>


																	<div class="rune">

																		<div class="" style="position: relative;">
																			<c:choose>
																				<c:when test="${runs_1_W eq 8010 }">
																					<img
																						src="${pageContext.request.contextPath }/resources/assets/img/lolez_perk/Precision/Conqueror.png"
																						width="22" alt="정복자" height="22">

																				</c:when>
																				<c:when test="${runs_1_W eq 8008 }">
																					<img
																						src="${pageContext.request.contextPath }/resources/assets/img/lolez_perk/Precision/LethalTempoTemp.png"
																						width="22" alt="치명적 속도" height="22">

																				</c:when>
																				<c:when test="${runs_1_W eq 8005 }">
																					<img
																						src="${pageContext.request.contextPath }/resources/assets/img/lolez_perk/Precision/PressTheAttack.png"
																						width="22" alt="집중공격" height="22">

																				</c:when>
																				<c:when test="${runs_1_W eq 8021 }">
																					<img
																						src="${pageContext.request.contextPath }/resources/assets/img/lolez_perk/Precision/FleetFootwork.png"
																						width="22" alt="기민한 발놀림" height="22">

																				</c:when>



																				<c:when test="${runs_1_W eq 8112 }">
																					<img
																						src="${pageContext.request.contextPath }/resources/assets/img/lolez_perk/Domination/Electrocute.png"
																						width="22" alt="감전" height="22">

																				</c:when>
																				<c:when test="${runs_1_W eq 9923 }">
																					<img
																						src="${pageContext.request.contextPath }/resources/assets/img/lolez_perk/Domination/HailOfBlades.png"
																						width="22" alt="칼날비" height="22">

																				</c:when>
																				<c:when test="${runs_1_W eq 8128 }">
																					<img
																						src="${pageContext.request.contextPath }/resources/assets/img/lolez_perk/Domination/DarkHarvest.png"
																						width="22" alt="어둠의 수학" height="22">

																				</c:when>
																				<c:when test="${runs_1_W eq 8124 }">
																					<img
																						src="${pageContext.request.contextPath }/resources/assets/img/lolez_perk/Domination/Predator.png"
																						width="22" alt="포식자" height="22">

																				</c:when>



																				<c:when test="${runs_1_W eq 8229 }">
																					<img
																						src="${pageContext.request.contextPath }/resources/assets/img/lolez_perk/Sorcery/ArcaneComet.png"
																						width="22" alt="신비한 유성" height="22">

																				</c:when>
																				<c:when test="${runs_1_W eq 8230 }">
																					<img
																						src="${pageContext.request.contextPath }/resources/assets/img/lolez_perk/Sorcery/PhaseRush.png"
																						width="22" alt="난입" height="22">

																				</c:when>
																				<c:when test="${runs_1_W eq 8214 }">
																					<img
																						src="${pageContext.request.contextPath }/resources/assets/img/lolez_perk/Sorcery/SummonAery.png"
																						width="22" alt="콩콩이 소환" height="22">

																				</c:when>




																				<c:when test="${runs_1_W eq 8437 }">
																					<img
																						src="${pageContext.request.contextPath }/resources/assets/img/lolez_perk/Resolve/GraspOfTheUndying.png"
																						width="22" alt="착취의 손아귀" height="22">

																				</c:when>
																				<c:when test="${runs_1_W eq 8439 }">
																					<img
																						src="${pageContext.request.contextPath }/resources/assets/img/lolez_perk/Resolve/VeteranAftershock.png"
																						width="22" alt="여진" height="22">

																				</c:when>
																				<c:when test="${runs_1_W eq 8465 }">
																					<img
																						src="${pageContext.request.contextPath }/resources/assets/img/lolez_perk/Resolve/Guardian.png"
																						width="22" alt="수호자" height="22">

																				</c:when>





																				<c:when test="${runs_1_W eq 8351 }">
																					<img
																						src="${pageContext.request.contextPath }/resources/assets/img/lolez_perk/Inspiration/GlacialAugment.png"
																						width="22" alt="빙결강화" height="22">

																				</c:when>
																				<c:when test="${runs_1_W eq 8369 }">
																					<img
																						src="${pageContext.request.contextPath }/resources/assets/img/lolez_perk/Inspiration/FirstStrike.png"
																						width="22" alt="선제공격" height="22">

																				</c:when>
																				<c:when test="${runs_1_W eq 8360 }">
																					<img
																						src="${pageContext.request.contextPath }/resources/assets/img/lolez_perk/Inspiration/UnsealedSpellbook.png"
																						width="22" alt="봉인 풀린 주문서" height="22">

																				</c:when>

																			</c:choose>

																		</div>
																	</div>
																	<div class="rune">
																		<c:set var="runs_2_W"
																			value="${MatchList.get(i).getInfo().getParticipants().get(MIP_I).getPerks().getStyles().get(1).getStyle() }" />
																		<div class="" style="position: relative;">
																			<c:choose>


																				<c:when test="${runs_2_W eq 8000 }">
																					<img
																						src="${pageContext.request.contextPath }/resources/assets/img/lolez_SUB_PERK/7201_Precision.png"
																						width="22" alt="결의" height="22">
																				</c:when>

																				<c:when test="${runs_2_W eq 8100 }">
																					<img
																						src="${pageContext.request.contextPath }/resources/assets/img/lolez_SUB_PERK/7200_Domination.png"
																						width="22" alt="결의" height="22">
																				</c:when>


																				<c:when test="${runs_2_W eq 8200 }">
																					<img
																						src="${pageContext.request.contextPath }/resources/assets/img/lolez_SUB_PERK/7202_Sorcery.png"
																						width="22" alt="결의" height="22">
																				</c:when>


																				<c:when test="${runs_2_W eq 8300 }">
																					<img
																						src="${pageContext.request.contextPath }/resources/assets/img/lolez_SUB_PERK/7203_Whimsy.png"
																						width="22" alt="결의" height="22">
																				</c:when>


																				<c:when test="${runs_2_W eq 8400 }">
																					<img
																						src="${pageContext.request.contextPath }/resources/assets/img/lolez_SUB_PERK/7204_Resolve.png"
																						width="22" alt="결의" height="22">
																				</c:when>

																			</c:choose>
																		</div>
																	</div>
																</div>
															</div>
															<div class="kda">
																<div class="k-d-a">
																	<span>${kill}</span> / <span class="d">${deaths}</span>
																	/ <span>${assists}</span>
																</div>
																<div class="ratio">
																	<c:set var="result" value="${(kill+assists)/deaths}" />
																	<span>${String.format("%.2f", result)}:1</span> 평점
																</div>
															</div>
															<div class="stats">

																<c:choose>
																	<c:when test="${teamID == 100 }">
																		<div class="p-kill">
																			<div class="" style="position: relative;">킬관여
																				${KA_T_bule }%</div>
																		</div>

																	</c:when>

																	<c:when test="${teamID == 200 }">
																		<div class="p-kill">
																			<div class="" style="position: relative;">킬관여
																				${KA_T_red }%</div>
																		</div>

																	</c:when>


																</c:choose>




																<div class="ward">제어 와드
																	${MatchList.get(i).getInfo().getParticipants().get(MIP_I).getVisionWardsBoughtInGame() }</div>
																<div class="cs">
																	<div class="" style="position: relative;">CS
																		${totalCSW} (${MINCSW })</div>
																</div>
																<!-- 								<div class="average-tier">
									<div class="" style="position: relative;">gold 4</div>
								</div> -->
															</div>
														</div>
														<div>
															<div class="items">


																<c:set var="item0_win"
																	value="${MatchList.get(i).getInfo().getParticipants().get(MIP_I).getItem0() }" />
																<c:set var="item1_win"
																	value="${MatchList.get(i).getInfo().getParticipants().get(MIP_I).getItem1() }" />
																<c:set var="item2_win"
																	value="${MatchList.get(i).getInfo().getParticipants().get(MIP_I).getItem2() }" />
																<c:set var="item3_win"
																	value="${MatchList.get(i).getInfo().getParticipants().get(MIP_I).getItem3() }" />
																<c:set var="item4_win"
																	value="${MatchList.get(i).getInfo().getParticipants().get(MIP_I).getItem4() }" />
																<c:set var="item5_win"
																	value="${MatchList.get(i).getInfo().getParticipants().get(MIP_I).getItem5() }" />
																<c:set var="item6_win"
																	value="${MatchList.get(i).getInfo().getParticipants().get(MIP_I).getItem6() }" />
																<c:set var="zero" value="0" />


																<%-- <c:set var="items" value="${ {item0_win, item1_win, item2_win, item3_win, item4_win, item5_win} }"/> --%>

																<c:set var="itemList">${item0_win },${item1_win },${item2_win },${item3_win },${item4_win },${item5_win } </c:set>

																<ul>



																	<c:forEach var="Item_i" items="${itemList }">




																		<c:if test="${Item_i != 0}">

																			<li><div class="" style="position: relative;">
																					<img
																						src="http://ddragon.leagueoflegends.com/cdn/13.4.1/img/item/${Item_i}.png"
																						width="22" alt="${item_i}" height="22">
																				</div></li>

																		</c:if>
																		<c:if test="${Item_i == 0}">

																			<li></li>

																		</c:if>


																	</c:forEach>

																</ul>
																<div class="ward">
																	<div class="" style="position: relative;">
																		<img
																			src="http://ddragon.leagueoflegends.com/cdn/13.4.1/img/item/${item6_win }.png"
																			width="22" alt="${item6_win}" height="22">
																	</div>
																</div>
															</div>

															<c:set var="PentaKills"
																value="${MatchList.get(i).getInfo().getParticipants().get(MIP_I).getPentaKills()}" />
															<c:set var="QuadraKills"
																value="${MatchList.get(i).getInfo().getParticipants().get(MIP_I).getQuadraKills()}" />
															<c:set var="TripleKills"
																value="${MatchList.get(i).getInfo().getParticipants().get(MIP_I).getTripleKills()}" />
															<c:set var="DoubleKills"
																value="${MatchList.get(i).getInfo().getParticipants().get(MIP_I).getDoubleKills()}" />

															<c:choose>
																<c:when test="${PentaKills >= 1 }">
																	<div class="multi-kill">팬타킬</div>
																</c:when>

																<c:when test="${QuadraKills >= 1 }">
																	<div class="multi-kill">쿼드라킬</div>
																</c:when>

																<c:when test="${TripleKills >= 1 }">
																	<div class="multi-kill">트리플킬</div>
																</c:when>

																<c:when test="${DoubleKills >= 1 }">
																	<div class="multi-kill">더블킬</div>
																</c:when>



															</c:choose>





														</div>
													</div>
													<div class="participants">
														<!-- 해당게임의 존재한 플레이어 목록 5:5 기준 총 10명 -->

														<ul>

															<c:forEach begin="0"
																end="${MatchList.get(i).getInfo().getParticipants().size()- 6}"
																var="member">
																<c:set var="ChampionNameMember"
																	value="${MatchList.get(i).getInfo().getParticipants().get(member).getChampionName()}" />

																<li class="css-1ahqe5t e1iiyghw1"><div class="icon"
																		style="position: relative;">

																		<c:choose>
																			<c:when test="${ChampionNameMember ==  FiddleSticks}">
																				<img
																					src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/${ FiddleSticks_s}.png"
																					width="16" alt="${ FiddleSticks_s}" height="16">
																			</c:when>

																			<c:otherwise>
																				<img
																					src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/${ ChampionNameMember}.png"
																					width="16" alt="${ ChampionNameMember}" height="16">


																			</c:otherwise>



																		</c:choose>



																	</div>
																	<div class="name">
																		<a
																			href="/summoners/kr/%EC%9D%91%EA%BC%AC%EC%8A%A4%ED%82%A4%EB%B2%84%ED%84%B0"
																			target="_blank" rel="noreferrer">${MatchList.get(i).getInfo().getParticipants().get(member).getSummonerName() }</a>
																	</div></li>

															</c:forEach>






														</ul>
														<ul>
															<c:forEach begin="5"
																end="${MatchList.get(i).getInfo().getParticipants().size()- 1}"
																var="member_u">
																<c:set var="ChampionNameMember_two"
																	value="${MatchList.get(i).getInfo().getParticipants().get(member_u).getChampionName()}" />

																<li class="css-1ahqe5t e1iiyghw1"><div class="icon"
																		style="position: relative;">
																		<c:choose>
																			<c:when
																				test="${ChampionNameMember_two ==  FiddleSticks}">
																				<img
																					src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/${ FiddleSticks_s}.png"
																					width="16" alt="${ FiddleSticks_s}" height="16">
																			</c:when>

																			<c:otherwise>
																				<img
																					src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/${ ChampionNameMember_two}.png"
																					width="16" alt="${ ChampionNameMember_two}"
																					height="16">


																			</c:otherwise>



																		</c:choose>
																	</div>
																	<div class="name">
																		<a
																			href="/summoners/kr/%EC%9D%91%EA%BC%AC%EC%8A%A4%ED%82%A4%EB%B2%84%ED%84%B0"
																			target="_blank" rel="noreferrer">${MatchList.get(i).getInfo().getParticipants().get(member_u).getSummonerName() }</a>
																	</div></li>

															</c:forEach>
														</ul>
													</div>
												</div>
											</div>
											<div class="action">
												<button class="detail">
													<img
														src="https://s-lol-web.op.gg/images/icon/icon-arrow-down-blue.svg?v=1676969392397"
														width="24" alt="More" height="24">
												</button>
											</div>
										</div></li>


								</c:if>
								<c:if
									test="${MatchList.get(i).getInfo().getParticipants().get(MIP_I).isWin()  eq false }">
									<c:set var="buleTeam_L" value="0" />
									<c:set var="redTeam_L" value="1" />

									<c:set var="teamID_L"
										value="${MatchList.get(i).getInfo().getParticipants().get(MIP_I).getTeamId()}" />



									<c:set var="kill_L"
										value="${MatchList.get(i).getInfo().getParticipants().get(MIP_I).getKills() }" />
									<c:set var="deaths_L"
										value="${MatchList.get(i).getInfo().getParticipants().get(MIP_I).getDeaths() }" />
									<c:set var="assists_L"
										value="${MatchList.get(i).getInfo().getParticipants().get(MIP_I).getAssists() }" />
									<c:set var="Gametype_L"
										value="${MatchList.get(i).getInfo().getQueueId()}" />



									<c:set var="playTieml"
										value="${MatchList.get(i).getInfo().getParticipants().get(MIP_I).getTimePlayed() }" />
									<c:set var="minl" value="${playTieml / 60 }" />
									<c:set var="secl" value="${playTieml % 60 }" />
									<c:set var="totalCSL"
										value="${MatchList.get(i).getInfo().getParticipants().get(MIP_I).getTotalMinionsKilled() + MatchList.get(i).getInfo().getParticipants().get(MIP_I).getNeutralMinionsKilled()}" />

									<c:set var="MinIntL" value="${minl.intValue()}" />


									<c:set var="CS_Sec" value="${secl/100.0 }" />
									<c:set var="CStotal_tiem" value="${(MinIntL/1.0) + CS_Sec  }" />
									<c:set var="MINCS_stap" value="${totalCSL / CStotal_tiem}" />
									<fmt:formatNumber var="MINCS" value="${MINCS_stap }"
										pattern="0.0" />


									<c:set var="teamID_L" value="${MatchList.get(i).getInfo().getParticipants().get(MIP_I).getTeamId()}" />

									<c:if test="${teamID_L == 100 }">
										<c:set var="buleTEAM_Kill_L" value="${MatchList.get(i).getInfo().getTeams().get(buleTeam_L).getObjectives().getChampion().getKills()}" />
										<c:set var="KA_bule_L"	value="${(kill_L +  assists_L) / buleTEAM_Kill_L * 100}" />

										<fmt:formatNumber var="KA_T_bule_L" value="${KA_bule_L }"
											pattern="0" />
									</c:if>

									<c:if test="${teamID_L == 200 }">
										<c:set var="RedTEAM_Kill_L"
											value="${MatchList.get(i).getInfo().getTeams().get(redTeam_L).getObjectives().getChampion().getKills()}" />
										<c:set var="KA_red_L"
											value="${(kill_L +  assists_L) / RedTEAM_Kill_L * 100}" />

										<fmt:formatNumber var="KA_T_red_L" value="${KA_red_L }"
											pattern="0" />
									</c:if>







									<li class="css-1qq23jn e1iiyghw3"><div result="LOSE"
											class="css-jc3q2t e1iiyghw2">
											<div class="contents">
												<div class="game-content">
													<div class="game">
														<div class="type">
															<c:choose>
																<c:when test="${Gametype_L == 420 }">
																솔로 랭크
																
																</c:when>

																<c:when test="${Gametype_L == 440 }">
																자유 5:5 랭크
																
																</c:when>

																<c:when test="${Gametype_L == 430 }">
																일반
																
																</c:when>

																<c:when test="${Gametype_L == 450 }">
																무작위 총력전
																
																</c:when>

																<c:when test="${Gametype_L == 900 }">
																모두 무작위 U.R.F.
																
																</c:when>
																<c:when test="${Gametype_L == 1900 }">
																U.R.F
																
																</c:when>



															</c:choose>
														</div>
														<div class="time-stamp">
															<c:set var="gameEndTimeStampex_L"
																value="${MatchList.get(i).getInfo().getGameEndTimestampex()}" />
															<c:set var="now_L"
																value="<%=System.currentTimeMillis() / 1000%>" />
															<c:set var="time2_L"
																value="${now_L - gameEndTimeStampex_L}" />

															<c:set var="y_L" value="${time2_L / 31104000 }" />
															<c:set var="mo_L" value="${time2_L / 2592000 }" />
															<c:set var="d_L" value="${time2_L / 86000 }" />
															<c:set var="h_L" value="${time2_L / 3600 }" />
															<c:set var="m_L" value="${time2_L / 60 }" />

															<fmt:formatNumber var="totaly_L" value="${y_L }"
																pattern="#" />
															<fmt:formatNumber var="totalmo_L" value="${mo_L }"
																pattern="#" />
															<fmt:formatNumber var="totald_L" value="${d_L }"
																pattern="#" />
															<fmt:formatNumber var="totalH_L" value="${h_L }"
																pattern="#" />
															<fmt:formatNumber var="totalm_L" value="${m_L }"
																pattern="#" />


															<div class="" style="position: relative;">
																<c:choose>
																	<c:when test="${y_L >=1 }">
																	${totaly_L }년 전
																	
																	</c:when>

																	<c:when test="${totald_L >= 30 }">
																	${totalmo_L }달 전
																	
																	</c:when>

																	<c:when test="${totalH_L >= 24 }">
																		<c:choose>
																			<c:when test="${totald_L < 2 }">
																				하루 전
																			</c:when>
																			<c:otherwise>
													
																				${totald_L }일 전
																			
																			</c:otherwise>

																		</c:choose>

																	</c:when>


																	<c:when test="${totalm_L >= 60}">
																		${totalH_L }시간 전
																	
																	</c:when>
																	<c:otherwise>
											
																		${totalm_L }분 전
																	
																	</c:otherwise>

																</c:choose>


															</div>
														</div>
														<div class="bar"></div>
														<div class="result">패배</div>
														<div class="length">${MinIntL}분${secl}초</div>
													</div>
													<div class="info">
														<c:set var="ChampionName"
															value="${MatchList.get(i).getInfo().getParticipants().get(MIP_I).getChampionName()}" />
														<div>
															<div class="champion">
																<div class="icon">
																	<a href="/champions/zeri" target="_blank"
																		rel="noreferrer"> <c:choose>
																			<c:when test="${ChampionName eq FiddleSticks}">
																				<img
																					src="http://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/${Fiddlesticks_s }.png"
																					width="48" alt="제리" height="48">

																			</c:when>

																			<c:otherwise>
																				<img
																					src="http://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/${ChampionName }.png"
																					width="48" alt="제리" height="48">

																			</c:otherwise>

																		</c:choose> <span class="champion-level">${MatchList.get(i).getInfo().getParticipants().get(MIP_I).getChampLevel() }</span></a>
																</div>
																<div class="spells">
																	<c:set var="spC1_L"
																		value="${MatchList.get(i).getInfo().getParticipants().get(MIP_I).getSummoner1Id() }" />
																	<c:set var="spC2_L"
																		value="${MatchList.get(i).getInfo().getParticipants().get(MIP_I).getSummoner2Id() }" />
																	<div class="spell">
																		<div class="" style="position: relative;">
																			<c:choose>
																				<c:when test="${spC1_L eq 1}">
																					<img
																						src="http://ddragon.leagueoflegends.com/cdn/13.4.1/img/spell/SummonerBoost.png"
																						width="22" alt="정화" height="22">

																				</c:when>

																				<c:when test="${spC1_L eq 3}">
																					<img
																						src="http://ddragon.leagueoflegends.com/cdn/13.4.1/img/spell/SummonerExhaust.png"
																						width="22" alt="탈진" height="22">

																				</c:when>

																				<c:when test="${spspC1_LC1 eq 4}">
																					<img
																						src="http://ddragon.leagueoflegends.com/cdn/13.4.1/img/spell/SummonerFlash.png"
																						width="22" alt="점멸" height="22">

																				</c:when>

																				<c:when test="${spC1_L eq 6}">
																					<img
																						src="http://ddragon.leagueoflegends.com/cdn/13.4.1/img/spell/SummonerHaste.png"
																						width="22" alt="유체화" height="22">

																				</c:when>

																				<c:when test="${spC1_L eq 7}">
																					<img
																						src="http://ddragon.leagueoflegends.com/cdn/13.4.1/img/spell/SummonerHeal.png"
																						width="22" alt="치유" height="22">

																				</c:when>

																				<c:when test="${spC1_L eq 11}">
																					<img
																						src="http://ddragon.leagueoflegends.com/cdn/13.4.1/img/spell/SummonerSmite.png"
																						width="22" alt="강타" height="22">

																				</c:when>

																				<c:when test="${spC1_L eq 12}">
																					<img
																						src="http://ddragon.leagueoflegends.com/cdn/13.4.1/img/spell/SummonerTeleport.png"
																						width="22" alt="순간이동" height="22">

																				</c:when>

																				<c:when test="${spC1_L eq 13}">
																					<img
																						src="http://ddragon.leagueoflegends.com/cdn/13.4.1/img/spell/SummonerMana.png"
																						width="22" alt="총명" height="22">

																				</c:when>

																				<c:when test="${spC1_L eq 14}">
																					<img
																						src="http://ddragon.leagueoflegends.com/cdn/13.4.1/img/spell/SummonerDot.png"
																						width="22" alt="점화" height="22">

																				</c:when>

																				<c:when test="${spC1_L eq 21}">
																					<img
																						src="http://ddragon.leagueoflegends.com/cdn/13.4.1/img/spell/SummonerBarrier.png"
																						width="22" alt="방어막" height="22">

																				</c:when>

																				<c:when test="${spC1_L eq 32}">
																					<img
																						src="http://ddragon.leagueoflegends.com/cdn/13.4.1/img/spell/SummonerSnowball.png"
																						width="22" alt="표식" height="22">

																				</c:when>



																			</c:choose>
																		</div>
																	</div>
																	<div class="spell">
																		<div class="" style="position: relative;">
																			<c:choose>
																				<c:when test="${spC2_L eq 1}">
																					<img
																						src="http://ddragon.leagueoflegends.com/cdn/13.4.1/img/spell/SummonerBoost.png"
																						width="22" alt="정화" height="22">

																				</c:when>

																				<c:when test="${spC2_L eq 3}">
																					<img
																						src="http://ddragon.leagueoflegends.com/cdn/13.4.1/img/spell/SummonerExhaust.png"
																						width="22" alt="탈진" height="22">

																				</c:when>

																				<c:when test="${spC2_L eq 4}">
																					<img
																						src="http://ddragon.leagueoflegends.com/cdn/13.4.1/img/spell/SummonerFlash.png"
																						width="22" alt="점멸" height="22">

																				</c:when>

																				<c:when test="${spC2_L eq 6}">
																					<img
																						src="http://ddragon.leagueoflegends.com/cdn/13.4.1/img/spell/SummonerHaste.png"
																						width="22" alt="유체화" height="22">

																				</c:when>

																				<c:when test="${spC2_L eq 7}">
																					<img
																						src="http://ddragon.leagueoflegends.com/cdn/13.4.1/img/spell/SummonerHeal.png"
																						width="22" alt="치유" height="22">

																				</c:when>

																				<c:when test="${spC2_L eq 11}">
																					<img
																						src="http://ddragon.leagueoflegends.com/cdn/13.4.1/img/spell/SummonerSmite.png"
																						width="22" alt="강타" height="22">

																				</c:when>

																				<c:when test="${spC2_L eq 12}">
																					<img
																						src="http://ddragon.leagueoflegends.com/cdn/13.4.1/img/spell/SummonerTeleport.png"
																						width="22" alt="순간이동" height="22">

																				</c:when>

																				<c:when test="${spC2_L eq 13}">
																					<img
																						src="http://ddragon.leagueoflegends.com/cdn/13.4.1/img/spell/SummonerMana.png"
																						width="22" alt="총명" height="22">

																				</c:when>

																				<c:when test="${spC2_L eq 14}">
																					<img
																						src="http://ddragon.leagueoflegends.com/cdn/13.4.1/img/spell/SummonerDot.png"
																						width="22" alt="점화" height="22">

																				</c:when>

																				<c:when test="${spC2_L eq 21}">
																					<img
																						src="http://ddragon.leagueoflegends.com/cdn/13.4.1/img/spell/SummonerBarrier.png"
																						width="22" alt="방어막" height="22">

																				</c:when>

																				<c:when test="${spC2_L eq 32}">
																					<img
																						src="http://ddragon.leagueoflegends.com/cdn/13.4.1/img/spell/SummonerSnowball.png"
																						width="22" alt="표식" height="22">

																				</c:when>



																			</c:choose>
																		</div>
																	</div>
																</div>
																<div class="runes">
																	<c:set var="runs_1"
																		value="${MatchList.get(i).getInfo().getParticipants().get(MIP_I).getPerks().getStyles().get(0).getSelections().get(0).getPerk() }" />
																	<div class="rune">
																		<div class="" style="position: relative;">
																			<c:choose>
																				<c:when test="${runs_1 eq 8010 }">
																					<img
																						src="${pageContext.request.contextPath }/resources/assets/img/lolez_perk/Precision/Conqueror.png"
																						width="22" alt="정복자" height="22">

																				</c:when>
																				<c:when test="${runs_1 eq 8008 }">
																					<img
																						src="${pageContext.request.contextPath }/resources/assets/img/lolez_perk/Precision/LethalTempoTemp.png"
																						width="22" alt="치명적 속도" height="22">

																				</c:when>
																				<c:when test="${runs_1 eq 8005 }">
																					<img
																						src="${pageContext.request.contextPath }/resources/assets/img/lolez_perk/Precision/PressTheAttack.png"
																						width="22" alt="집중공격" height="22">

																				</c:when>
																				<c:when test="${runs_1 eq 8021 }">
																					<img
																						src="${pageContext.request.contextPath }/resources/assets/img/lolez_perk/Precision/FleetFootwork.png"
																						width="22" alt="기민한 발놀림" height="22">

																				</c:when>



																				<c:when test="${runs_1 eq 8112 }">
																					<img
																						src="${pageContext.request.contextPath }/resources/assets/img/lolez_perk/Domination/Electrocute.png"
																						width="22" alt="감전" height="22">

																				</c:when>
																				<c:when test="${runs_1 eq 9923 }">
																					<img
																						src="${pageContext.request.contextPath }/resources/assets/img/lolez_perk/Domination/HailOfBlades.png"
																						width="22" alt="칼날비" height="22">

																				</c:when>
																				<c:when test="${runs_1 eq 8128 }">
																					<img
																						src="${pageContext.request.contextPath }/resources/assets/img/lolez_perk/Domination/DarkHarvest.png"
																						width="22" alt="어둠의 수학" height="22">

																				</c:when>
																				<c:when test="${runs_1 eq 8124 }">
																					<img
																						src="${pageContext.request.contextPath }/resources/assets/img/lolez_perk/Domination/Predator.png"
																						width="22" alt="포식자" height="22">

																				</c:when>



																				<c:when test="${runs_1 eq 8229 }">
																					<img
																						src="${pageContext.request.contextPath }/resources/assets/img/lolez_perk/Sorcery/ArcaneComet.png"
																						width="22" alt="신비한 유성" height="22">

																				</c:when>
																				<c:when test="${runs_1 eq 8230 }">
																					<img
																						src="${pageContext.request.contextPath }/resources/assets/img/lolez_perk/Sorcery/PhaseRush.png"
																						width="22" alt="난입" height="22">

																				</c:when>
																				<c:when test="${runs_1 eq 8214 }">
																					<img
																						src="${pageContext.request.contextPath }/resources/assets/img/lolez_perk/Sorcery/SummonAery.png"
																						width="22" alt="콩콩이 소환" height="22">

																				</c:when>




																				<c:when test="${runs_1 eq 8437 }">
																					<img
																						src="${pageContext.request.contextPath }/resources/assets/img/lolez_perk/Resolve/GraspOfTheUndying.png"
																						width="22" alt="착취의 손아귀" height="22">

																				</c:when>
																				<c:when test="${runs_1 eq 8439 }">
																					<img
																						src="${pageContext.request.contextPath }/resources/assets/img/lolez_perk/Resolve/VeteranAftershock.png"
																						width="22" alt="여진" height="22">

																				</c:when>
																				<c:when test="${runs_1 eq 8465 }">
																					<img
																						src="${pageContext.request.contextPath }/resources/assets/img/lolez_perk/Resolve/Guardian.png"
																						width="22" alt="수호자" height="22">

																				</c:when>





																				<c:when test="${runs_1 eq 8351 }">
																					<img
																						src="${pageContext.request.contextPath }/resources/assets/img/lolez_perk/Inspiration/GlacialAugment.png"
																						width="22" alt="빙결강화" height="22">

																				</c:when>
																				<c:when test="${runs_1 eq 8369 }">
																					<img
																						src="${pageContext.request.contextPath }/resources/assets/img/lolez_perk/Inspiration/FirstStrike.png"
																						width="22" alt="선제공격" height="22">

																				</c:when>
																				<c:when test="${runs_1 eq 8360 }">
																					<img
																						src="${pageContext.request.contextPath }/resources/assets/img/lolez_perk/Inspiration/UnsealedSpellbook.png"
																						width="22" alt="봉인 풀린 주문서" height="22">

																				</c:when>

																			</c:choose>
																		</div>
																	</div>
																	<div class="rune">
																		<c:set var="rune_ls"
																			value="${MatchList.get(i).getInfo().getParticipants().get(MIP_I).getPerks().getStyles().get(1).getSelections().get(1).getPerk() }" />

																		<c:choose>

																			<c:when test="${rune_ls eq 8014 }">
																				<img
																					src="${pageContext.request.contextPath }/resources/assets/img/lolez_SUB_PERK/7201_Precision.png"
																					width="22" alt="정밀" height="22">
																			</c:when>

																			<c:when test="${rune_ls eq 8139 }">
																				<img
																					src="${pageContext.request.contextPath }/resources/assets/img/lolez_SUB_PERK/7200_Domination.png"
																					width="22" alt="지배" height="22">
																			</c:when>


																			<c:when test="${rune_ls eq 8210 }">
																				<img
																					src="${pageContext.request.contextPath }/resources/assets/img/lolez_SUB_PERK/7202_Sorcery.png"
																					width="22" alt="마법" height="22">
																			</c:when>


																			<c:when test="${rune_ls eq 8345  }">
																				<img
																					src="${pageContext.request.contextPath }/resources/assets/img/lolez_SUB_PERK/7203_Whimsy.png"
																					width="22" alt="영감" height="22">
																			</c:when>

																			<c:when test="${rune_ls eq  8347 }">
																				<img
																					src="${pageContext.request.contextPath }/resources/assets/img/lolez_SUB_PERK/7203_Whimsy.png"
																					width="22" alt="영감" height="22">
																			</c:when>

																			<c:when test="${rune_ls eq 8304  }">
																				<img
																					src="${pageContext.request.contextPath }/resources/assets/img/lolez_SUB_PERK/7203_Whimsy.png"
																					width="22" alt="영감" height="22">
																			</c:when>


																			<c:when test="${rune_ls eq 8451 }">
																				<img
																					src="${pageContext.request.contextPath }/resources/assets/img/lolez_SUB_PERK/7204_Resolve.png"
																					width="22" alt="결의" height="22">
																			</c:when>

																		</c:choose>

																		<div class="" style="position: relative;"></div>
																	</div>
																</div>
															</div>


															<div class="kda">
																<div class="k-d-a">
																	<span>${kill_L}</span> / <span class="d">${deaths_L}</span>
																	/ <span>${assists_L}</span>
																</div>
																<div class="ratio">
																	<c:set var="result_L"
																		value="${(kill_L+assists_L)/deaths_L}" />
																	<span>${String.format("%.2f", result_L)}:1</span> 평점
																</div>
															</div>
															<div class="stats">
																<c:choose>
																	<c:when test="${teamID_L == 100 }">
																		<div class="p-kill">
																			<div class="" style="position: relative;">킬관여
																				${KA_T_bule_L }%</div>
																		</div>

																	</c:when>

																	<c:when test="${teamID_L == 200 }">
																		<div class="p-kill">
																			<div class="" style="position: relative;">킬관여
																				${KA_T_red_L }%</div>
																		</div>

																	</c:when>


																</c:choose>
																<div class="ward">제어 와드
																	${MatchList.get(i).getInfo().getParticipants().get(MIP_I).getVisionWardsBoughtInGame() }</div>
																<div class="cs">
																	<div class="" style="position: relative;">CS
																		${totalCSL } (${MINCS})</div>
																</div>
																<!-- 												<div class="average-tier">
													<div class="" style="position: relative;">grandmaster</div>
												</div> -->
															</div>
														</div>
														<div>
															<div class="items">
																<c:set var="item0_L"
																	value="${MatchList.get(i).getInfo().getParticipants().get(MIP_I).getItem0() }" />
																<c:set var="item1_L"
																	value="${MatchList.get(i).getInfo().getParticipants().get(MIP_I).getItem1() }" />
																<c:set var="item2_L"
																	value="${MatchList.get(i).getInfo().getParticipants().get(MIP_I).getItem2() }" />
																<c:set var="item3_L"
																	value="${MatchList.get(i).getInfo().getParticipants().get(MIP_I).getItem3() }" />
																<c:set var="item4_L"
																	value="${MatchList.get(i).getInfo().getParticipants().get(MIP_I).getItem4() }" />
																<c:set var="item5_L"
																	value="${MatchList.get(i).getInfo().getParticipants().get(MIP_I).getItem5() }" />
																<c:set var="item6_L"
																	value="${MatchList.get(i).getInfo().getParticipants().get(MIP_I).getItem6() }" />
																<c:set var="zero_L" value="0" />
																<c:set var="itemList_L">${item0_L },${item1_L },${item2_L },${item3_L },${item4_L },${item5_L } </c:set>

																<ul>

																	<c:forEach var="Item_i_L" items="${itemList_L }">
																		<c:if test="${Item_i_L != 0}">

																			<li><div class="" style="position: relative;">
																					<img
																						src="http://ddragon.leagueoflegends.com/cdn/13.4.1/img/item/${Item_i_L}.png"
																						width="22" alt="${Item_i_L}" height="22">
																				</div></li>

																		</c:if>
																		<c:if test="${Item_i_L == 0}">

																			<li></li>

																		</c:if>


																	</c:forEach>

																</ul>
																<div class="ward">
																	<div class="" style="position: relative;">
																		<img
																			src="http://ddragon.leagueoflegends.com/cdn/13.4.1/img/item/${item6_L}.png"
																			width="22" alt="${item6_L }" height="22">
																	</div>
																</div>
															</div>
															<c:set var="PentaKills_L"
																value="${MatchList.get(i).getInfo().getParticipants().get(MIP_I).getPentaKills()}" />
															<c:set var="QuadraKills_L"
																value="${MatchList.get(i).getInfo().getParticipants().get(MIP_I).getQuadraKills()}" />
															<c:set var="TripleKills_L"
																value="${MatchList.get(i).getInfo().getParticipants().get(MIP_I).getTripleKills()}" />
															<c:set var="DoubleKills_L"
																value="${MatchList.get(i).getInfo().getParticipants().get(MIP_I).getDoubleKills()}" />

															<c:choose>
																<c:when test="${PentaKills_L >= 1 }">
																	<div class="multi-kill">팬타킬</div>
																</c:when>

																<c:when test="${QuadraKills_L >= 1 }">
																	<div class="multi-kill">쿼드라킬</div>
																</c:when>

																<c:when test="${TripleKills_L >= 1 }">
																	<div class="multi-kill">트리플킬</div>
																</c:when>

																<c:when test="${DoubleKills_L >= 1 }">
																	<div class="multi-kill">더블킬</div>
																</c:when>



															</c:choose>


														</div>
													</div>


													<div class="participants">
														<ul>


															<c:forEach begin="0"
																end="${MatchList.get(i).getInfo().getParticipants().size()- 6}"
																var="member_two">
																<c:set var="ChampionNameMember_l"
																	value="${MatchList.get(i).getInfo().getParticipants().get(member_two).getChampionName()}" />
																<li class="css-1ahqe5t e1iiyghw1">
																	<div class="icon" style="position: relative;">

																		<c:choose>
																			<c:when
																				test="${ChampionNameMember_l ==  FiddleSticks}">
																				<img
																					src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/${ FiddleSticks_s}.png"
																					width="16" alt="${ FiddleSticks_s}" height="16">
																			</c:when>

																			<c:otherwise>
																				<img
																					src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/${ ChampionNameMember_l}.png"
																					width="16" alt="${ ChampionNameMember_l}"
																					height="16">


																			</c:otherwise>



																		</c:choose>
																	</div>
																	<div class="name">
																		<a
																			href="/summoners/kr/%EC%9D%91%EA%BC%AC%EC%8A%A4%ED%82%A4%EB%B2%84%ED%84%B0"
																			target="_blank" rel="noreferrer">${MatchList.get(i).getInfo().getParticipants().get(member_two).getSummonerName() }</a>
																	</div>
																</li>

															</c:forEach>

														</ul>
														<ul>
															<c:forEach begin="5"
																end="${MatchList.get(i).getInfo().getParticipants().size()- 1}"
																var="member_u_two">
																<c:set var="ChampionNameMember_l_two"
																	value="${MatchList.get(i).getInfo().getParticipants().get(member_u_two).getChampionName()}" />
																<li class="css-1ahqe5t e1iiyghw1"><div class="icon"
																		style="position: relative;">
																		<c:choose>
																			<c:when
																				test="${ChampionNameMember_l_two ==  FiddleSticks}">
																				<img
																					src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/${ FiddleSticks_s}.png"
																					width="16" alt="${ FiddleSticks_s}" height="16">
																			</c:when>

																			<c:otherwise>
																				<img
																					src="https://ddragon.leagueoflegends.com/cdn/13.4.1/img/champion/${ ChampionNameMember_l_two}.png"
																					width="16" alt="${ ChampionNameMember_l_two}"
																					height="16">


																			</c:otherwise>



																		</c:choose>
																	</div>
																	<div class="name">
																		<a
																			href="/summoners/kr/%EC%9D%91%EA%BC%AC%EC%8A%A4%ED%82%A4%EB%B2%84%ED%84%B0"
																			target="_blank" rel="noreferrer">${MatchList.get(i).getInfo().getParticipants().get(member_u_two).getSummonerName() }</a>
																	</div></li>

															</c:forEach>
														</ul>
													</div>
												</div>
											</div>
											<div class="action">
												<button class="detail">
													<img
														src="https://s-lol-web.op.gg/images/icon/icon-arrow-down-red.svg?v=1675751623266"
														width="24" alt="More" height="24">
												</button>
											</div>
										</div></li>

								</c:if>

							</c:if>
						</c:forEach>

					</c:forEach>
				</div>
				<button class="more">더 보기</button>
			</div>
		</div>
	</div>




	<!-- JS here -->

	<script
		src="${pageContext.request.contextPath }/resources//assets/js/vendor/modernizr-3.5.0.min.js"></script>
	<!-- Jquery, Popper, Bootstrap -->
	<script
		src="${pageContext.request.contextPath }/resources//assets/js/vendor/jquery-1.12.4.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources//assets/js/popper.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources//assets/js/bootstrap.min.js"></script>
	<!-- Jquery Mobile Menu -->
	<script
		src="${pageContext.request.contextPath }/resources//assets/js/jquery.slicknav.min.js"></script>

	<!-- Jquery Slick , Owl-Carousel Plugins -->
	<script
		src="${pageContext.request.contextPath }/resources//assets/js/owl.carousel.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources//assets/js/slick.min.js"></script>
	<!-- One Page, Animated-HeadLin -->
	<script
		src="${pageContext.request.contextPath }/resources//assets/js/wow.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources//assets/js/animated.headline.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources//assets/js/jquery.magnific-popup.js"></script>

	<!-- Nice-select, sticky -->
	<script
		src="${pageContext.request.contextPath }/resources//assets/js/jquery.nice-select.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources//assets/js/jquery.sticky.js"></script>

	<!-- contact js -->
	<script
		src="${pageContext.request.contextPath }/resources//assets/js/contact.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources//assets/js/jquery.form.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources//assets/js/jquery.validate.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources//assets/js/mail-script.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources//assets/js/jquery.ajaxchimp.min.js"></script>

	<!-- Jquery Plugins, main Jquery -->
	<script
		src="${pageContext.request.contextPath }/resources//assets/js/plugins.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources//assets/js/main.js"></script>


	<!-- Page level plugins -->
	<script
		src="${pageContext.request.contextPath }/resources/assets/datatables/jquery.dataTables.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources/assets/datatables/dataTables.bootstrap4.min.js"></script>

	<!-- Page level custom scripts -->
	<script
		src="${pageContext.request.contextPath }/resources/assets/js/demo/datatables-demo.js"></script>


</body>


<script type="text/javascript">
	var tier = [ "IRON", "BRONZE", "SILVER", "GOLD", "PLATINUM", "DIAMOND",
			"MASTER", "GRANDMASTER", "CHALLENGER" ]
	var ran = [ "I", "II", "III", "IV" ]
	var checkSoloList = "${SoloList.tier}";
	var checkDuoList = "${DuoList.tier}";

	/* 	console.log("${MatchList.get(1).getInfo().getParticipants().get(2).getTeamId()}");
	 console.log("${MatchList.get(1).getInfo().getTeams()}");
	 console.log("${MatchList.get(1).getInfo().getTeams().get(0).getObjectives()}"); */

	console
			.log("${MatchList.get(0).getInfo().getParticipants().get(8).getItem0() }");
	console
			.log("${MatchList.get(0).getInfo().getParticipants().get(8).getItem1() }");
	console
			.log("${MatchList.get(0).getInfo().getParticipants().get(8).getItem2() }");
	console
			.log("${MatchList.get(0).getInfo().getParticipants().get(8).getItem3() }");
	console
			.log("${MatchList.get(0).getInfo().getParticipants().get(8).getItem4() }");
	console
			.log("${MatchList.get(0).getInfo().getParticipants().get(8).getItem5() }");
	console
			.log("${MatchList.get(0).getInfo().getParticipants().get(8).getItem6() }");

	/* 	console.log("${MatchList.get(0).getInfo().getParticipants().get(0).getPerks().getStyles().get(0).getSelections().get(0).getPerk() }");
	 console.log("${MatchList.get(0).getInfo().getParticipants().get(0).getPerks().getStyles().get(0).getSelections().get(0).getVar1() }");
	 console.log("${MatchList.get(0).getInfo().getParticipants().get(0).getPerks().getStyles().get(0).getSelections().get(0).getVar2() }");
	 */

	console.log("스펠 확인");
	console
			.log("${MatchList.get(1).getInfo().getParticipants().get(8).getSpell1Casts() }");
	console
			.log("${MatchList.get(1).getInfo().getParticipants().get(8).getSpell2Casts() }");

	console
			.log("${MatchList.get(1).getInfo().getParticipants().get(8).getSummoner1Id() }");
	console
			.log("${MatchList.get(1).getInfo().getParticipants().get(8).getSummoner2Id() }");
	var Unrank = "${Unrank.unrankboolean}";
	var SoloList = "${SoloList.soloboolean}";
	var DuoList = "${DuoList.duoboolean}";

	var winSolo = $
	{
		SoloList.wins
	}
	+0;
	var lossesSolo = $
	{
		SoloList.losses
	}
	+0;

	var WinDuo = $
	{
		DuoList.wins
	}
	+0;
	var lossesDuo = $
	{
		DuoList.losses
	}
	+0;

	if (Unrank) {
		// 언랭임
		Unrank = true;
	} else {
		// 언랭아님
		Unrank = false;

	}

	if (!Unrank) {
		if (SoloList) {
			SoloList = true;
		} else {
			SoloList = false;
		}

		if (DuoList) {
			DuoList = true;
		} else {
			DuoList = false;
		}
	}

	/* 	console.log("결과 확인 test1u: " + Unrank);
	 console.log("결과 확인 test1s: " + SoloList);
	 console.log("결과 확인 test1d: " + DuoList);
	 */

	if (SoloList) {

		/* console.log("솔랭 작동"); */

		var img_of_SoloList = document.getElementById("tierImg_of_SoloList");

		var userTier_of_SoloList = img_of_SoloList.alt;
		var tierNum_of_SoloList;

		for (var i = 0; i < tier.length; i++) {
			if (userTier_of_SoloList.indexOf(tier[i]) != -1)
				tierNum_of_SoloList = i;

		}

		switch (tierNum_of_SoloList) {
		case 0:
			img_of_SoloList.src = "${pageContext.request.contextPath }/resources/assets/img/tier/06022022_TFTDevArticle_0000_TFT_Iron.jpg";
			break;
		case 1:
			img_of_SoloList.src = "${pageContext.request.contextPath }/resources/assets/img/tier/06022022_TFTDevArticle_0001_TFT_Bronze.jpg";
			break;

		case 2:
			img_of_SoloList.src = "${pageContext.request.contextPath }/resources/assets/img/tier/06022022_TFTDevArticle_0002_TFT_Silver.jpg";
			break;

		case 3:
			img_of_SoloList.src = "${pageContext.request.contextPath }/resources/assets/img/tier/06022022_TFTDevArticle_0003_TFT_Gold.jpg";
			break;

		case 4:
			img_of_SoloList.src = "${pageContext.request.contextPath }/resources/assets/img/tier/06022022_TFTDevArticle_0004_TFT_Platinum.jpg";
			break;

		case 5:
			img_of_SoloList.src = "${pageContext.request.contextPath }/resources/assets/img/tier/06022022_TFTDevArticle_0005_TFT_Diamon.jpg";
			break;

		case 6:
			img_of_SoloList.src = "${pageContext.request.contextPath }/resources/assets/img/tier/06022022_TFTDevArticle_0006_TFT_Master.jpg";
			break;

		case 7:
			img_of_SoloList.src = "${pageContext.request.contextPath }/resources/assets/img/tier/06022022_TFTDevArticle_0007_TFT_GrandMaster.jpg";
			break;

		case 8:
			img_of_SoloList.src = "${pageContext.request.contextPath }/resources/assets/img/tier/06022022_TFTDevArticle_0008_TFT_Challenger.jpg";
			break;

		}

		var result_of_SoloList = Math.round(winSolo / (winSolo + lossesSolo)
				* 100);
		document.getElementById('winning_rate_of_SoloList').innerText = "승률 "
				+ result_of_SoloList + "%";

	}

	if (DuoList) {

		/* console.log("자랭 작동"); */

		var img_of_DuoList = document.getElementById("tierImg_of_DuoList");
		var userTier_of_DuoList = img_of_DuoList.alt;
		var tierNum_of_DuoList;
		for (var i = 0; i < tier.length; i++) {
			if (userTier_of_DuoList.indexOf(tier[i]) != -1)
				tierNum_of_DuoList = i;

		}
		switch (tierNum_of_DuoList) {
		case 0:
			img_of_DuoList.src = "${pageContext.request.contextPath }/resources/assets/img/tier/06022022_TFTDevArticle_0000_TFT_Iron.jpg";
			break;
		case 1:
			img_of_DuoList.src = "${pageContext.request.contextPath }/resources/assets/img/tier/06022022_TFTDevArticle_0001_TFT_Bronze.jpg";
			break;

		case 2:
			img_of_DuoList.src = "${pageContext.request.contextPath }/resources/assets/img/tier/06022022_TFTDevArticle_0002_TFT_Silver.jpg";
			break;

		case 3:
			img_of_DuoList.src = "${pageContext.request.contextPath }/resources/assets/img/tier/06022022_TFTDevArticle_0003_TFT_Gold.jpg";
			break;

		case 4:
			img_of_DuoList.src = "${pageContext.request.contextPath }/resources/assets/img/tier/06022022_TFTDevArticle_0004_TFT_Platinum.jpg";
			break;

		case 5:
			img_of_DuoList.src = "${pageContext.request.contextPath }/resources/assets/img/tier/06022022_TFTDevArticle_0005_TFT_Diamon.jpg";
			break;

		case 6:
			img_of_DuoList.src = "${pageContext.request.contextPath }/resources/assets/img/tier/06022022_TFTDevArticle_0006_TFT_Master.jpg";
			break;

		case 7:
			img_of_DuoList.src = "${pageContext.request.contextPath }/resources/assets/img/tier/06022022_TFTDevArticle_0007_TFT_GrandMaster.jpg";
			break;

		case 8:
			img_of_DuoList.src = "${pageContext.request.contextPath }/resources/assets/img/tier/06022022_TFTDevArticle_0008_TFT_Challenger.jpg";
			break;

		}
		var result_of_DuoList = Math.round(WinDuo / (WinDuo + lossesDuo) * 100);
		document.getElementById('winning_rate_of_DuoList').innerText = "승률 "
				+ result_of_DuoList + "%";

	}
</script>



</html>