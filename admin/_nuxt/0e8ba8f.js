(window.webpackJsonp=window.webpackJsonp||[]).push([[93],{440:function(t,e,c){"use strict";c(52),c(150);e.a={data:function(){return{itemList:[],cbList:[]}},methods:{checkAll:function(t){t.target.checked?this.cbList=this.itemList.map((function(i){return i.id})):this.cbList=[]},deleteBulk:function(){var t;null!==(t=this.cbList)&&void 0!==t&&t.length&&this.$refs.listPage.deleteItem(this.cbList.join(","))}}}},814:function(t,e,c){"use strict";c.r(e);var n=c(80),l=c(441),o=c(440),r={name:"tax-rule",middleware:["common-middleware","auth"],data:function(){return{orderOptions:{title:{title:this.$t("index.title")},created_at:{title:this.$t("category.date")},status:{title:this.$t("category.status")}}}},mixins:[n.a,o.a],components:{ListPage:l.default},computed:{},methods:{},mounted:function(){}},d=c(16),component=Object(d.a)(r,(function(){var t=this,e=t.$createElement,c=t._self._c||e;return c("list-page",{ref:"listPage",attrs:{"list-api":"getProductCollections","delete-api":"deleteProductCollection","empty-store-variable":"allProductCollections","route-name":"product-collections",name:t.$t("brand.prodCol"),"order-options":t.orderOptions,gate:"product_collection"},on:{"delete-bulk":t.deleteBulk,list:function(e){t.itemList=e}},scopedSlots:t._u([{key:"table",fn:function(e){var n=e.list;return[c("tr",{staticClass:"lite-bold"},[c("th",{staticClass:"w-50x mx-w-50x"},[c("input",{attrs:{type:"checkbox"},on:{change:t.checkAll}})]),t._v(" "),c("th",[t._v(t._s(t.$t("index.title")))]),t._v(" "),c("th",[t._v(t._s(t.$t("category.slug")))]),t._v(" "),c("th",[t._v(t._s(t.$t("category.status")))]),t._v(" "),c("th",[t._v(t._s(t.$t("category.created")))]),t._v(" "),c("th",[t._v(" ")])]),t._v(" "),t._l(n,(function(e,n){return c("tr",{key:n},[c("td",{staticClass:"w-50x mx-w-50x"},[c("input",{directives:[{name:"model",rawName:"v-model",value:t.cbList,expression:"cbList"}],attrs:{type:"checkbox"},domProps:{value:e.id,checked:Array.isArray(t.cbList)?t._i(t.cbList,e.id)>-1:t.cbList},on:{change:function(c){var n=t.cbList,l=c.target,o=!!l.checked;if(Array.isArray(n)){var r=e.id,d=t._i(n,r);l.checked?d<0&&(t.cbList=n.concat([r])):d>-1&&(t.cbList=n.slice(0,d).concat(n.slice(d+1)))}else t.cbList=o}}})]),t._v(" "),c("td",[c("nuxt-link",{staticClass:"link",attrs:{to:"/product-collections/"+e.id}},[c("h5",{staticClass:"mx-w-300x"},[t._v(t._s(e.title))])])],1),t._v(" "),c("td",[t._v(t._s(e.slug))]),t._v(" "),c("td",{staticClass:"status",class:{active:1==e.status}},[c("span",[t._v(t._s(t.getStatus(e.status)))])]),t._v(" "),c("td",[t._v(t._s(e.created))]),t._v(" "),c("td",[t.$can("product_collection","edit")?c("button",{staticClass:"lite-btn",on:{click:function(c){return c.preventDefault(),t.$refs.listPage.editItem(e.id)}}},[t._v("\n            "+t._s(t.$t("category.edit")))]):t._e(),t._v(" "),t.$can("product_collection","delete")?c("button",{staticClass:"delete-btn lite-btn",on:{click:function(c){return c.preventDefault(),t.$refs.listPage.deleteItem(e.id)}}},[t._v("\n            "+t._s(t.$t("category.delete")))]):t._e()])])}))]}}])})}),[],!1,null,"17646112",null);e.default=component.exports}}]);