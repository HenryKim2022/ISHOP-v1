(window.webpackJsonp=window.webpackJsonp||[]).push([[27],{627:function(t,e,n){"use strict";n.r(e);n(20),n(19),n(23),n(8),n(27),n(17),n(28);var r=n(1),o=n(5),l=(n(21),n(37),n(150),n(52),n(190)),c=n(11),d=n(80);function v(object,t){var e=Object.keys(object);if(Object.getOwnPropertySymbols){var n=Object.getOwnPropertySymbols(object);t&&(n=n.filter((function(t){return Object.getOwnPropertyDescriptor(object,t).enumerable}))),e.push.apply(e,n)}return e}function _(t){for(var i=1;i<arguments.length;i++){var source=null!=arguments[i]?arguments[i]:{};i%2?v(Object(source),!0).forEach((function(e){Object(o.a)(t,e,source[e])})):Object.getOwnPropertyDescriptors?Object.defineProperties(t,Object.getOwnPropertyDescriptors(source)):v(Object(source)).forEach((function(e){Object.defineProperty(t,e,Object.getOwnPropertyDescriptor(source,e))}))}return t}var f={name:"Invoice",data:function(){return{}},props:{order:{type:Object}},mixins:[d.a],directives:{},components:{VueHtml2pdf:l.a},watch:{},computed:_(_(_(_({userEmail:function(){var t,e,n,r,o,l;return null!==(t=null!==(e=null===(n=this.order)||void 0===n||null===(r=n.user)||void 0===r?void 0:r.email)&&void 0!==e?e:null===(o=this.order)||void 0===o||null===(l=o.guest_user)||void 0===l?void 0:l.email)&&void 0!==t?t:this.$t("prod.na")},currencyPosition:function(){var t;return null===(t=this.setting)||void 0===t?void 0:t.currency_position},totalPrice:function(){var t;return null===(t=this.order)||void 0===t?void 0:t.calculated.total_price},voucherPrice:function(){var t;return null===(t=this.order)||void 0===t?void 0:t.calculated.voucher_price},bundleOffer:function(){var t;return null===(t=this.order)||void 0===t?void 0:t.calculated.bundle_offer},shippingPrice:function(){var t;return null===(t=this.order)||void 0===t?void 0:t.calculated.shipping_price},taxPrice:function(){var t;return null===(t=this.order)||void 0===t?void 0:t.calculated.tax},subtotalPrice:function(){var t;return null===(t=this.order)||void 0===t?void 0:t.calculated.subtotal},currencyIcon:function(){var t;return(null===(t=this.setting)||void 0===t?void 0:t.currency_icon)||"$"}},Object(c.c)("admin",["isVendor"])),Object(c.c)("resource",["countryList"])),Object(c.c)("site-setting",["siteSetting"])),Object(c.c)("setting",["setting","base64SiteLogo","storeData"])),methods:_(_(_({generateAddress:function(t){if(!t)return this.$t("prod.na");var e=[];if(e.push(null==t?void 0:t.address_1),null!=t&&t.address_2&&e.push(null==t?void 0:t.address_2),e.push((null==t?void 0:t.city)+"-"+(null==t?void 0:t.zip)),this.countryList&&this.countryList[null==t?void 0:t.country]){var n,r=this.countryList[null==t?void 0:t.country];if(r.states[null==t?void 0:t.state])e.push(null===(n=r.states[t.state])||void 0===n?void 0:n.name);e.push(null==r?void 0:r.name)}return e.join(", ")},generatingPdf:function(){var t=this;this.$nextTick((function(){t.$refs.html2Pdf.generatePdf()}))},generatingAttribute:function(t){var e,n;return null==t||null===(e=t.updated_inventory)||void 0===e||null===(n=e.inventory_attributes)||void 0===n?void 0:n.map((function(i){var t,e,n;return[null==i||null===(t=i.attribute_value)||void 0===t||null===(e=t.attribute)||void 0===e?void 0:e.title,null==i||null===(n=i.attribute_value)||void 0===n?void 0:n.title]}))}},Object(c.b)("resource",["setCountryList"])),Object(c.b)("common",["getById"])),Object(c.b)("setting",["setConvertImage"])),beforeCreate:function(){},destroyed:function(){},mounted:function(){var t=this;return Object(r.a)(regeneratorRuntime.mark((function e(){var data,n;return regeneratorRuntime.wrap((function(e){for(;;)switch(e.prev=e.next){case 0:if(t.countryList){e.next=7;break}return t.loading=!0,e.next=4,t.getById({params:null,id:"countries",api:"resource"});case 4:data=e.sent,t.setCountryList(data),t.loading=!1;case 7:if(t.base64SiteLogo){e.next=10;break}return e.next=10,t.setConvertImage(null===(n=t.siteSetting)||void 0===n?void 0:n.email_logo);case 10:case"end":return e.stop()}}),e)})))()}},m=n(16),component=Object(m.a)(f,(function(){var t=this,e=t.$createElement,n=t._self._c||e;return n("div",[n("client-only",[n("vue-html2pdf",{ref:"html2Pdf",attrs:{"show-layout":!1,"float-layout":!0,"enable-download":!0,"preview-modal":!1,"paginate-elements-by-height":1400,filename:"Invoice-"+t.order.order,"pdf-quality":3,"manual-pagination":!1,"pdf-format":"a4","pdf-orientation":"portrait"}},[n("div",{staticClass:"order-wrapper invoice-wrapper f-9",attrs:{slot:"pdf-content"},slot:"pdf-content"},[n("div",{staticClass:"sided p-30 align-start"},[n("div",{staticClass:"mx-w-350x"},[n("img",{staticClass:"h-25x w-auto mb-10",attrs:{src:"data:image/png;base64,"+t.base64SiteLogo}}),t._v(" "),n("h4",{staticClass:"fw-600 mtb-5"},[t._v("\n              "+t._s(t.getDataFromObject(t.storeData,"name"))+"\n            ")]),t._v(" "),n("p",[t._v(" "+t._s(t.generateAddress(t.setting)))]),t._v(" "),n("p",[t._v("Phone: "+t._s(t.getDataFromObject(t.setting,"phone",t.$t("prod.na"))))])]),t._v(" "),n("div",[n("h3",{staticClass:"mb-5 bold"},[t._v(t._s(t.$t("setting.inv")))]),t._v(" "),n("ul",{staticClass:"mx-w-400x order-details lh-2"},[n("li",[n("span",[t._v(t._s(t.$t("fSale.orderUp")))]),t._v(" "),n("span",[t._v("#"+t._s(t.order.order))])]),t._v(" "),n("li",[n("span",[t._v(t._s(t.$t("setting.od")))]),t._v(" "),n("span",[t._v(t._s(t.order.created))])]),t._v(" "),t.isVendor?t._e():n("li",[n("span",[t._v(t._s(t.$t("setting.oa")))]),t._v(" "),n("span",[t._v(t._s(t.priceFormatting(t.totalPrice)))])])])])]),t._v(" "),n("div",{staticClass:"plr-30"},[n("table",{staticClass:"mn-w-600x no-bg mt-0 shipping-table"},[n("tr",{staticClass:"lite-bold"},[n("th",[t._v(t._s(t.$t("fSale.shipTo")))]),t._v(" "),n("th",[t._v(t._s(t.$t("setting.om")))])]),t._v(" "),n("tr",[n("td",{staticClass:"w-50"},[n("div",{staticClass:"mx-w-300x"},[n("b",[t._v(t._s(t.getDataFromObject(t.order,"address.name",t.$t("prod.na"))))]),t._v(" "),t.getDataFromObject(t.order,"address")?n("span",{staticClass:"block"},[t._v("\n                    "+t._s(t.generateAddress(t.getDataFromObject(t.order,"address"))))]):t._e(),t._v(" "),n("span",{staticClass:"block"},[t._v("Email: "+t._s(t.userEmail))]),t._v(" "),n("span",{staticClass:"block"},[t._v("Phone: "+t._s(t.getDataFromObject(t.order,"address.phone",t.$t("prod.na"))))])])]),t._v(" "),n("td",{staticClass:"w-50"},[t._v(t._s(t.paymentTypes[t.order.order_method]))])])]),t._v(" "),n("table",{staticClass:"mn-w-600x no-bg"},[n("tr",{staticClass:"lite-bold"},[n("th",[t._v(t._s(t.$t("index.title")))]),t._v(" "),n("th",[t._v(t._s(t.$t("fSale.dFee")))]),t._v(" "),n("th",[t._v(t._s(t.$t("fSale.qty")))]),t._v(" "),n("th",[t._v(t._s(t.$t("brand.price")))]),t._v(" "),n("th",[t._v(t._s(t.$t("fSale.total")))])]),t._v(" "),t._l(t.order.ordered_products,(function(e,r){return n("tr",{key:r},[n("td",{staticStyle:{"min-width":"250px"}},[t._v("\n                "+t._s(e.product.title)+"\n                "),n("span",{staticStyle:{display:"block"}},[t._l(t.generatingAttribute(e),(function(i){return n("span",{staticClass:"mr-15"},[n("b",{staticClass:"mr-10"},[t._v(t._s(i[0])+":")]),t._v(" "+t._s(i[1])+"\n                  ")])})),t._v(" "),e.updated_inventory.sku?n("span",{staticClass:"block mt-5"},[t._v("\n                    SKU: "+t._s(e.updated_inventory.sku)+"\n                  ")]):t._e()],2)]),t._v(" "),n("td",[t._v(t._s(t.priceFormatting(e.shipping_price)))]),t._v(" "),n("td",[t._v(t._s(e.quantity))]),t._v(" "),n("td",[t._v(t._s(t.priceFormatting(e.selling)))]),t._v(" "),n("td",[t._v(t._s(t.priceFormatting(e.selling*e.quantity)))])])}))],2),t._v(" "),t.isVendor?t._e():n("div",{staticClass:"dply-felx j-right"},[n("ul",{staticClass:"mx-w-400x order-details order-price"},[n("li",[n("span",[t._v(t._s(t.$t("fSale.sTotal")))]),t._v(" "),n("span",[t._v(t._s(t.priceFormatting(t.subtotalPrice)))])]),t._v(" "),n("li",[n("span",[t._v(t._s(t.$t("fSale.sCost")))]),t._v(" "),n("span",[t._v(t._s(t.priceFormatting(t.shippingPrice)))])]),t._v(" "),t.bundleOffer?n("li",[n("span",[t._v(t._s(t.$t("fSale.bOffer")))]),t._v(" "),n("span",[t._v(t._s(t.priceFormatting(t.bundleOffer)))])]):t._e(),t._v(" "),t.voucherPrice?n("li",[n("span",[t._v(t._s(t.$t("fSale.voucher")))]),t._v(" "),n("span",[t._v(t._s(t.priceFormatting(t.voucherPrice)))])]):t._e(),t._v(" "),t.taxPrice?n("li",[n("span",[t._v(t._s(t.$t("fSale.tax")))]),t._v(" "),n("span",[t._v(t._s(t.priceFormatting(t.taxPrice)))])]):t._e(),t._v(" "),n("li",[n("span",[t._v(t._s(t.$t("fSale.total")))]),t._v(" "),n("span",[t._v(t._s(t.priceFormatting(t.totalPrice)))])])])]),t._v(" "),n("table",{staticClass:"w-50 no-bg mt-0 shipping-table single-table"},[n("tr",{staticClass:"lite-bold"},[n("th",[t._v(t._s(t.$t("setting.notes")))])]),t._v(" "),n("tr",[n("td",{staticClass:"w-50"},[n("p",{staticClass:"semi-bold italic mb-10"},[t._v("\n                  "+t._s(t.$t("setting.query"))+"\n                ")]),t._v(" "),n("p",[t._v("\n                  "+t._s(t.$t("setting.query"))+"\n                  "+t._s(t.$t("setting.regard"))+": "+t._s(t.getDataFromObject(t.setting,"phone",t.$t("prod.na")))+"\n                ")])])])])])])])],1),t._v(" "),n("div",{staticClass:"dply-felx j-right mt-20 mt-sm-15"},[n("button",{staticClass:"plr-20 dply-felx outline-btn",on:{click:function(e){return e.preventDefault(),t.generatingPdf.apply(null,arguments)}}},[n("i",{staticClass:"icon print-icon mr-10"}),t._v("\n      "+t._s(t.$t("setting.pi"))+"\n    ")])])],1)}),[],!1,null,null,null);e.default=component.exports}}]);