import 'package:flutter/material.dart';
import 'package:wake_me_up/core/routes/app_router_paths.dart';
import 'package:wake_me_up/ui/widgets/custom_drawer_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  static String toRoute() => AppRouterPaths.home;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawerWidget(),
      appBar: AppBar(
        // automaticallyImplyLeading: false,
        title: const Text('Wake Me Up'),
      ),
      body: Container(),
    );
  }
}
