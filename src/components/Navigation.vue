<template>
  <div>
  <el-menu
    :default-active="activeIndex2"
    class="el-menu-demo"
    mode="horizontal"
    @select="handleSelect"
    background-color="#545c64"
    text-color="#fff"
    active-text-color="#ffd04b">
    <template v-for="entry in entrys">
      <el-menu-item index="entry.id">
        <a v-bind:href="entry.url">{{ entry.lable }}</a>
      </el-menu-item>
    </template>
  </el-menu>
  <ul v-if="errors && errors.length">
    <li v-for="error of errors" :key="error.id">
      {{error.message}}
    </li>
  </ul>
 </div>
</template>

<script>
import axios from 'axios'

export default {
  name: 'Navigation',
  data () {
    return {
      entrys: [],
      errors: []
    }
  },
  created () {
    axios.get(`http://localhost/dispenser/navigation/default`)
      .then(response => {
        this.entrys = response.data
      })
      .catch(e => {
        this.errors.push(e)
      })
  }
}
</script>
