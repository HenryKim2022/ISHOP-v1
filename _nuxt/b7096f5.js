(window.webpackJsonp=window.webpackJsonp||[]).push([[95,25,50],{462:function(r,t,e){"use strict";e(18),e(19),e(22),e(26),e(27);var o=e(9),n=(e(6),e(17),e(202),e(23),e(54),e(7));function l(object,r){var t=Object.keys(object);if(Object.getOwnPropertySymbols){var e=Object.getOwnPropertySymbols(object);r&&(e=e.filter((function(r){return Object.getOwnPropertyDescriptor(object,r).enumerable}))),t.push.apply(t,e)}return t}t.a={computed:function(r){for(var i=1;i<arguments.length;i++){var source=null!=arguments[i]?arguments[i]:{};i%2?l(Object(source),!0).forEach((function(t){Object(o.a)(r,t,source[t])})):Object.getOwnPropertyDescriptors?Object.defineProperties(r,Object.getOwnPropertyDescriptors(source)):l(Object(source)).forEach((function(t){Object.defineProperty(r,t,Object.getOwnPropertyDescriptor(source,t))}))}return r}({},Object(n.c)("common",["customScripts"])),mounted:function(){var r=this;this.customScripts.forEach((function(i){var t=new RegExp(null==i?void 0:i.route_pattern),e=r.$route.path;if(t.test(e)){if(null!=i&&i.header_script){var script=document.createElement("script");script.textContent=null==i?void 0:i.header_script_code,document.head.appendChild(script)}if(null!=i&&i.body_script){var o=document.createElement("script");o.textContent=null==i?void 0:i.body_script_code,document.body.appendChild(o)}}}))}}},479:function(r,t,e){"use strict";e.r(t);e(124);var o={name:"PasswordField",data:function(){return{password:"",passwordFieldType:"password"}},props:{isInvalid:{type:Boolean,default:!1},value:{type:String}},mixins:[],components:{},computed:{isPasswordTypePassword:function(){return"password"===this.passwordFieldType}},methods:{passwordFieldToggle:function(){this.isPasswordTypePassword?this.passwordFieldType="text":this.passwordFieldType="password"}},mounted:function(){this.password=this.value}},n=e(11),component=Object(n.a)(o,(function(){var r=this,t=r._self._c;return t("div",{staticClass:"icon-input right-icon"},[t("i",{staticClass:"icon lock-icon"}),r._v(" "),t("input",{directives:[{name:"model",rawName:"v-model.trim",value:r.password,expression:"password",modifiers:{trim:!0}}],class:{invalid:!r.password||r.isInvalid},attrs:{type:r.passwordFieldType,placeholder:r.$t("contact.your",{type:r.$t("login.password")})},domProps:{value:r.password},on:{change:function(t){return r.$emit("change",r.password)},input:function(t){t.target.composing||(r.password=t.target.value.trim())},blur:function(t){return r.$forceUpdate()}}}),r._v(" "),t("i",{staticClass:"icon",class:r.isPasswordTypePassword?"eye-close-icon":"eye-icon",on:{click:r.passwordFieldToggle}})])}),[],!1,null,null,null);t.default=component.exports},496:function(r,t,e){"use strict";e.r(t);var o={name:"ErrorHandler",props:{errors:{type:Array,default:[]}},data:function(){return{}},components:{},mixins:[],computed:{},mounted:function(){},methods:{}},n=e(11),component=Object(n.a)(o,(function(){var r=this,t=r._self._c;return r.errors.length?t("ul",{staticClass:"error-list mb-15"},[t("li",{staticClass:"mb-10"},[r._v("\n    "+r._s(r.$t("forgotPassword.errorOccurred"))+"\n  ")]),r._v(" "),r._l(r.errors,(function(e,o){return t("li",{key:o},[r._v("\n    "+r._s(e)+"\n  ")])}))],2):r._e()}),[],!1,null,null,null);t.default=component.exports},565:function(r,t,e){"use strict";e.r(t);e(35),e(18),e(19),e(22),e(6),e(26),e(17),e(27);var o=e(0),n=e(9),l=(e(12),e(205)),c=e(291),d=e(479),m=e(7),v=e(496),f=e(462);function _(object,r){var t=Object.keys(object);if(Object.getOwnPropertySymbols){var e=Object.getOwnPropertySymbols(object);r&&(e=e.filter((function(r){return Object.getOwnPropertyDescriptor(object,r).enumerable}))),t.push.apply(t,e)}return t}function w(r){for(var i=1;i<arguments.length;i++){var source=null!=arguments[i]?arguments[i]:{};i%2?_(Object(source),!0).forEach((function(t){Object(n.a)(r,t,source[t])})):Object.getOwnPropertyDescriptors?Object.defineProperties(r,Object.getOwnPropertyDescriptors(source)):_(Object(source)).forEach((function(t){Object.defineProperty(r,t,Object.getOwnPropertyDescriptor(source,t))}))}return r}var h={middleware:["common-middleware"],layout:"default",data:function(){return{name:"",email:"",verified:!1,code:"",password:"",storeName:"",confirmPassword:"",emailVerificationForm:!1,formSubmitting:!1,hasFormError:!1,errors:[]}},components:{ErrorHandler:v.default,AjaxButton:c.default,PasswordField:d.default},mixins:[l.a,f.a],computed:w(w({invalidEmail:function(){return!this.isValidEmail(this.email)},emailValid:function(){return this.email&&!this.invalidEmail},invalidPassword:function(){return!this.isValidLength(this.password)},passwordValid:function(){return this.password&&!this.invalidPassword},sellerSignUp:function(){var r;return null===(r=this.setting)||void 0===r?void 0:r.vendor_registration}},Object(m.c)("common",["setting"])),Object(m.c)("language",["langCode"])),methods:w({verifyEmail:function(){var r=this;return Object(o.a)(regeneratorRuntime.mark((function t(){var data,e;return regeneratorRuntime.wrap((function(t){for(;;)switch(t.prev=t.next){case 0:if(!r.code){t.next=15;break}return r.formSubmitting=!0,t.prev=2,t.next=5,r.postRequest({params:{code:r.code,email:r.email},lang:r.langCode,api:"sellerVerify",requiredToken:!1});case 5:200===(null==(data=t.sent)?void 0:data.status)?(r.verified=!0,r.hasFormError=!1,r.errors=[]):r.errors=null==data||null===(e=data.data)||void 0===e?void 0:e.form,t.next=12;break;case 9:return t.prev=9,t.t0=t.catch(2),t.abrupt("return",r.$nuxt.error(t.t0));case 12:r.formSubmitting=!1,t.next=16;break;case 15:r.hasFormError=!0;case 16:case"end":return t.stop()}}),t,null,[[2,9]])})))()},formSubmit:function(){var r=this;return Object(o.a)(regeneratorRuntime.mark((function t(){var data,e;return regeneratorRuntime.wrap((function(t){for(;;)switch(t.prev=t.next){case 0:if(!(r.name&&r.email&&r.password&&r.password===r.confirmPassword)){t.next=15;break}return r.formSubmitting=!0,t.prev=2,t.next=5,r.postRequest({params:{name:r.name,store_name:r.storeName,email:r.email,password:r.password},api:"sellerRegister",requiredToken:!1});case 5:200===(null==(data=t.sent)?void 0:data.status)?(r.hasFormError=!1,r.errors=[],r.emailVerificationForm=!0):r.errors=null==data||null===(e=data.data)||void 0===e?void 0:e.form,t.next=12;break;case 9:return t.prev=9,t.t0=t.catch(2),t.abrupt("return",r.$nuxt.error(t.t0));case 12:r.formSubmitting=!1,t.next=16;break;case 15:r.hasFormError=!0;case 16:case"end":return t.stop()}}),t,null,[[2,9]])})))()}},Object(m.b)("common",["postRequest"])),mounted:function(){if(!this.sellerSignUp)return this.$nuxt.error({statusCode:404,message:this.$t("date.nf")})}},y=e(11),component=Object(y.a)(h,(function(){var r=this,t=r._self._c;return t("div",[r.emailVerificationForm||r.verified?r._e():t("form",{staticClass:"seller-form user-form",on:{submit:function(t){return t.preventDefault(),r.formSubmit.apply(null,arguments)}}},[t("div",{staticClass:"center-text mb-30"},[t("h6",[r._v(r._s(r.$t("date.reg")))]),r._v(" "),t("h1",{staticClass:"mt-10 mb-20 color-primary"},[r._v(r._s(r.$t("date.sr")))]),r._v(" "),t("p",[r._v(r._s(r.$t("date.pm")))])]),r._v(" "),t("error-handler",{attrs:{errors:r.errors}}),r._v(" "),t("div",{staticClass:"input-wrap",class:{invalid:!r.name&&r.hasFormError}},[t("label",[r._v(r._s(r.$t("addressPopup.name")))]),r._v(" "),t("div",{staticClass:"icon-input"},[t("i",{staticClass:"icon user-icon"}),r._v(" "),t("input",{directives:[{name:"model",rawName:"v-model",value:r.name,expression:"name"}],attrs:{type:"text",placeholder:r.$t("contact.your",{type:r.$t("contact.name")})},domProps:{value:r.name},on:{input:function(t){t.target.composing||(r.name=t.target.value)}}})]),r._v(" "),!r.name&&r.hasFormError?t("span",{staticClass:"error"},[r._v("\n        "+r._s(r.$t("addressPopup.isRequired",{type:r.$t("addressPopup.name")}))+"\n      ")]):r._e()]),r._v(" "),t("div",{staticClass:"input-wrap",class:{invalid:!r.storeName&&r.hasFormError}},[t("label",[r._v(r._s(r.$t("date.sn")))]),r._v(" "),t("div",{staticClass:"icon-input"},[t("i",{staticClass:"icon user-icon"}),r._v(" "),t("input",{directives:[{name:"model",rawName:"v-model",value:r.storeName,expression:"storeName"}],attrs:{type:"text",placeholder:r.$t("date.sn")},domProps:{value:r.storeName},on:{input:function(t){t.target.composing||(r.storeName=t.target.value)}}})]),r._v(" "),!r.storeName&&r.hasFormError?t("span",{staticClass:"error"},[r._v("\n        "+r._s(r.$t("addressPopup.isRequired",{type:r.$t("date.sn")}))+"\n      ")]):r._e()]),r._v(" "),t("div",{staticClass:"input-wrap",class:{invalid:!r.emailValid&&r.hasFormError}},[t("label",[r._v(r._s(r.$t("addressPopup.email")))]),r._v(" "),t("div",{staticClass:"icon-input"},[t("i",{staticClass:"icon email-icon"}),r._v(" "),t("input",{directives:[{name:"model",rawName:"v-model",value:r.email,expression:"email"}],attrs:{type:"text",placeholder:r.$t("contact.your",{type:r.$t("contact.email")})},domProps:{value:r.email},on:{input:function(t){t.target.composing||(r.email=t.target.value)}}})]),r._v(" "),!r.email&&r.hasFormError?t("span",{staticClass:"error"},[r._v("\n         "+r._s(r.$t("addressPopup.isRequired",{type:r.$t("addressPopup.email")}))+"\n      ")]):r.invalidEmail&&r.hasFormError?t("span",{staticClass:"error"},[r._v("\n        "+r._s(r.$t("contact.invalidEmail"))+"\n      ")]):r._e()]),r._v(" "),t("div",{staticClass:"input-wrap",class:{invalid:!r.passwordValid&&r.hasFormError}},[t("label",[r._v(r._s(r.$t("profile.password")))]),r._v(" "),t("password-field",{attrs:{value:r.password},on:{change:function(t){r.password=t}}}),r._v(" "),!r.password&&r.hasFormError?t("span",{staticClass:"error"},[r._v("\n         "+r._s(r.$t("addressPopup.isRequired",{type:r.$t("profile.password")}))+"\n      ")]):r.invalidPassword&&r.hasFormError?t("span",{staticClass:"error"},[r._v("\n         "+r._s(r.$t("profile.invalidLength"))+"\n      ")]):r._e()],1),r._v(" "),t("div",{staticClass:"input-wrap",class:{invalid:(!r.passwordValid||r.confirmPassword!==r.password)&&r.hasFormError}},[t("label",[r._v("\n        "+r._s(r.$t("profile.confirmPassword"))+"\n      ")]),r._v(" "),t("password-field",{attrs:{value:r.confirmPassword},on:{change:function(t){r.confirmPassword=t}}}),r._v(" "),!r.confirmPassword&&r.hasFormError?t("span",{staticClass:"error"},[r._v("\n        "+r._s(r.$t("addressPopup.isRequired",{type:r.$t("profile.password")}))+"\n      ")]):r.confirmPassword!==r.password&&r.hasFormError?t("span",{staticClass:"error"},[r._v("\n        "+r._s(r.$t("profile.noMatch"))+"\n      ")]):r._e()],1),r._v(" "),t("div",{staticClass:"flex right no-space"},[t("ajax-button",{staticClass:"primary-btn plr-20 w-50",attrs:{"fetching-data":r.formSubmitting,"loading-text":r.$t("forgotPassword.registering")}},[r._v("\n        "+r._s(r.$t("ajaxButton.submit"))+"\n      ")])],1)],1),r._v(" "),r.emailVerificationForm&&!r.verified?t("form",{staticClass:"seller-form user-form",on:{submit:function(t){return t.preventDefault(),r.verifyEmail.apply(null,arguments)}}},[t("div",{staticClass:"center-text mb-30"},[t("h1",{staticClass:"mt-10 mb-20 color-primary"},[r._v("Verification")]),r._v(" "),t("p",[r._v(r._s(r.$t("register.sentEmail")))])]),r._v(" "),t("error-handler",{attrs:{errors:r.errors}}),r._v(" "),t("div",{staticClass:"input-wrap",class:{invalid:!r.code&&r.hasFormError}},[t("label",[r._v("\n        "+r._s(r.$t("forgotPassword.code"))+"\n      ")]),r._v(" "),t("input",{directives:[{name:"model",rawName:"v-model",value:r.code,expression:"code"}],attrs:{type:"text",placeholder:r.$t("forgotPassword.codeFrom")},domProps:{value:r.code},on:{input:function(t){t.target.composing||(r.code=t.target.value)}}}),r._v(" "),!r.code&&r.hasFormError?t("span",{staticClass:"error"},[r._v("\n         "+r._s(r.$t("addressPopup.isRequired",{type:r.$t("forgotPassword.code")}))+"\n      ")]):r._e()]),r._v(" "),t("div",{staticClass:"flex right no-space"},[t("ajax-button",{staticClass:"primary-btn plr-20 w-50",attrs:{"fetching-data":r.formSubmitting,"loading-text":r.$t("checkoutRight.submitting")}},[r._v("\n        "+r._s(r.$t("ajaxButton.submit"))+"\n      ")])],1)],1):r.emailVerificationForm&&r.verified?t("div",{staticClass:"seller-form user-form"},[t("h1",{staticClass:"mt-10 mb-20 color-primary"},[r._v(r._s(r.$t("contact.success"))+"!!!")]),r._v(" "),t("p",{staticClass:"mb-15"},[t("b",[r._v(r._s(r.$t("forgotPassword.congratulations")))]),r._v(".\n      "+r._s(r.$t("forgotPassword.verified"))+"\n    ")]),r._v(" "),t("p",{staticClass:"mb-15"},[r._v("\n      "+r._s(r.$t("date.yw"))+"\n    ")]),r._v(" "),t("p",{staticClass:"mb-15"},[t("nuxt-link",{staticClass:"mlr-10 link bold color-primary",attrs:{to:"/"}},[r._v("\n        "+r._s(r.$t("date.gh"))+"\n\n      ")])],1)]):r._e()])}),[],!1,null,null,null);t.default=component.exports;installComponents(component,{ErrorHandler:e(496).default,PasswordField:e(479).default,AjaxButton:e(291).default})}}]);