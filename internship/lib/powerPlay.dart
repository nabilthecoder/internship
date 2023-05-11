// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_final_fields, use_key_in_widget_constructors, library_private_types_in_public_api, unused_field, file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:internship/scoreBoard.dart';

class PowerPlayScreen extends StatefulWidget {
  @override
  _PowerPlayScreenState createState() => _PowerPlayScreenState();
}

class _PowerPlayScreenState extends State<PowerPlayScreen> {
  List<bool> _part1Selected = List.generate(20, (_) => false);
  List<bool> _part2Selected = List.generate(20, (_) => false);
  List<bool> _part3Selected = List.generate(20, (_) => false);

  void _onBoxTapped(int index, int partNumber) {
    setState(() {
      if (partNumber == 1) {
        if (_part1Selected[index]) {
          _part1Selected[index] = false;
          _part2Selected[index] = false;
          _part3Selected[index] = false;
        } else {
          _part1Selected[index] = true;
          _part2Selected[index] = false;
          _part3Selected[index] = false;
        }
      } else if (partNumber == 2) {
        if (_part2Selected[index]) {
          _part1Selected[index] = false;
          _part2Selected[index] = false;
          _part3Selected[index] = false;
        } else {
          _part1Selected[index] = false;
          _part2Selected[index] = true;
          _part3Selected[index] = false;
        }
      } else if (partNumber == 3) {
        if (_part3Selected[index]) {
          _part1Selected[index] = false;
          _part2Selected[index] = false;
          _part3Selected[index] = false;
        } else {
          _part1Selected[index] = false;
          _part2Selected[index] = false;
          _part3Selected[index] = true;
        }
      }
    });
  }

  Widget _buildBox(int index, int partNumber) {
    bool isSelected = partNumber == 1
        ? _part1Selected[index]
        : partNumber == 2
            ? _part2Selected[index]
            : _part3Selected[index];
    bool isDisabled = (partNumber == 1 &&
            (_part2Selected[index] || _part3Selected[index])) ||
        (partNumber == 2 && (_part1Selected[index] || _part3Selected[index])) ||
        (partNumber == 3 && (_part1Selected[index] || _part2Selected[index]));
    return GestureDetector(
      onTap: isDisabled ? null : () => _onBoxTapped(index, partNumber),
      child: Container(
        height: 40,
        width: 40,
        margin: EdgeInsets.all(2),
        decoration: BoxDecoration(
          border: isSelected
              ? Border.all(width: 2, color: Color(0xffFEDA14))
              : Border.all(width: 0, color: Color.fromARGB(255, 141, 140, 116)),
          color: isDisabled
              ? Color.fromARGB(255, 85, 84, 84)
              : isSelected
                  ? Color(0xff1F212A)
                  : Color(0xff1F212A),
        ),
        child: Center(
            child: Text(
          '${index + 1}',
          style: TextStyle(
              color: Colors.white,
              fontFamily: GoogleFonts.poppins().fontFamily),
        )),
      ),
    );
  }

  Widget _buildPart(int partNumber) {
    List<Widget> boxes = List.generate(
      20,
      (index) => _buildBox(index, partNumber),
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 20,
        ),
        Text(
          "Power Play $partNumber",
          style: TextStyle(
              color: Colors.white,
              fontFamily: GoogleFonts.poppins().fontFamily),
        ),
        Wrap(children: boxes),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF1F212A),
        title: const Text('Start power Play Overs'),
        leading: Container(
          height: 32,
          width: 32,
          decoration: const BoxDecoration(color: Color(0xFF16171D)),
          child: const Icon(Icons.arrow_back),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildPart(1),
            SizedBox(height: 20),
            _buildPart(2),
            SizedBox(height: 20),
            _buildPart(3),
            SizedBox(
              height: 30,
            ),
            Text(
              '*Batting power play over can be selected lated during scoring from the settings',
              style: TextStyle(
                  color: Color(0xffFFFFFF),
                  fontFamily: GoogleFonts.poppins().fontFamily),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
                child: SizedBox(
              height: 48,
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(
                  child: Text('Done'),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ScoreBoardScreen()));
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Colors.yellow,
                      textStyle: TextStyle(
                          fontFamily: GoogleFonts.poppins().fontFamily))),
            ))
          ],
        ),
      ),
    );
  }
}
