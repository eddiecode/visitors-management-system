import 'package:dvla/screens/desktop/home/home.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';


class DesktopScaffold extends StatefulWidget {
  const DesktopScaffold({Key? key}) : super(key: key);

  @override
  State<DesktopScaffold> createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopScaffold> {

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    String? _username;
    String? _password;

    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 200.0,horizontal: 500),
          child: Card(
            elevation: 10,
            color: Colors.green,
            child: Row(
              children: [
                Expanded(
                  child: Image.asset('assets/images/dvla1.png'),
                ),
                Expanded(
                  child: Column(
                   mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                          'Login'.toUpperCase(),
                          style: const TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold
                          )
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          textInputAction: TextInputAction.next,
                          cursorColor: kPrimaryColor,
                          onSaved: (email) {},
                          decoration: InputDecoration(
                            hintText: "Your email",
                            filled: true,
                            fillColor: kPrimaryLightColor,
                            prefixIconColor: kPrimaryColor,
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: defaultPadding, vertical: defaultPadding),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(30)),
                              borderSide: BorderSide.none,
                            ),
                            prefixIcon: Padding(
                              padding: const EdgeInsets.all(defaultPadding),
                              child: Icon(Icons.person),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: TextFormField(
                          textInputAction: TextInputAction.done,
                          obscureText: true,
                          cursorColor: kPrimaryColor,
                          decoration: InputDecoration(
                            hintText: "Your email",
                            filled: true,
                            fillColor: kPrimaryLightColor,
                            prefixIconColor: kPrimaryColor,
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: defaultPadding, vertical: defaultPadding),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(30)),
                              borderSide: BorderSide.none,
                            ),
                            prefixIcon: Padding(
                              padding: const EdgeInsets.all(defaultPadding),
                              child: Icon(Icons.person),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: defaultPadding),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
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
                  ),
                ),
              ],
            ),
          ),
        ),
    );
    // return Scaffold(
    //   backgroundColor: Colors.grey[300],
    //   appBar: myAppBar,
    //  body: Row(
    //    children: [
    //    //  open drawer
    //      myDrawer,
    //    //  body  widget
    //      Expanded(
    //          child: Column(
    //            children: [
    //              //  4 card at the top
    //              AspectRatio(
    //                aspectRatio: 4,
    //                child: SizedBox(
    //                  width: double.infinity,
    //                  child: GridView.builder(
    //                      itemCount: 4,
    //                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
    //                        crossAxisCount: 4,
    //                      ),
    //                      itemBuilder: (context,index){
    //                        return Padding(
    //                          padding: const EdgeInsets.all(8),
    //                          child: Container(
    //                            color: Colors.amber,
    //                          ),
    //                        );
    //                      }
    //                  ),
    //                ),
    //              ),
    //              //  tile
    //              Expanded(
    //                  child: ListView.builder(
    //                      itemCount: 5,
    //                      itemBuilder: (context,index){
    //                        return Padding(
    //                          padding: const EdgeInsets.all(8),
    //                          child: Container(
    //                            height: 80,
    //                            color: Colors.green,
    //                          ),
    //                        );
    //                      }
    //                  )
    //              )
    //            ],
    //          )
    //      )
    //    ],
    //  ),
    // );
  }
}
