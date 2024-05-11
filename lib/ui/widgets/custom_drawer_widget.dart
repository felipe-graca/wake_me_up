import 'dart:io' as io;

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:wake_me_up/core/helpers/extensions.dart';

class CustomDrawerWidget extends StatefulWidget {
  const CustomDrawerWidget({super.key});

  @override
  State<CustomDrawerWidget> createState() => _CustomDrawerWidgetState();
}

class _CustomDrawerWidgetState extends State<CustomDrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          ListView(
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                decoration: const BoxDecoration(
                  color: Colors.blue,
                ),
                child: Center(
                  child: SvgPicture.asset('assets/svgs/drawer_header.svg'),
                ),
              ),
              64.height,
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Text('Menu'),
              ),
              16.height,
              ListTile(
                leading: const Icon(
                  Icons.location_on_sharp,
                  color: Color(0xff2196F3),
                ),
                title: const Text('Locations'),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(
                  Icons.alarm,
                  color: Color(0xff2196F3),
                ),
                title: const Text('Alarms'),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(
                  Icons.settings,
                  color: Color(0xff2196F3),
                ),
                title: const Text('Settings'),
                onTap: () {},
              ),
            ],
          ),
          Expanded(child: Container()),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(
                bottom: io.Platform.isIOS ? 32 : 16,
                right: 16,
                left: 16,
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.amber),
                      Text('Rate us on the store'),
                    ],
                  ),
                  Text('1.0.0'),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
