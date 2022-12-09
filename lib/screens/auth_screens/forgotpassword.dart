import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:job_app/data/providers/auth_provider.dart';
import 'package:job_app/desgin_elements/design.dart';
import 'package:provider/provider.dart';

class ForgotScreen extends StatelessWidget {
  final emailController = TextEditingController();
   ForgotScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size  = MediaQuery.of(context).size;
    final provider = Provider.of<AuthProvider>(context);
    return Scaffold(
      backgroundColor: Color.fromARGB(245, 255, 255, 255),
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back),onPressed: (){
          context.router.replaceNamed('/login');
        },),
        actions: [
        

      ]),
      body:Center(
        child:          Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Container(
                    width: size.width*0.30,
                    child: Text('Enter emial ',style: TextStyle(
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
                    width: size.width*0.29,
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
              
               SizedBox(height: 32,),
              Container(
                width: size.width*0.8,
                 alignment: Alignment.center,
                                   
                                    
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(29),
                                      boxShadow: [
                                                    BoxShadow(
                                                      offset: Offset(0,7),
                                                      blurRadius: 5,
                                                  
                                                      color:Colors.black.withOpacity(0.35),
                                      
                                                    )
                                                  ]
                                    ),
                child: TextFormField(
                                  
                                  controller: emailController,
                                  decoration: InputDecoration(
                                    prefixIcon: Icon(Icons.email_outlined,color: Palette.lightPurple,),
                                    filled: true,
                                    fillColor: Colors.white,
                                    hintText: 'Enter your Email',
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
                                  validator: (value) {
                                    if (value!.length == 0) {
                                      return "Email cannot be empty";
                                    }
                                    if (!RegExp(
                                            "^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                                        .hasMatch(value)) {
                                      return ("Please enter a valid email");
                                    } else {
                                      return null;
                                    }
                                  },
                                  // onSaved: (value) {
                                  //   emailController.text = value!;
                                  // },
                                  keyboardType: TextInputType.emailAddress,
                                ),
              ),
              SizedBox(height: 30,),
              MaterialButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20.0))),
                                elevation: 10.0,
                                height: 60,
                                onPressed: () {
                                  
                                 provider.forgotPassword(context, emailController.text.toString());
                                //  context.navigateNamedTo('/forgot-password-verify');
                                },

                                child:  provider.loading?CircularProgressIndicator():Text(
                                  "Send Code",
                                  style: TextStyle(
                                    fontSize: 20,
                                    
                                    color: Palette.lightPurple
                                  ),
                                ),
                                color: Colors.white,
                              ),
            ],

          ),
        ),
          
          
        
      )
      
    );
    


    
  }
}