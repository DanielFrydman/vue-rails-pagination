<template>
  <div class="relative flex flex-col mt-6 text-gray-700 bg-white shadow-md bg-clip-border rounded-xl w-96 ml-12 mr-12">
    <div class="flex items-center justify-between">
      <button @click="prevPage" :disabled="currentPage === 1">&lt; Previous</button>
      <span>
        Page
        <input v-model="page" type="number" min="1" :max="totalPages" @input="goToPage">
        of {{ totalPages }}
      </span>
      <button @click="nextPage" :disabled="currentPage === totalPages">Next &gt;</button>
    </div>
  </div>
</template>

<script>
export default {
  props: {
    currentPage: Number,
    totalPages: Number
  },
  data() {
    return {
      page: this.currentPage
    }
  },
  watch: {
    currentPage(newPage) {
      this.page = newPage;
    }
  },
  methods: {
    prevPage() {
      this.$emit('pageChange', this.currentPage - 1);
    },
    nextPage() {
      this.$emit('pageChange', this.currentPage + 1);
    },
    goToPage() {
      if (this.page >= 1 && this.page <= this.totalPages) {
        this.$emit('pageChange', parseInt(this.page));
      }
    },
  },
};
</script>

<style scoped></style>
