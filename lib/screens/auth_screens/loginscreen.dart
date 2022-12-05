





import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:job_app/providers/auth_provider.dart';
import 'package:job_app/widgets/round_button.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isObscure = true;
  bool visible = false;
  final _formkey = GlobalKey<FormState>();
  final TextEditingController emailController = new TextEditingController();
  final TextEditingController passwordController = new TextEditingController();

  

  @override
  void dispose(){
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<AuthProvider>(context);
    return Scaffold(
        body: Stack(
        children: [
          Container(          
            decoration:BoxDecoration(
              
              image:DecorationImage(image:AssetImage("assets/images/splash.jpg"),
            
            fit:BoxFit.fill
            ),
           
            )
),
Container(color:Colors.black.withOpacity(0.50)),


       SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              // color: Colors.orangeAccent[700],
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Center(
                child: Container(
                  margin: EdgeInsets.all(12),
                  child: Form(
                    key: _formkey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          "Login",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 40,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          controller: emailController,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            hintText: 'Email',
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
                        SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          controller: passwordController,
                          obscureText: _isObscure,
                          decoration: InputDecoration(
                            suffixIcon: IconButton(
                                icon: Icon(_isObscure
                                    ? Icons.visibility
                                    : Icons.visibility_off),
                                onPressed: () {
                                  
                                    _isObscure = !_isObscure;
                                  
                                }),
                            filled: true,
                            fillColor: Colors.white,
                            hintText: 'Password',
                            enabled: true,
                            contentPadding: const EdgeInsets.only(
                                left: 14.0, bottom: 8.0, top: 15.0),
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
                            RegExp regex = new RegExp(r'^.{6,}$');
                            if (value!.isEmpty) {
                              return "Password cannot be empty";
                            }
                            if (!regex.hasMatch(value)) {
                              return ("please enter valid password min. 6 character");
                            } else {
                              return null;
                            }
                          },
                          // onSaved: (value) {
                          //   passwordController.text = value!;
                          // },
                          // keyboardType: TextInputType.emailAddress,
                        ),
                       
                        const SizedBox(
                          height: 20,
                        ),
                         
                        MaterialButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20.0))),
                                elevation: 5.0,
                                height: 40,
                                onPressed: () {
                                  print(provider.loading);
                                  
                                 
                                  provider.userLogin(context,emailController.text.toString(), passwordController.text.toString());
                                 
                                },

                                child: provider.loading?CircularProgressIndicator():Text(
                                  "Login",
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                                color: Colors.white,
                              ),
                        SizedBox(
                          height: 20,
                        ),
                        GestureDetector(
                child: const Text(
                  'Forgot Password?',
                  style:TextStyle(
                    decoration : TextDecoration.underline,
                    color:Colors.green,
                    fontSize: 20,
                  )
                ),
                onTap: () =>context.navigateNamedTo('/forgot-password')
              ),
              GestureDetector(
                onTap: () => context.navigateNamedTo('/signup'),
                child: RichText(
                  text:  TextSpan(
                    style:TextStyle(color: Color.fromARGB(255, 2, 2, 2)),
                    text: 'No Account? ',
                    children: [
                      TextSpan(
                        recognizer: TapGestureRecognizer(),
                        
                        text: 'Sign up'
              
                      )
              
                    ]
              
                  )
                ),
              ),
                        MaterialButton(
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20.0))),
                          elevation: 5.0,
                          height: 40,
                      onPressed: () {
                        context.navigateNamedTo('/signup');
                      },
                          child: Text(
                            
                            "Register Now",
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          color: Colors.blue,
                        ),
                        
                        SizedBox(
                          height: 10,
                        ),
                        Visibility(
                            maintainSize: true,
                            maintainAnimation: true,
                            maintainState: true,
                            visible: visible,
                            child: Container(
                                child: CircularProgressIndicator(
                              color: Colors.white,
                            ))),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      ],
      ),
    );
  }
  

}
