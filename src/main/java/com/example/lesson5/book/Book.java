package com.example.lesson5.book;

import lombok.*;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder

public class Book {
    private int id;
    private String title;
    private int pages;
}
