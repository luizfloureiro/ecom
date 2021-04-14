import 'package:flutter/material.dart';
//doc ok

class Category{
  // Modelo de objeto,
  // define a entidade que sera utilizado majoritariamente nas telas
  // de categoria: category_list_page
  Color begin;
  Color end;
  String category;
  String image;

  Category(this.begin, this.end, this.category, this.image);

}
