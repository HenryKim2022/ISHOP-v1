(window.webpackJsonp=window.webpackJsonp||[]).push([[100],{819:function(e,t,n){"use strict";n.r(t);var r=n(441),l=n(80),o={name:"roles-permissions",middleware:["common-middleware","auth"],data:function(){return{orderOptions:{name:{title:this.$t("user.name")},created_at:{title:this.$t("category.date")}}}},components:{ListPage:r.default},mixins:[l.a],computed:{},methods:{},mounted:function(){}},d=n(16),component=Object(d.a)(o,(function(){var e=this,t=e.$createElement,n=e._self._c||t;return n("list-page",{ref:"listPage",attrs:{"list-api":"getRoles","delete-api":"deleteRole","route-name":"roles-permissions",name:e.$t("profile.rp"),"empty-store-variable":"allRoles","order-options":e.orderOptions,gate:"role"},scopedSlots:e._u([{key:"table",fn:function(t){var r=t.list;return[n("tr",{staticClass:"lite-bold"},[n("th",[e._v(e._s(e.$t("user.name")))]),e._v(" "),n("th",[e._v(e._s(e.$t("category.created")))]),e._v(" "),n("th",[e._v(" ")])]),e._v(" "),e._l(r,(function(t,r){return n("tr",{key:r},[n("td",{},[n("nuxt-link",{staticClass:"link",attrs:{to:"/roles-permissions/"+t.id}},[n("h5",{staticClass:"mx-w-300x"},[e._v(e._s(t.name))])])],1),e._v(" "),n("td",[e._v(e._s(t.created))]),e._v(" "),n("td",[e.$can("role","edit")?n("button",{staticClass:"lite-btn",on:{click:function(n){return n.preventDefault(),e.$refs.listPage.editItem(t.id)}}},[e._v(e._s(e.$t("category.edit")))]):e._e(),e._v(" "),e.$can("role","delete")?n("button",{staticClass:"delete-btn lite-btn",on:{click:function(n){return n.preventDefault(),e.$refs.listPage.deleteItem(t.id)}}},[e._v(e._s(e.$t("category.delete")))]):e._e()])])}))]}}])})}),[],!1,null,"9e6d0b92",null);t.default=component.exports}}]);