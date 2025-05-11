<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ru">
    <head>
        <title>Список книг</title>
        <meta charset="UTF-8">
    </head>
    <body>
        <h2>Добавить книгу</h2>
        <form id="bookForm">
            <input type="text" name="title" placeholder="Название" required>
            <input type="text" name="author" placeholder="Автор" required>
            <input type="number" name="year" placeholder="Год" required>
            <input type="text" name="genre" placeholder="Жанр" required>
            <input type="text" name="isbn" placeholder="ISBN" required>
            <button type="submit">Добавить</button>
        </form>

        <h2>Список книг</h2>
        <div id="bookList"></div>

        <script>
            document.getElementById("bookForm").addEventListener("submit", async (e) => {
                e.preventDefault();
                const formData = new FormData(e.target);
                const book = {
                    title: formData.get("title"),
                    author: formData.get("author"),
                    year: parseInt(formData.get("year")),
                    genre: formData.get("genre"),
                    isbn: formData.get("isbn")
                };

                try {
                    const response = await fetch('http://localhost:8080/books', {
                        method: 'POST',
                        headers: { 'Content-Type': 'application/json' },
                        body: JSON.stringify(book)
                    });
                    if (!response.ok) throw new Error('Ошибка сохранения');
                    await loadBooks();
                } catch (error) {
                    alert(error.message);
                }
            });

            async function loadBooks() {
                try {
                    const response = await fetch('http://localhost:8080/books');
                    if (!response.ok) throw new Error(`Ошибка: ${response.status}`);
                    const books = await response.json();
                    console.log("Данные от сервера:", books);

                    const list = document.getElementById('bookList');
                    list.innerHTML = books.map(book => `
                          <div style="border: 1px solid #ccc; margin: 10px; padding: 10px;">
                            <h3>` + book.title + `</h3>
                            <p>Автор:` + book.author + `</p>
                            <p>Год: ` + book.year + `</p>
                            <p>Жанр: ` + book.genre + `</p>
                            <p>ISBN: ` + book.isbn + `</p>
                          </div>
                    `).join('');

                } catch (error) {
                    console.error("Ошибка:", error);
                    alert("Не удалось загрузить книги.");
                }
            }
            loadBooks();
        </script>
    </body>
</html>