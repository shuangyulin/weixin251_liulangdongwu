(global["webpackJsonp"]=global["webpackJsonp"]||[]).push([["pages/index/index"],{"2a6c":function(n,t,i){"use strict";(function(n){Object.defineProperty(t,"__esModule",{value:!0}),t.default=void 0;var e=a(i("a34a"));function a(n){return n&&n.__esModule?n:{default:n}}function r(n,t){var i;if("undefined"===typeof Symbol||null==n[Symbol.iterator]){if(Array.isArray(n)||(i=o(n))||t&&n&&"number"===typeof n.length){i&&(n=i);var e=0,a=function(){};return{s:a,n:function(){return e>=n.length?{done:!0}:{done:!1,value:n[e++]}},e:function(n){throw n},f:a}}throw new TypeError("Invalid attempt to iterate non-iterable instance.\nIn order to be iterable, non-array objects must have a [Symbol.iterator]() method.")}var r,u=!0,l=!1;return{s:function(){i=n[Symbol.iterator]()},n:function(){var n=i.next();return u=n.done,n},e:function(n){l=!0,r=n},f:function(){try{u||null==i.return||i.return()}finally{if(l)throw r}}}}function o(n,t){if(n){if("string"===typeof n)return u(n,t);var i=Object.prototype.toString.call(n).slice(8,-1);return"Object"===i&&n.constructor&&(i=n.constructor.name),"Map"===i||"Set"===i?Array.from(n):"Arguments"===i||/^(?:Ui|I)nt(?:8|16|32)(?:Clamped)?Array$/.test(i)?u(n,t):void 0}}function u(n,t){(null==t||t>n.length)&&(t=n.length);for(var i=0,e=new Array(t);i<t;i++)e[i]=n[i];return e}function l(n,t,i,e,a,r,o){try{var u=n[r](o),l=u.value}catch(s){return void i(s)}u.done?t(l):Promise.resolve(l).then(e,a)}function s(n){return function(){var t=this,i=arguments;return new Promise((function(e,a){var r=n.apply(t,i);function o(n){l(r,e,a,o,u,"next",n)}function u(n){l(r,e,a,o,u,"throw",n)}o(void 0)}))}}i("b316");var c=function(){Promise.all([i.e("common/vendor"),i.e("components/uni-ui/lib/uni-icons/uni-icons")]).then(function(){return resolve(i("e17f"))}.bind(null,i)).catch(i.oe)},f={components:{uniIcons:c},data:function(){return{autoplaySwiper:!1,intervalSwiper:5e3,news:[],swiperList:[],homenewslist:[],homexinxifabulistA:[],homexinxifabulistB:[],homexinxifabulistC:[],homexinxifabulistD:[]}},computed:{baseUrl:function(){return this.$base.url}},onShow:function(){var n=this;return s(e.default.mark((function t(){var i,a,o,u,l;return e.default.wrap((function(t){while(1)switch(t.prev=t.next){case 0:return i=[],t.next=3,n.$api.page("config",{page:1,limit:5});case 3:a=t.sent,o=r(a.data.list);try{for(o.s();!(u=o.n()).done;)l=u.value,l.name.indexOf("picture")>=0&&l.value&&""!=l.value&&null!=l.value&&i.push({img:l.value})}catch(e){o.e(e)}finally{o.f()}return i&&(n.swiperList=i),t.next=9,n.$api.list("xinxifabu",{page:1,limit:6,xinxifabuTypes:1});case 9:return a=t.sent,n.homexinxifabulistA=a.data.list,t.next=13,n.$api.list("xinxifabu",{page:1,limit:6,xinxifabuTypes:2});case 13:return a=t.sent,n.homexinxifabulistB=a.data.list,t.next=17,n.$api.list("xinxifabu",{page:1,limit:6,xinxifabuTypes:3});case 17:return a=t.sent,n.homexinxifabulistC=a.data.list,t.next=21,n.$api.list("xinxifabu",{page:1,limit:6,xinxifabuTypes:4});case 21:return a=t.sent,n.homexinxifabulistD=a.data.list,t.next=25,n.$api.list("news",{page:1,limit:6});case 25:a=t.sent,n.homenewslist=a.data.list;case 27:case"end":return t.stop()}}),t)})))()},methods:{onSwiperTap:function(n){},onNewsDetailTap:function(n){this.$utils.jump("../news-detail/news-detail?id=".concat(n))},onDetailTap:function(n,t){this.$utils.jump("../".concat(n,"/detail?id=").concat(t))},onPageTap:function(t){n.navigateTo({url:"../".concat(t,"/list"),fail:function(){n.switchTab({url:"../".concat(t,"/list")})}})}}};t.default=f}).call(this,i("543d")["default"])},"2ef8":function(n,t,i){"use strict";i.r(t);var e=i("81e6"),a=i("bb49");for(var r in a)"default"!==r&&function(n){i.d(t,n,(function(){return a[n]}))}(r);i("52c9");var o,u=i("f0c5"),l=Object(u["a"])(a["default"],e["b"],e["c"],!1,null,null,null,!1,e["a"],o);t["default"]=l.exports},"52c9":function(n,t,i){"use strict";var e=i("9e08"),a=i.n(e);a.a},"81e6":function(n,t,i){"use strict";var e;i.d(t,"b",(function(){return a})),i.d(t,"c",(function(){return r})),i.d(t,"a",(function(){return e}));var a=function(){var n=this,t=n.$createElement,i=(n._self._c,n.__map(n.homexinxifabulistA,(function(t,i){var e=n.__get_orig(t),a=t.xinxifabuPhoto?t.xinxifabuPhoto.split(","):null;return{$orig:e,g0:a}}))),e=n.__map(n.homexinxifabulistB,(function(t,i){var e=n.__get_orig(t),a=t.xinxifabuPhoto?t.xinxifabuPhoto.split(","):null;return{$orig:e,g1:a}})),a=n.__map(n.homexinxifabulistC,(function(t,i){var e=n.__get_orig(t),a=t.xinxifabuPhoto?t.xinxifabuPhoto.split(","):null;return{$orig:e,g2:a}})),r=n.__map(n.homexinxifabulistD,(function(t,i){var e=n.__get_orig(t),a=t.xinxifabuPhoto?t.xinxifabuPhoto.split(","):null;return{$orig:e,g3:a}})),o=null,u=n.__map(n.homenewslist,(function(t,i){var e=n.__get_orig(t),a=t.newsPhoto?t.newsPhoto.split(","):null;return{$orig:e,g5:a}}));n.$mp.data=Object.assign({},{$root:{l0:i,l1:e,l2:a,l3:r,l4:o,l5:u}})},r=[]},"9e08":function(n,t,i){},a162:function(n,t,i){"use strict";(function(n){i("2344");e(i("66fd"));var t=e(i("2ef8"));function e(n){return n&&n.__esModule?n:{default:n}}wx.__webpack_require_UNI_MP_PLUGIN__=i,n(t.default)}).call(this,i("543d")["createPage"])},bb49:function(n,t,i){"use strict";i.r(t);var e=i("2a6c"),a=i.n(e);for(var r in e)"default"!==r&&function(n){i.d(t,n,(function(){return e[n]}))}(r);t["default"]=a.a}},[["a162","common/runtime","common/vendor"]]]);