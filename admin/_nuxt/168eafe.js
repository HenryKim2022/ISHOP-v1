(window.webpackJsonp=window.webpackJsonp||[]).push([[16],{451:function(t,e,n){"use strict";n.r(e);n(118);var r=n(148),m={name:"ImageInput",data:function(){return{imageData:null}},mixins:[n(80).a],components:{AjaxButton:r.default},props:{saving:{type:Boolean,default:!1},image:{type:String,default:""}},watch:{image:function(t){this.imageData=t}},computed:{imageName:function(){var t;return null!==(t=this.image)&&void 0!==t&&t.trim()?this.image:this.defaultImage}},methods:{},mounted:function(){this.imageData=this.image}},o=n(16),component=Object(o.a)(m,(function(){var t=this,e=t.$createElement,n=t._self._c||e;return n("div",{staticClass:"image-url-wrap file-wrapper"},[n("div",{staticClass:"file-input"},[n("img",{attrs:{src:t.getImageURL(t.imageName)}})]),t._v(" "),n("div",{staticClass:"input-wrapper"},[n("label",[t._v(t._s(t.$t("error.fn")))]),t._v(" "),n("div",{staticClass:"image-input"},[n("input",{directives:[{name:"model",rawName:"v-model",value:t.imageData,expression:"imageData"}],attrs:{type:"text",placeholder:t.$t("error.fn")},domProps:{value:t.imageData},on:{input:function(e){e.target.composing||(t.imageData=e.target.value)}}}),t._v(" "),n("ajax-button",{staticClass:"primary-btn",attrs:{type:"button",text:t.$t("setting.sv"),"loading-text":"","fetching-data":t.saving},on:{clicked:function(e){return t.$emit("image-change",t.imageData)}}})],1)])])}),[],!1,null,null,null);e.default=component.exports;installComponents(component,{AjaxButton:n(148).default})}}]);