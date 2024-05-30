class user {
  String firstname;
  String lastname;
  List<book> books;

  user({
    required this.firstname, 
    required this.lastname, 
    required this.books});

  factory user.fromJson(Map<String, dynamic> Json){
    return user(
      firstname: Json["firstname"], 
      lastname: Json["lastname"], 
      books: Json["books"]);
  }

}

class book {
  String title;
  String author;
  String details;
  String bookCover;
  double rating;
  List<String> chapter;

  book({
    required this.title, 
    required this.author, 
    required this.details, 
    required this.bookCover, 
    required this.rating, 
    required this.chapter});

    factory book.fromJson(Map<String, dynamic> Json){
      return book(
        title: Json["title"],
        author: Json["author"], 
        details: Json["details"], 
        bookCover: Json["bookCover"], 
        rating: Json["rating"], 
        chapter: Json["chapter"]
        );
    }
}

class chapter {
  String title;
  String description;
  List<String> pages;

  chapter({
    required this.title, 
    required this.description, 
    required this.pages
    }
  );

  factory chapter.fromJson(Map<String, dynamic> Json){
    return chapter(
      title: Json["title"], 
      description: Json["description"], 
      pages: Json["pages"]);
  }
}