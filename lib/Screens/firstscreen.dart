import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:invoice_app_flutter/Screens/second_screen.dart';
import 'package:invoice_app_flutter/constants/constants.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/background.jpg'),
                opacity: 0.4)),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 32, left: 18),
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.4),
                    borderRadius: BorderRadius.circular(9)),
                child: Icon(
                  Icons.arrow_back_ios,
                  size: 15,
                  color: textColor,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 119,
                left: 20,
              ),
              child: Text('Enter the invoice number',
                  style: GoogleFonts.roboto(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: textColor)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 152, left: 20, right: 20),
              child: Container(
                height: 52,
                width: 388,
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.7),
                    borderRadius: BorderRadius.circular(13)),
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 17,
                    top: 15,
                  ),
                  child: Text(
                    'Eg: 6846546546',
                    style: TextStyle(
                        fontSize: 20, color: Colors.black.withOpacity(0.2)),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 226, left: 58),
              child: Image(
                  width: 314,
                  height: 314,
                  image: AssetImage('assets/images/invoice_bill.png')),
            ),
            Padding(
              padding: EdgeInsets.only(
                  // top: 664,
                  top: MediaQuery.of(context).size.height * 0.85,
                  left: 20,
                  right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {
                      // Navigator.push(context, MaterialPageRoute(builder: (context) => Notificationpage(),));
                    },
                    child: Container(
                      width: 170,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.8),
                          borderRadius: BorderRadius.circular(11)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.arrow_back_ios,
                            color: textColor,
                          ),
                          Text(
                            'Back',
                            style: TextStyle(color: textColor, fontSize: 16),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SecondScreen(),
                          ));
                    },
                    child: Container(
                      width: 170,
                      height: 50,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [
                                Color.fromRGBO(63, 70, 189, 0.9),
                                Color.fromRGBO(65, 125, 232, 0.9)
                              ],
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight),
                          color: Colors.white.withOpacity(0.8),
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Next',
                              style: GoogleFonts.roboto(
                                  color: Colors.white, fontSize: 16)),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
