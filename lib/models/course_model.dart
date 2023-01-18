// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CourseModel {
  final IconData icon;
  final Color color;
  final String title;
  final int numberOfLessons;
  final String duration;
  CourseModel({
    required this.icon,
    required this.color,
    required this.title,
    required this.numberOfLessons,
    required this.duration,
  });
}
