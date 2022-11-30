import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:http/http.dart';
import 'package:job_app/providers/auth_provider.dart';

class RoundButton extends StatelessWidget {
  final String title;
  final bool loading;
  // final bool loading;
  final dynamic ontap;

  const RoundButton({Key? key, required this.title, required this.ontap, required  this.loading}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        height: 40,
        width: 200,
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(10)
        ),
        child: Center(
            child:loading ? CircularProgressIndicator(color: Colors.white,) :  Text(title ,
              style: TextStyle(color: Colors.white),
            )),
      ),
    );
    
  }
}