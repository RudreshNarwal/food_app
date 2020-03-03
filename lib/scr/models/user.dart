import 'package:cloud_firestore/cloud_firestore.dart';

//In this we are giving basic structure to our firestore data.
class UserModel{
  //These static constant are the name of the fields that we are going to use in this Model
  static const NAME = "name";
  static const EMAIL = "email";
  static const ID = "id";

// Private variable 
  String _name;
  String _email;
  String _id;

//  getters
// as we can't access private variable thats why we have used getters here we can read the values but can't change them. 
  String get name => _name;
  String get email => _email;
  String get id => _id;

  UserModel.fromSnapshot(DocumentSnapshot snapshot){
    _name = snapshot.data[NAME];
    _email = snapshot.data[EMAIL];
    _id = snapshot.data[ID];
  }
}