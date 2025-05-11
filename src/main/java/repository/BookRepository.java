package repository;

import model.Book;

import java.util.ArrayList;
import java.util.List;
import java.io.IOException;
import java.sql.*;


public class BookRepository {

    private final static String URL = "jdbc:mysql://localhost:3306/lab10";
    private final static String USERNAME = "root";
    private final static String PASSWORD = "tonykart";
    private Connection connection;

    public void saveBook(Book book) throws IOException {
        PreparedStatement ps = null;
        String INSERT_NEW = "INSERT INTO books (title, author, year, genre, isbn) VALUES (?, ?, ?, ?, ?)";
        try {
            Driver driver = new com.mysql.cj.jdbc.Driver();
            DriverManager.registerDriver(driver);
            connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);
            ps = connection.prepareStatement(INSERT_NEW);
            ps.setString(1, book.getTitle());
            ps.setString(2, book.getAuthor());
            ps.setInt(3, book.getYear());
            ps.setString(4, book.getGenre());
            ps.setString(5, book.getIsbn());
            System.out.println(ps);
            ps.execute();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public List<Book> loadBooks() throws IOException {
        Connection connection = new connect_db().getConnection();

        String query = "Select * from books";
        List<Book> books = new ArrayList<>();
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(query);
            while(resultSet.next()) {
                Book book = new Book(
                        resultSet.getInt("book_id"),
                        resultSet.getString("title"),
                        resultSet.getString("author"),
                        resultSet.getInt("year"),
                        resultSet.getString("genre"),
                        resultSet.getString("isbn")
                );
                books.add(book);
            }
        }
        catch (SQLException e) {
            e.printStackTrace();
        }
        return books;
    }

    public void deleteBook(int book_id) throws IOException {
        PreparedStatement ps = null;
        String DELETE_QUERY = "DELETE FROM books WHERE book_id = ?";

        try {
            Driver driver = new com.mysql.cj.jdbc.Driver();
            DriverManager.registerDriver(driver);
            connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);
            ps = connection.prepareStatement(DELETE_QUERY);
            ps.setInt(1, book_id);
            ps.executeUpdate();
            System.out.println("Delete operation successful");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void updateBook(Book book) {
        PreparedStatement ps = null;
        String UPDATE_QUERY = "UPDATE books SET title=?, author=?, year=?, genre=?, isbn=? WHERE book_id=?";
        try {
            Driver driver = new com.mysql.cj.jdbc.Driver();
            DriverManager.registerDriver(driver);
            connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);
            ps = connection.prepareStatement(UPDATE_QUERY);
            ps.setString(1, book.getTitle());
            ps.setString(2, book.getAuthor());
            ps.setInt(3, book.getYear());
            ps.setString(4, book.getGenre());
            ps.setString(5, book.getIsbn());
            ps.setLong(6, book.getBook_id());
            ps.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException("Ошибка при обновлении книги", e);
        }
    }
}