<script setup lang="ts">
// useFetchの戻り値はリアクティブ
const { data,pending } = await useFetch("/api/todos", { lazy: true })
</script>
<template>
  <div>
    <h1>Todos</h1>
    <div v-if="pending">
      読み込み中・・・
    </div>
    <div v-else>
      <ul v-if="data">
        <li v-for="todo in data.todos" :key="todo.id">
          {{ todo.title }} - {{ todo.contents }}
        </li>
      </ul>
    <p v-else>TODOはありません</p> 
    </div>
  </div>
</template>