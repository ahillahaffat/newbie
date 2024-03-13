import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newbie/views/screens/authentication_screen/register_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  late String email;

  late String password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.95),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: SingleChildScrollView(
            child: SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Login Your Account Google",
                      style: GoogleFonts.sora(
                        textStyle: TextStyle(
                          color: Color(0xFF0d120E),
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0.2,
                          fontSize: 23,
                        ),
                      ),
                    ),
                    Text(
                      'To Explore the world exclusives',
                      style: GoogleFonts.lato(
                        textStyle: TextStyle(
                          color: Color(0xFF0d120E),
                          fontSize: 14,
                          letterSpacing: 0.2,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Image.asset('assets/images/girl.png', width: 200, height: 200),
                    SizedBox(height: 20),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Email',
                        style: GoogleFonts.getFont(
                          'Nunito Sans',
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.2,
                        ),
                      ),
                    ),
                    TextFormField(
                      onChanged: (value){
                        email = value;
                      },
                      validator: (value){
                        if(value!.isEmpty){
                          return 'enter your email';
                        } else{
                          return null;
                        }
                      },
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(9),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue),
                          borderRadius: BorderRadius.circular(9),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.circular(9),
                        ),
                        labelText: 'enter your email',
                        labelStyle: GoogleFonts.getFont(
                          "Nunito Sans",
                          fontSize: 14,
                          letterSpacing: 0.1,
                        ),
                        prefixIcon: Image.asset(
                          'assets/icons/email.png',
                          width: 20,
                          height: 20,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      onChanged: (value){
                        password = value;
                      },
                      validator: (value){
                        if(value!.isEmpty){
                          return 'enter your password';
                        } else {
                          return null;
                        }
                      },
                      obscureText: true,
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(9),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue),
                          borderRadius: BorderRadius.circular(9),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.circular(9),
                        ),
                        labelText: 'enter your password',
                        labelStyle: GoogleFonts.getFont(
                          "Nunito Sans",
                          fontSize: 14,
                          letterSpacing: 0.1,
                        ),
                        prefixIcon: Image.asset(
                          'assets/icons/padlock.png',
                          width: 20,
                          height: 20,
                        ),
                        suffixIcon: Icon(Icons.visibility),
                      ),
                    ),
                    SizedBox(height: 20),
              
                    InkWell(
                      onTap: (){
                        if (_formKey.currentState!.validate()){
                          print(email);
                          print(password);
                        } else{
                          print('failed');
                        }
                      },
                      child: Container(
                        width: 319,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          gradient: LinearGradient(
                            colors: [
                              Color(0xFF102DE1),
                              Color(0xCC0D6EFF),
                            ],
                          ),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              left: 278,
                              top: 19,
                              child: Opacity(
                                opacity: 0.5,
                                child: Container(
                                  width: 60,
                                  height: 60,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      width: 12,
                                      color: Color(0xFF103DE5),
                                    ),
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 260,
                              top: 29,
                              child: Opacity(
                                opacity: 0.5,
                                child: Container(
                                  width: 10,
                                  height: 10,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(
                                    border: Border.all(width: 3),
                                    color: Color(0xFF2141E5),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 311,
                              top: 36,
                              child: Opacity(
                                opacity: 0.3,
                                child: Container(
                                  width: 5,
                                  height: 5,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(3),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 281,
                              top: -10,
                              child: Opacity(
                                opacity: 0.3,
                                child: Container(
                                  width: 20,
                                  height: 20,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                            ),
                            Center(
                              child: Text(
                                'Sign in',
                                style: GoogleFonts.getFont(
                                  'Lato',
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Text('Need an Account?', style: GoogleFonts.roboto(
                      fontWeight: FontWeight.w500, 
                      letterSpacing: 1,
                    ),
                    ), 
                    GestureDetector(
                      onTap: (){
                        Navigator.push(
                        context, 
                        MaterialPageRoute(builder: (context) => RegisterScreen()
                        ));
                      },
                      child: Text(
                        'Sign Up',style: GoogleFonts.roboto(
                        color:  Color(0xFF102DE1),
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                    ),
                    ],)
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
