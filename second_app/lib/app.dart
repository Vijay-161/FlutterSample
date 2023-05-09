import 'package:flutter/material.dart';
import 'package:second_app/view/arthmetic_view.dart';
import 'package:second_app/view/change_name.dart';
import 'package:second_app/view/circle_view.dart';
import 'package:second_app/view/classwork_view.dart';
import 'package:second_app/view/column_view.dart';
import 'package:second_app/view/container_view.dart';
import 'package:second_app/view/dashboard.dart';
import 'package:second_app/view/image_view.dart';
import 'package:second_app/view/media_querry_view.dart';
import 'package:second_app/view/output_view.dart';
import 'package:second_app/view/rich_text_view.dart';
import 'package:second_app/view/simple_interest.dart';
import 'package:second_app/view/student_view.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const DashboardView(),
        '/arithmeticRoute': (context) => const ArithmeticView(),
        '/interestRoute': (context) => const SimpleInterest(),
        '/areaRoute': (context) => const CircleView(),
        '/nameRoute': (context) => const ChangeName(),
        '/textRoute': (context) => const RichTextView(),
        '/columnRoute': (context) => const ColumnView(),
        '/outputRoute': (context) => const OutPutView(),
        '/studentRoute': (context) => const Student(),
        '/containerRoute': (context) => const ContainerView(),
        '/imageRoute': (context) => const ImageView(),
        '/mediaRoute': (context) => const MediaQueryView(),
        '/cassworkRoute': (context) => const ClassworkView(),
      },
    );
  }
}
