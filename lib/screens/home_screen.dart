import 'package:crypto_service/screens/exchange_currency_screen.dart';
import 'package:crypto_service/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double lastItemSize = getHeight(context) * 0.4;
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: getHeight(context),
            width: getWidth(context),
          ),
          Container(
            height: getHeight(context) * 0.6,
            width: getWidth(context),
            decoration: const BoxDecoration(
                color: Color.fromARGB(255, 36, 16, 61),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30))),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(30, 50, 30, 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Zahid Yousaf',
                            maxLines: 2,
                            style: GoogleFonts.abel(
                              color: Colors.white,
                              fontSize: 26,
                              fontWeight: FontWeight.w600,
                              height: 1.5,
                              letterSpacing: -0.5,
                            ),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                'Wallet',
                                maxLines: 2,
                                style: GoogleFonts.abel(
                                  color: Colors.grey[400],
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  height: 1.1,
                                  letterSpacing: -0.5,
                                ),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Icon(
                                IconlyLight.arrow_down_2,
                                size: 19,
                                color: Colors.grey[400],
                              )
                            ],
                          ),
                        ],
                      ),
                      const Spacer(),
                      Container(
                        height: 60,
                        width: 55,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.grey[300]!, width: 0.5),
                            borderRadius: BorderRadius.circular(12),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image:
                                    Image.asset('assets/profile.jpg').image)),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 30,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '\$3,540.',
                          maxLines: 2,
                          style: GoogleFonts.numans(
                            color: const Color.fromARGB(255, 252, 140, 205),
                            fontSize: 34,
                            fontWeight: FontWeight.w900,
                            height: 1.1,
                            letterSpacing: -0.5,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8),
                          child: Text(
                            '00',
                            maxLines: 2,
                            style: GoogleFonts.numans(
                              color: const Color.fromARGB(255, 252, 140, 205),
                              fontSize: 25,
                              fontWeight: FontWeight.w900,
                              height: 1.1,
                              letterSpacing: -0.5,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: getWidth(context),
                    alignment: Alignment.center,
                    padding: const EdgeInsets.only(top: 5),
                    child: Text(
                      'Current value',
                      maxLines: 2,
                      style: GoogleFonts.abel(
                        color: Colors.grey[400],
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        height: 1.1,
                        letterSpacing: -0.2,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        const SizedBox(
                          width: double.infinity,
                          height: 16,
                        ),
                        Positioned(
                          child: Container(
                            width: double.infinity,
                            height: 6.5,
                            decoration: BoxDecoration(
                                color: Colors.grey[500],
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                        Positioned(
                          left: 0,
                          child: Container(
                            width: (getWidth(context) - 60) / 2,
                            height: 6.5,
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 253, 178, 222),
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                        Container(
                          width: 16,
                          height: 16,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromARGB(255, 253, 178, 222),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Start',
                        style: GoogleFonts.abel(
                          color: Colors.grey[400],
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          height: 1.1,
                          letterSpacing: -0.2,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Expanded(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: 7,
                              color: Colors.grey[400],
                              width: 1,
                            ),
                            Container(
                              height: 16,
                              color: Colors.grey[400],
                              width: 1,
                            ),
                            Container(
                              height: 7,
                              color: Colors.grey[400],
                              width: 1,
                            ),
                            Container(
                              height: 16,
                              color: Colors.grey[400],
                              width: 1,
                            ),
                            Container(
                              height: 7,
                              color: Colors.grey[400],
                              width: 1,
                            ),
                            Container(
                              height: 16,
                              color: Colors.grey[400],
                              width: 1,
                            ),
                            Container(
                              height: 7,
                              color: Colors.grey[400],
                              width: 1,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Goal',
                        style: GoogleFonts.abel(
                          color: Colors.grey[400],
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          height: 1.1,
                          letterSpacing: -0.2,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 28,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 55,
                            width: 55,
                            decoration: BoxDecoration(
                                color: Colors.blue[300],
                                borderRadius: BorderRadius.circular(18)),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const SizedBox(
                                  width: 7,
                                ),
                                Container(
                                  height: 18,
                                  width: 2,
                                  color: Colors.white,
                                  padding: const EdgeInsetsDirectional.all(0),
                                ),
                                Icon(
                                  MdiIcons.arrowLeft,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          Text(
                            'Send',
                            style: GoogleFonts.abel(
                              color: Colors.grey[400],
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              height: 1.1,
                              letterSpacing: -0.2,
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Container(
                                height: 55,
                                width: 55,
                                decoration: BoxDecoration(
                                    color: Colors.grey.withOpacity(0.5),
                                    borderRadius: BorderRadius.circular(18)),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(
                                      MdiIcons.arrowRight,
                                      color: Colors.white,
                                    ),
                                    Container(
                                      height: 18,
                                      width: 2,
                                      color: Colors.white,
                                      padding:
                                          const EdgeInsetsDirectional.all(0),
                                    ),
                                    const SizedBox(
                                      width: 7,
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                              Text(
                                'Receive',
                                style: GoogleFonts.abel(
                                  color: Colors.grey[400],
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  height: 1.1,
                                  letterSpacing: -0.2,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                height: 55,
                                width: 55,
                                decoration: BoxDecoration(
                                    color: Colors.grey.withOpacity(0.5),
                                    borderRadius: BorderRadius.circular(18)),
                                child: Icon(
                                  MdiIcons.swapVertical,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                              Text(
                                'Swap',
                                style: GoogleFonts.abel(
                                  color: Colors.grey[400],
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  height: 1.1,
                                  letterSpacing: -0.2,
                                ),
                              ),
                            ],
                          )
                        ],
                      )),
                      Column(
                        children: [
                          Container(
                            height: 55,
                            width: 55,
                            decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.5),
                                borderRadius: BorderRadius.circular(18)),
                            child: Icon(
                              MdiIcons.dotsHorizontal,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          Text(
                            'All',
                            style: GoogleFonts.abel(
                              color: Colors.grey[400],
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              height: 1.1,
                              letterSpacing: -0.2,
                            ),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 2,
            child: ClipPath(
              clipper: HomeMidClipper(),
              child: Container(
                height: getHeight(context) * 0.4 - 10,
                margin: const EdgeInsets.only(left: 23, right: 23, bottom: 20),
                width: getWidth(context) - 46,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 224, 250, 163),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        bottomLeft: Radius.circular(25),
                        topRight: Radius.circular(25))),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 25),
                        child: Text(
                          'Use your coin to \nclaim a reward now',
                          maxLines: 2,
                          style: GoogleFonts.abel(
                            color: const Color.fromARGB(255, 36, 16, 61),
                            fontSize: 28,
                            fontWeight: FontWeight.w600,
                            height: 1.175,
                            letterSpacing: -0.5,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Stack(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.of(context)
                                      .push(MaterialPageRoute(builder: (ctx) {
                                    return const CurrencyExchangeScreen();
                                  }));
                                },
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 22, vertical: 8),
                                  decoration: BoxDecoration(
                                      color:
                                          const Color.fromARGB(255, 36, 16, 61),
                                      borderRadius: BorderRadius.circular(30)),
                                  child: Text(
                                    'claim reward',
                                    maxLines: 2,
                                    style: GoogleFonts.abel(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                      height: 1.175,
                                      letterSpacing: -0.2,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                    left: getWidth(context) * 0.4, top: 27),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color:
                                          const Color.fromARGB(255, 36, 16, 61),
                                      width: 1.5),
                                  color: Colors.transparent,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(13.0),
                                  child: Column(
                                    children: [
                                      const SizedBox(
                                        height: 3,
                                      ),
                                      Container(
                                        width: 10,
                                        height: 1.5,
                                        color: const Color.fromARGB(
                                            255, 36, 16, 61),
                                      ),
                                      Text(
                                        'C',
                                        style: GoogleFonts.abel(
                                          color: const Color.fromARGB(
                                              255, 36, 16, 61),
                                          fontSize: 15,
                                          fontWeight: FontWeight.w700,
                                          height: 1.175,
                                          letterSpacing: -0.2,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 50,
                          ),
                          Container(
                            margin: const EdgeInsets.only(bottom: 30),
                            height: 4,
                            width: 4,
                            decoration: const BoxDecoration(
                                color: Color.fromARGB(255, 36, 16, 61),
                                shape: BoxShape.circle),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Stack(
                        children: [
                          SizedBox(
                            height: 100,
                            width: getWidth(context) * 0.45,
                          ),
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.white,
                            child: CircleAvatar(
                              radius: 24,
                              backgroundColor:
                                  const Color.fromARGB(255, 36, 16, 61),
                              child: Image.asset(
                                'assets/ruppee.png',
                                color: const Color.fromARGB(255, 252, 140, 205),
                                height: 25,
                                width: 25,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 0,
                            left: getWidth(context) * 0.3,
                            child: Container(
                              height: 13,
                              width: 13,
                              decoration: const BoxDecoration(
                                  color: Color.fromARGB(255, 252, 140, 205),
                                  shape: BoxShape.circle),
                            ),
                          ),
                          Positioned(
                            top: 28,
                            left: getWidth(context) * 0.18,
                            child: Container(
                              height: 4,
                              width: 4,
                              decoration: const BoxDecoration(
                                  color: Color.fromARGB(255, 252, 140, 205),
                                  shape: BoxShape.circle),
                            ),
                          ),
                          Positioned(
                            bottom: 55,
                            left: getWidth(context) * 0.34,
                            child: Container(
                              height: 3,
                              width: 3,
                              decoration: const BoxDecoration(
                                  color: Color.fromARGB(255, 36, 16, 61),
                                  shape: BoxShape.circle),
                            ),
                          ),
                          Positioned(
                            bottom: 5,
                            left: getWidth(context) * 0.37,
                            child: Container(
                              height: 3,
                              width: 3,
                              decoration: const BoxDecoration(
                                  color: Color.fromARGB(255, 36, 16, 61),
                                  shape: BoxShape.circle),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 2,
            right: 0,
            child: ClipPath(
              clipper: HomeLastClipper(),
              child: Container(
                height: lastItemSize * 0.55 - 10,
                margin: const EdgeInsets.only(right: 23, bottom: 20),
                width: getWidth(context) * 0.306,
                decoration: BoxDecoration(
                    color: Colors.blue[300]!,
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(25),
                        bottomRight: Radius.circular(25))),
                child: Padding(
                  padding: const EdgeInsets.only(top: 45, right: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 5),
                        child: Transform.rotate(
                          angle: 3.14159 / 2,
                          child: const Icon(
                            Icons.wifi_rounded,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 26,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 5),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(top: 2.8),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    size: 12,
                                    color: Colors.white,
                                  ),
                                  Icon(
                                    Icons.star,
                                    size: 12,
                                    color: Colors.white,
                                  ),
                                  Icon(
                                    Icons.star,
                                    size: 12,
                                    color: Colors.white,
                                  ),
                                  Icon(
                                    Icons.star,
                                    size: 12,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              '3090',
                              style: GoogleFonts.abel(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                height: 1.175,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 5, top: 12),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'VISA',
                              style: GoogleFonts.abel(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                height: 1.175,
                                letterSpacing: -0.2,
                              ),
                            ),
                            const SizedBox(
                              width: 25,
                            ),
                            const CircleAvatar(
                              radius: 18,
                              backgroundColor: Color.fromARGB(255, 36, 16, 61),
                              child: Center(
                                child: Icon(
                                  Icons.arrow_forward_ios,
                                  size: 12,
                                  color: Colors.white,
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: BottomNavigationBar(
            showSelectedLabels: false,
            elevation: 0,
            showUnselectedLabels: false,
            currentIndex: 2,
            selectedIconTheme: IconThemeData(color: Colors.grey[900]),
            unselectedIconTheme: IconThemeData(color: Colors.grey[300]),
            iconSize: 30,
            selectedFontSize: 0,
            unselectedFontSize: 0,
            items: [
              const BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                label: '',
              ),
              const BottomNavigationBarItem(
                icon: Icon(Icons.location_city_outlined),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(MdiIcons.walletOutline),
                label: '',
              ),
              const BottomNavigationBarItem(
                icon: Icon(IconlyLight.document),
                label: '',
              ),
              const BottomNavigationBarItem(
                icon: Icon(
                  IconlyLight.profile,
                ),
                label: '',
              ),
            ]),
      ),
    );
  }
}
