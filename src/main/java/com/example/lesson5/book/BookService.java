package com.example.lesson5.book;

import com.example.lesson5.book.Book;
import org.postgresql.Driver;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class BookService {
    public Integer save(Book book) {
        try {
            DriverManager.registerDriver(new Driver());
            var connection = DriverManager.getConnection("jdbc:postgresql://localhost:5432/jakarta?currentSchema=public",
                    "postgres",
                    "2210");
            var statement = connection.createStatement();
            var resultSet = statement.executeQuery("insert into book(title, pages) values('" + book.getTitle() + "', '" + book.getPages() + "') returning id ;");
            if (resultSet.next()) {
                return resultSet.getInt("id");
            }
            return -1;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public void update(Book book) {
        try {
            DriverManager.registerDriver(new Driver());
            var connection = DriverManager.getConnection("jdbc:postgresql://localhost:5432/jakarta?currentSchema=public",
                    "postgres",
                    "2210");
            var statement = connection.prepareStatement("update book set title = ?, pages = ? where id = ?");
            statement.setString(1, book.getTitle());
            statement.setInt(2, book.getPages());
            statement.setInt(3, book.getId());
            statement.execute();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public List<Book> getAll() {
        var bookList = new ArrayList<Book>();
        try {
            DriverManager.registerDriver(new Driver());
            Connection connection = DriverManager.getConnection("jdbc:postgresql://localhost:5432/jakarta?currentSchema=public",
                    "postgres",
                    "2210");
            var statement = connection.prepareStatement("select * from book;");
            var resultSet = statement.executeQuery();
            while (resultSet.next()) {
                var build = Book.builder()
                        .id(resultSet.getInt("id"))
                        .title(resultSet.getString("title"))
                        .pages(resultSet.getInt("pages"))
                        .build();
                bookList.add(build);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return bookList;
    }

    public Book get(int id) {
        try {
            DriverManager.registerDriver(new Driver());
            var connection = DriverManager.getConnection("jdbc:postgresql://localhost:5432/jakarta?currentSchema=public",
                    "postgres",
                    "2210");
            var statement = connection.prepareStatement("select * from book b where b.id = ?;");
            statement.setInt(1, id);
            var resultSet = statement.executeQuery();
            if (resultSet.next()) {
                return Book.builder()
                        .id(resultSet.getInt("id"))
                        .title(resultSet.getString("title"))
                        .pages(resultSet.getInt("pages"))
                        .build();
            }
            return null;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
