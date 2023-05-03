import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:invoice_app_flutter/Models/sample_data.dart';
import 'package:invoice_app_flutter/Screens/third_screen.dart';
import 'package:invoice_app_flutter/constants/constants.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/background.jpg'),
                opacity: 0.4)),
        child: Stack(
          children: [
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
                        size: 15,
                        color: textColor,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 39, left: 16),
                  child: Text(
                    'Add New Invoice',
                    style: GoogleFonts.jost(
                        fontSize: 22,
                        color: allText,
                        fontWeight: FontWeight.w500),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25, top: 106),
                  child: Container(
                    width: 163,
                    height: 132,
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.4),
                        borderRadius: BorderRadius.circular(22)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 87.93,
                          height: 82,
                          decoration: BoxDecoration(
                              gradient: mainGradient,
                              borderRadius: BorderRadius.circular(13.12)),
                          child: const Icon(
                            Icons.qr_code_scanner_outlined,
                            size: 43,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Scan Your Bill',
                          style: TextStyle(color: textColor),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 106),
                  child: Container(
                    height: 100,
                    width: 3,
                    color: Colors.white.withOpacity(0.3),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20, top: 106, left: 10),
                  child: Container(
                    width: 163,
                    height: 132,
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.4),
                        borderRadius: BorderRadius.circular(22)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 87.93,
                          height: 82,
                          decoration: BoxDecoration(
                              gradient: mainGradient,
                              borderRadius: BorderRadius.circular(13.12)),
                          child: const Icon(
                            Icons.file_upload_outlined,
                            size: 43,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Upload Bill',
                          style: TextStyle(color: textColor),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 270,
              ),
              child: GestureDetector(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ThirdScreen(),
                    )),
                child: Container(
                  width: double.infinity,
                  height: 61,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 27),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          icon: Image.asset('assets/icons/file_icon.png'),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          'My Incoices',
                          style: GoogleFonts.jost(
                              color: textColor,
                              fontWeight: FontWeight.w500,
                              fontSize: 21),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 330),
              child: SizedBox(
                height: double.infinity,
                child: ListView.builder(
                  itemCount: 11,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(
                          bottom: 10, left: 20, right: 20),
                      child: Container(
                          height: 78,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(14)),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image(image: AssetImage(imageslogo[index])),
                                Stack(
                                  children: [
                                    Text(CompanyName[index],
                                        style: GoogleFonts.roboto(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold)),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 25),
                                      child: Text(
                                        'Invoice no: 458451645',
                                        style: GoogleFonts.roboto(
                                            fontSize: 14, color: Colors.grey),
                                      ),
                                    )
                                  ],
                                ),
                                Stack(
                                  alignment: AlignmentDirectional.topEnd,
                                  children: [
                                    Text(
                                      numbers[index],
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: textColor),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 25),
                                      child: Text(
                                        '29 Dec 2023',
                                        style: GoogleFonts.roboto(
                                            fontSize: 12, color: Colors.grey),
                                      ),
                                    )
                                  ],
                                ),
                                status[index] == 'pending'
                                    ? Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: const [
                                          Icon(
                                            Icons.av_timer_rounded,
                                            color: Colors.orange,
                                            size: 18,
                                          ),
                                          Text(
                                            'Pending',
                                            style: TextStyle(
                                                fontSize: 13,
                                                color: Colors.orange),
                                          )
                                        ],
                                      )
                                    : status[index] == 'approved'
                                        ? Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: const [
                                              Icon(
                                                Icons.check_circle_outline,
                                                color: Colors.green,
                                                size: 18,
                                              ),
                                              Text(
                                                'accepted',
                                                style: TextStyle(
                                                    fontSize: 13,
                                                    color: Colors.green),
                                              )
                                            ],
                                          )
                                        : status[index] == 'rejected'
                                            ? Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: const [
                                                  Icon(
                                                    Icons.close_outlined,
                                                    color: Colors.red,
                                                    size: 18,
                                                  ),
                                                  Text(
                                                    'rejected',
                                                    style: TextStyle(
                                                        fontSize: 13,
                                                        color: Colors.red),
                                                  )
                                                ],
                                              )
                                            : SizedBox()
                              ],
                            ),
                          )),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
