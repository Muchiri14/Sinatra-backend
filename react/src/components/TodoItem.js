
   
import React from "react";

function TodoItem({ category, title, todoId, onDeleteTodo }) {

    function handleClick() {
        fetch(`http://127.0.0.1:9393/todos ${todoId}`, {
            method: "DELETE"
        });
        onDeleteTodo(todoId)}

    return (
        <div className="todo">
            <div className={"todo-cat"}>{category}</div>
            <div className={"todo-title"}>{title}</div>
            <button className="delete-button" onClick={handleClick}>X</button>
        </div>
    )
}

export default TodoItem;