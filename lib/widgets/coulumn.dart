import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Coulumn extends StatelessWidget {
  const Coulumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: ListView.builder(
        itemCount: 5,
        shrinkWrap: true,
        itemBuilder: ((context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 300,
              width: 400,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  // color: Colors.amber,
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://www.touropia.com/gfx/b/2011/02/trevi_fountain-1.jpg",
                    ),
                    fit: BoxFit.fitHeight,
                  )),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    width: 300,
                    margin: EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          10,
                        ),
                        color:
                            Color.fromARGB(255, 40, 18, 202).withOpacity(.5)),
                    child: Center(
                      child: Text(
                        "Rome",
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
