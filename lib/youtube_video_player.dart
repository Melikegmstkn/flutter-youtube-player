import 'dart:async';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class YoutubePlayerPattern extends StatefulWidget {
  const YoutubePlayerPattern({Key? key}) : super(key: key);

  @override
  _YoutubePlayerPatternState createState() => _YoutubePlayerPatternState();
}

class _YoutubePlayerPatternState extends State<YoutubePlayerPattern> {
  late YoutubePlayerController _controller;
  late bool showQuestion;
  late int currentSeconds;
  late int maxSec;
  bool? isCorrect;

  List<int> quesSeconds = [5, 15, 25];

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: 'qqcjNCHW1kA',
      flags: const YoutubePlayerFlags(
        autoPlay: true,
        mute: false,
        // controlsVisibleAtStart: true, // alt çubuğu gösterir
        // disableDragSeek: true,
      ),
    );

    currentSeconds = 0;
    maxSec = _controller.metadata.duration.inSeconds;
    showQuestion = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF343434),
      appBar: AppBar(backgroundColor: Colors.transparent),
      body: Column(
        children: [
          Container(
            decoration:
                BoxDecoration(borderRadius: BorderRadius.circular(100.0)),
            child: YoutubePlayer(
              controlsTimeOut: const Duration(seconds: 5),
              controller: _controller,
              showVideoProgressIndicator: true,
              progressColors: const ProgressBarColors(
                playedColor: Colors.white,
                handleColor: Colors.red,
              ),
              width: MediaQuery.of(context).size.width,
              onReady: () async {
                startTimeout(maxSec: quesSeconds[0] + 2);
              },
            ),
          ),
          // Text(
          //     '${((_controller.metadata.duration.inSeconds - currentSeconds) ~/ 60).toString().padLeft(2, '0')}: ${((_controller.metadata.duration.inSeconds - currentSeconds) % 60).toString().padLeft(2, '0')}'),
          showQuestion
              ? Expanded(
                  flex: 3,
                  child: buildQuestionContainer(context),
                )
              : Container(),
        ],
      ),
    );
  }

  startTimeout({required int maxSec}) {
    var duration = const Duration(seconds: 1);

    Timer.periodic(duration, (timer) {
      setState(() {
        debugPrint(timer.tick.toString());
        currentSeconds = timer.tick;
        if (timer.tick >= maxSec) timer.cancel();
        if (timer.tick == maxSec) {
          _controller.value.isPlaying
              ? _controller.pause()
              : _controller.play();
          showQuestion = !showQuestion;
        }
      });
    });
  }

  Container buildQuestionContainer(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 25.0),
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(flex: 2, child: _buildPatternSentence()),
          // Expanded(flex: 2, child: _buildQuestionWord()),
          Expanded(flex: 4, child: _buildImageOptions()),

          isCorrect == null
              ? Expanded(
                  flex: 2,
                  child: Center(
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          isCorrect = isSelect[1] ? true : false;
                        });
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.amber),
                      ),
                      child: const Text("kontrol et"),
                    ),
                  ),
                )
              : Expanded(
                  flex: 2,
                  child: Center(
                    child: ElevatedButton(
                      onPressed: () {
                        startTimeout(maxSec: quesSeconds[1] - quesSeconds[0]);
                        setState(() {
                          isCorrect = null;
                          showQuestion = !showQuestion;
                          _controller.value.isPlaying
                              ? _controller.pause()
                              : _controller.play();
                        });
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.amber),
                      ),
                      child: const Text("Devam et"),
                    ),
                  ),
                ),

          // isCorrect != null ? Expanded(child: null,)
          //     :Container(),
        ],
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
                  fontSize: 18,
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
                    fontSize: 18,
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
          // crossAxisSpacing: 70,
          childAspectRatio: 0.3,
          mainAxisExtent: 100,
          // mainAxisSpacing: 10,
        ),
        physics: const ScrollPhysics(),
        itemCount: imgPathList.length,
        padding: const EdgeInsets.only(right: 30, left: 30),
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

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
