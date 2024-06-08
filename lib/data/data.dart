import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

List<Map<String, dynamic>> transactionsData = [
  {
    'icon': const FaIcon(FontAwesomeIcons.burger, color: Colors.white, size: 18),
    'color' : Colors.yellow[700],
    'name':'Food',
    'totalAmount': '-\$45.00',
    'date': 'Today',
  }, 
  {
    'icon': const FaIcon(FontAwesomeIcons.bagShopping, color: Colors.white, size: 18),
    'color' : Colors.purple[700],
    'name':'Shopping',
    'totalAmount': '-\$230.00',
    'date': 'Today',
  }, 
  {
    'icon': const FaIcon(FontAwesomeIcons.heartCircleCheck, color: Colors.white, size: 18),
    'color' : Colors.red[700],
    'name':'Health',
    'totalAmount': '-\$550.00',
    'date': 'Yesterday',
  }, 
  {
    'icon': const FaIcon(FontAwesomeIcons.plane, color: Colors.white, size: 18),
    'color' : Colors.green[700],
    'name':'Travel',
    'totalAmount': '-\$25.00',
    'date': 'Yesterday',
  }, 
];