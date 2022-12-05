import 'package:date_field/date_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:syncfusion_flutter_signaturepad/signaturepad.dart';

import '../../../constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    List<String> purpose = [
      'Replacement Of License',
      'Renewal of License',
      'License Conversation',
      'International Drivers Permit',
      'Road Worthy Duplication',
      'Registration of Vehicle',
      'Appointment',
      'Meeting',
      'Others'
    ];
    String? selectedPurpose = 'Replacement Of License';

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.all(5.0),
            child: Text(
              'VISITORS MANAGEMENT SYSTEM',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Select any of the two options',
              style: TextStyle(
                fontWeight: FontWeight.w100,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 400,
                height: 200,
                child: InkWell(
                  onTap: () => showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                            contentPadding: const EdgeInsets.only(bottom: 10),
                            title: Text(
                              'Visitor Information'.toUpperCase(),
                              style: const TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.w800),
                              textAlign: TextAlign.left,
                            ),
                            content: SizedBox(
                              width: 800,
                              height: 700,
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: TextFormField(
                                              keyboardType: TextInputType.text,
                                              onSaved: (email) {},
                                              decoration: const InputDecoration(
                                                hintText: "Edmond",
                                                labelText: 'Firstname',
                                                border: OutlineInputBorder(),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: TextFormField(
                                              keyboardType: TextInputType.text,
                                              onSaved: (email) {},
                                              decoration: const InputDecoration(
                                                hintText: "Edmond",
                                                labelText: 'Lastname',
                                                border: OutlineInputBorder(),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: TextFormField(
                                              onSaved: (val) {},
                                              decoration: const InputDecoration(
                                                border: OutlineInputBorder(),
                                                labelText: 'Phone Number',
                                              ),
                                              keyboardType: TextInputType.phone,
                                              inputFormatters: [
                                                FilteringTextInputFormatter
                                                    .allow(RegExp(
                                                        r'^[()\d -]{1,15}$')),
                                              ],
                                              style: const TextStyle(
                                                  fontSize: 16.0,
                                                  color: Colors.black),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: DropdownButtonFormField(
                                              items: purpose
                                                  .map((item) =>
                                                      DropdownMenuItem(
                                                          value: item,
                                                          child: Text(
                                                            item,
                                                          )))
                                                  .toList(),
                                              value: selectedPurpose,
                                              onChanged: (item) {
                                                setState(() {
                                                  selectedPurpose =
                                                      item as String?;
                                                });
                                              },
                                              decoration: const InputDecoration(
                                                border: OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                        color: Colors.green)),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: TextFormField(
                                              keyboardType: TextInputType.text,
                                              onSaved: (email) {},
                                              decoration: const InputDecoration(
                                                hintText: "Edmond",
                                                labelText:
                                                    'Company / Institution',
                                                border: OutlineInputBorder(),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: TextFormField(
                                              keyboardType: TextInputType.text,
                                              onSaved: (email) {},
                                              decoration: const InputDecoration(
                                                labelText: 'Officer to See',
                                                border: OutlineInputBorder(),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: TextFormField(
                                              keyboardType:
                                                  TextInputType.number,
                                              onSaved: (email) {},
                                              decoration: const InputDecoration(
                                                labelText: 'Tag No',
                                                border: OutlineInputBorder(),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: DateTimeFormField(
                                              decoration: const InputDecoration(
                                                hintStyle: TextStyle(
                                                    color: Colors.black45),
                                                errorStyle: TextStyle(
                                                    color: Colors.redAccent),
                                                border: OutlineInputBorder(),
                                                suffixIcon:
                                                    Icon(Icons.event_note),
                                                labelText: 'Only time',
                                              ),
                                              mode: DateTimeFieldPickerMode
                                                  .dateAndTime,
                                              autovalidateMode:
                                                  AutovalidateMode.always,
                                              validator: (e) => (e?.day ?? 0) ==
                                                      1
                                                  ? 'Please not the first day'
                                                  : null,
                                              onDateSelected: (DateTime value) {
                                                print(value);
                                              },
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: const [
                                            Text(
                                              'Signature',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w400),
                                            ),
                                            SizedBox(
                                              height: 300,
                                              width: double.infinity,
                                              child: SfSignaturePad(
                                                minimumStrokeWidth: 1,
                                                maximumStrokeWidth: 3,
                                                strokeColor: Colors.black,
                                                backgroundColor: Colors.grey,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    // Row(
                                    //   children: [
                                    //     Expanded(
                                    //       child: Padding(
                                    //         padding: const EdgeInsets.all(5.0),
                                    //         child: SizedBox(
                                    //           height: 50,
                                    //           child: RaisedButton(
                                    //             color: Colors.red,
                                    //             onPressed: (){},
                                    //             child: Row(
                                    //               children: <Widget>[
                                    //                 Icon(
                                    //                   Icons.cancel,
                                    //                   color: Colors.white,
                                    //                 ),
                                    //                 Spacer(),
                                    //                 Text(
                                    //                   'Cancel'.toUpperCase(),
                                    //                   textAlign: TextAlign.center,
                                    //                   style: TextStyle(
                                    //                     fontSize: 20,
                                    //                     fontWeight: FontWeight.w700,
                                    //                     color: Colors.white,
                                    //                   ),
                                    //                 ),
                                    //                 Spacer()
                                    //               ],
                                    //             ),
                                    //           ),
                                    //         ),
                                    //       ),
                                    //     ),
                                    //     Expanded(
                                    //       child: Padding(
                                    //         padding: const EdgeInsets.all(5.0),
                                    //         child: SizedBox(
                                    //           height: 50,
                                    //           child: RaisedButton(
                                    //             color: Colors.green,
                                    //             onPressed: (){},
                                    //             child: Row(
                                    //               children: <Widget>[
                                    //                 Icon(
                                    //                   Icons.done,
                                    //                   color: Colors.white,
                                    //                 ),
                                    //                 Spacer(),
                                    //                 Text(
                                    //                   'submit'.toUpperCase(),
                                    //                   textAlign: TextAlign.center,
                                    //                   style: TextStyle(
                                    //                     fontSize: 20,
                                    //                     fontWeight: FontWeight.w700,
                                    //                     color: Colors.white,
                                    //                   ),
                                    //                 ),
                                    //                 Spacer()
                                    //               ],
                                    //             ),
                                    //           ),
                                    //         ),
                                    //       ),
                                    //     ),
                                    //   ],
                                    // ),
                                  ],
                                ),
                              ),
                            ),
                            actionsAlignment: MainAxisAlignment.center,
                            actions: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: SizedBox(
                                    height: 50,
                                    child: MaterialButton(
                                      color: Colors.red,
                                      onPressed: () {},
                                      child: Row(
                                        children: <Widget>[
                                          const Icon(
                                            Icons.cancel,
                                            color: Colors.white,
                                          ),
                                          const Spacer(),
                                          Text(
                                            'Cancel'.toUpperCase(),
                                            textAlign: TextAlign.center,
                                            style: const TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w700,
                                              color: Colors.white,
                                            ),
                                          ),
                                          const Spacer()
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: SizedBox(
                                    height: 50,
                                    child: MaterialButton(
                                      color: Colors.green,
                                      onPressed: () {},
                                      child: Row(
                                        children: <Widget>[
                                          const Icon(
                                            Icons.done,
                                            color: Colors.white,
                                          ),
                                          const Spacer(),
                                          Text(
                                            'submit'.toUpperCase(),
                                            textAlign: TextAlign.center,
                                            style: const TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w700,
                                              color: Colors.white,
                                            ),
                                          ),
                                          const Spacer()
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )),
                  child: Card(
                    elevation: 5,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                          child: Container(
                            width: 100,
                            height: 100,
                            decoration: const BoxDecoration(
                              color: Colors.black,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            child: const Icon(
                              Icons.person_add_alt_outlined,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                        ),
                        Text(
                          'New Visitor'.toUpperCase(),
                          style: const TextStyle(
                              fontSize: 25, fontWeight: FontWeight.w800),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              SizedBox(
                width: 400,
                height: 200,
                child: Card(
                  elevation: 5,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                        child: Container(
                          width: 100,
                          height: 100,
                          decoration: const BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: const Icon(
                            Icons.stacked_bar_chart,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                      ),
                      Text(
                        "Visitor's Data".toUpperCase(),
                        style: const TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w800),
                      )
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
