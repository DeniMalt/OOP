package Book;

import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.ObjectMapper;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.io.IOException;

public class BookRepository {
    private static final String FILE_PATH = "./book.json";
    private final ObjectMapper mapper = new ObjectMapper();

    public void saveBooks(List<Book> books) throws IOException {
        File file = new File(FILE_PATH);
        file.getParentFile().mkdirs();
        mapper.writeValue(new File(file.getAbsolutePath()), books);
    }

    public List<Book> loadBooks() throws IOException {
        File file = new File(FILE_PATH);
        if (!file.exists()) return new ArrayList<>();
        return mapper.readValue(file, new TypeReference<List<Book>>() {});
    }
}