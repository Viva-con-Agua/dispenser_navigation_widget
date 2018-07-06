<template>
    <div class="navbar navbar-vca navbar-default navbar-fixed-top"> <!-- navbar-default -->
      <div class="container">
        <div class="navbar-header">
          <a class="navbar-brand" href="@routes.Application.index">
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
		<li v-for="entry in entrys">
			<a v-bind:href="entry.entryURL">{{ entry.entryLable }}</a>
		</li>
	</ul>
 </div>
      </div>
</div>
</template>

<script>
export default {
  name: 'Navigation',
  data () {
    return {
      entrys: [
        {
          entryURL: 'test',
					entryLable: 'test'
        }
      ]
    }
  }
}
</script>
