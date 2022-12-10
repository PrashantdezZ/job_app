import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:job_app/data/providers/auth_provider.dart';
import 'package:job_app/desgin_elements/design.dart';
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
    Size size = MediaQuery.of(context).size;

    final provider = Provider.of<AuthProvider>(context);
    return Scaffold(
      appBar: AppBar(


      ),
      body: Center(
        child: Form(
          key: _formkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Container(
                    width: size.width*0.60,
                    child: Text('Reset your Password ',style: TextStyle(
                    color: Palette.lightPurple,
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                
                ),),
                  ),
                Positioned(
                  bottom: 7,
                  top: 0,
                  child: Container(
                    height:2,
                    width: size.width*0.56,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(29),
                                      boxShadow: [
                                                    BoxShadow(
                                                      offset: Offset(0,10),
                                                      blurRadius: 7,
                                                  
                                                      color:Palette.lightPurple.withOpacity(0.12),

                                                    )
                                                  ]
                                    ),
                                  ),
                            )
                ]
              ),
              
                                    SizedBox(height: 22,),
            Container(
               width: size.width*0.8,
                 alignment: Alignment.center,
                                   
                                    
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(29),
                                      boxShadow: [
                                                    BoxShadow(
                                                      offset: Offset(0,6),
                                                      blurRadius: 10,
                                                  
                                                      color:Colors.black.withOpacity(0.35),
                                      
                                                    )
                                                  ]
                                    ),
              child: TextFormField(
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
                                      borderRadius: new BorderRadius.circular(29),
                                    ),
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: new BorderSide(color: Colors.white),
                                      borderRadius: new BorderRadius.circular(29),
                                    ),
                                  ),
                                  
                                  // onSaved: (value) {
                                  //   emailController.text = value!;
                                  // },
                                  keyboardType: TextInputType.emailAddress,
                                ),
            ),
                              SizedBox(height: 22,),
            Container(
                  width: size.width*0.8,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(29),
                    boxShadow: [
                                  BoxShadow(
                                    offset: Offset(0,6),
                                    blurRadius: 10,
                                
                                    color:Colors.black.withOpacity(0.35),
                    
                                  )
                                ]
                              ),
              child: TextFormField(
                                  controller: _passwordController,
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.white,
                                    hintText: 'new password',
                                    enabled: true,
                                    contentPadding: const EdgeInsets.only(
                                        left: 14.0, top: 8.0),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: new BorderSide(color: Colors.white),
                                      borderRadius: new BorderRadius.circular(29),
                                    ),
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: new BorderSide(color: Colors.white),
                                      borderRadius: new BorderRadius.circular(29),
                                    ),
                                  ),
                                  validator: (value) {
                                    if (value!.length <= 8) {
                                      return "password must be atleast 8 character long";
                                    }
                                    
                                    
                                  },
                                  
                                  
                                  
                                  keyboardType: TextInputType.emailAddress,
                                ),
            ),


              SizedBox(height: 22,),
              MaterialButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(17.0))),
                                elevation: 10.0,
                                height: 60,
                                onPressed: () {
                                  if(_formkey.currentState!.validate())
                                  {
                                   provider.resetPasswordVerify(context, _passwordController.text.toString(), _codeController.text);

                                  }
                                },

                                child: provider.loading?CircularProgressIndicator(): Text(
                                  "set password",
                                  style: TextStyle(
                                    fontSize: 20,
                                    
                                    color: Palette.lightPurple
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