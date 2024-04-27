<template>
  <main>
    <section>
      <h2>Users</h2>
      <div v-for="user in users" :key="user.id">
        <p>{{ user.name }}</p>
      </div>
    </section>
  </main>
</template>

<script>
export default {
  data: () => ({
    users: [
      { id: 1, name: 'Luke Skywalker' },
      { id: 2, name: 'Leia Organa' },
      { id: 3, name: 'Han Solo' }
    ]
  }),
  // async fetch() {
  //   this.users = await this.$axios.$get('users')
  // }
}
</script>