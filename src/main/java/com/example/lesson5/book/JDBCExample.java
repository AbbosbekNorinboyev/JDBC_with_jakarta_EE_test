package com.example.lesson5.book;

import com.example.lesson5.book.BookService;

public class JDBCExample {
    public static void main(String[] args) {
//        try {
//            DriverManager.registerDriver(new Driver());
//            var connection = DriverManager.getConnection("jdbc:postgresql://localhost:5432/jakarta",
//                    "postgres",
//                    "2210");
//            var statement = connection.createStatement();
//            var resultSet = statement.executeQuery("select version();");
//            if (resultSet.next()) {
//                var string = resultSet.getString(1);
//                System.out.println("string: " + string);
//            }
//        } catch (SQLException e) {
//            throw new RuntimeException(e);
//        }

//        Book book = Book.builder()
//                .title("Java fundamental Volume I")
//                .pages(1100)
//                .build();
//        BookService bookService = new BookService();
//        System.out.println("bookService.save(book): " + bookService.save(book));

//        Book book = Book.builder()
//                .id(1)
//                .title("Java fundamental Volume II (Cay H)")
//                .pages(950)
//                .build();
//        BookService bookService = new BookService();
//        bookService.update(book);

//        BookService bookService = new BookService();
//        bookService.getAll().forEach(System.out::println);

        BookService bookService = new BookService();
        System.out.println(bookService.get(2));
    }
}
