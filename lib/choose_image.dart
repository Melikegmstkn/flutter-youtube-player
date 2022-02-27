import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChooseImagePatternPage extends StatefulWidget {
  const ChooseImagePatternPage({Key? key}) : super(key: key);

  @override
  _ChooseImagePatternPageState createState() => _ChooseImagePatternPageState();
}

class _ChooseImagePatternPageState extends State<ChooseImagePatternPage> {
  bool? isCorrect;
  @override
  Widget build(BuildContext context) {
    return buildQuestionContainer(context);
  }

  Container buildQuestionContainer(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 25.0),
      width: MediaQuery.of(context).size.width,
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50.0),
            topRight: Radius.circular(50.0),
          ),
          color: Colors.black45,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(flex: 2, child: _buildPatternSentence()),
            // Expanded(flex: 2, child: _buildQuestionWord()),
            Expanded(flex: 6, child: _buildImageOptions()),

            isCorrect == null
                ? Expanded(
                    flex: 1,
                    child: Center(
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            isCorrect = isSelect[1] ? true : false;
                          });
                        },
                        child: const Text("kontrol et"),
                      ),
                    ),
                  )
                : Expanded(
                    flex: 1,
                    child: Center(
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {});
                        },
                        child: const Text("Devam et"),
                      ),
                    ),
                  ),

            // isCorrect != null ? Expanded(child: null,)
            //     :Container(),
          ],
        ),
      ),
    );
  }

  Widget _buildPatternSentence() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          flex: 2,
          child: Center(
            child: Text(
              "Select the correct image",
              style: GoogleFonts.montserrat(
                  fontSize: 22,
                  fontWeight: FontWeight.w900,
                  fontStyle: FontStyle.normal,
                  color: const Color(0xFFFFFFFF)),
            ),
          ),
        ),
        Expanded(
          flex: 3,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.volume_up_rounded,
                  color: Color(0xFFFEB800), size: 30),
              Text(
                "Havuç",
                style: GoogleFonts.montserrat(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.normal,
                    color: const Color(0xFFFFFFFF)),
              ),
            ],
          ),
        ),
      ],
    );
  }

  List<String> imgPathList = [
    "assets/images/pineapple.png",
    "assets/images/carrot.png",
    "assets/images/avocado.png",
    "assets/images/banana.png",
  ];

  List<bool> isSelect = [
    false,
    false,
    false,
    false,
  ];

  Widget _buildImageOptions() {
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 50,
          childAspectRatio: 0.3,
          mainAxisExtent: 120,
          // mainAxisSpacing: 10,
        ),
        physics: const ScrollPhysics(),
        itemCount: imgPathList.length,
        padding: const EdgeInsets.all(15),
        itemBuilder: (context, index) {
          return InkWell(
            child: Container(
              // padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.all(8.0),
              height: 75,
              width: 75,
              decoration: BoxDecoration(
                  color: isSelect[index]
                      ? isCorrect != null
                          ? isCorrect == true
                              ? Colors.green
                              : Colors.red
                          : Colors.yellow.shade200
                      : const Color(0xFF6F6F6F),
                  borderRadius: const BorderRadius.all(Radius.circular(10))),
              child: Image.asset(imgPathList[index]),
            ),
            onTap: () {
              setState(() {
                isSelect[index] = !isSelect[index];
              });
            },
          );
        });
  }
}
