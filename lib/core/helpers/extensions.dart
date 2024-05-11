import 'package:flutter/material.dart';

extension SizedBoxSpacer on num {
  Widget get width => SizedBox(width: toDouble());
  Widget get height => SizedBox(height: toDouble());
}
