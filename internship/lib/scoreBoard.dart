// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ScoreBoardScreen extends StatelessWidget {
  const ScoreBoardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF1F212A),
        title: const Text(
          'Moeen Ali',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            height: 32,
            width: 32,
            decoration: const BoxDecoration(color: Color(0xFF16171D)),
            child: const Icon(Icons.arrow_back),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 164,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('asset/images/background.png'),
                    fit: BoxFit.cover),
              ),
              child: Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 16, top: 16, right: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            SizedBox(
                                height: 82,
                                width: 82,
                                child:
                                    Image.asset('asset/images/profileM.png')),
                            const SizedBox(
                              height: 8,
                            ),
                          ],
                        ),
                        Container(
                          height: 30,
                          width: 70,
                          decoration: BoxDecoration(
                            border: Border.all(
                                width: 1, color: const Color(0xffFEDA14)),
                          ),
                          child: Center(
                            child: Text(
                              'Follow',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                  fontFamily: GoogleFonts.poppins().fontFamily),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16, right: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              'Moeen Ali',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontFamily: GoogleFonts.poppins().fontFamily),
                            ),
                            Text(
                              'England',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontFamily: GoogleFonts.poppins().fontFamily),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Column(
                              children: [
                                Text(
                                  'Right Hand',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontFamily:
                                          GoogleFonts.poppins().fontFamily),
                                ),
                                Text(
                                  'Batting',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontFamily:
                                          GoogleFonts.poppins().fontFamily),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 24,
                            ),
                            Column(
                              children: [
                                Text(
                                  'Right Hand',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      fontFamily:
                                          GoogleFonts.poppins().fontFamily),
                                ),
                                Text(
                                  'Bowling',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                      fontFamily:
                                          GoogleFonts.poppins().fontFamily),
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 17,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Row(
                children: [
                  Text(
                    'Batting',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: GoogleFonts.poppins().fontFamily),
                  ),
                  const SizedBox(
                    width: 24,
                  ),
                  Text(
                    'Bowling',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: GoogleFonts.poppins().fontFamily),
                  ),
                  const SizedBox(
                    width: 24,
                  ),
                  Text(
                    'Compare',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: GoogleFonts.poppins().fontFamily),
                  ),
                  const SizedBox(
                    width: 24,
                  ),
                  Text(
                    'Face off',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: GoogleFonts.poppins().fontFamily),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 0,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    border:
                        Border.all(width: 2, color: const Color(0xffE5E5E9)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Positioned(
                    child: Container(
                      height: 0,
                      width: 61,
                      decoration: BoxDecoration(
                        border: Border.all(
                            width: 2, color: const Color(0xffFEDA14)),
                      ),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            Container(
              height: 43,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(color: Color(0xff1F212A)),
              child: Padding(
                padding: const EdgeInsets.only(left: 16, right: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Current Form',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          fontFamily: GoogleFonts.poppins().fontFamily),
                    ),
                    Row(
                      children: [
                        Container(
                          height: 27,
                          width: 27,
                          decoration: BoxDecoration(
                              color: const Color(0xFF16171D),
                              borderRadius: BorderRadius.circular(6)),
                          child: SizedBox(
                            height: 14,
                            width: 16,
                            child: Image.asset(
                              'asset/images/Vector.png',
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Container(
                          height: 27,
                          width: 27,
                          decoration: BoxDecoration(
                              color: const Color(0xFF16171D),
                              borderRadius: BorderRadius.circular(6)),
                          child: Image.asset('asset/images/Union.png'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 17, right: 16, top: 16, bottom: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Sr',
                    style: TextStyle(
                        color: Color(0xffFFFFFF),
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        fontFamily: GoogleFonts.poppins().fontFamily),
                  ),
                  Text(
                    'date',
                    style: TextStyle(
                        color: Color(0xffFFFFFF),
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        fontFamily: GoogleFonts.poppins().fontFamily),
                  ),
                  Text(
                    'Innings',
                    style: TextStyle(
                        color: Color(0xffFFFFFF),
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        fontFamily: GoogleFonts.poppins().fontFamily),
                  ),
                  Text(
                    'Score',
                    style: TextStyle(
                        color: Color(0xffFFFFFF),
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        fontFamily: GoogleFonts.poppins().fontFamily),
                  ),
                  Text(
                    'Out',
                    style: TextStyle(
                        color: Color(0xffFFFFFF),
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        fontFamily: GoogleFonts.poppins().fontFamily),
                  ),
                  Text(
                    'Ov',
                    style: TextStyle(
                        color: Color(0xffFFFFFF),
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        fontFamily: GoogleFonts.poppins().fontFamily),
                  ),
                ],
              ),
            ),
            Container(
              height: 0,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: const Color(0xffE5E5E9)),
              ),
            ),
            FormData(
              number: '1',
            ),
            Container(
              height: 0,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: const Color(0xffE5E5E9)),
              ),
            ),
            FormData(
              number: '2',
            ),
            Container(
              height: 0,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: const Color(0xffE5E5E9)),
              ),
            ),
            FormData(
              number: '3',
            ),
            Container(
              height: 0,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: const Color(0xffE5E5E9)),
              ),
            ),
            FormData(
              number: '4',
            ),
            Row(
              children: [
                Container(
                  height: 0,
                  width: (MediaQuery.of(context).size.width / 2) - 27,
                  decoration: BoxDecoration(
                    border:
                        Border.all(width: 1, color: const Color(0xffE5E5E9)),
                  ),
                ),
                const SizedBox(
                  width: 4,
                ),
                Text(
                  'View All',
                  style: TextStyle(
                      color: const Color(0xffFF9B71),
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      fontFamily: GoogleFonts.poppins().fontFamily),
                ),
                const SizedBox(
                  width: 4,
                ),
                Container(
                  height: 0,
                  width: (MediaQuery.of(context).size.width / 2) - 27,
                  decoration: BoxDecoration(
                    border:
                        Border.all(width: 1, color: const Color(0xffE5E5E9)),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 52,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 17, right: 15),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      ContainerBox(
                        rating: '77.45',
                        name: 'Strike Rate',
                        innings: 'Last 5 Innings',
                      ),
                      ContainerBox(
                        rating: '39.50',
                        name: 'Avg',
                        innings: 'Last 5 Innings',
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      ContainerBox(
                        rating: '18',
                        name: '4s',
                        innings: 'Last 5 Innings',
                      ),
                      ContainerBox(
                        rating: '12',
                        name: '6s',
                        innings: 'Last 5 Innings',
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 67,
            ),
            Container(
              height: 43,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(color: Color(0xff1F212A)),
              child: Padding(
                padding: const EdgeInsets.only(left: 18, top: 8),
                child: Text(
                  'Type Of Runs ',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      fontFamily: GoogleFonts.poppins().fontFamily),
                ),
              ),
            ),
            const SizedBox(
              height: 66,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 58, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 173,
                        width: 0,
                        decoration: BoxDecoration(
                          border: Border.all(
                              width: 1, color: const Color(0xffFFFFFF)),
                        ),
                      ),
                      Container(
                        height: 103,
                        width: 40,
                        decoration: BoxDecoration(color: Color(0xff0F34B8)),
                      ),
                      Container(
                        height: 71,
                        width: 40,
                        decoration: BoxDecoration(color: Color(0xff0F95B8)),
                      ),
                      Container(
                        height: 44,
                        width: 40,
                        decoration: BoxDecoration(color: Color(0xffFBD45F)),
                      ),
                      Container(
                        height: 94.69,
                        width: 40,
                        decoration: BoxDecoration(color: Color(0xffFD924A)),
                      ),
                      Container(
                        height: 154,
                        width: 40,
                        decoration: BoxDecoration(color: Color(0xffCA75C0)),
                      ),
                      Container(
                        height: 91.73,
                        width: 40,
                        decoration: BoxDecoration(color: Color(0xffF16752)),
                      ),
                    ],
                  ),
                  Container(
                    height: 0,
                    width: 330,
                    decoration: BoxDecoration(
                      border:
                          Border.all(width: 1, color: const Color(0xffFFFFFF)),
                    ),
                  ),
                  const SizedBox(height: 41),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 0,
                        width: 140,
                        decoration: BoxDecoration(
                          border: Border.all(
                              width: 1, color: const Color(0xffE5E5E9)),
                        ),
                      ),
                      Text(
                        'Runs',
                        style: TextStyle(
                            color: const Color(0xffFFFEFD),
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            fontFamily: GoogleFonts.poppins().fontFamily),
                      ),
                      Container(
                        height: 0,
                        width: 140,
                        decoration: BoxDecoration(
                          border: Border.all(
                              width: 1, color: const Color(0xffE5E5E9)),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 17, right: 15),
              child: Container(
                height: 43,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(color: Color(0xff1F212A)),
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 18,
                  ),
                  child: Row(
                    children: [
                      Text(
                        '35%',
                        style: TextStyle(
                            color: Color(0xffFEDA14),
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            fontFamily: GoogleFonts.poppins().fontFamily),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Text(
                        'dot ball against',
                        style: TextStyle(
                            color: Color(0xffFFFEFD),
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            fontFamily: GoogleFonts.poppins().fontFamily),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Text(
                        'Right-arm fast',
                        style: TextStyle(
                            color: Color(0xffFEDA14),
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            fontFamily: GoogleFonts.poppins().fontFamily),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 17, right: 15),
              child: Container(
                height: 43,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(color: Color(0xff1F212A)),
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 18,
                  ),
                  child: Row(
                    children: [
                      Text(
                        '47%',
                        style: TextStyle(
                            color: Color(0xffFEDA14),
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            fontFamily: GoogleFonts.poppins().fontFamily),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Text(
                        'boundaries against',
                        style: TextStyle(
                            color: Color(0xffFFFEFD),
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            fontFamily: GoogleFonts.poppins().fontFamily),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Text(
                        'Right-arm fast',
                        style: TextStyle(
                            color: Color(0xffFEDA14),
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            fontFamily: GoogleFonts.poppins().fontFamily),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FormData extends StatelessWidget {
  final String number;
  const FormData({
    Key? key,
    required this.number,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 17, right: 16, top: 16, bottom: 34),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            number,
            style: TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.w400,
                fontFamily: GoogleFonts.poppins().fontFamily),
          ),
          Text(
            '28/10/21',
            style: TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.w400,
                fontFamily: GoogleFonts.poppins().fontFamily),
          ),
          Text(
            'Team A Vs Team C',
            style: TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.w400,
                fontFamily: GoogleFonts.poppins().fontFamily),
          ),
          Text(
            '55(80)',
            style: TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.w400,
                fontFamily: GoogleFonts.poppins().fontFamily),
          ),
          Text(
            'LBW',
            style: TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.w400,
                fontFamily: GoogleFonts.poppins().fontFamily),
          ),
          Text(
            '50',
            style: TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.w400,
                fontFamily: GoogleFonts.poppins().fontFamily),
          ),
        ],
      ),
    );
  }
}

class ContainerBox extends StatelessWidget {
  final String rating;
  final String name;
  final String innings;
  const ContainerBox({
    Key? key,
    required this.rating,
    required this.name,
    required this.innings,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 134,
      width: 172,
      decoration: BoxDecoration(color: Color(0xff1F212A)),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 24),
          child: Column(
            children: [
              Text(
                rating,
                style: TextStyle(
                    color: const Color(0xffFEDA14),
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                    fontFamily: GoogleFonts.poppins().fontFamily),
              ),
              const SizedBox(
                height: 2,
              ),
              Text(
                name,
                style: TextStyle(
                    color: const Color(0xffFFFEFD),
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    fontFamily: GoogleFonts.poppins().fontFamily),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                innings,
                style: TextStyle(
                    color: const Color(0xffE5E5E5),
                    fontSize: 12,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w400,
                    fontFamily: GoogleFonts.poppins().fontFamily),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
