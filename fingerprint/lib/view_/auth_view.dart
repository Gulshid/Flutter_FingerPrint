import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class authview extends StatefulWidget {
  const authview({super.key});

  @override
  State<authview> createState() => _authviewState();
}

class _authviewState extends State<authview> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: IconButton(onPressed: (){},
      icon: Icon(Icons.fingerprint, size: 70.sp,),
      
      ),
    );
  }
}