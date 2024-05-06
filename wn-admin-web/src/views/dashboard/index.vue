<template>
  <div class="dashboard-container">
    <div class="dashboard-text">头像:
      <img :src="avatar+'?imageView2/1/w/80/h/80'" style="width: 200px;height: 200px;">
    </div>
    <div class="dashboard-text">用户名: {{ name }}</div>
  </div>
</template>

<script>
import { mapGetters } from 'vuex'

export default {
  name: 'Dashboard',
  computed: {
    ...mapGetters([
      'name',
      'avatar'
    ])
  }
}
</script>

<style lang="scss" scoped>
.dashboard {
  &-container {
    margin: 30px;
  }
  &-text {
    font-size: 30px;
    line-height: 46px;
  }
}
</style>
