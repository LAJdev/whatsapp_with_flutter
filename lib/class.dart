import 'package:flutter/material.dart';

class Status {
  String status;
  String date;
  String image;
  bool isopened;

  Status(this.status, this.date, this.image, this.isopened);
}

class Contact {
  String id;
  String name;
  String phonenumber;
  String status;
  String image;

  Contact(this.id,this.name, this.phonenumber, this.status, this.image);
}

class Message {
  // String name;
  Contact contact;
  String message;
  String date;
  bool isread;
  bool iswritten;

  Message(
      {
      // required this.name,
      required this.contact,
      required this.message,
      required this.date,
      required this.isread,
      required this.iswritten});
}

class Call {
  Contact contact;
  String date;
  bool incoming;
  IconData icon;

  Call(
      {required this.contact,
      required this.date,
      required this.incoming,
      required this.icon});
}
