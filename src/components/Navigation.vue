<template>
    <div class="navbar navbar-vca navbar-default navbar-fixed-top"> <!-- navbar-default -->
      <div class="container">
        <div class="navbar-header">
          <a class="navbar-brand" href="/drops">
						<img src="images/drop_small.png"/>
            <div>
              <span class="bold">Pool²</span>
              <span>Vica con Agua</span>
            </div>
          </a>
          <button class="navbar-toggle" type="button" data-toggle="collapse" data-target="#navbar-main">
            <span class="sr-only">navbar.toogle.nav</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
        </div>
			<div class="navbar-collapse collapse" id="navbar-main">
	<ul class="nav navbar-nav navbar-right">
		<li v-for="entry in entrys" :key="entry.id">
			<a v-bind:href="entry.url">{{ entry.lable }}</a>
		</li>
	</ul>
  <ul v-if="errors && errors.length">
    <li v-for="error of errors" :key="error.id">
      {{error.message}}
    </li>
  </ul>
 </div>
      </div>
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
    axios.get(`http://localhost/dispenser/navigation/default`, {withCredentials: true})
      .then(response => {
        this.entrys = response.data
      })
      .catch(e => {
        this.errors.push(e)
      })
  }
}
</script>
