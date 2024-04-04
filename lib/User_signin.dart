// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'Psychologist_signin.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController controlNickname = TextEditingController();
  final TextEditingController controlUsername = TextEditingController();
  final TextEditingController controlEmail = TextEditingController();
  bool passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.lightBlue,
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 150),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(30)),
                ),
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const SizedBox(height: 30),
                    const Text(
                      'Sign in',
                      style: TextStyle(
                        color: Colors.lightBlue,
                        fontSize: 40,
                        fontFamily: 'GoogleFonts.lato',
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.end,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const SizedBox(height: 30),
                        const Text(
                          'Username',
                          style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.normal,
                          ),
                          textAlign: TextAlign.start,
                        ),
                        TextFormField(
                          controller: controlUsername,
                          obscureText: false,
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.person_3_rounded),
                            hintText: 'Username',
                            hintStyle: TextStyle(
                              fontSize: 16,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          keyboardType: TextInputType.emailAddress,
                        ),
                        const SizedBox(height: 20),
                        const Text(
                          'Nick name',
                          style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.normal,
                          ),
                          textAlign: TextAlign.start,
                        ),
                        TextFormField(
                          controller: controlNickname,
                          obscureText: false,
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.person_3_rounded),
                            hintText: 'Nick name',
                            hintStyle: TextStyle(
                              fontSize: 16,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          keyboardType: TextInputType.emailAddress,
                        ),
                        const SizedBox(height: 20),
                        const Text(
                          'Email',
                          style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.normal,
                          ),
                          textAlign: TextAlign.start,
                        ),
                        TextFormField(
                          controller: controlEmail,
                          obscureText: false,
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.email),
                            hintText: 'example@gmail.com',
                            hintStyle: TextStyle(
                              fontSize: 16,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          keyboardType: TextInputType.emailAddress,
                        ),
                        const SizedBox(height: 130),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => PsychoPage()),
                                );
                              },
                              child: Text(
                                "Sign in as Psychologist",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ),
                            Spacer(),
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DropdownMenuPage()),
                                );
                              },
                              child: Text(
                                "Next",
                                style: TextStyle(color: Colors.lightBlue),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _signIn() {
    String email = controlEmail.text;
    print('Email: $email');
  }
}

//Sign in horizontal scrollable page

class DropdownMenuPage extends StatefulWidget {
  const DropdownMenuPage({Key? key}) : super(key: key);

  @override
  _DropdownMenuPageState createState() => _DropdownMenuPageState();
}

class _DropdownMenuPageState extends State<DropdownMenuPage> {
  String selectedUniversity = 'University A';
  String selectedYear = 'Year 1';

  @override
  void initState() {
    super.initState();
    selectedUniversity =
        'AASTU'; // Initialize selectedUniversity with a default value
    selectedYear = 'Freshman'; // Initialize selectedYear with a default value
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.lightBlue,
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 150),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(30)),
                ),
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  children: <Widget>[
                    const SizedBox(height: 30),
                    const Text(
                      'Sign in',
                      style: TextStyle(
                        color: Colors.lightBlue,
                        fontSize: 40,
                        fontFamily: 'GoogleFonts.lato',
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.start,
                    ),
                    const SizedBox(height: 5),
                    Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(0.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Select University:',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                    fontFamily: 'GoogleFonts.lato',
                                  ),
                                ),
                                Container(
                                  width: double.infinity,
                                  child: DropdownButton<String>(
                                    value: selectedUniversity,
                                    onChanged: (newValue) {
                                      setState(() {
                                        selectedUniversity = newValue!;
                                      });
                                    },
                                    items: <String>[
                                      'AASTU',
                                      'AAU',
                                      'ASTU',
                                      'BDU',
                                    ].map<DropdownMenuItem<String>>(
                                        (String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(value),
                                      );
                                    }).toList(),
                                  ),
                                ),
                                SizedBox(height: 20),
                                Text(
                                  'Select Year:',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                    fontFamily: 'GoogleFonts.lato',
                                  ),
                                ),
                                Container(
                                  width: double.infinity,
                                  child: DropdownButton<String>(
                                    value: selectedYear,
                                    onChanged: (newValue) {
                                      setState(() {
                                        selectedYear = newValue!;
                                      });
                                    },
                                    items: <String>[
                                      'Freshman',
                                      'Year 2',
                                      'Year 3',
                                      'Year 4',
                                      'Senior',
                                    ].map<DropdownMenuItem<String>>(
                                        (String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(value),
                                      );
                                    }).toList(),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 130),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => RegisterPage()),
                                  );
                                },
                                child: Text(
                                  "Back",
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                              Spacer(),
                              TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LastPage()),
                                  );
                                },
                                child: Text(
                                  "Next",
                                  style: TextStyle(color: Colors.lightBlue),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 16),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LastPage extends StatefulWidget {
  const LastPage({Key? key}) : super(key: key);

  @override
  _LastPageState createState() => _LastPageState();
}

class _LastPageState extends State<LastPage> {
  String selectedUniversity = 'University A';
  String selectedYear = 'Year 1';
  final TextEditingController controlPassword = TextEditingController();
  bool password = false;
  bool passwordVisible = false;

  @override
  void initState() {
    super.initState();
    selectedUniversity =
        'University A'; // Initialize selectedUniversity with a default value
    selectedYear = 'Year 1'; // Initialize selectedYear with a default value
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.lightBlue,
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 150),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(30)),
                ),
                padding: const EdgeInsets.all(40.0),
                child: Column(
                  children: <Widget>[
                    const SizedBox(height: 30),
                    const Text(
                      'Sign in',
                      style: TextStyle(
                        color: Colors.lightBlue,
                        fontSize: 40,
                        fontFamily: 'GoogleFonts.lato',
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.start,
                    ),
                    const SizedBox(height: 50),
                    Container(
                      width: double.infinity,
                      child: Text(
                        'Password',
                        style: TextStyle(
                          fontSize: 12,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.normal,
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    TextField(
                      controller: controlPassword,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon: IconButton(
                          icon: Icon(
                            passwordVisible
                                ? Icons.visibility
                                : Icons.visibility_off,
                          ),
                          onPressed: () {
                            setState(() {
                              passwordVisible = !passwordVisible;
                            });
                          },
                        ),
                        hintText: "*********",
                        hintStyle: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      obscureText: !passwordVisible,
                    ),
                    const SizedBox(height: 20),
                    Container(
                      width: double.infinity,
                      child: Text(
                        'Password',
                        style: TextStyle(
                          fontSize: 12,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.normal,
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    TextField(
                      controller: controlPassword,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon: IconButton(
                          icon: Icon(
                            passwordVisible
                                ? Icons.visibility
                                : Icons.visibility_off,
                          ),
                          onPressed: () {
                            setState(() {
                              passwordVisible = !passwordVisible;
                            });
                          },
                        ),
                        hintText: "*********",
                        hintStyle: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      obscureText: !passwordVisible,
                    ),
                    const SizedBox(height: 30),
                    Row(
                      children: [
                        Checkbox(
                          value: password,
                          onChanged: (valor) {
                            setState(() {
                              password = valor ?? false;
                            });
                          },
                        ),
                        const Column(
                          children: [
                            Text(
                              'By checking the box, you agree to our',
                            ),
                            Text(
                              ' Term & Conditions',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 100),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        ElevatedButton(
                          onPressed: password ? _registrar : null,
                          child: Text(
                            'SIGN UP',
                            style: TextStyle(fontSize: 14),
                          ),
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(vertical: 20),
                            foregroundColor: Colors.white,
                            backgroundColor: Colors.lightBlue,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                          ),
                        ),
                        const SizedBox(height: 16),
                        Text(
                          "Or",
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 16),
                        OutlinedButton(
                          onPressed: password ? _registrar : null,
                          child: Text(
                            'Sign in as Psychologist',
                            style: TextStyle(fontSize: 14),
                          ),
                          style: OutlinedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(vertical: 20),
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Center(
                      child: InkWell(
                        onTap: () {},
                        child: Text('Already have an account? Sign in',
                            style: TextStyle(
                                color: Theme.of(context).primaryColor),
                            textAlign: TextAlign.center),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DropdownMenuPage()),
                            );
                          },
                          child: Text(
                            "Back",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                        Spacer(),
                      ],
                    ),
                    const SizedBox(height: 16),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _registrar() {
    print('Create account');
  }

  void _signIn() {
    String password = controlPassword.text;

    print('Password: $password');
  }
}
