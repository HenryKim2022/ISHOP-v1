(window.webpackJsonp=window.webpackJsonp||[]).push([[65],{514:function(t,c,n){"use strict";n.r(c);n(40);var e={name:"SitemapItem",data:function(){return{}},mixins:[n(24).a],watch:{},props:{categories:{type:Array,default:function(){return[]}}},computed:{},methods:{}},o=n(11),component=Object(o.a)(e,(function(){var t=this,c=t._self._c;return c("div",{staticClass:"item"},t._l(t.categories,(function(n,i){return c("div",{key:"c-".concat(i),staticClass:"category"},[c("h4",{staticClass:"title"},[c("nuxt-link",{attrs:{to:t.categoryLink(n)}},[t._v(t._s(n.title))])],1),t._v(" "),c("div",{staticClass:"content"},t._l(n.public_sub_categories,(function(e,o){return c("div",{key:"sub-cat-".concat(i,"-").concat(o),staticClass:"sub-category"},[c("h4",[c("nuxt-link",{attrs:{to:t.subCategoryLink(e,n)}},[t._v(t._s(e.title))])],1),t._v(" "),t._l(e.products,(function(n,e){return c("div",{key:"p-".concat(i,"-").concat(o,"-").concat(e),staticClass:"product"},[c("p",[c("nuxt-link",{staticClass:"ellipsis ellipsis-2",attrs:{to:t.productLink(n)}},[t._v(t._s(n.title))])],1)])}))],2)})),0)])})),0)}),[],!1,null,null,null);c.default=component.exports}}]);