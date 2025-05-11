package view;

import model.Book;
import org.json.JSONArray;
import org.json.JSONObject;

import java.util.List;

public class JsonView {
    public static String toJson(List<Book> books) {
        JSONArray array = new JSONArray();
        for (Book book : books) {
            JSONObject obj = new JSONObject();
            obj.put("title", book.getTitle());
            obj.put("author", book.getAuthor());
            obj.put("year", book.getYear());
            obj.put("genre", book.getGenre());
            obj.put("isbn", book.getIsbn());
            array.put(obj);
        }
        return array.toString();
    }
}