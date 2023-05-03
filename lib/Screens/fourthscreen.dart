import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:invoice_app_flutter/constants/constants.dart';

class FourthScreen extends StatelessWidget {
  const FourthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.save),
          backgroundColor: Colors.deepPurple,
          onPressed: () {},
        ),
        body: SingleChildScrollView(
          child: Container(
              height: MediaQuery.of(context).size.height,
              width: double.infinity,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/images/background.jpg'),
                      opacity: 0.4)),
              child: Stack(children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 32, left: 18),
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.4),
                            borderRadius: BorderRadius.circular(9)),
                        child: IconButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            icon: Icon(
                              Icons.arrow_back_ios,
                            )),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 91, left: 28, right: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Incoice Approval Request',
                        style: GoogleFonts.roboto(fontSize: 16),
                      ),
                      Text(
                        '28 Dec 2022, 19:30',
                        style: GoogleFonts.roboto(fontSize: 12),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 17, top: 119, right: 20),
                  child: Container(
                    height: 258,
                    width: 391,
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.7),
                        borderRadius: BorderRadius.circular(14)),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 30, left: 26),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Column(
                                children: [
                                  Text(
                                    'Invoice Amount of',
                                    style: GoogleFonts.roboto(
                                        fontSize: 14, color: Colors.grey),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    height: 64,
                                    width: 146,
                                    decoration: BoxDecoration(
                                        color: const Color.fromRGBO(
                                            234, 228, 233, 1),
                                        borderRadius:
                                            BorderRadius.circular(14)),
                                    child: Center(
                                        child: Text(
                                      "₹1850",
                                      style: GoogleFonts.roboto(
                                          fontSize: 31,
                                          fontWeight: FontWeight.bold,
                                          color: textColor),
                                    )),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Column(
                                children: [
                                  Stack(
                                    children: [
                                      Text(
                                        'Invoice Number',
                                        style: GoogleFonts.roboto(fontSize: 14),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 15),
                                        child: Text(
                                          '56414985654',
                                          style: GoogleFonts.roboto(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Stack(
                                    children: [
                                      Text(
                                        'Invoice Date',
                                        style: GoogleFonts.roboto(fontSize: 14),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 15),
                                        child: Text(
                                          '26 Dec,2022',
                                          style: GoogleFonts.roboto(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 30, right: 20),
                            child: Container(
                              height: 3,
                              width: 300,
                              color: Colors.white,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                right: 230, top: 10, bottom: 10),
                            child: Text(
                              'Requested To',
                              style: GoogleFonts.roboto(
                                  fontSize: 14, color: Colors.grey),
                            ),
                          ),
                          Row(
                            children: [
                              const CircleAvatar(
                                radius: 25,
                                backgroundImage: AssetImage(
                                    'assets/images/logos/Ellipse 24.png'),
                              ),
                              const SizedBox(
                                width: 25,
                              ),
                              Stack(
                                children: [
                                  Text(
                                    "MyG Kakkanad",
                                    style: GoogleFonts.roboto(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 25),
                                    child: Text(
                                      '+9194666 64658',
                                      style: GoogleFonts.roboto(fontSize: 16),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 60,
                              ),
                              Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                    image: const DecorationImage(
                                        image: AssetImage(
                                            'assets/images/logos/Vector.png')),
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(7)),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 389),
                  child: Container(
                    height: 104,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(14)),
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 33, top: 10),
                          child: Text(
                            'Request Status',
                            style: GoogleFonts.roboto(
                                fontSize: 14, color: Colors.grey.shade400),
                          ),
                        ),
                        Positioned(
                          top: 50,
                          left: 16,
                          child: Container(
                            width: 320,
                            height: 2,
                            color: Colors.grey.shade300,
                            child: Row(
                              children: [
                                Container(
                                  width: 160,
                                  height: 2,
                                  color: Colors.blue,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 35, left: 15),
                          child: Stack(
                            children: [
                              const CircleAvatar(
                                radius: 15,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 30),
                                child: Text(
                                  'Requested',
                                  style: GoogleFonts.roboto(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w300),
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 35, left: 160),
                          child: Stack(
                            children: [
                              const CircleAvatar(
                                radius: 15,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 30),
                                child: Text(
                                  'Pending',
                                  style: GoogleFonts.roboto(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w300),
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 35, left: 290),
                          child: Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: CircleAvatar(
                                  radius: 15,
                                  backgroundColor: Colors.grey.shade300,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 30),
                                child: Text(
                                  'Approved',
                                  style: GoogleFonts.roboto(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w300),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 514, left: 20),
                  child: Container(
                    width: 360,
                    height: 2,
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 523, left: 18),
                  child: Text(
                    'Invoice Copy',
                    style:
                        GoogleFonts.roboto(fontSize: 16, color: Colors.black),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 570, left: 70, right: 20),
                  child: Container(
                    height: 400,
                    width: 250,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        image: DecorationImage(
                            fit: BoxFit.contain,
                            image:
                                AssetImage('assets/images/logos/image 3.png'))),
                  ),
                )
              ])),
        ));
  }
}
