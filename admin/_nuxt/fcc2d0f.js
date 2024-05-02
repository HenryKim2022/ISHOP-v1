(window.webpackJsonp=window.webpackJsonp||[]).push([[1,14,16],{436:function(t,e,r){"use strict";r.r(e);r(20),r(19),r(23),r(8),r(27),r(17),r(28);var n=r(5),l=r(11);function o(object,t){var e=Object.keys(object);if(Object.getOwnPropertySymbols){var r=Object.getOwnPropertySymbols(object);t&&(r=r.filter((function(t){return Object.getOwnPropertyDescriptor(object,t).enumerable}))),e.push.apply(e,r)}return e}var c={name:"ErrorFormatter",props:{type:{type:String,default:"form"}},computed:function(t){for(var i=1;i<arguments.length;i++){var source=null!=arguments[i]?arguments[i]:{};i%2?o(Object(source),!0).forEach((function(e){Object(n.a)(t,e,source[e])})):Object.getOwnPropertyDescriptors?Object.defineProperties(t,Object.getOwnPropertyDescriptors(source)):o(Object(source)).forEach((function(e){Object.defineProperty(t,e,Object.getOwnPropertyDescriptor(source,e))}))}return t}({errorData:function(){return this.errors&&void 0!==this.errors[this.type]?this.errors[this.type]:null}},Object(l.c)("ui",["errors"]))},d=c,m=r(16),component=Object(m.a)(d,(function(){var t=this,e=t.$createElement,r=t._self._c||e;return t.errorData?r("ul",{staticClass:"error-list mb-15"},[r("li",{staticClass:"mb-10"},[t._v(t._s(t.$t("error.feo")))]),t._v(" "),t._l(t.errorData,(function(e,n){return r("li",{key:n},[t._v("\n    "+t._s(e)+"\n  ")])}))],2):t._e()}),[],!1,null,null,null);e.default=component.exports},437:function(t,e,r){"use strict";r.r(e);var n=r(438),l=r.n(n),o=r(80),c={name:"LazyImage",props:{alt:{type:String,default:null},title:{type:String,default:null},backgroundColor:{type:String,default:"#d9f4eb"},lazySrc:{type:String,default:null},lazySrcset:{type:String,default:null}},data:function(){return{loading:!0}},mixins:[o.a],computed:{aspectRatio:function(){return this.width&&this.height?this.height/this.width*100:null},style:function(){var style={};return this.width&&(style.width="".concat(this.width,"px"),this.height||(style.height="".concat(.66*this.width,"px"))),this.loading&&this.aspectRatio&&(style.height=this.height?"".concat(this.height,"px"):"".concat(this.applyAspectRatio,"px")),style}},mounted:function(){var t=this,e=function(){t.loading=!1,t.$el.style.opacity=1};this.$el.addEventListener("load",e),this.$once("hook:destroyed",(function(){t.$el.removeEventListener("load",e)})),l()(this.$el,{load:function(t){t.src=t.getAttribute("data-src")}}).observe()},methods:{onError:function(t){t.target.src=this.getImageURL()}}},d=r(16),component=Object(d.a)(c,(function(){var t=this,e=t.$createElement;return(t._self._c||e)("img",{staticClass:"lazy-img",style:t.style,attrs:{"data-src":t.lazySrc,alt:t.alt,title:t.title,height:"50",width:"50"},on:{error:t.onError}})}),[],!1,null,null,null);e.default=component.exports},439:function(t,e,r){"use strict";r(25),r(37);e.a={data:function(){return{allowedImageExtensions:/(\.jpg|\.jpeg|\.png|\.svg|\.webp|\.gif)$/i,allowedVideoExtensions:/(\.mp4)$/i,allowedExcelExtensions:/(\.xlsx)$/i,passwordLength:6,maxImageSize:1,maxExcelSize:2,maxVideoSize:2,reg:/^(([^<>()\]\\.,;:\s@"]+(\.[^<>()\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,24}))$/}},methods:{isValidExcel:function(t){var e=arguments.length>1&&void 0!==arguments[1]?arguments[1]:this.maxExcelSize;return t.size>1024*e*1024?this.$t("util.fSize",{size:e}):this.allowedExcelExtensions.exec(t.name)?null:this.$t("util.invFile")},isValidImage:function(t){var e=arguments.length>1&&void 0!==arguments[1]?arguments[1]:this.maxImageSize,r=!(arguments.length>2&&void 0!==arguments[2])||arguments[2];return t.size>1024*e*1024?this.$t("util.fSize",{size:e}):r&&!this.allowedImageExtensions.exec(t.name)?this.$t("util.invFile"):r||this.allowedVideoExtensions.exec(t.name)?null:this.$t("util.invFile")},isValidEmail:function(t){return this.reg.test(t)},isValidLength:function(t){return t&&t.length>=this.passwordLength||!1}}}},445:function(t,e,r){"use strict";r.r(e);r(20),r(19),r(23),r(27),r(28);var n=r(1),l=r(5),o=(r(21),r(8),r(17),r(53),r(272),r(37),r(148)),c=r(80),d=r(447),m=r(48),f=r(149),h=r(436),v=r(11),y=r(451);function x(object,t){var e=Object.keys(object);if(Object.getOwnPropertySymbols){var r=Object.getOwnPropertySymbols(object);t&&(r=r.filter((function(t){return Object.getOwnPropertyDescriptor(object,t).enumerable}))),e.push.apply(e,r)}return e}function w(t){for(var i=1;i<arguments.length;i++){var source=null!=arguments[i]?arguments[i]:{};i%2?x(Object(source),!0).forEach((function(e){Object(l.a)(t,e,source[e])})):Object.getOwnPropertyDescriptors?Object.defineProperties(t,Object.getOwnPropertyDescriptors(source)):x(Object(source)).forEach((function(e){Object.defineProperty(t,e,Object.getOwnPropertyDescriptor(source,e))}))}return t}var j={name:"DataPage",middleware:["common-middleware","auth"],data:function(){return{loading:!1,redirect:!1,formSubmitting:!1,fileUploading:!1,hasError:!1}},props:{result:{type:Object,default:function(){return null}},emitBeforeSubmit:{type:Boolean,default:!1},name:{type:String,default:""},gate:{type:String,default:null},hash:{type:String,default:""},setApi:{type:String,default:""},setImageApi:{type:String,default:""},getApi:{type:String,default:""},emptyStoreVariable:{type:String,default:null},routeName:{type:String,default:""},validationKeys:{type:Array,default:[]},fileKeys:{type:Array,default:function(){return[]}}},mixins:[c.a],components:{ImageInput:y.default,Spinner:m.default,AjaxButton:o.default,ErrorFormatter:h.default,FileUpload:d.default,Dropdown:f.default},computed:w({id:function(){var t,e;return this.isAdding?"":null===(t=this.$route)||void 0===t||null===(e=t.params)||void 0===e?void 0:e.id},isAdding:function(){var t,e;return isNaN(null===(t=this.$route)||void 0===t||null===(e=t.params)||void 0===e?void 0:e.id)}},Object(v.c)(["mediaStorage"])),methods:w({uploadFile:function(t){var e=arguments,r=this;return Object(n.a)(regeneratorRuntime.mark((function n(){var l,o,c,data;return regeneratorRuntime.wrap((function(n){for(;;)switch(n.prev=n.next){case 0:return l=e.length>1&&void 0!==e[1]?e[1]:null,n.prev=1,o={},t?(c=new FormData,r.fileKeys.forEach((function(i){c.append(i,r.result[i])})),c.append("photo",t),o=c):(r.fileKeys.forEach((function(i){o[i]=r.result[i]})),o.photo=l),r.fileUploading=!0,n.next=7,r.setImageById({id:r.id,params:o,api:r.setImageApi});case 7:if(!(data=n.sent)||r.gate&&!r.$can(r.gate,"view")){n.next=13;break}return n.next=11,r.$emit("result",Object.assign({},data));case 11:return n.next=13,r.$router.push({path:"/".concat(r.routeName,"/").concat(r.result.id)});case 13:r.fileUploading=!1,n.next=19;break;case 16:return n.prev=16,n.t0=n.catch(1),n.abrupt("return",r.$nuxt.error(n.t0));case 19:case"end":return n.stop()}}),n,null,[[1,16]])})))()},redirectingEnable:function(t){this.redirect="save"===t},formSubmit:function(){this.emitBeforeSubmit?this.$emit("before-submit"):this.checkForm()},checkForm:function(){var t=this;return Object(n.a)(regeneratorRuntime.mark((function e(){var data,r,n;return regeneratorRuntime.wrap((function(e){for(;;)switch(e.prev=e.next){case 0:if(!(t.validationKeys.findIndex((function(i){return!t.result[i]}))>-1)){e.next=3;break}return t.hasError=!0,e.abrupt("return",!1);case 3:return t.redirectingEnable(event.submitter.name),t.formSubmitting=!0,e.prev=5,delete t.result.created_at,delete t.result.updated_at,e.next=10,t.setById({id:t.id,params:t.result,api:t.setApi});case 10:if(!(data=e.sent)){e.next=22;break}return t.emptyAllList(t.emptyStoreVariable),e.next=15,t.$emit("result",Object.assign({},data));case 15:if(!(!t.gate||t.$can(t.gate,"view")&&null!==(r=t.result)&&void 0!==r&&r.id)){e.next=18;break}return e.next=18,t.$router.push({path:"/".concat(t.routeName).concat(t.redirect?"":"/"+(null===(n=t.result)||void 0===n?void 0:n.id)),hash:t.hash});case 18:return e.next=20,t.$emit("on-success",Object.assign({},data));case 20:e.next=23;break;case 22:t.$refs.formWrapper.scrollIntoView({behavior:"smooth"});case 23:e.next=28;break;case 25:return e.prev=25,e.t0=e.catch(5),e.abrupt("return",t.$nuxt.error(e.t0));case 28:t.formSubmitting=!1;case 29:case"end":return e.stop()}}),e,null,[[5,25]])})))()},fetchingData:function(){var t=this;return Object(n.a)(regeneratorRuntime.mark((function e(){return regeneratorRuntime.wrap((function(e){for(;;)switch(e.prev=e.next){case 0:return e.prev=0,t.loading=!0,e.t0=t,e.t1=Object,e.t2={},e.next=7,t.getById({id:t.id,params:{time_zone:t.timeZone},api:t.getApi});case 7:e.t3=e.sent,e.t4=e.t1.assign.call(e.t1,e.t2,e.t3),e.t0.$emit.call(e.t0,"result",e.t4),t.loading=!1,e.next=16;break;case 13:return e.prev=13,e.t5=e.catch(0),e.abrupt("return",t.$nuxt.error(e.t5));case 16:case"end":return e.stop()}}),e,null,[[0,13]])})))()}},Object(v.b)("common",["getById","setById","setImageById","emptyAllList"])),mounted:function(){var t=this;return Object(n.a)(regeneratorRuntime.mark((function e(){return regeneratorRuntime.wrap((function(e){for(;;)switch(e.prev=e.next){case 0:t.isAdding||t.$nextTick((function(){t.gate&&!t.$can(t.gate,"view")||t.fetchingData()}));case 1:case"end":return e.stop()}}),e)})))()}},O=j,$=r(16),component=Object($.a)(O,(function(){var t=this,e=t.$createElement,r=t._self._c||e;return r("div",{ref:"formWrapper",staticClass:"tab-sidebar"},[r("h4",{staticClass:"title"},[t._v(t._s(t.$t("profile.form",{name:t.name})))]),t._v(" "),r("div",{staticClass:"form-wrapper"},[r("error-formatter"),t._v(" "),r("error-formatter",{attrs:{type:"image"}}),t._v(" "),t.loading?r("div",{staticClass:"spinner-wrapper"},[r("spinner",{staticClass:"mr-15",attrs:{radius:60,color:"primary"}})],1):t._e(),t._v(" "),t.loading?t._e():r("div",[t.fileKeys.length&&(!t.gate||t.$can(t.gate,"edit")||t.$can(t.gate,"create"))?r("div",[t.mediaStorageData.URL===t.mediaStorage?r("image-input",{staticClass:"mb-20 mb-sm-15",attrs:{saving:t.fileUploading,image:t.result.image},on:{"image-change":function(e){return t.uploadFile(null,e)}}}):r("file-upload",{staticClass:"mb-20 mb-sm-15",attrs:{image:t.result.image,"file-uploading":t.fileUploading,"only-icon":"upload-icon"},on:{"file-upload":t.uploadFile}})],1):t.fileKeys.length&&t.$can(t.gate,"view")?r("img",{staticClass:"mx-w-300x",attrs:{src:t.getImageURL(t.result.image)}}):t._e()]),t._v(" "),r("form",{class:{"has-error":t.hasError},on:{submit:function(e){return e.preventDefault(),t.formSubmit.apply(null,arguments)}}},[t._t("form",null,{hasError:t.hasError}),t._v(" "),!t.gate||t.$can(t.gate,"edit")||t.$can(t.gate,"create")?r("div",{staticClass:"dply-felx j-right single-btn"},[r("ajax-button",{staticClass:"primary-btn",attrs:{name:"save-edit",text:t.$t("list.svn"),"fetching-data":t.formSubmitting&&!t.redirect}}),t._v(" "),r("ajax-button",{staticClass:"primary-btn",attrs:{name:"save",text:t.$t("setting.sv"),"fetching-data":t.formSubmitting&&t.redirect}})],1):t._e()],2)],1)])}),[],!1,null,"62284186",null);e.default=component.exports;installComponents(component,{ErrorFormatter:r(436).default,Spinner:r(48).default,ImageInput:r(451).default,FileUpload:r(447).default,AjaxButton:r(148).default})},447:function(t,e,r){"use strict";r.r(e);r(118);var n=r(148),l=r(80),o=r(439),c=r(437),d={name:"FileUpload",data:function(){return{uploadMessage:null}},mixins:[l.a,o.a],components:{LazyImage:c.default,AjaxButton:n.default},props:{btnType:{type:String,default:"outline"},fileUploading:{type:Boolean,default:!1},image:{type:String,default:""},imageTitle:{type:String,default:""},onlyIcon:{type:String,default:null},btnText:{type:String,default:function(){return this.$t("profile.upload")}}},computed:{imageName:function(){var t;return null!==(t=this.image)&&void 0!==t&&t.trim()?this.image:this.defaultImage}},methods:{fileChanged:function(t){var e=t.target.files[0];e&&(this.uploadMessage=this.isValidImage(e),this.uploadMessage||this.$emit("file-upload",e))}}},m=r(16),component=Object(m.a)(d,(function(){var t=this,e=t.$createElement,r=t._self._c||e;return r("div",{staticClass:"file-wrapper",class:{"has-error":t.uploadMessage}},[r("div",[r("div",{staticClass:"file-input"},[r("input",{ref:"fileInput",attrs:{type:"file"},on:{change:t.fileChanged}}),t._v(" "),t.fileUploading?t._e():r("img",{attrs:{src:t.getImageURL(t.imageName),alt:t.imageTitle}})]),t._v(" "),t.uploadMessage?r("span",{staticClass:"error mb-10"},[t._v("\n      "+t._s(t.uploadMessage)+"\n    ")]):t._e()]),t._v(" "),r("ajax-button",{staticClass:"w-100",class:t.btnType+"-btn",attrs:{type:"button",color:"primary",text:t.btnText,"only-icon":t.onlyIcon,"fetching-data":t.fileUploading},on:{clicked:function(e){return t.$refs.fileInput.click()}}})],1)}),[],!1,null,null,null);e.default=component.exports;installComponents(component,{AjaxButton:r(148).default})},451:function(t,e,r){"use strict";r.r(e);r(118);var n=r(148),l={name:"ImageInput",data:function(){return{imageData:null}},mixins:[r(80).a],components:{AjaxButton:n.default},props:{saving:{type:Boolean,default:!1},image:{type:String,default:""}},watch:{image:function(t){this.imageData=t}},computed:{imageName:function(){var t;return null!==(t=this.image)&&void 0!==t&&t.trim()?this.image:this.defaultImage}},methods:{},mounted:function(){this.imageData=this.image}},o=r(16),component=Object(o.a)(l,(function(){var t=this,e=t.$createElement,r=t._self._c||e;return r("div",{staticClass:"image-url-wrap file-wrapper"},[r("div",{staticClass:"file-input"},[r("img",{attrs:{src:t.getImageURL(t.imageName)}})]),t._v(" "),r("div",{staticClass:"input-wrapper"},[r("label",[t._v(t._s(t.$t("error.fn")))]),t._v(" "),r("div",{staticClass:"image-input"},[r("input",{directives:[{name:"model",rawName:"v-model",value:t.imageData,expression:"imageData"}],attrs:{type:"text",placeholder:t.$t("error.fn")},domProps:{value:t.imageData},on:{input:function(e){e.target.composing||(t.imageData=e.target.value)}}}),t._v(" "),r("ajax-button",{staticClass:"primary-btn",attrs:{type:"button",text:t.$t("setting.sv"),"loading-text":"","fetching-data":t.saving},on:{clicked:function(e){return t.$emit("image-change",t.imageData)}}})],1)])])}),[],!1,null,null,null);e.default=component.exports;installComponents(component,{AjaxButton:r(148).default})}}]);