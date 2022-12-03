import 'package:flutter/material.dart';

import '../../constants.dart';
import '../desktop/home/home.dart';
 class MobileScaffold extends StatelessWidget {
   const MobileScaffold({Key? key}) : super(key: key);

   @override
   Widget build(BuildContext context) {
     return Scaffold(
       body: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           Image.asset('assets/images/dvla.png'),
           const SizedBox(height: defaultPadding),
           Padding(
             padding: const EdgeInsets.all(15.0),
             child: TextFormField(
               keyboardType: TextInputType.emailAddress,
               textInputAction: TextInputAction.next,
               cursorColor: kPrimaryColor,
               onSaved: (email) {},
               decoration: InputDecoration(
                 hintText: "Your email",
                 prefixIcon: Padding(
                   padding: const EdgeInsets.all(defaultPadding),
                   child: Icon(Icons.person),
                 ),
               ),
             ),
           ),
           Padding(
             padding: const EdgeInsets.all(15.0),
             child: TextFormField(
               textInputAction: TextInputAction.done,
               obscureText: true,
               cursorColor: kPrimaryColor,
               decoration: InputDecoration(
                 hintText: "Your password",
                 prefixIcon: Padding(
                   padding: const EdgeInsets.all(defaultPadding),
                   child: Icon(Icons.lock),
                 ),
               ),
             ),
           ),
           Padding(
             padding: const EdgeInsets.only(left: 15.0,right: 15,top: 5),
             child: Hero(
               tag: "login_btn",
               child: ElevatedButton(
                 onPressed: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
                 },
                 child: Text(
                   "Login".toUpperCase(),
                 ),
               ),
             ),
           ),

         ],
       )
     );
   }
 }
