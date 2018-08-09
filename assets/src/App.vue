<template>
  <div id="landing">
    <h1>{{ msg }}</h1>
    <h2>정빈이가 얼마나 밥을 먹었는지 한번 확인해볼까?</h2>
  </div>
</template>

<script>
export default {
  name: "landing",
  data () {
    console.log(this.$parent.eos)
    return {
      msg: "",
      user: ""
    }
  },
  created () {
    this.msg = "안녕 내사랑?!"
  }
}
</script>

<style lang="scss">
#app {
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
h1, h2 {
  font-weight: normal;
}
ul {
  list-style-type: none;
  padding: 0;
}
li {
  display: inline-block;
  margin: 0 10px;
}
a {
  color: #42b983;
}
</style>