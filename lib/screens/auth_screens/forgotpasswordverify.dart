import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:job_app/data/providers/auth_provider.dart';
import 'package:provider/provider.dart';

class ForgotScreenVerify extends StatefulWidget {

   ForgotScreenVerify({Key? key}) : super(key: key);

  @override
  State<ForgotScreenVerify> createState() => _ForgotScreenVerifyState();
}

class _ForgotScreenVerifyState extends State<ForgotScreenVerify> {
  final _formkey = GlobalKey<FormState>();

  final _codeController = TextEditingController();

  final _passwordController = TextEditingController();

  @override
  void dispose(){

    _codeController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<AuthProvider>(context);
    return Scaffold(
      appBar: AppBar(actions: [
        Title(color: Colors.white, child: Text('reset_password_verfiy'))
      ]),
      body: Center(
        child: Form(
          key: _formkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            TextFormField(
                                controller: _codeController,
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white,
                                  hintText: 'verify Code ',
                                  enabled: true,
                                  contentPadding: const EdgeInsets.only(
                                      left: 14.0, bottom: 8.0, top: 8.0),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: new BorderSide(color: Colors.white),
                                    borderRadius: new BorderRadius.circular(10),
                                  ),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: new BorderSide(color: Colors.white),
                                    borderRadius: new BorderRadius.circular(10),
                                  ),
                                ),
                                
                                // onSaved: (value) {
                                //   emailController.text = value!;
                                // },
                                keyboardType: TextInputType.emailAddress,
                              ),
                              SizedBox(height: 12,),
            TextFormField(
                                controller: _passwordController,
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white,
                                  hintText: 'new password',
                                  enabled: true,
                                  contentPadding: const EdgeInsets.only(
                                      left: 14.0, bottom: 8.0, top: 8.0),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: new BorderSide(color: Colors.white),
                                    borderRadius: new BorderRadius.circular(10),
                                  ),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: new BorderSide(color: Colors.white),
                                    borderRadius: new BorderRadius.circular(10),
                                  ),
                                ),
                                validator: (value) {
                                  if (value!.length <= 8) {
                                    return "password must be atleast 8 character long";
                                  }
                                  
                                  
                                },
                                
                                
                                
                                keyboardType: TextInputType.emailAddress,
                              ),
                              SizedBox(height: 12,),
              MaterialButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20.0))),
                                elevation: 5.0,
                                height: 40,
                                onPressed: () {
                                  
                                 provider.resetPasswordVerify(context, _passwordController.text.toString(), _codeController.text);
                                },

                                child: Text(
                                  "set password",
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                                color: Colors.white,
                              ),

            
          ]),
        ),
      ),

    );

    
  }
}