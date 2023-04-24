import { TodoType } from "@/types/ToDoType"

const todos: TodoType[] = [
  { id: 1, title: "Todo 1", contents: "Todo 1 contents" },
  { id: 2, title: "Todo 2", contents: "Todo 2 contents" },
  { id: 3, title: "Todo 3", contents: "Todo 3 contents" },
];

export default defineEventHandler(async(event) => {
  const todoData = await todos
  return {
    todos: todoData
  }
})