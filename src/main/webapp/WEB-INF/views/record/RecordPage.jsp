<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js  classOfHtml" lang="ko" 
style="
	--main100: #ECF2FF;
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
    --homeMobile: #ebeef1;" >
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
								src="https://opgg-static.akamaized.net/images/profile_icons/profileIcon7.jpg?image=q_auto,f_webp,w_auto&amp;v=1675751623266"
								alt="profile image">
							<div class="level">
								<span class="level">573</span>
							</div>
						</div>
						<div class="info">
							<div class="name">
								<h1 class="summoner-name">T1 Gumayusi</h1>
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
				<div class="css-1v663t e1x14w4w1">
					<div class="header">솔로랭크</div>
					<div class="contents">
						<div class="" style="position: relative;">
							<img
								src="https://opgg-static.akamaized.net/images/medals_new/challenger.png?image=q_auto,f_webp,w_144&amp;v=1675751623266"
								width="72" alt="CHALLENGER">
						</div>
						<div class="info">
							<div class="tier">challenger</div>
							<div class="lp">962 LP</div>
						</div>
						<div class="win-lose-container">
							<div class="win-lose">93승 62패</div>
							<div class="ratio">승률 60%</div>
						</div>
					</div>
				</div>
				<div class="css-1474l3c e1x14w4w1">
					<div class="header">
						자유랭크<span class="unranked">Unranked</span>
					</div>
				</div>
				<div class="css-e9xk5o e1g7spwk3">
					<ul>
						<li class="css-1lteyi9 e1g7spwk2"><button>S2023 전체</button></li>
						<li class="css-s6qg8 e1g7spwk2"><button>솔로랭크</button></li>
						<li class="css-s6qg8 e1g7spwk2"><button>자유랭크</button></li>
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
						<a class="more" href="/summoners/kr/T1%20Gumayusi/champions">더
							보기 + 다른 시즌 보기<img
							src="https://s-lol-web.op.gg/images/icon/icon-arrow-right.svg?v=1675751623266"
							width="24" alt="" height="24">
						</a>
					</div>
				</div>
			
				<div class="css-ut2tyh e1rsywk30">
					<div>같은 팀으로 게임한 소환사들 (최근 20 게임)</div>
					<table>
						<caption>같은 팀으로 게임한 소환사들 (최근 20 게임)</caption>
						<colgroup>
							<col>
							<col width="60">
							<col width="60">
							<col width="60">
						</colgroup>
						<thead>
							<tr>
								<th class="name" scope="col">소환사</th>
								<th class="played" scope="col">게임</th>
								<th class="win-lose" scope="col">승 - 패</th>
								<th class="winratio" scope="col">승률</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td class="name"><a href="/summoners/kr/KT%20Way"><img
										src="https://opgg-static.akamaized.net/images/profile_icons/profileIcon4030.jpg?image=q_auto,f_webp,w_48&amp;v=1675751623266"
										width="24" alt="">KT Way</a></td>
								<td class="played">5</td>
								<td class="win-lose">2 - 3</td>
								<td class="winratio">40%</td>
							</tr>
							<tr>
								<td class="name"><a href="/summoners/kr/Permaban12283221"><img
										src="https://opgg-static.akamaized.net/images/profile_icons/profileIcon5641.jpg?image=q_auto,f_webp,w_48&amp;v=1675751623266"
										width="24" alt="">Permaban12283221</a></td>
								<td class="played">3</td>
								<td class="win-lose">1 - 2</td>
								<td class="winratio">33%</td>
							</tr>
							<tr>
								<td class="name"><a
									href="/summoners/kr/%EB%84%A4%EC%98%B4%EC%8B%9C%ED%8B%B0%EC%9D%B4%EB%AF%BC%EC%9E%901"><img
										src="https://opgg-static.akamaized.net/images/profile_icons/profileIcon29.jpg?image=q_auto,f_webp,w_48&amp;v=1675751623266"
										width="24" alt="">네옴시티이민자1</a></td>
								<td class="played">2</td>
								<td class="win-lose">0 - 2</td>
								<td class="winratio">0%</td>
							</tr>
							<tr>
								<td class="name"><a href="/summoners/kr/xiao123132"><img
										src="https://opgg-static.akamaized.net/images/profile_icons/profileIcon23.jpg?image=q_auto,f_webp,w_48&amp;v=1675751623266"
										width="24" alt="">xiao123132</a></td>
								<td class="played">2</td>
								<td class="win-lose">1 - 1</td>
								<td class="winratio">50%</td>
							</tr>
							<tr>
								<td class="name"><a
									href="/summoners/kr/%EC%A3%BC%EB%8B%88%EC%96%B4%20%EB%84%A4%ED%82%A4"><img
										src="https://opgg-static.akamaized.net/images/profile_icons/profileIcon5416.jpg?image=q_auto,f_webp,w_48&amp;v=1675751623266"
										width="24" alt="">주니어 네키</a></td>
								<td class="played">2</td>
								<td class="win-lose">2 - 0</td>
								<td class="winratio">100%</td>
							</tr>
							<tr>
								<td class="name"><a
									href="/summoners/kr/%EC%9E%A0%EC%9D%B4%EB%B3%B4%EC%95%BD%EC%9D%B4%EC%97%AC"><img
										src="https://opgg-static.akamaized.net/images/profile_icons/profileIcon29.jpg?image=q_auto,f_webp,w_48&amp;v=1675751623266"
										width="24" alt="">잠이보약이여</a></td>
								<td class="played">2</td>
								<td class="win-lose">1 - 1</td>
								<td class="winratio">50%</td>
							</tr>
							<tr>
								<td class="name"><a
									href="/summoners/kr/%EA%BC%AC%EB%A7%88%EC%96%91%EC%94%A8"><img
										src="https://opgg-static.akamaized.net/images/profile_icons/profileIcon4561.jpg?image=q_auto,f_webp,w_48&amp;v=1675751623266"
										width="24" alt="">꼬마양씨</a></td>
								<td class="played">2</td>
								<td class="win-lose">1 - 1</td>
								<td class="winratio">50%</td>
							</tr>
							<tr>
								<td class="name"><a
									href="/summoners/kr/%EC%84%9C%EC%86%94%ED%9D%AC"><img
										src="https://opgg-static.akamaized.net/images/profile_icons/profileIcon5641.jpg?image=q_auto,f_webp,w_48&amp;v=1675751623266"
										width="24" alt="">서솔희</a></td>
								<td class="played">2</td>
								<td class="win-lose">2 - 0</td>
								<td class="winratio">100%</td>
							</tr>
							<tr>
								<td class="name"><a href="/summoners/kr/lIlIIIIllllII"><img
										src="https://opgg-static.akamaized.net/images/profile_icons/profileIcon4497.jpg?image=q_auto,f_webp,w_48&amp;v=1675751623266"
										width="24" alt="">lIlIIIIllllII</a></td>
								<td class="played">2</td>
								<td class="win-lose">1 - 1</td>
								<td class="winratio">50%</td>
							</tr>
							<tr>
								<td class="name"><a
									href="/summoners/kr/%EB%85%BC%EB%B9%BC%EB%AF%B8"><img
										src="https://opgg-static.akamaized.net/images/profile_icons/profileIcon3587.jpg?image=q_auto,f_webp,w_48&amp;v=1675751623266"
										width="24" alt="">논빼미</a></td>
								<td class="played">2</td>
								<td class="win-lose">2 - 0</td>
								<td class="winratio">100%</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
			<div class="css-150oaqg e1shm8tx0">
				<div class="css-jizu2z emr8enm3">
					<ul>
						<li class="css-ywzb36 emr8enm1"><button value="TOTAL">전체</button></li>
						<li class="css-1oynv5f emr8enm1"><button value="SOLORANKED">솔로랭크</button></li>
						<li class="css-1oynv5f emr8enm1"><button value="FLEXRANKED">자유랭크</button></li>
						<li class="css-1oynv5f emr8enm1"><span><label
								class="hidden" for="queueType">큐 타입</label><select
								id="queueType"><option value="TOTAL">큐 타입</option>
									<option value="NORMAL">일반 (비공개 선택)</option>
									<option value="ARAM">무작위 총력전</option>
									<option value="BOT">AI 상대 대전</option>
									<option value="CLASH">격전</option>
									<option value="EVENT">이벤트 게임</option>
									<option value="URF">우르프</option></select></span></li>
					</ul>
				</div>
				<div class="css-3i6n1d ehasqiv3">
					<div class="stats">
						<div class="win-lose">20전 11승 8패</div>
						<div class="kda">
							<div class="chart">
								<div class="recharts-wrapper"
									style="position: relative; cursor: default; width: 88px; height: 88px;">
									<svg class="recharts-surface" width="88" height="88"
										viewBox="0 0 88 88" version="1.1">
										<defs>
										<clipPath id="recharts7-clip">
										<rect x="5" y="5" height="78" width="78"></rect></clipPath></defs>
										<g class="recharts-layer recharts-pie">
										<g class="recharts-layer recharts-pie-sector">
										<path stroke="none" fill="#5383E8" color="#5383E8"
											class="recharts-sector"
											d="M 44,0 A 44,44,0, 1,1,
										    23.058314706368762,82.69684505308553
										    L 29.72157820888779,70.38421253619467
										    A 30,30,0, 1,0,
										    44,14 Z"></path></g>
										<g class="recharts-layer recharts-pie-sector">
										<path stroke="none" fill="#E84057" color="#E84057"
											class="recharts-sector"
											d="M 23.058314706368762,82.69684505308553
    A 44,44,0,
    0,1,
    43.99999999999999,0
  L 43.99999999999999,14
            A 30,30,0,
            0,0,
            29.72157820888779,70.38421253619467 Z"></path></g></g></svg>
								</div>
								<div class="text">
									<strong>58</strong>%
								</div>
							</div>
							<div class="info">
								<div class="k-d-a">
									<span>6.1</span> / <span class="death">4.3</span> / <span>7.1</span>
								</div>
								<div class="ratio">3.07:1</div>
								<div class="kill-participantion">킬관여 51%</div>
							</div>
						</div>
					</div>
					<div class="champions">
						<div class="title">플레이한 챔피언 (최근 20게임)</div>
						<ul class="">
							<li><img
								src="https://opgg-static.akamaized.net/meta/images/lol/champion/Varus.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_48&amp;v=1675751623266"
								width="24" alt="바루스">
								<div class="win-lose">
									<div class="" style="position: relative; display: inline;">
										<span class="css-1mugido ehasqiv0">100%</span>
									</div>
									(2승 0패)
								</div>
								<div class="css-1uej4j6 ehasqiv1">4.29 평점</div></li>
							<li><img
								src="https://opgg-static.akamaized.net/meta/images/lol/champion/Jhin.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_48&amp;v=1675751623266"
								width="24" alt="진">
								<div class="win-lose">
									<div class="" style="position: relative; display: inline;">
										<span class="css-1mugido ehasqiv0">100%</span>
									</div>
									(2승 0패)
								</div>
								<div class="css-xl4ym ehasqiv1">5.5 평점</div></li>
							<li><img
								src="https://opgg-static.akamaized.net/meta/images/lol/champion/KSante.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_48&amp;v=1675751623266"
								width="24" alt="크산테">
								<div class="win-lose">
									<div class="" style="position: relative; display: inline;">
										<span class="css-1mugido ehasqiv0">100%</span>
									</div>
									(2승 0패)
								</div>
								<div class="css-xl4ym ehasqiv1">5.8 평점</div></li>
						</ul>
					</div>
					<div class="positions">
						<div class="title">선호 포지션 (랭크)</div>
						<ul>
							<li><div class="bar">
									<div class="gauge" style="height: 21.0526%;"></div>
								</div>
								<div class="position">
									<img
										src="https://s-lol-web.op.gg/images/icon/icon-position-top.svg?v=1675751623266"
										width="16" alt="TOP">
								</div></li>
							<li><div class="bar">
									<div class="gauge" style="height: 0%;"></div>
								</div>
								<div class="position">
									<img
										src="https://s-lol-web.op.gg/images/icon/icon-position-jungle.svg?v=1675751623266"
										width="16" alt="JUNGLE">
								</div></li>
							<li><div class="bar">
									<div class="gauge" style="height: 0%;"></div>
								</div>
								<div class="position">
									<img
										src="https://s-lol-web.op.gg/images/icon/icon-position-mid.svg?v=1675751623266"
										width="16" alt="MID">
								</div></li>
							<li><div class="bar">
									<div class="gauge" style="height: 78.9474%;"></div>
								</div>
								<div class="position">
									<img
										src="https://s-lol-web.op.gg/images/icon/icon-position-adc.svg?v=1675751623266"
										width="16" alt="ADC">
								</div></li>
							<li><div class="bar">
									<div class="gauge" style="height: 0%;"></div>
								</div>
								<div class="position">
									<img
										src="https://s-lol-web.op.gg/images/icon/icon-position-support.svg?v=1675751623266"
										width="16" alt="SUPPORT">
								</div></li>
						</ul>
					</div>
				</div>
				
				
				
				<div class="css-164r41r e1r5v5160">
					<li class="css-1qq23jn e1iiyghw3"><div result="LOSE"
							class="css-jc3q2t e1iiyghw2">
							<div class="contents">
								<div class="game-content">
									<div class="game">
										<div class="type">솔랭</div>
										<div class="time-stamp">
											<div class="" style="position: relative;">9시간 전</div>
										</div>
										<div class="bar"></div>
										<div class="result">패배</div>
										<div class="length">15분 54초</div>
									</div>
									<div class="info">
										<div>
											<div class="champion">
												<div class="icon">
													<a href="/champions/zeri" target="_blank" rel="noreferrer"><img
														src="https://opgg-static.akamaized.net/meta/images/lol/champion/Zeri.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_96&amp;v=1675751623266"
														width="48" alt="제리" height="48"><span
														class="champion-level">7</span></a>
												</div>
												<div class="spells">
													<div class="spell">
														<div class="" style="position: relative;">
															<img
																src="https://opgg-static.akamaized.net/meta/images/lol/spell/SummonerBoost.png?image=q_auto,f_webp,w_44&amp;v=1675751623266"
																width="22" alt="정화" height="22">
														</div>
													</div>
													<div class="spell">
														<div class="" style="position: relative;">
															<img
																src="https://opgg-static.akamaized.net/meta/images/lol/spell/SummonerFlash.png?image=q_auto,f_webp,w_44&amp;v=1675751623266"
																width="22" alt="점멸" height="22">
														</div>
													</div>
												</div>
												<div class="runes">
													<div class="rune">
														<div class="" style="position: relative;">
															<img
																src="https://opgg-static.akamaized.net/meta/images/lol/perk/8008.png?image=q_auto,f_webp,w_44&amp;v=1675751623266"
																width="22" alt="치명적 속도" height="22">
														</div>
													</div>
													<div class="rune">
														<div class="" style="position: relative;">
															<img
																src="https://opgg-static.akamaized.net/meta/images/lol/perkStyle/8400.png?image=q_auto,f_webp,w_44&amp;v=1675751623266"
																width="22" alt="결의" height="22">
														</div>
													</div>
												</div>
											</div>
											<div class="kda">
												<div class="k-d-a">
													<span>0</span> / <span class="d">6</span> / <span>0</span>
												</div>
												<div class="ratio">
													<span>0.00:1</span> 평점
												</div>
											</div>
											<div class="stats">
												<div class="p-kill">
													<div class="" style="position: relative;">킬관여 0%</div>
												</div>
												<div class="ward">제어 와드 2</div>
												<div class="cs">
													<div class="" style="position: relative;">CS 84 (5.3)</div>
												</div>
												<div class="average-tier">
													<div class="" style="position: relative;">grandmaster</div>
												</div>
											</div>
										</div>
										<div>
											<div class="items">
												<ul>
													<li><div class="" style="position: relative;">
															<img
																src="https://opgg-static.akamaized.net/meta/images/lol/item/1055.png?image=q_auto,f_webp,w_44&amp;v=1675751623266"
																width="22" alt="도란의 검" height="22">
														</div></li>
													<li><div class="" style="position: relative;">
															<img
																src="https://opgg-static.akamaized.net/meta/images/lol/item/6670.png?image=q_auto,f_webp,w_44&amp;v=1675751623266"
																width="22" alt="절정의 화살" height="22">
														</div></li>
													<li><div class="" style="position: relative;">
															<img
																src="https://opgg-static.akamaized.net/meta/images/lol/item/1036.png?image=q_auto,f_webp,w_44&amp;v=1675751623266"
																width="22" alt="롱소드" height="22">
														</div></li>
													<li><div class="" style="position: relative;">
															<img
																src="https://opgg-static.akamaized.net/meta/images/lol/item/3006.png?image=q_auto,f_webp,w_44&amp;v=1675751623266"
																width="22" alt="광전사의 군화" height="22">
														</div></li>
													<li></li>
													<li></li>
												</ul>
												<div class="ward">
													<div class="" style="position: relative;">
														<img
															src="https://opgg-static.akamaized.net/meta/images/lol/item/3340.png?image=q_auto,f_webp,w_44&amp;v=1675751623266"
															width="22" alt="투명 와드" height="22">
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="participants">
										<ul>
											<li class="css-1ahqe5t e1iiyghw1"><div class="icon"
													style="position: relative;">
													<img
														src="https://opgg-static.akamaized.net/meta/images/lol/champion/Jayce.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_32&amp;v=1675751623266"
														width="16" alt="제이스" height="16">
												</div>
												<div class="name">
													<a href="/summoners/kr/Gen%20G%20Casting" target="_blank"
														rel="noreferrer">Gen G Casting</a>
												</div></li>
											<li class="css-1ahqe5t e1iiyghw1"><div class="icon"
													style="position: relative;">
													<img
														src="https://opgg-static.akamaized.net/meta/images/lol/champion/Taric.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_32&amp;v=1675751623266"
														width="16" alt="타릭" height="16">
												</div>
												<div class="name">
													<a href="/summoners/kr/FA%20ady" target="_blank"
														rel="noreferrer">FA ady</a>
												</div></li>
											<li class="css-1ahqe5t e1iiyghw1"><div class="icon"
													style="position: relative;">
													<img
														src="https://opgg-static.akamaized.net/meta/images/lol/champion/Zoe.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_32&amp;v=1675751623266"
														width="16" alt="조이" height="16">
												</div>
												<div class="name">
													<a
														href="/summoners/kr/%EA%B9%80%EC%B9%98%EA%B0%80%20%EB%A7%9B%EC%9E%88%EB%8B%A4"
														target="_blank" rel="noreferrer">김치가 맛있다</a>
												</div></li>
											<li class="css-1ahqe5t e1iiyghw1"><div class="icon"
													style="position: relative;">
													<img
														src="https://opgg-static.akamaized.net/meta/images/lol/champion/Samira.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_32&amp;v=1675751623266"
														width="16" alt="사미라" height="16">
												</div>
												<div class="name">
													<a href="/summoners/kr/HealthandAhn" target="_blank"
														rel="noreferrer">HealthandAhn</a>
												</div></li>
											<li class="css-1ahqe5t e1iiyghw1"><div class="icon"
													style="position: relative;">
													<img
														src="https://opgg-static.akamaized.net/meta/images/lol/champion/Amumu.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_32&amp;v=1675751623266"
														width="16" alt="아무무" height="16">
												</div>
												<div class="name">
													<a href="/summoners/kr/%EA%B4%80%20%EA%B3%84"
														target="_blank" rel="noreferrer">관 계</a>
												</div></li>
										</ul>
										<ul>
											<li class="css-1ahqe5t e1iiyghw1"><div class="icon"
													style="position: relative;">
													<img
														src="https://opgg-static.akamaized.net/meta/images/lol/champion/Viktor.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_32&amp;v=1675751623266"
														width="16" alt="빅토르" height="16">
												</div>
												<div class="name">
													<a
														href="/summoners/kr/%EC%B9%B4%EB%A6%AC%EB%82%98%EC%9D%98%EB%8C%84%EB%B8%8C"
														target="_blank" rel="noreferrer">카리나의댄브</a>
												</div></li>
											<li class="css-1ahqe5t e1iiyghw1"><div class="icon"
													style="position: relative;">
													<img
														src="https://opgg-static.akamaized.net/meta/images/lol/champion/MonkeyKing.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_32&amp;v=1675751623266"
														width="16" alt="오공" height="16">
												</div>
												<div class="name">
													<a
														href="/summoners/kr/%EB%84%A4%EC%98%B4%EC%8B%9C%ED%8B%B0%EC%9D%B4%EB%AF%BC%EC%9E%901"
														target="_blank" rel="noreferrer">네옴시티이민자1</a>
												</div></li>
											<li class="css-1ahqe5t e1iiyghw1"><div class="icon"
													style="position: relative;">
													<img
														src="https://opgg-static.akamaized.net/meta/images/lol/champion/Tryndamere.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_32&amp;v=1675751623266"
														width="16" alt="트린다미어" height="16">
												</div>
												<div class="name">
													<a href="/summoners/kr/JaxFionaCamille" target="_blank"
														rel="noreferrer">JaxFionaCamille</a>
												</div></li>
											<li class="css-rea7zu e1iiyghw1"><div class="icon"
													style="position: relative;">
													<img
														src="https://opgg-static.akamaized.net/meta/images/lol/champion/Zeri.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_32&amp;v=1675751623266"
														width="16" alt="제리" height="16">
												</div>
												<div class="name">
													<a href="/summoners/kr/T1%20Gumayusi" target="_blank"
														rel="noreferrer">T1 Gumayusi</a>
												</div></li>
											<li class="css-1ahqe5t e1iiyghw1"><div class="icon"
													style="position: relative;">
													<img
														src="https://opgg-static.akamaized.net/meta/images/lol/champion/Ashe.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_32&amp;v=1675751623266"
														width="16" alt="애쉬" height="16">
												</div>
												<div class="name">
													<a href="/summoners/kr/GNIKLERI" target="_blank"
														rel="noreferrer">GNIKLERI</a>
												</div></li>
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
						
						

					
					<li class="css-1qq23jn e1iiyghw3"><div result="WIN"
							class="css-1shak8a e1iiyghw2">
							<div class="contents">
								<div class="game-content">
									<div class="game">
										<div class="type">솔랭</div>
										<div class="time-stamp">
											<div class="" style="position: relative;">7일 전</div>
										</div>
										<div class="bar"></div>
										<div class="result">승리</div>
										<div class="length">26분 32초</div>
									</div>
									<div class="info">
										<div>
											<div class="champion">
												<div class="icon">
													<a href="/champions/varus" target="_blank" rel="noreferrer"><img
														src="https://opgg-static.akamaized.net/meta/images/lol/champion/Varus.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_96&amp;v=1675751623266"
														width="48" alt="바루스" height="48"><span
														class="champion-level">15</span></a>
												</div>
												<div class="spells">
													<div class="spell">
														<div class="" style="position: relative;">
															<img
																src="https://opgg-static.akamaized.net/meta/images/lol/spell/SummonerHaste.png?image=q_auto,f_webp,w_44&amp;v=1675751623266"
																width="22" alt="유체화" height="22">
														</div>
													</div>
													<div class="spell">
														<div class="" style="position: relative;">
															<img
																src="https://opgg-static.akamaized.net/meta/images/lol/spell/SummonerFlash.png?image=q_auto,f_webp,w_44&amp;v=1675751623266"
																width="22" alt="점멸" height="22">
														</div>
													</div>
												</div>
												<div class="runes">
													<div class="rune">
														<div class="" style="position: relative;">
															<img
																src="https://opgg-static.akamaized.net/meta/images/lol/perk/8008.png?image=q_auto,f_webp,w_44&amp;v=1675751623266"
																width="22" alt="치명적 속도" height="22">
														</div>
													</div>
													<div class="rune">
														<div class="" style="position: relative;">
															<img
																src="https://opgg-static.akamaized.net/meta/images/lol/perkStyle/8300.png?image=q_auto,f_webp,w_44&amp;v=1675751623266"
																width="22" alt="영감" height="22">
														</div>
													</div>
												</div>
											</div>
											<div class="kda">
												<div class="k-d-a">
													<span>15</span> / <span class="d">2</span> / <span>6</span>
												</div>
												<div class="ratio">
													<span>10.50:1</span> 평점
												</div>
											</div>
											<div class="stats">
												<div class="p-kill">
													<div class="" style="position: relative;">킬관여 70%</div>
												</div>
												<div class="ward">제어 와드 5</div>
												<div class="cs">
													<div class="" style="position: relative;">CS 268
														(10.1)</div>
												</div>
												<div class="average-tier">
													<div class="" style="position: relative;">grandmaster</div>
												</div>
											</div>
										</div>
										<div>
											<div class="items">
												<ul>
													<li><div class="" style="position: relative;">
															<img
																src="https://opgg-static.akamaized.net/meta/images/lol/item/3006.png?image=q_auto,f_webp,w_44&amp;v=1675751623266"
																width="22" alt="광전사의 군화" height="22">
														</div></li>
													<li><div class="" style="position: relative;">
															<img
																src="https://opgg-static.akamaized.net/meta/images/lol/item/6673.png?image=q_auto,f_webp,w_44&amp;v=1675751623266"
																width="22" alt="불멸의 철갑궁" height="22">
														</div></li>
													<li><div class="" style="position: relative;">
															<img
																src="https://opgg-static.akamaized.net/meta/images/lol/item/2421.png?image=q_auto,f_webp,w_44&amp;v=1675751623266"
																width="22" alt="망가진 초시계" height="22">
														</div></li>
													<li><div class="" style="position: relative;">
															<img
																src="https://opgg-static.akamaized.net/meta/images/lol/item/3124.png?image=q_auto,f_webp,w_44&amp;v=1675751623266"
																width="22" alt="구인수의 격노검" height="22">
														</div></li>
													<li><div class="" style="position: relative;">
															<img
																src="https://opgg-static.akamaized.net/meta/images/lol/item/3091.png?image=q_auto,f_webp,w_44&amp;v=1675751623266"
																width="22" alt="마법사의 최후" height="22">
														</div></li>
													<li><div class="" style="position: relative;">
															<img
																src="https://opgg-static.akamaized.net/meta/images/lol/item/3072.png?image=q_auto,f_webp,w_44&amp;v=1675751623266"
																width="22" alt="피바라기" height="22">
														</div></li>
												</ul>
												<div class="ward">
													<div class="" style="position: relative;">
														<img
															src="https://opgg-static.akamaized.net/meta/images/lol/item/3363.png?image=q_auto,f_webp,w_44&amp;v=1675751623266"
															width="22" alt="망원형 개조" height="22">
													</div>
												</div>
											</div>
											<div class="multi-kill">트리플킬</div>
											<div class="badge mvp">MVP</div>
										</div>
									</div>
									<div class="participants">
										<ul>
											<li class="css-1ahqe5t e1iiyghw1"><div class="icon"
													style="position: relative;">
													<img
														src="https://opgg-static.akamaized.net/meta/images/lol/champion/Jayce.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_32&amp;v=1675751623266"
														width="16" alt="제이스" height="16">
												</div>
												<div class="name">
													<a href="/summoners/kr/%EC%9C%A4%EC%9A%A9%ED%98%B8"
														target="_blank" rel="noreferrer">윤용호</a>
												</div></li>
											<li class="css-1ahqe5t e1iiyghw1"><div class="icon"
													style="position: relative;">
													<img
														src="https://opgg-static.akamaized.net/meta/images/lol/champion/Sylas.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_32&amp;v=1675751623266"
														width="16" alt="사일러스" height="16">
												</div>
												<div class="name">
													<a href="/summoners/kr/THE%201116" target="_blank"
														rel="noreferrer">THE 1116</a>
												</div></li>
											<li class="css-1ahqe5t e1iiyghw1"><div class="icon"
													style="position: relative;">
													<img
														src="https://opgg-static.akamaized.net/meta/images/lol/champion/Zac.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_32&amp;v=1675751623266"
														width="16" alt="자크" height="16">
												</div>
												<div class="name">
													<a href="/summoners/kr/dnwp" target="_blank"
														rel="noreferrer">dnwp</a>
												</div></li>
											<li class="css-rea7zu e1iiyghw1"><div class="icon"
													style="position: relative;">
													<img
														src="https://opgg-static.akamaized.net/meta/images/lol/champion/Varus.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_32&amp;v=1675751623266"
														width="16" alt="바루스" height="16">
												</div>
												<div class="name">
													<a href="/summoners/kr/T1%20Gumayusi" target="_blank"
														rel="noreferrer">T1 Gumayusi</a>
												</div></li>
											<li class="css-1ahqe5t e1iiyghw1"><div class="icon"
													style="position: relative;">
													<img
														src="https://opgg-static.akamaized.net/meta/images/lol/champion/Soraka.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_32&amp;v=1675751623266"
														width="16" alt="소라카" height="16">
												</div>
												<div class="name">
													<a
														href="/summoners/kr/%EC%82%AC%EB%9E%8C%20%EC%95%88%20%EB%AF%BF%EC%96%B4"
														target="_blank" rel="noreferrer">사람 안 믿어</a>
												</div></li>
										</ul>
										<ul>
											<li class="css-1ahqe5t e1iiyghw1"><div class="icon"
													style="position: relative;">
													<img
														src="https://opgg-static.akamaized.net/meta/images/lol/champion/KSante.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_32&amp;v=1675751623266"
														width="16" alt="크산테" height="16">
												</div>
												<div class="name">
													<a href="/summoners/kr/KDF%20Allo" target="_blank"
														rel="noreferrer">KDF Allo</a>
												</div></li>
											<li class="css-1ahqe5t e1iiyghw1"><div class="icon"
													style="position: relative;">
													<img
														src="https://opgg-static.akamaized.net/meta/images/lol/champion/Karthus.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_32&amp;v=1675751623266"
														width="16" alt="카서스" height="16">
												</div>
												<div class="name">
													<a
														href="/summoners/kr/%EC%8B%9C%EB%A0%A8%EB%81%9D%EC%97%90"
														target="_blank" rel="noreferrer">시련끝에</a>
												</div></li>
											<li class="css-1ahqe5t e1iiyghw1"><div class="icon"
													style="position: relative;">
													<img
														src="https://opgg-static.akamaized.net/meta/images/lol/champion/Irelia.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_32&amp;v=1675751623266"
														width="16" alt="이렐리아" height="16">
												</div>
												<div class="name">
													<a href="/summoners/kr/JUGGOD%2012" target="_blank"
														rel="noreferrer">JUGGOD 12</a>
												</div></li>
											<li class="css-1ahqe5t e1iiyghw1"><div class="icon"
													style="position: relative;">
													<img
														src="https://opgg-static.akamaized.net/meta/images/lol/champion/Kalista.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_32&amp;v=1675751623266"
														width="16" alt="칼리스타" height="16">
												</div>
												<div class="name">
													<a href="/summoners/kr/zenbukorosu" target="_blank"
														rel="noreferrer">zenbukorosu</a>
												</div></li>
											<li class="css-1ahqe5t e1iiyghw1"><div class="icon"
													style="position: relative;">
													<img
														src="https://opgg-static.akamaized.net/meta/images/lol/champion/Seraphine.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_32&amp;v=1675751623266"
														width="16" alt="세라핀" height="16">
												</div>
												<div class="name">
													<a
														href="/summoners/kr/%EA%BC%AC%EB%A7%88%EC%96%91%EC%94%A8"
														target="_blank" rel="noreferrer">꼬마양씨</a>
												</div></li>
										</ul>
									</div>
								</div>
							</div>
							<div class="action">
								<button class="record">
									<img
										src="https://s-lol-web.op.gg/images/icon/icon-record.svg?v=1675751623266"
										alt="replay">
								</button>
								<button class="detail">
									<img
										src="https://s-lol-web.op.gg/images/icon/icon-arrow-down-blue.svg?v=1675751623266"
										width="24" alt="More" height="24">
								</button>
							</div>
						</div></li>
						
					<li class="css-1qq23jn e1iiyghw3"><div result="REMAKE"
							class="css-1dbudbg e1iiyghw2">
							<div class="contents">
								<div class="game-content">
									<div class="game">
										<div class="type">솔랭</div>
										<div class="time-stamp">
											<div class="" style="position: relative;">7일 전</div>
										</div>
										<div class="bar"></div>
										<div class="result">다시하기</div>
										<div class="length">1분 43초</div>
									</div>
									<div class="info">
										<div>
											<div class="champion">
												<div class="icon">
													<a href="/champions/jhin" target="_blank" rel="noreferrer"><img
														src="https://opgg-static.akamaized.net/meta/images/lol/champion/Jhin.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_96&amp;v=1675751623266"
														width="48" alt="진" height="48"><span
														class="champion-level">1</span></a>
												</div>
												<div class="spells">
													<div class="spell">
														<div class="" style="position: relative;">
															<img
																src="https://opgg-static.akamaized.net/meta/images/lol/spell/SummonerBoost.png?image=q_auto,f_webp,w_44&amp;v=1675751623266"
																width="22" alt="정화" height="22">
														</div>
													</div>
													<div class="spell">
														<div class="" style="position: relative;">
															<img
																src="https://opgg-static.akamaized.net/meta/images/lol/spell/SummonerFlash.png?image=q_auto,f_webp,w_44&amp;v=1675751623266"
																width="22" alt="점멸" height="22">
														</div>
													</div>
												</div>
												<div class="runes">
													<div class="rune">
														<div class="" style="position: relative;">
															<img
																src="https://opgg-static.akamaized.net/meta/images/lol/perk/8021.png?image=q_auto,f_webp,w_44&amp;v=1675751623266"
																width="22" alt="기민한 발놀림" height="22">
														</div>
													</div>
													<div class="rune">
														<div class="" style="position: relative;">
															<img
																src="https://opgg-static.akamaized.net/meta/images/lol/perkStyle/8200.png?image=q_auto,f_webp,w_44&amp;v=1675751623266"
																width="22" alt="마법" height="22">
														</div>
													</div>
												</div>
											</div>
											<div class="kda">
												<div class="k-d-a">
													<span>0</span> / <span class="d">0</span> / <span>0</span>
												</div>
												<div class="ratio">
													<span>0.00:1</span> 평점
												</div>
											</div>
											<div class="stats">
												<div class="p-kill">
													<div class="" style="position: relative;">킬관여 0%</div>
												</div>
												<div class="ward">제어 와드 0</div>
												<div class="cs">
													<div class="" style="position: relative;">CS 0 (0)</div>
												</div>
												<div class="average-tier">
													<div class="" style="position: relative;">grandmaster</div>
												</div>
											</div>
										</div>
										<div>
											<div class="items">
												<ul>
													<li><div class="" style="position: relative;">
															<img
																src="https://opgg-static.akamaized.net/meta/images/lol/item/1036.png?image=q_auto,f_webp,w_44&amp;v=1675751623266"
																width="22" alt="롱소드" height="22">
														</div></li>
													<li><div class="" style="position: relative;">
															<img
																src="https://opgg-static.akamaized.net/meta/images/lol/item/2003.png?image=q_auto,f_webp,w_44&amp;v=1675751623266"
																width="22" alt="체력 물약" height="22">
														</div></li>
													<li></li>
													<li></li>
													<li></li>
													<li></li>
												</ul>
												<div class="ward">
													<div class="" style="position: relative;">
														<img
															src="https://opgg-static.akamaized.net/meta/images/lol/item/3340.png?image=q_auto,f_webp,w_44&amp;v=1675751623266"
															width="22" alt="투명 와드" height="22">
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="participants">
										<ul>
											<li class="css-1ahqe5t e1iiyghw1"><div class="icon"
													style="position: relative;">
													<img
														src="https://opgg-static.akamaized.net/meta/images/lol/champion/Camille.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_32&amp;v=1675751623266"
														width="16" alt="카밀" height="16">
												</div>
												<div class="name">
													<a href="/summoners/kr/zCAMlLLEKINGz" target="_blank"
														rel="noreferrer">zCAMlLLEKINGz</a>
												</div></li>
											<li class="css-1ahqe5t e1iiyghw1"><div class="icon"
													style="position: relative;">
													<img
														src="https://opgg-static.akamaized.net/meta/images/lol/champion/TwistedFate.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_32&amp;v=1675751623266"
														width="16" alt="트위스티드 페이트" height="16">
												</div>
												<div class="name">
													<a
														href="/summoners/kr/%EC%8B%9C%EB%A0%A8%EB%81%9D%EC%97%90"
														target="_blank" rel="noreferrer">시련끝에</a>
												</div></li>
											<li class="css-1ahqe5t e1iiyghw1"><div class="icon"
													style="position: relative;">
													<img
														src="https://opgg-static.akamaized.net/meta/images/lol/champion/Elise.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_32&amp;v=1675751623266"
														width="16" alt="엘리스" height="16">
												</div>
												<div class="name">
													<a href="/summoners/kr/myboo" target="_blank"
														rel="noreferrer">myboo</a>
												</div></li>
											<li class="css-1ahqe5t e1iiyghw1"><div class="icon"
													style="position: relative;">
													<img
														src="https://opgg-static.akamaized.net/meta/images/lol/champion/Varus.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_32&amp;v=1675751623266"
														width="16" alt="바루스" height="16">
												</div>
												<div class="name">
													<a
														href="/summoners/kr/%EC%A7%84%EC%9C%BC%EB%A1%9C%20%EB%AD%98%EB%AA%BB%ED%95%98%EB%82%98"
														target="_blank" rel="noreferrer">진으로 뭘못하나</a>
												</div></li>
											<li class="css-1ahqe5t e1iiyghw1"><div class="icon"
													style="position: relative;">
													<img
														src="https://opgg-static.akamaized.net/meta/images/lol/champion/Amumu.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_32&amp;v=1675751623266"
														width="16" alt="아무무" height="16">
												</div>
												<div class="name">
													<a href="/summoners/kr/yuezhihuix" target="_blank"
														rel="noreferrer">yuezhihuix</a>
												</div></li>
										</ul>
										<ul>
											<li class="css-1ahqe5t e1iiyghw1"><div class="icon"
													style="position: relative;">
													<img
														src="https://opgg-static.akamaized.net/meta/images/lol/champion/Zac.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_32&amp;v=1675751623266"
														width="16" alt="자크" height="16">
												</div>
												<div class="name">
													<a href="/summoners/kr/%EC%84%9C%EC%86%94%ED%9D%AC"
														target="_blank" rel="noreferrer">서솔희</a>
												</div></li>
											<li class="css-rea7zu e1iiyghw1"><div class="icon"
													style="position: relative;">
													<img
														src="https://opgg-static.akamaized.net/meta/images/lol/champion/Jhin.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_32&amp;v=1675751623266"
														width="16" alt="진" height="16">
												</div>
												<div class="name">
													<a href="/summoners/kr/T1%20Gumayusi" target="_blank"
														rel="noreferrer">T1 Gumayusi</a>
												</div></li>
											<li class="css-1ahqe5t e1iiyghw1"><div class="icon"
													style="position: relative;">
													<img
														src="https://opgg-static.akamaized.net/meta/images/lol/champion/Jayce.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_32&amp;v=1675751623266"
														width="16" alt="제이스" height="16">
												</div>
												<div class="name">
													<a href="/summoners/kr/Gen%20G%20Casting" target="_blank"
														rel="noreferrer">Gen G Casting</a>
												</div></li>
											<li class="css-1ahqe5t e1iiyghw1"><div class="icon"
													style="position: relative;">
													<img
														src="https://opgg-static.akamaized.net/meta/images/lol/champion/Maokai.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_32&amp;v=1675751623266"
														width="16" alt="마오카이" height="16">
												</div>
												<div class="name">
													<a href="/summoners/kr/no%20more%20slacking"
														target="_blank" rel="noreferrer">no more slacking</a>
												</div></li>
											<li class="css-1ahqe5t e1iiyghw1"><div class="icon"
													style="position: relative;">
													<img
														src="https://opgg-static.akamaized.net/meta/images/lol/champion/Heimerdinger.png?image=c_crop,h_103,w_103,x_9,y_9/q_auto,f_webp,w_32&amp;v=1675751623266"
														width="16" alt="하이머딩거" height="16">
												</div>
												<div class="name">
													<a href="/summoners/kr/H4rp" target="_blank"
														rel="noreferrer">H4rp</a>
												</div></li>
										</ul>
									</div>
								</div>
							</div>
							<div class="action">
								<button class="detail">
									<img
										src="https://s-lol-web.op.gg/images/icon/icon-arrow-down.svg?v=1675751623266"
										width="24" alt="More" height="24">
								</button>
							</div>
						</div></li>
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
</html>