import 'package:fingerprint/Auth_Services.dart/auth_Service.dart';
import 'package:fingerprint/Routes/Routesname.dart';
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
      child: IconButton(
        onPressed: () async{
          bool check = await AuthService().authenticateLocally();
          if (check) {
            Navigator.pushReplacementNamed(context, Routesname.home);
          }
        
        },
        icon: Icon(Icons.fingerprint, size: 70.sp),
      ),
    );
  }
}
