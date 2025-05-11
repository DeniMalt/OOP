package controller;

import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

import model.Book;
import view.JsonView;
import repository.BookRepository;
import com.fasterxml.jackson.databind.ObjectMapper;

@WebServlet("/books")
public class BookServlet extends HttpServlet {
    private final BookRepository repository = new BookRepository();
    private final ObjectMapper mapper = new ObjectMapper();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        resp.setHeader("Access-Control-Allow-Origin", "*");
        resp.setContentType("application/json");
        resp.setCharacterEncoding("UTF-8");

        List<Book> books = repository.loadBooks();
        resp.getWriter().write(JsonView.toJson(books));
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setHeader("Access-Control-Allow-Origin", "*");
        resp.setContentType("application/json");
        resp.setCharacterEncoding("UTF-8");

        try {
            Book newBook = mapper.readValue(req.getReader(), Book.class);
            List<Book> books = repository.loadBooks();
            books.add(newBook);
            repository.saveBooks(books);
            resp.setStatus(HttpServletResponse.SC_CREATED);
        } catch (Exception e) {
            resp.sendError(HttpServletResponse.SC_BAD_REQUEST, "Ошибка: " + e.getMessage());
        }
    }
}