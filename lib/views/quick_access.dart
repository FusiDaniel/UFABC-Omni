import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class QuickAccess extends StatefulWidget {
  const QuickAccess({super.key});

  @override
  State<QuickAccess> createState() => _QuickAccessState();
}

class _QuickAccessState extends State<QuickAccess> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        body: Center(
            child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            classCardColumn([
              weekdayCard("SEG"),
              classCard("08:00", "BD", "S302-1"),
              classCard("10:00", "AC", "S311-1"),
              classCard("19:00", "PM", "S208-0"),
            ]),
            classCardColumn([
              weekdayCard("TER"),
              classCard("08:00", "AEDII", "S311-2"),
              classCard("21:00", "CG", "408-2"),
            ]),
            classCardColumn([
              weekdayCard("QUA"),
              classCard("08:00", "LB", "S311-2"),
              classCardDuplo("10:00", "BD", "S302-1", "409-2"),
              classCard("16:00", "LFA", "209-0"),
              classCard("21:00", "PM", "A103-0"),
            ]),
            classCardColumn([
              weekdayCard("QUI"),
              classCard("08:00", "AC", "S311-1"),
              classCard("10:00", "AEDII", "402-2"),
              classCard("19:00", "CG", "408-2"),
            ]),
            classCardColumn([
              weekdayCard("SEX"),
              classCard("10:00", "LB", "S311-2"),
              classCard("16:00", "LFA", "209-0"),
            ]),
          ],
        )),
      ),
    );
  }
}

Column classCardColumn(List<Card> cards) {
  return Column(mainAxisSize: MainAxisSize.min, children: cards);
}

Card classCard(String horario, String aula, String sala) {
  return Card(
    elevation: 2,
    color: Colors.grey,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
        Text(
          horario,
          style: GoogleFonts.bigShouldersStencilDisplay(
              color: Colors.blueGrey,
              fontSize: 22,
              fontWeight: FontWeight.w700),
        ),
        Text(
          aula,
          style: GoogleFonts.bigShouldersStencilDisplay(
              color: Colors.white, fontSize: 22, fontWeight: FontWeight.w600),
        ),
        Text(
          sala,
          style: GoogleFonts.bigShouldersStencilDisplay(
              color: Colors.lime, fontSize: 22, fontWeight: FontWeight.w500),
        ),
      ]),
    ),
  );
}

Card classCardDuplo(
  String horario,
  String aula,
  String sala1,
  String sala2,
) {
  return Card(
    elevation: 2,
    color: Colors.grey,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
        Text(
          horario,
          style: GoogleFonts.bigShouldersStencilDisplay(
              color: Colors.blueGrey,
              fontSize: 22,
              fontWeight: FontWeight.w700),
        ),
        Text(
          aula,
          style: GoogleFonts.bigShouldersStencilDisplay(
              color: Colors.white, fontSize: 22, fontWeight: FontWeight.w600),
        ),
        Text(
          sala1,
          style: GoogleFonts.bigShouldersStencilDisplay(
              color: Colors.lime, fontSize: 22, fontWeight: FontWeight.w500),
        ),
        Text(
          sala2,
          style: GoogleFonts.bigShouldersStencilDisplay(
              color: Colors.lime, fontSize: 22, fontWeight: FontWeight.w500),
        ),
      ]),
    ),
  );
}

Card weekdayCard(String weekday) {
  return Card(
    elevation: 2,
    color: Colors.grey,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
        Text(
          weekday,
          style: GoogleFonts.bigShouldersStencilDisplay(
              color: Colors.limeAccent,
              fontSize: 22,
              fontWeight: FontWeight.w700),
        ),
      ]),
    ),
  );
}
