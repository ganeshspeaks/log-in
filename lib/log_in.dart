import 'package:flutter/material.dart';
import 'package:login_app/sign_up.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:const  EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: [
            const  Text(
              'WELCOME',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              width: 100,
              decoration: BoxDecoration(
                color: Colors.black87,
                borderRadius:BorderRadius.circular(3),
              ),
              child:const Center(
                child: Text(
                  'BACK',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
      
            const  SizedBox(height: 50,),
      
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
                          'Successfully Logged In',
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
              child:const SizedBox(
                width: 100,
                height: 40,
                child:Center(
                  child:  Text(
                    'LOGIN',
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
                  "Don't have an account?",
                ),

                TextButton(
                  onPressed: (){
                    Navigator.push(
                      context, 
                      MaterialPageRoute(builder: (context)=> const SignUp())
                    );
                  }, 
                  child:const Text(
                    'Sign Up',
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