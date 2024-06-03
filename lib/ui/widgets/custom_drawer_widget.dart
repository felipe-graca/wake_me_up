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
            physics: const NeverScrollableScrollPhysics(),
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
              24.height,
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 4),
                child: _buildMenuItem(
                  icon: Icons.location_on_sharp,
                  title: 'Locations',
                  soute: '',
                ),
              ),
              8.height,
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 4),
                child: _buildMenuItem(
                  icon: Icons.alarm,
                  title: 'Alarms',
                  soute: '',
                ),
              ),
              8.height,
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 4),
                child: _buildMenuItem(
                  icon: Icons.settings,
                  title: 'Settings',
                  soute: '',
                ),
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

  Widget _buildMenuItem({
    required IconData icon,
    required String title,
    required String soute,
  }) {
    return GestureDetector(
      child: AbsorbPointer(
        child: Column(
          children: [
            Row(
              children: [
                Icon(icon, color: const Color(0xff2196F3)),
                16.width,
                Flexible(child: Text(title)),
              ],
            ),
            8.height,
            const Divider(color: Colors.grey),
          ],
        ),
      ),
    );
  }
}
