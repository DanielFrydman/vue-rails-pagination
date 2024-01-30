<!-- src/components/Card.vue -->
<template>
  <div class="bg-white max-w-sm rounded overflow-hidden shadow-lg m-4 w-64 h-54">
    <div class="px-6 py-4">
      <div class="font-bold text-xl mb-2">{{ user.first_name }} {{ user.last_name }}</div>
      <div class="font-bold">Birthday: <p class="text-gray-700 text-base">{{ formatDate(user.birthday) }}</p>
      </div>
      <div class="font-bold">Mother name: <p class="text-gray-700 text-base">{{ user.mother_first_name }}</p>
      </div>
      <div class="font-bold">Father name: <p class="text-gray-700 text-base">{{ user.father_first_name }}</p>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  props: {
    user: {
      type: Object,
      required: true,
    },
  },
  methods: {
    formatDate(date) {
      const changedDate = this.user.birthday.replace(/(..)\/(..)\/(....) (..):(..)/, '$3-$2-$1 $4:$5');
      var date = new Date(changedDate);
      const day = date.getDate() + 1;
      const month = date.toLocaleString('default', { month: 'long' });
      const year = date.getFullYear();
      return `${day} of ${month} of ${year}`;
    }
  }
};
</script>
