<template>
  <div class="flex flex-wrap justify-center">
    <UserCard v-for="user in users" :key="user.id" :user="user" />
  </div>
  <div class="flex flex-wrap justify-center mb-10">
    <Pagination :currentPage="currentPage" :totalPages="totalPages" @pageChange="fetchPaginatedDta" />
  </div>
</template>

<script>
import { Pagination, UserCard } from '../components/index';

export default {
  components: {
    Pagination, UserCard
  },
  data() {
    return {
      currentPage: 1,
      totalPages: null,
      users: []
    };
  },
  created() {
    this.fetchPaginatedDta()
  },
  methods: {
    async fetchPaginatedDta(pageNumber) {
      try {
        pageNumber = pageNumber !== undefined ? pageNumber : '1';
        const { data: { pagy, records } } = await this.$apiClient.get(`/users?page=${pageNumber}`, { withCredentials: true });
        this.currentPage = pagy.page;
        this.totalPages = pagy.pages;
        this.users = records
      } catch (e) {
        console.log(e);
      }
    },
  }
};
</script>

<style scoped></style>
