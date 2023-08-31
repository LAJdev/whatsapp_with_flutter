import 'package:flutter/material.dart';

import 'class.dart';

List<Contact> contactlist = [
  Contact("001","Week-end", "phonenumber", "Sleeping", "🌎"),
  Contact("002","João Pereira", "phonenumber", "battery low...", "👨🏼‍🎨"),
  Contact("003","Léna Simon", "phonenumber", "On vacation", "👩🏼‍🔧"),
  Contact("004","Famille", "phonenumber", "Don't disturb!!", "👨‍👩‍👧‍👧"),
  Contact("005","Alicia Garcia", "phonenumber", "Sleeping", "🙎‍♀️"),
  Contact("006","Brunch club !", "phonenumber", "Sleeping", "🍱"),
  Contact("007","Les gâteaux de Sandra", "phonenumber", "Watching TV", "🍰"),
];

List<Message> messagereceived = [
  Message(
      // name: "Week-end",
      contact: contactlist[0],
      message: "Sofia: sticker",
      date: "9:49",
      isread: false,
      iswritten: false),
  Message(
      // name: "João Pereira",
      contact: contactlist[1],
      message: "écrit...",
      date: "9:45",
      isread: false,
      iswritten: true),
  Message(
      // name: "Léna Simon",
      contact: contactlist[2],
      message: "Super petit-dejeuner",
      date: "9:37",
      isread: false,
      iswritten: false),
  Message(
      // name: "Famille",
      contact: contactlist[3],
      message: "Maman : elles est trop mignonne 😍",
      date: "9:09",
      isread: true,
      iswritten: false),
  Message(
      // name: "Alicia Garcia",
      contact: contactlist[4],
      message: "Ça m'a fait plaisir de te voir ! il faut...",
      date: "8:58",
      isread: true,
      iswritten: false),
  Message(
      // name: "Brunch club !",
      contact: contactlist[5],
      message: "Dominic Schwarz: GIF",
      date: "8:33",
      isread: true,
      iswritten: false),
  Message(
      // name: "Les gâteaux de Sandra",
      contact: contactlist[6],
      message: "Ce sera prêt jeudi !",
      date: "7:00",
      isread: true,
      iswritten: false),
];

List<Status> statuslist = [
  Status("My status", "Tap to add status update", "🧑🏻", false),
  Status("look my gift !!!", "50 minutes ago", "🏍", false),
  Status("New job !!!!", "12 hours ago", "💼", false),
  Status("Holidays", "3 hours ago", "🏖", false),
];

List<Call> calllist = [
  Call(
      contact: contactlist[4],
      date: "3 minutes ago",
      incoming: false,
      icon: Icons.videocam),
  Call(
      contact: contactlist[2],
      date: "25 minutes ago",
      incoming: false,
      icon: Icons.call),
  Call(
      contact: contactlist[3], date: "Hier ", incoming: true, icon: Icons.call),
  Call(
      contact: contactlist[1],
      date: "25 aout à 18H05",
      incoming: true,
      icon: Icons.call),
  Call(
      contact: contactlist[6],
      date: "20 aout à 20h00",
      incoming: false,
      icon: Icons.videocam),
  Call(
      contact: contactlist[5],
      date: "10 aout à 20h00",
      incoming: true,
      icon: Icons.videocam),
];
