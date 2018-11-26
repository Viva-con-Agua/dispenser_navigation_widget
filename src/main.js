// The Vue build version to load with the `import` command
// (runtime-only or standalone) has been set in webpack.base.conf with an alias.
import Vue from 'vue'
import WidgetTopNavigation from 'vca-widget-navigation'

Vue.use(WidgetTopNavigation)

/* eslint-disable no-new */
new Vue({
  el: '#navigation-widget',
  components: { WidgetTopNavigation },
  template: '<WidgetTopNavigation />'
})
