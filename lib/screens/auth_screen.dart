import 'package:crypto_service/screens/home_screen.dart';
import 'package:crypto_service/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: getHeight(context),
            width: getWidth(context),
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomRight,
                    colors: [
                  const Color.fromARGB(255, 36, 16, 61),
                  const Color.fromARGB(255, 36, 16, 61).withOpacity(0.95)
                ])),
          ),
          SizedBox(
            width: getWidth(context),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 60),
                    child: ClipPath(
                      clipper: TopRightClipper(),
                      child: Container(
                        height: 125,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 209, 240, 137),
                        ),
                        width: 114,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: getWidth(context) * 0.68,
                  child: Text(
                    'Easily send and receive',
                    maxLines: 2,
                    style: GoogleFonts.abel(
                      color: Colors.white,
                      fontSize: 45,
                      fontWeight: FontWeight.w100,
                      height: 1.1,
                      letterSpacing: -0.5,
                    ),
                  ),
                ),
                SizedBox(
                  width: getWidth(context) * 0.68,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'crypto',
                        maxLines: 2,
                        style: GoogleFonts.abel(
                          color: Colors.white,
                          fontSize: 45,
                          fontWeight: FontWeight.w100,
                          height: 1.1,
                          letterSpacing: -0.5,
                        ),
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      Container(
                        padding: const EdgeInsets.only(top: 30),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              height: 8,
                              width: 8,
                              decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.7),
                                  shape: BoxShape.circle),
                            ),
                            const SizedBox(
                              width: 6,
                            ),
                            Container(
                              height: 8,
                              width: 8,
                              decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.7),
                                  shape: BoxShape.circle),
                            ),
                            const SizedBox(
                              width: 6,
                            ),
                            Container(
                              height: 8,
                              width: 30,
                              decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                      color: Colors.white.withOpacity(0.7),
                                      width: 2)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Stack(
                  children: [
                    ClipPath(
                      clipper: AuthMidClipper(),
                      child: Container(
                        height: 285,
                        decoration: BoxDecoration(
                          color: Colors.blue[400],
                        ),
                        width: getWidth(context),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: getWidth(context) * 0.2,
                      child: Image.asset(
                        'assets/coin.png',
                        height: 160,
                        width: 160,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: getWidth(context) * 0.4,
                  child: Align(
                    alignment: Alignment.center,
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        style: GoogleFonts.abel(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                        children: <TextSpan>[
                          const TextSpan(text: 'Already have an account?'),
                          TextSpan(
                            text: 'Login',
                            style: GoogleFonts.abel(
                              color: Colors.white,
                              decoration: TextDecoration.underline,
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (ctx) {
                      return const HomeScreen();
                    }));
                  },
                  child: Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white24),
                        gradient: LinearGradient(colors: [
                          Colors.transparent,
                          Colors.white.withOpacity(0.1),
                          Colors.white.withOpacity(0.2)
                        ])),
                    child: const Center(
                      child: Icon(
                        IconlyBold.arrow_right_3,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
