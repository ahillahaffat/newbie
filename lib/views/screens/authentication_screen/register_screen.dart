import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newbie/views/screens/authentication_screen/login_screen.dart';
import 'package:newbie/controllers/auth_controller.dart';

  class RegisterScreen extends StatefulWidget {
  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final AuthController _authController = AuthController();

  late String email;

  late String fullName;

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
                      "Create Your Account",
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
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Enter your email";
                        } else {
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
                        labelText: 'Enter your full email',
                        labelStyle: GoogleFonts.getFont(
                          "Nunito Sans",
                          fontSize: 14,
                          letterSpacing: 0.1,
                        ),
                        prefixIcon: Image.asset(
                          'assets/icons/letter.png',
                          width: 20,
                          height: 20,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Full Name',
                        style: GoogleFonts.getFont(
                          'Nunito Sans',
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.2,
                        ),
                      ),
                    ),
                    TextFormField(
                      onChanged: (value){
                        fullName = value; // Perubahan: Mengubah 'FullName' menjadi 'fullName'
                      },
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Enter your full name";
                        } else {
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
                        labelText: 'Enter your full name',
                        labelStyle: GoogleFonts.getFont(
                          "Nunito Sans",
                          fontSize: 14,
                          letterSpacing: 0.1,
                        ),
                        prefixIcon: Image.asset(
                          'assets/icons/person.png',
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
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Enter your password";
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
                        labelText: 'Enter your password',
                        labelStyle: GoogleFonts.getFont(
                          "Nunito Sans",
                          fontSize: 14,
                          letterSpacing: 0.1,
                        ),
                        prefixIcon: Image.asset(
                          'assets/icons/lock.png',
                          width: 20,
                          height: 20,
                        ),
                        suffixIcon: Icon(Icons.visibility),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    InkWell(
                    onTap: () {
                    if (_formKey.currentState!.validate()) {
                    _authController.registerNewUser(
                      email, fullName, password);
                    } else {
                     print('Form is invalid, please check the inputs');
                     }
                     },
                      child: Container(
                        width: 319,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          gradient: const LinearGradient(
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
                                'Sign up',
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
                        Text(
                          'Already an Account?',
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) {
                                return LoginScreen();
                              }),
                            );
                          },
                          child: Text(
                            'Sign In',
                            style: GoogleFonts.roboto(
                              color: Color(0xFF102DE1),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    )
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
