import 'package:flutter/material.dart';
import 'package:flutter_sqflite_db/models/category.dart';
import 'package:flutter_sqflite_db/services/categoryService.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {

  var categoryNameController=TextEditingController();
  var descriptionController=TextEditingController();

  var _category =Category();
  var _categoryService =CategoryService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Categories"),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          showFormDialog(context);
        },
      ),
    );
  }

  showFormDialog(BuildContext context){
    return showDialog(context: context,barrierDismissible: true,builder: (params){
      return AlertDialog(
        title: Text("Category Form"),
        actions: [
          FlatButton(onPressed: (){
            Navigator.pop(context);
          }, child: Text("cancel")),
          FlatButton(onPressed: (){
            print(" ${categoryNameController.text} ${descriptionController.text} ");

            _category.catName=categoryNameController.text;
            _category.description=descriptionController.text;

            _categoryService.saveCategory(_category);

          }, child: Text("yes")),
        ],
        content: SingleChildScrollView(
          child: Column(
            children: [
              TextField(
                controller: categoryNameController,
                decoration: InputDecoration(
                  hintText: "Write a category",
                  labelText: "Category"
                ),
              ),

              TextField(
                controller: descriptionController,
                decoration: InputDecoration(
                    hintText: "Write a description",
                    labelText: "Description"
                ),
              )
            ],
          ),
        ),
      );
    });
  }
}
