<template>
  <div class="p-15">
    <a-spin v-if="loading" />
    <iframe src="https://2x.antdv.com/components/icon-cn/" frameBorder="0" id="iframe_antd_vue" v-show="!loading"></iframe>
  </div>
</template>

<script>
import { defineComponent, onMounted, ref } from "vue";
export default defineComponent({
  name: "antd_vue_components",
  setup() {
    const loading = ref(true);

    onMounted(() => {
      let iframe = document.getElementById("iframe_antd_vue");

      if (iframe != null) {
        // 处理兼容行问题
        if (Object.prototype.hasOwnProperty.call(iframe, "attachEvent")) {
          iframe.addEventListener("onload", () => {
            // iframe加载完毕以后执行操作
            loading.value = false;
          });
        } else {
          iframe.onload = function() {
            // iframe加载完毕以后执行操作
            loading.value = false;
          };
        }
      }
    });

    return {
      loading,
    };
  },
});
</script>

<style lang="less" scoped>
iframe {
  width: 100%;
  height: calc(100vh - 200px);
}
</style>
