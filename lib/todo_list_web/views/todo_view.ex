defmodule TodoListWeb.TodoView do
  use TodoListWeb, :view
  alias TodoListWeb.TodoView

  def render("index.json", %{todos: todos}) do
    %{data: render_many(todos, TodoView, "todo.json")}
  end

  def render("show.json", %{todo: todo}) do
    %{data: render_one(todo, TodoView, "todo.json")}
  end

  def render("todo.json", %{todo: todo}) do
    %{
      id: todo.id,
      content: todo.content,
      is_completed: todo.is_completed
    }
  end
end
