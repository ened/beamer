part of 'books_bloc.dart';

class Book {
  Book({
    this.id,
    this.title,
    this.author,
  });

  Book.fromJson(Map<String, dynamic> json)
      : id = int.parse(json['id']),
        title = json['title'],
        author = json['author'];

  final int id;
  final String title;
  final String author;
}

@immutable
abstract class BooksState {}

class Loading extends BooksState {}

class BooksLoaded extends BooksState {
  BooksLoaded(this.books);

  final List<Book> books;
}

class BookLoaded extends BooksState {
  BookLoaded(this.book);

  final Book book;
}

class BookNotFound extends BooksState {}
