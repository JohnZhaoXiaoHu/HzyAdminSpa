<template>
  <div class="p-15">
    <div class="m--15">
      <a-card style="width: 100%" class="mb-20">
        <a-row>
          <a-col :xs="24" :sm="24" :md="8" :lg="8" :xl="8" class="mt-20">
            <a-row type="flex">
              <a-col :span="8" :order="1">
                <a-badge :count="666">
                  <a-avatar :size="100" :src="imgPath" />
                </a-badge>
              </a-col>
              <a-col :span="16" :order="2">
                <div class="fs-20">
                  <a target="_black" href="https://gitee.com/hzy6" class="text-cyan"
                    >HZY</a
                  >
                </div>
                <div class="fs-20">
                  <a
                    target="_black"
                    href="https://gitee.com/hzy6/hzy-admin-spa-ui"
                    class="text-blue"
                    >源码</a
                  >
                </div>
                <div class="fs-20">
                  <a
                    target="_black"
                    href="https://2x.antdv.com/docs/vue/introduce-cn/"
                    class="text-danger"
                    >组件官网：Ant Design Vue 2.0</a
                  >
                </div>
              </a-col>
            </a-row>
          </a-col>
          <a-col :xs="24" :sm="24" :md="16" :lg="16" :xl="16" class="mt-20">
            <a-row :gutter="20" class="mt-20">
              <a-col :span="8" class="text-center">
                <a-statistic title="Stars" :value="558">
                  <template v-slot:suffix>
                    <AppIcons iconName="StarOutlined" />
                  </template>
                </a-statistic>
              </a-col>
              <a-col :span="8" class="text-center">
                <a-statistic title="Watch" :value="154">
                  <template v-slot:suffix>
                    <AppIcons iconName="EyeOutlined" />
                  </template>
                </a-statistic>
              </a-col>
              <a-col :span="8" class="text-center">
                <a-statistic title="Fork" :value="179">
                  <template v-slot:suffix>
                    <AppIcons iconName="BranchesOutlined" />
                  </template>
                </a-statistic>
              </a-col>
            </a-row>
          </a-col>
        </a-row>
      </a-card>
    </div>

    <a-row>
      <a-col :span="24">
        <a-card class="mt-20">
          <a-row>
            <a-col :xs="24" :sm="24" :md="12" :lg="12" :xl="12">
              <a-card-grid style="width: 100%; textalign: 'center'">
                <a-statistic-countdown
                  title="Countdown"
                  :value="deadline"
                  @finish="onFinish"
                  style="margin-right: 50px"
                />
              </a-card-grid>
            </a-col>
            <a-col :xs="24" :sm="24" :md="12" :lg="12" :xl="12">
              <a-card-grid style="width: 100%; textalign: 'center'">
                <a-statistic-countdown
                  title="Million Seconds"
                  :value="deadline"
                  format="HH:mm:ss:SSS"
                  style="margin-right: 50px"
                />
              </a-card-grid>
            </a-col>
            <a-col :xs="24" :sm="24" :md="12" :lg="12" :xl="12">
              <a-card-grid style="width: 100%; textalign: 'center'">
                <a-statistic-countdown
                  title="Day Level"
                  :value="deadline"
                  format="D 天 H 时 m 分 s 秒"
                />
              </a-card-grid>
            </a-col>
            <a-col :xs="24" :sm="24" :md="12" :lg="12" :xl="12">
              <a-card-grid style="width: 100%; textalign: 'center'">
                <a-statistic
                  title="Feedback"
                  :value="11.28"
                  :precision="2"
                  suffix="%"
                  :valueStyle="{ color: '#3f8600' }"
                  style="margin-right: 50px"
                >
                  <template v-slot:prefix>
                    <AppIcons iconName="ArrowUpOutlined" />
                  </template>
                </a-statistic>
              </a-card-grid>
            </a-col>
          </a-row>
          <a-card-grid style="width: 25%; textalign: 'center'">Content</a-card-grid>
          <a-card-grid style="width: 25%; textalign: 'center'">Content</a-card-grid>
          <a-card-grid style="width: 25%; textalign: 'center'">Content</a-card-grid>
          <a-card-grid style="width: 25%; textalign: 'center'">Content</a-card-grid>
        </a-card>
      </a-col>
    </a-row>

    <a-row class="mt-20">
      <a-col :span="24">
        <a-card hoverable>
          <a-row :gutter="20" class="mt-20">
            <a-col :xs="24" :sm="24" :md="12" :lg="12" :xl="12">
              <a-progress
                type="circle"
                :percent="75"
                :format="(percent) => `${percent} Days`"
                class="mr-15"
              />
              <a-progress
                type="circle"
                :percent="100"
                :format="() => 'Done'"
                class="mr-15"
              />
              <a-progress type="circle" :percent="75" class="mr-15">
                <template #format="percent">
                  <span style="color: red">{{ percent }}</span>
                </template>
              </a-progress>
            </a-col>
            <a-col :xs="24" :sm="24" :md="12" :lg="12" :xl="12">
              <a-progress :percent="30" />
              <a-progress :percent="50" status="active" />
              <a-progress :percent="70" status="exception" />
              <a-progress :percent="100" />
              <a-progress :percent="50" :showInfo="false" />
            </a-col>
          </a-row>
        </a-card>
      </a-col>
    </a-row>

    <a-row :gutter="20" class="mt-20">
      <a-col :xs="24" :sm="24" :md="24" :lg="24" :xl="24">
        <a-card hoverable>
          <a-timeline mode="alternate">
            <a-timeline-item>Create a services site 2015-09-01</a-timeline-item>
            <a-timeline-item color="green"
              >Solve initial network problems 2015-09-01</a-timeline-item
            >
            <a-timeline-item>
              <template #dot>
                <AppIcons iconName="ClockCircleOutlined" style="font-size: 16px" />
              </template>
              Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium
              doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore
              veritatis et quasi architecto beatae vitae dicta sunt explicabo.
            </a-timeline-item>
            <a-timeline-item color="red"
              >Network problems being solved 2015-09-01</a-timeline-item
            >
            <a-timeline-item>Create a services site 2015-09-01</a-timeline-item>
            <a-timeline-item>
              <template #dot>
                <AppIcons iconName="ClockCircleOutlined" style="font-size: 16px" />
              </template>
              Technical testing 2015-09-01
            </a-timeline-item>
          </a-timeline>
        </a-card>
      </a-col>
    </a-row>

    <a-row :gutter="20">
      <a-col
        :xs="24"
        :sm="8"
        :md="8"
        :lg="6"
        :xl="6"
        class="mt-20"
        v-for="(item, index) in 8"
        :key="index"
      >
        <a-card hoverable>
          <template #cover>
            <img
              alt="example"
              src="https://gw.alipayobjects.com/zos/rmsportal/JiqGstEfoWAOHiTxclqi.png"
            />
          </template>
          <template class="ant-card-actions" #actions>
            <AppIcons iconName="setting-outlined" key="setting" />
            <AppIcons iconName="edit-outlined" key="edit" />
            <AppIcons iconName="ellipsis-outlined" key="ellipsis" />
          </template>
          <a-card-meta title="Card title" description="This is the description">
            <template #avatar>
              <a-avatar
                src="https://zos.alipayobjects.com/rmsportal/ODTLcjxAfvqbxHnVXCYX.png"
              />
            </template>
          </a-card-meta>
        </a-card>
      </a-col>
    </a-row>
  </div>
</template>
<script>
import { defineComponent, reactive, toRefs } from "vue";
import AppIcons from "@/components/appIcons.vue";
import hzyImg from "@/assets/hzy.jpg";

export default defineComponent({
  name: "home",
  components: { AppIcons },
  setup() {
    const state = reactive({
      imgPath: hzyImg,
      deadline: Date.now() + 1000 * 60 * 60 * 24 * 2 + 1000 * 30,
    });

    const methods = {
      onFinish() {
        console.log("over");
      },
    };

    return {
      ...toRefs(state),
      ...methods,
    };
  },
});
</script>
