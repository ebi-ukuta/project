import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  Future<void> signIn(String email, String password) async {
    Map data = {
      'username': email,
      'password': password,
    };

    var jsonResponse;
    var response = await http.post(
      Uri.parse('https://dummyjson.com/auth/login'),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(data),
    );

    if (response.statusCode == 200) {
      jsonResponse = json.decode(response.body);
      if (jsonResponse != null) {
        // Login successful, do something here (e.g. navigate to another screen)

        Navigator.pushReplacementNamed(context, '/second');
      }
    } else if (response.statusCode == 400) {
      // Bad request - invalid username or password
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text("Login Error"),
          content: Text("Invalid username or password."),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text("OK"),
            ),
          ],
        ),
      );
    } else {
      // Other error
      print("Error: ${response.statusCode}");
    }
  }

 /* Future signIn(String email, String password) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    //SharedPreferences is used to store the token returned by the server after successful authentication.
    // This token is then used in subsequent requests to the server to authenticate the user.
    Map data = {
      'kminchelle@qq.com': email,
      '0lelplR': password,
    };
    var jsonResponse;
    var url = Uri.parse('https://dummyjson.com/auth/login');
    var response = await http.post(url, body: data);
    if(response.statusCode == 200) {
      jsonResponse = json.decode(response.body);
      if(jsonResponse != null) {
        sharedPreferences.setString("token", jsonResponse['token']);
        Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (BuildContext context) => SecondPage()), (Route<dynamic> route) => false);
      }
    }
    else {
      print(response.body);
    }
  }*/


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child:
          //commerce logo
          Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: Colors.white,
                    height: 40, //height to 10% of screen height, 100/10 = 0.1
                    width: 291, //width t 70% of screen width
                    child: Image.asset(
                      'images/commerce.png',
                      fit: BoxFit.fill,
                    ),
                    //36
                    margin: const EdgeInsets.only(left: 106.4, top: 172, right: 106.4),
                  ),
                ),
                SizedBox(height: 56,),

                Row(
                  children: [
                    Container(
                      margin:  EdgeInsets.only(left: 24.0),
                      child: Text(
                        'Email or Username',
                        style: TextStyle(
                          fontSize: 13.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 6,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 24, right: 24),
                  child: TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade400),
                        ),
                        fillColor: Colors.white,
                        filled: true,
                        hintText: 'Username'
                    ),
                  ),
                ),
                const SizedBox(
                  height: 32,

                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 24),
                      child: const Text(
                        'Password',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                          fontSize: 13,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 6,),

                Padding(
                  padding: const EdgeInsets.only(left: 24, right: 24),
                  child: TextField(
                    controller: passwordController,
                    decoration: InputDecoration(
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade400),
                        ),
                        fillColor: Colors.white,
                        filled: true,
                        hintText: 'Password'
                    ),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 24),
                      child: const Text(
                        'Forgot Password?',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                          fontSize: 13,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    Container(
                      height: 40,
                      width: 363,
                      margin: EdgeInsets.only(left: 24, right: 24),
                      child: ElevatedButton(
                        onPressed: () {
                          signIn(emailController.text, passwordController.text);
                        },
                        child: const Text('Login',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 16,
                          ),),
                      ),
                    ),
                  ],
                ),



              ]),));

  }
}

/*signIn(String email, password) async {
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  Map data = {
    'kminchelle': email,
    '0lelplR': password,
  };
  var jsonResponse = null;
  var url = Uri.parse('https://dummyjson.com/auth/login');
  var response = await http.post(url, body: data);
  if (response.statusCode == 200) {
    jsonResponse = json.decode(response.body);
    if (jsonResponse != null) {
      sharedPreferences.setString("token", jsonResponse['token']);
      Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (BuildContext context) => SecondPage()), (Route<dynamic> route) => false);
    }
  } else if (response.statusCode == 400) {
    // Bad request - invalid username or password
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text("Login Error"),
        content: Text("Invalid username or password."),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text("OK"),
          ),
        ],
      ),
    );
  } else {
    // Other error
    print("Error: ${response.statusCode}");
  }
}

*/