import 'package:flutter/material.dart';
import 'package:notex/core/utils/state_handler.dart';

class AuthProvider extends StateHandler {
  AuthProvider() : super();
  TextEditingController nameEditingController = TextEditingController();
}
