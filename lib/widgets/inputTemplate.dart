// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_game/constants/const.dart';

Widget inputTemplate(BuildContext context, String title, String placeholder) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        title,
        style: GoogleFonts.montserrat(
          fontSize: 14,
          color: primaryColor,
          fontWeight: FontWeight.w600,
        ),
        textAlign: TextAlign.left,
      ),
      const SizedBox(
        height: 10,
      ),
      SizedBox(
        width: MediaQuery.of(context).size.width,
        child: TextField(
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: borderColor,
                width: 2.0,
              ),
              borderRadius: BorderRadius.circular(10.0),
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: borderColor,
                width: 2.0,
              ),
            ),
            hintText: placeholder,
            hintStyle: GoogleFonts.montserrat(
              fontSize: 14,
              color: textColor,
            ),
          ),
        ),
      )
    ],
  );
}
