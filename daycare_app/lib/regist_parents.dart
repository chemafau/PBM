import 'package:flutter/material.dart';

class RegistrationParentsPage extends StatelessWidget {
  const RegistrationParentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.brown[50],
        appBar: AppBar(
          backgroundColor: Colors.brown[50],
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            height: MediaQuery.of(context).size.height - 50,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    const SizedBox(height: 60.0),

                    const Text(
                      "Sign Up",
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      "Create Your Account",
                      style: TextStyle(fontSize: 15, color: Colors.grey[800]),
                    )
                  ],
                ),
                const SizedBox(height: 20),
                Column(
                  children: <Widget>[
                    TextField(
                      decoration: InputDecoration(
                          hintText: "Username",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18),
                              borderSide: BorderSide.none),
                          fillColor: Colors.tealAccent.withOpacity(0.1),
                          filled: true,
                          prefixIcon: const Icon(Icons.person_outline)),
                    ),

                    const SizedBox(height: 10),

                    TextField(
                      decoration: InputDecoration(
                          hintText: "Password",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18),
                              borderSide: BorderSide.none),
                          fillColor: Colors.tealAccent.withOpacity(0.1),
                          filled: true,
                          prefixIcon: const Icon(Icons.password_outlined)),
                    ),

                    const SizedBox(height: 10),

                    TextField(
                      decoration: InputDecoration(
                        hintText: "Name",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(18),
                            borderSide: BorderSide.none),
                        fillColor: Colors.tealAccent.withOpacity(0.1),
                        filled: true,
                        prefixIcon: const Icon(Icons.person_pin_outlined),
                      ),
                      obscureText: true,
                    ),

                    const SizedBox(height: 10),

                    TextField(
                      decoration: InputDecoration(
                          hintText: "Email",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18),
                              borderSide: BorderSide.none),
                          fillColor: Colors.tealAccent.withOpacity(0.1),
                          filled: true,
                          prefixIcon: const Icon(Icons.email_outlined)),
                    ),

                    const SizedBox(height: 10),

                  ],
                ),
                Container(
                    padding: const EdgeInsets.only(top: 3, left: 3),

                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/parentsInputData');
                      },
                      child: const Text(
                        "Sign Up",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      style: ElevatedButton.styleFrom(
                        shape: const StadiumBorder(),
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        backgroundColor: Colors.brown[600],
                      ),
                    )
                ),

                const Center(child: Text("Or")),

                Container(
                  height: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(
                      color: Colors.brown,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 1,
                        offset: const Offset(0, 1), // changes position of shadow
                      ),
                    ],
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 20.0,
                          width: 20.0,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/images/google.png'),
                                fit: BoxFit.cover),
                            shape: BoxShape.circle,
                          ),
                        ),

                        const SizedBox(width: 18),

                        const Text("Login with Google",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.brown,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text("Already have an account?"),
                    TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/loginParents');
                        },
                        child: const Text("Login", style: TextStyle(color: Colors.brown),)
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}