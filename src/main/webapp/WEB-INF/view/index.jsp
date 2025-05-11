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
            <input type="hidden" name="book_id" id="bookId">
            <input type="text" name="title" placeholder="Название" required>
            <input type="text" name="author" placeholder="Автор" required>
            <input type="number" name="year" placeholder="Год" required>
            <input type="text" name="genre" placeholder="Жанр" required>
            <input type="text" name="isbn" placeholder="ISBN" required>
            <button type="submit" id="addBtn" name="addBtn">Добавить</button>
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
                        headers: {'Content-Type': 'application/json'},
                        body: JSON.stringify(book)
                    });
                    if (!response.ok) throw new Error('Ошибка сохранения');
                    await loadBooks();
                } catch (error) {
                    alert(error.message);
                }
            });

            document.getElementById('bookList').addEventListener('click', async (e) => {
                if (e.target.tagName === 'BUTTON' && e.target.classList.contains('delete-btn')) {
                    const bookId = e.target.closest('[data-book-id]').querySelector('input[name="book_id"]').value;
                    if (confirm('Вы уверены, что хотите удалить книгу?')) {
                        try {
                            const response = await fetch(`http://localhost:8080/books`, {
                                method: 'DELETE',
                                headers: { 'Content-Type': 'application/json' },
                                body: JSON.stringify(bookId)
                            });

                            if (!response.ok) throw new Error('Ошибка удаления');
                            await loadBooks();
                        } catch (error) {
                            alert(error.message);
                        }
                    }
                }
            });

            document.getElementById('bookList').addEventListener('click', async (e) => {
                if (e.target.tagName === 'BUTTON' && e.target.classList.contains('edit-btn')) {
                    const bookElement = e.target.closest('[data-book-id]');
                    const bookId = bookElement.dataset.bookId;

                    const bookData = {
                        title: bookElement.querySelector('h3').textContent,
                        author: bookElement.querySelector('p:nth-of-type(1)').textContent.replace('Автор: ', ''),
                        year: bookElement.querySelector('p:nth-of-type(2)').textContent.replace('Год: ', ''),
                        genre: bookElement.querySelector('p:nth-of-type(3)').textContent.replace('Жанр: ', ''),
                        isbn: bookElement.querySelector('p:nth-of-type(4)').textContent.replace('ISBN: ', '')
                    };

                    document.getElementById('bookId').value = bookId;
                    document.querySelector('input[name="title"]').value = bookData.title;
                    document.querySelector('input[name="author"]').value = bookData.author;
                    document.querySelector('input[name="year"]').value = bookData.year;
                    document.querySelector('input[name="genre"]').value = bookData.genre;
                    document.querySelector('input[name="isbn"]').value = bookData.isbn;

                    bookElement.querySelector('.save-btn').style.display = 'inline-block';
                }
            });

            document.getElementById('bookList').addEventListener('click', async (e) => {
                if (e.target.tagName === 'BUTTON' && e.target.classList.contains('save-btn')) {
                    const bookElement = e.target.closest('[data-book-id]');
                    const formData = new FormData(document.getElementById('bookForm'));
                    const bookId = e.target.closest('[data-book-id]').querySelector('input[name="book_id"]').value;

                    const book = {
                        title: formData.get('title'),
                        author: formData.get('author'),
                        year: parseInt(formData.get('year')),
                        genre: formData.get('genre'),
                        isbn: formData.get('isbn'),
                        book_id: parseInt(bookId)
                    };

                    try {
                        const response = await fetch(`http://localhost:8080/books`, {
                            method: 'PUT',
                            headers: {'Content-Type': 'application/json'},
                            body: JSON.stringify(book)
                        });

                        if (!response.ok) throw new Error('Ошибка сохранения');

                        await loadBooks();
                        bookElement.querySelector('.edit-btn').style.display = 'none';
                        document.getElementById('bookForm').reset();

                    } catch (error) {
                        alert(error.message);
                    }
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
                          <div style="border: 1px solid #ccc; margin: 10px; padding: 10px;" data-book-id="${book.book_id}">
                            <input type="hidden" name="book_id" id="book_id" value=` + book.book_id + `>
                            <h3>` + book.title + `</h3>
                            <p>Автор:` + book.author + `</p>
                            <p>Год: ` + book.year + `</p>
                            <p>Жанр: ` + book.genre + `</p>
                            <p>ISBN: ` + book.isbn + `</p>
                            <button type="button" class="delete-btn">Удалить</button>
                            <button type="button" class="edit-btn">Редактировать</button>
                            <button type="button" class="save-btn" style="display: none;">Сохранить</button>
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