(window.webpackJsonp=window.webpackJsonp||[]).push([[129],{866:function(e,t,r){"use strict";r.r(t);r(20),r(19),r(23),r(8),r(27),r(17),r(28);var n=r(1),l=r(5),o=(r(21),r(445)),c=r(149),d=r(80),m=r(730),v=r(11);function _(object,e){var t=Object.keys(object);if(Object.getOwnPropertySymbols){var r=Object.getOwnPropertySymbols(object);e&&(r=r.filter((function(e){return Object.getOwnPropertyDescriptor(object,e).enumerable}))),t.push.apply(t,r)}return t}var f={name:"tax-rule",middleware:["common-middleware","auth"],data:function(){return{result:{id:"",title:"",capped_price:"",limit_per_customer:"",usage_limit:"",min_spend:"",code:"",start_time:"",end_time:"",type:1,status:2}}},mixins:[d.a],components:{DataPage:o.default,Dropdown:c.default,datetime:m.a},computed:function(e){for(var i=1;i<arguments.length;i++){var source=null!=arguments[i]?arguments[i]:{};i%2?_(Object(source),!0).forEach((function(t){Object(l.a)(e,t,source[t])})):Object.getOwnPropertyDescriptors?Object.defineProperties(e,Object.getOwnPropertyDescriptors(source)):_(Object(source)).forEach((function(t){Object.defineProperty(e,t,Object.getOwnPropertyDescriptor(source,t))}))}return e}({dateValidation:function(){return new Date(this.result.end_time)>new Date(this.result.start_time)},currencyIcon:function(){var e;return(null===(e=this.setting)||void 0===e?void 0:e.currency_icon)||"$"}},Object(v.c)("setting",["setting"])),methods:{dropdownPriceType:function(data){this.result.type=data.key},dropdownSelected:function(data){this.result.status=data.key}},mounted:function(){return Object(n.a)(regeneratorRuntime.mark((function e(){return regeneratorRuntime.wrap((function(e){for(;;)switch(e.prev=e.next){case 0:case"end":return e.stop()}}),e)})))()}},y=f,w=r(16),component=Object(w.a)(y,(function(){var e=this,t=e.$createElement,r=e._self._c||t;return r("data-page",{ref:"dataPage",attrs:{"set-api":"setVoucher","get-api":"getVoucher","route-name":"vouchers",name:e.$t("fSale.voucher"),"validation-keys":["title"],result:e.result,gate:"voucher"},on:{result:function(t){e.result=t}},scopedSlots:e._u([{key:"form",fn:function(t){var n=t.hasError;return[r("div",{staticClass:"input-wrapper"},[r("label",[e._v(e._s(e.$t("index.title")))]),e._v(" "),r("input",{directives:[{name:"model",rawName:"v-model",value:e.result.title,expression:"result.title"}],ref:"title",class:{invalid:!e.result.title&&n},attrs:{type:"text",placeholder:e.$t("index.title"),name:"title"},domProps:{value:e.result.title},on:{input:function(t){t.target.composing||e.$set(e.result,"title",t.target.value)}}}),e._v(" "),!e.result.title&&n?r("span",{staticClass:"error"},[e._v("\n        "+e._s(e.$t("category.req",{type:e.$t("index.title")}))+"\n      ")]):e._e()]),e._v(" "),r("div",{staticClass:"dply-felx align-start j-left inputs d-block-sm"},[r("div",{staticClass:"input-wrapper"},[r("div",{staticClass:"flex-v-centered"},[r("span",{staticClass:"mr-15"},[e._v(e._s(e.$t("brand.price")))]),e._v(" "),r("div",[r("input",{directives:[{name:"model",rawName:"v-model",value:e.result.price,expression:"result.price"}],class:{invalid:!e.result.price&&n},attrs:{type:"number",step:"any",placeholder:e.$t("brand.price")},domProps:{value:e.result.price},on:{input:function(t){t.target.composing||e.$set(e.result,"price",t.target.value)}}}),e._v(" "),!e.result.price&&n?r("span",{staticClass:"error"},[e._v("\n              "+e._s(e.$t("category.req",{type:e.$t("brand.price")}))+"\n            ")]):e._e()])])]),e._v(" "),r("div",{staticClass:"input-wrapper "},[r("div",{staticClass:"sided f-none-sm f-right"},[r("span",{staticClass:"mr-15 text-nowrap"},[e._v(e._s(e.$t("prod.priType")))]),e._v(" "),r("dropdown",{attrs:{selectedKey:""+e.result.type,options:e.priceTypeObj},on:{clicked:e.dropdownPriceType}})],1)])]),e._v(" "),r("div",{staticClass:"dply-felx align-start j-left inputs  d-block-sm"},[r("div",{staticClass:"input-wrapper "},[r("div",{staticClass:"flex-v-centered"},[r("span",{staticClass:"mr-15"},[e._v(e._s(e.$t("prod.capped"))+"("+e._s(e.currencyIcon)+")")]),e._v(" "),r("div",[r("input",{directives:[{name:"model",rawName:"v-model",value:e.result.capped_price,expression:"result.capped_price"}],attrs:{type:"number",step:"any",placeholder:e.$t("brand.price")},domProps:{value:e.result.capped_price},on:{input:function(t){t.target.composing||e.$set(e.result,"capped_price",t.target.value)}}})])])]),e._v(" "),r("div",{staticClass:"input-wrapper "},[r("div",{staticClass:"flex-v-centered"},[r("span",{staticClass:"mr-15"},[e._v(e._s(e.$t("prod.spent"))+"("+e._s(e.currencyIcon)+")")]),e._v(" "),r("div",[r("input",{directives:[{name:"model",rawName:"v-model",value:e.result.min_spend,expression:"result.min_spend"}],class:{invalid:!e.result.min_spend&&n},attrs:{type:"number",step:"any",placeholder:e.$t("brand.price")},domProps:{value:e.result.min_spend},on:{input:function(t){t.target.composing||e.$set(e.result,"min_spend",t.target.value)}}}),e._v(" "),!e.result.min_spend&&n?r("span",{staticClass:"error"},[e._v("\n              "+e._s(e.$t("category.req",{type:e.$t("prod.spent")}))+"\n            ")]):e._e()])])])]),e._v(" "),r("div",{staticClass:"dply-felx align-start j-left inputs  d-block-sm"},[r("div",{staticClass:"input-wrapper "},[r("div",{staticClass:"flex-v-centered"},[r("span",{staticClass:"mr-15"},[e._v(e._s(e.$t("prod.usage")))]),e._v(" "),r("div",[r("input",{directives:[{name:"model",rawName:"v-model",value:e.result.usage_limit,expression:"result.usage_limit"}],class:{invalid:!e.result.usage_limit&&n},attrs:{type:"number",step:"any",placeholder:e.$t("brand.price")},domProps:{value:e.result.usage_limit},on:{input:function(t){t.target.composing||e.$set(e.result,"usage_limit",t.target.value)}}}),e._v(" "),!e.result.usage_limit&&n?r("span",{staticClass:"error"},[e._v("\n              "+e._s(e.$t("category.req",{type:e.$t("prod.usage")}))+"\n            ")]):e._e()])])]),e._v(" "),r("div",{staticClass:"input-wrapper "},[r("div",{staticClass:"flex-v-centered"},[r("span",{staticClass:"mr-15"},[e._v(e._s(e.$t("prod.limit")))]),e._v(" "),r("div",[r("input",{directives:[{name:"model",rawName:"v-model",value:e.result.limit_per_customer,expression:"result.limit_per_customer"}],class:{invalid:!e.result.limit_per_customer&&n},attrs:{type:"number",step:"any",placeholder:e.$t("brand.price")},domProps:{value:e.result.limit_per_customer},on:{input:function(t){t.target.composing||e.$set(e.result,"limit_per_customer",t.target.value)}}}),e._v(" "),!e.result.limit_per_customer&&n?r("span",{staticClass:"error"},[e._v("\n              "+e._s(e.$t("category.req",{type:e.$t("prod.limit")}))+"\n            ")]):e._e()])])])]),e._v(" "),r("div",{staticClass:"input-wrapper"},[r("label",[e._v(e._s(e.$t("prod.code")))]),e._v(" "),r("input",{directives:[{name:"model",rawName:"v-model",value:e.result.code,expression:"result.code"}],class:{invalid:!e.result.code&&n},attrs:{type:"text",placeholder:e.$t("prod.code")},domProps:{value:e.result.code},on:{input:function(t){t.target.composing||e.$set(e.result,"code",t.target.value)}}}),e._v(" "),!e.result.code&&n?r("span",{staticClass:"error"},[e._v("\n        "+e._s(e.$t("category.req",{type:e.$t("prod.code")}))+"\n      ")]):e._e()]),e._v(" "),r("div",{staticClass:"dply-felx align-start j-left inputs d-block-sm"},[r("div",{staticClass:"input-wrapper mlr-7-5"},[r("div",{staticClass:"flex-v-centered no-border",class:{"red-border":!e.result.start_time&&n}},[r("span",{staticClass:"mr-15"},[e._v("\n            "+e._s(e.$t("prod.sTime"))+"\n          ")]),e._v(" "),r("datetime",{staticClass:"form-bottom",attrs:{format:"YYYY-MM-DD H:i:s",width:"300px",readonly:""},model:{value:e.result.start_time,callback:function(t){e.$set(e.result,"start_time",t)},expression:"result.start_time"}})],1),e._v(" "),!e.result.start_time&&n?r("span",{staticClass:"error"},[e._v("\n            "+e._s(e.$t("category.req",{type:e.$t("prod.sTime")}))+"\n          ")]):e._e()]),e._v(" "),r("div",{staticClass:"input-wrapper mlr-7-5"},[r("div",{staticClass:"flex-v-centered no-border",class:{"red-border":!e.result.end_time&&n||!e.dateValidation&&n}},[r("span",{staticClass:"mr-15"},[e._v(e._s(e.$t("prod.eTime")))]),e._v(" "),r("datetime",{staticClass:"form-bottom",attrs:{format:"YYYY-MM-DD H:i:s",width:"300px",readonly:""},model:{value:e.result.end_time,callback:function(t){e.$set(e.result,"end_time",t)},expression:"result.end_time"}})],1),e._v(" "),!e.result.end_time&&n?r("span",{staticClass:"error"},[e._v("\n            "+e._s(e.$t("category.req",{type:e.$t("prod.eTime")}))+"\n          ")]):!e.dateValidation&&n?r("span",{staticClass:"error"},[e._v("\n          "+e._s(e.$t("prod.greater"))+"\n        ")]):e._e()])]),e._v(" "),r("div",{staticClass:"input-wrapper"},[r("div",{staticClass:"dply-felx j-left mb-20 mb-sm-15"},[r("span",{staticClass:"mr-15"},[e._v("\n           "+e._s(e.$t("category.status"))+"\n        ")]),e._v(" "),r("dropdown",{attrs:{selectedKey:""+e.result.status,options:e.statusObj},on:{clicked:e.dropdownSelected}})],1)])]}}])})}),[],!1,null,"01b8af82",null);t.default=component.exports;installComponents(component,{Dropdown:r(149).default})}}]);