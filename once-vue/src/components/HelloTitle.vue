<template>
  <div class="hello">
    <h1>{{ helloMsg }}</h1>
  </div>
</template>

<script>
import api from "@/api";

export default {
  name: "HelloTitle",
  props: ["initialMsg"],
  data: function() {
    return {
      helloMsg: this.initialMsg
    };
  },
  watch: {
    helloMsg: function(newMsg) {
      this.helloMsg = newMsg;
    }
  },
  methods: {
    getHelloTitle: function() {
      var vm = this;
      api.getHello().then(response => {
        if (response.data.data.body) {
          vm.helloMsg = response.data.data.body;
        } else {
          vm.helloMsg = "No data from the AJAX call";
        }
      });
    }
  },
  created: function() {
    this.getHelloTitle();
  }
};
</script>
