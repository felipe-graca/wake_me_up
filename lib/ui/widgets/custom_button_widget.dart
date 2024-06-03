import 'package:flutter/material.dart';

class CustomButtonWidget extends StatefulWidget {
  final String title;
  final Function() onPressed;
  final bool fullWidth;
  final bool isLoading;
  final bool disabled;
  const CustomButtonWidget({
    super.key,
    required this.title,
    required this.onPressed,
    this.fullWidth = false,
    this.isLoading = false,
    this.disabled = false,
  });

  @override
  State<CustomButtonWidget> createState() => _CustomButtonWidgetState();
}

class _CustomButtonWidgetState extends State<CustomButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPressed,
      child: AbsorbPointer(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          width: widget.fullWidth ? double.infinity : null,
          height: 40,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 2,
                offset: const Offset(0, 1),
              )
            ],
          ),
          child: const Center(
            child: Text(
              "My locations",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
