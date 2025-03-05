import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class CustomModelProgressIndicator extends StatelessWidget {
  final bool isLoading; 
  final Color color; 
  final double size; 
  final Widget child; 

  const CustomModelProgressIndicator({
    super.key,
    required this.isLoading,
    this.color = Colors.blue,
    this.size = 50.0,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: isLoading, 
      progressIndicator: CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation<Color>(color),
        strokeWidth: 6.0,
      ),
      child: child, 
    );
  }
}
