import 'package:flutter/material.dart';
import 'package:login_app/log_in.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:const  EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: [
            const  Text(
              'WELCOME!',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),

            const  SizedBox(height: 50,),
      
            const  TextField(
              decoration: InputDecoration(
                labelText: 'First Name',
                border: OutlineInputBorder(
                  borderSide: BorderSide(width: 1, )
                )
              ),
            ),
            
      
            const  SizedBox(height: 20,),

            const  TextField(
              decoration: InputDecoration(
                labelText: 'Last Name',
                border: OutlineInputBorder(
                  borderSide: BorderSide(width: 1, )
                )
              ),
            ),
            
      
            const  SizedBox(height: 20,),
      
            const  TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(
                  borderSide: BorderSide(width: 1, )
                )
              ),
            ),

            const  SizedBox(height: 20,),
            const TextField(
              keyboardType: TextInputType.visiblePassword,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(
                  borderSide: BorderSide(width: 1, )
                )
              ),
            ),

            const  SizedBox(height: 20,),

            ElevatedButton(
              onPressed: (){
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    duration: Duration(seconds: 3),
                    backgroundColor: Colors.green,
                    content: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.done_outlined,size: 40,color: Colors.white,),
                        Text(
                          'Successfully Account Created',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        )
                      ],
                    )
                  ),
                );
              }, 
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black87,
                
              ),
              child: Container(
                width: 100,
                height: 40,
                child:const Center(
                  child:  Text(
                    'SIGN UP',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 26,
                    ),
                  ),
                ),
              )
            ),

            const SizedBox(height: 40,),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Have an account?",
                ),

                TextButton(
                  onPressed: (){
                    Navigator.push(
                      context, 
                      MaterialPageRoute(builder: (context)=> const LogIn())
                    );
                  }, 
                  child:const Text(
                    'Log In',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            )

          ],
        ),
      ),
    );
  }
}