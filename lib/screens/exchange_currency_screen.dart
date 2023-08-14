import 'package:crypto_service/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';

class CurrencyExchangeScreen extends StatelessWidget {
  const CurrencyExchangeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: getHeight(context),
        width: getWidth(context),
        color: Colors.white,
        padding: const EdgeInsets.fromLTRB(30, 60, 30, 15),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Currency \nExchange',
                  maxLines: 2,
                  style: GoogleFonts.abel(
                    color: const Color.fromARGB(255, 36, 16, 61),
                    fontSize: 26,
                    fontWeight: FontWeight.w600,
                    height: 1.18,
                    letterSpacing: -0.2,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey[300]!),
                      borderRadius: BorderRadius.circular(18)),
                  child: const Center(
                    child: Icon(
                      IconlyBold.category,
                      color: Colors.grey,
                      size: 25,
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 35,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black.withOpacity(0.2)),
                  borderRadius: BorderRadius.circular(22)),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor:
                        const Color.fromARGB(255, 36, 16, 61).withOpacity(0.1),
                    radius: 45,
                    child: Image.asset(
                      'assets/coin.png',
                      height: 60,
                      width: 60,
                    ),
                  ),
                  const SizedBox(
                    width: 8.1,
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Column(
                              children: [
                                Row(
                                  children: [
                                    const SizedBox(
                                      width: 3,
                                    ),
                                    Container(
                                      width: 20,
                                      height: 2.5,
                                      color:
                                          const Color.fromARGB(255, 36, 16, 61),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    const SizedBox(
                                      width: 3,
                                    ),
                                    Text(
                                      'C',
                                      maxLines: 2,
                                      style: GoogleFonts.numans(
                                        color: const Color.fromARGB(
                                            255, 36, 16, 61),
                                        fontSize: 26,
                                        fontWeight: FontWeight.w800,
                                        height: 1.18,
                                        letterSpacing: -0.2,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 2.3,
                            ),
                            Text(
                              '96,000',
                              maxLines: 2,
                              style: GoogleFonts.numans(
                                color: const Color.fromARGB(255, 36, 16, 61),
                                fontSize: 26,
                                fontWeight: FontWeight.w800,
                                height: 1.18,
                                letterSpacing: 1,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          "use CRED coin to claim\ntoday's rewards",
                          style: GoogleFonts.abel(
                            color: const Color.fromARGB(255, 36, 16, 61),
                            fontSize: 13.5,
                            fontWeight: FontWeight.w500,
                            height: 1.18,
                            letterSpacing: -0.5,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 19,
                  ),
                  const CircleAvatar(
                    radius: 20,
                    backgroundColor: Color.fromARGB(255, 36, 16, 61),
                    child: Center(
                      child: Icon(
                        Icons.arrow_forward_ios,
                        size: 13,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 22,
            ),
            Stack(
              children: [
                ClipPath(
                  clipper: ExchangeCurrencyMidClipper(),
                  child: Container(
                    height: getHeight(context) * 0.4,
                    decoration: BoxDecoration(
                        color: Colors.blue[400],
                        borderRadius: BorderRadius.circular(25)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 25),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'CRED',
                                        maxLines: 2,
                                        style: GoogleFonts.abel(
                                          color: Colors.white,
                                          fontSize: 25,
                                          fontWeight: FontWeight.w700,
                                          height: 1.1,
                                          letterSpacing: 1,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(top: 8),
                                        child: Icon(
                                          IconlyLight.arrow_down_2,
                                          size: 20,
                                          color: Colors.white,
                                        ),
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'Balance 30,540,00',
                                    style: GoogleFonts.abel(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                      height: 1.1,
                                      letterSpacing: -0.5,
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    'You send',
                                    maxLines: 2,
                                    style: GoogleFonts.abel(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                      height: 1.1,
                                      letterSpacing: -0.2,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 6,
                                  ),
                                  Text(
                                    '240.00',
                                    style: GoogleFonts.abel(
                                      color: Colors.white,
                                      fontSize: 26,
                                      fontWeight: FontWeight.w700,
                                      height: 1.1,
                                      letterSpacing: -0.5,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Expanded(
                              child: Stack(
                            children: [
                              Positioned(
                                top: 28,
                                left: getWidth(context) * 0.25,
                                child: Container(
                                  height: 18,
                                  width: 18,
                                  decoration: const BoxDecoration(
                                      color: Color.fromARGB(255, 224, 250, 163),
                                      shape: BoxShape.circle),
                                ),
                              ),
                              Positioned(
                                top: 85,
                                left: getWidth(context) * 0.02,
                                child: Container(
                                  height: 6,
                                  width: 6,
                                  decoration: const BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle),
                                ),
                              ),
                              Positioned(
                                top: 70,
                                left: getWidth(context) * 0.21,
                                child: Container(
                                  height: 9,
                                  width: 9,
                                  decoration: const BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle),
                                ),
                              ),
                              Positioned(
                                top: 57,
                                left: getWidth(context) * 0.12,
                                child: Container(
                                  height: 5,
                                  width: 5,
                                  decoration: const BoxDecoration(
                                      color: Color.fromARGB(255, 36, 16, 61),
                                      shape: BoxShape.circle),
                                ),
                              ),
                            ],
                          ))
                        ],
                      ),
                    ),
                  ),
                ),
                ClipPath(
                  clipper: ExchangeCurrencyLastClipper(),
                  child: Container(
                    height: getHeight(context) * 0.4,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 36, 16, 61),
                        borderRadius: BorderRadius.circular(25)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 25),
                      child: Column(
                        children: [
                          Expanded(
                              child: Stack(
                            children: [
                              Positioned(
                                bottom: 60,
                                right: getWidth(context) * 0.02,
                                child: Container(
                                  height: 13,
                                  width: 13,
                                  decoration: const BoxDecoration(
                                      color: Color.fromARGB(255, 252, 140, 205),
                                      shape: BoxShape.circle),
                                ),
                              ),
                              Positioned(
                                bottom: 42,
                                right: getWidth(context) * 0.225,
                                child: Container(
                                  height: 4,
                                  width: 4,
                                  decoration: const BoxDecoration(
                                      color: Color.fromARGB(255, 252, 140, 205),
                                      shape: BoxShape.circle),
                                ),
                              ),
                              Positioned(
                                bottom: 10,
                                right: getWidth(context) * 0.33,
                                child: Container(
                                  height: 6,
                                  width: 6,
                                  decoration: const BoxDecoration(
                                      color: Color.fromARGB(255, 224, 250, 163),
                                      shape: BoxShape.circle),
                                ),
                              ),
                            ],
                          )),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'USD',
                                        maxLines: 2,
                                        style: GoogleFonts.abel(
                                          color: Colors.white,
                                          fontSize: 25,
                                          fontWeight: FontWeight.w700,
                                          height: 1.1,
                                          letterSpacing: 1,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(top: 8),
                                        child: Icon(
                                          IconlyLight.arrow_down_2,
                                          size: 20,
                                          color: Colors.white,
                                        ),
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'Balance 0',
                                    style: GoogleFonts.abel(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                      height: 1.1,
                                      letterSpacing: -0.5,
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    'You get',
                                    maxLines: 2,
                                    style: GoogleFonts.abel(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                      height: 1.1,
                                      letterSpacing: -0.2,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 6,
                                  ),
                                  Text(
                                    '36.70',
                                    style: GoogleFonts.abel(
                                      color: Colors.white,
                                      fontSize: 26,
                                      fontWeight: FontWeight.w700,
                                      height: 1.1,
                                      letterSpacing: -0.5,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            const Spacer(),
            Container(
              width: getWidth(context),
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 224, 250, 163),
                  borderRadius: BorderRadius.circular(
                    30,
                  )),
              height: 75,
              child: Center(
                child: Text(
                  "Continue",
                  style: GoogleFonts.abel(
                    color:
                        const Color.fromARGB(255, 36, 16, 61).withOpacity(0.9),
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    height: 1.18,
                    letterSpacing: 0,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
