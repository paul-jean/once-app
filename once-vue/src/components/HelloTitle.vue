<template>
  <div class="hello">
    <h1>{{ msg }}</h1>
  </div>
</template>

<script>
import api from "@/api";

export default {
  name: "HelloTitle",
  props: ["initialHello"],
  data: function() {
    return {
      initialHello: this.initialHello,
      msg: this.initialHello
    };
  },
  watch: {
    msg: function(newMsg) {
      this.msg = newMsg;
    }
  },
  methods: {
    getHelloTitle: function() {
      var vm = this;
      api.getHello().then(response => {
        if (response.data) {
          vm.msg = response.data;
        } else {
          vm.msg = "No data from the AJAX call";
        }
      });
    }
  },
  created: function() {
    this.getHelloTitle();
  }
};
</script>
