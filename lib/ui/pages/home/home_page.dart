import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:wake_me_up/core/helpers/extensions.dart';
import 'package:wake_me_up/core/routes/app_router_paths.dart';
import 'package:wake_me_up/ui/widgets/custom_button_widget.dart';
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
      body: Stack(
        children: [
          const GoogleMap(
            initialCameraPosition: _kInitialPosition,
            myLocationEnabled: true,
            myLocationButtonEnabled: false,
            padding: EdgeInsets.only(bottom: 32, left: 16, right: 16),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 76),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomButtonWidget(
                    title: 'My locations',
                    onPressed: () {
                      print('My locations');
                    },
                  ),
                  40.width,
                  CustomButtonWidget(
                    title: 'Add location',
                    onPressed: () {
                      print('Add new location');
                    },
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  static const LatLng _kMapCenter = LatLng(19.018255973653343, 72.84793849278007);

  static const CameraPosition _kInitialPosition =
      CameraPosition(target: _kMapCenter, zoom: 11.0, tilt: 0, bearing: 0);
}
