import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: const MyHomePage(title: 'Chess'),
    );
  }
}

class Item {
  late String name;
  late String image;
  late String color;
  late String cubeNumber;
  late List<int> moves = [];
  late List<int> killMoves = [];
  Item(
      {required this.name,
      required this.image,
      required this.color,
      required this.cubeNumber});
}

class OriginalState {
  int? cubeNumber = null;
  late int colorNumber; // 0 = white, 1 = black
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<int> chance = [];
  List<Item> blackSide = [
    Item(
      name: "rook",
      image: "assets/black/rook.png",
      color: "black",
      cubeNumber: "a8",
    ),
    Item(
      name: "knight",
      image: "assets/black/knight.png",
      color: "black",
      cubeNumber: "b8",
    ),
    Item(
      name: "bishop",
      image: "assets/black/bishop.png",
      color: "black",
      cubeNumber: "c8",
    ),
    Item(
      name: "king",
      image: "assets/black/king.png",
      color: "black",
      cubeNumber: "d8",
    ),
    Item(
      name: "queen",
      image: "assets/black/queen.png",
      color: "black",
      cubeNumber: "a8",
    ),
    Item(
      name: "bishop",
      image: "assets/black/bishop.png",
      color: "black",
      cubeNumber: "a8",
    ),
    Item(
      name: "knight",
      image: "assets/black/knight.png",
      color: "black",
      cubeNumber: "a8",
    ),
    Item(
      name: "rook",
      image: "assets/black/rook.png",
      color: "black",
      cubeNumber: "a8",
    ),
    Item(
      name: "rook",
      image: "assets/black/pawn.png",
      color: "black",
      cubeNumber: "a8",
    ),
    Item(
      name: "rook",
      image: "assets/black/pawn.png",
      color: "black",
      cubeNumber: "a8",
    ),
    Item(
      name: "rook",
      image: "assets/black/pawn.png",
      color: "black",
      cubeNumber: "a8",
    ),
    Item(
      name: "rook",
      image: "assets/black/pawn.png",
      color: "black",
      cubeNumber: "a8",
    ),
    Item(
      name: "rook",
      image: "assets/black/pawn.png",
      color: "black",
      cubeNumber: "a8",
    ),
    Item(
      name: "rook",
      image: "assets/black/pawn.png",
      color: "black",
      cubeNumber: "a8",
    ),
    Item(
      name: "rook",
      image: "assets/black/pawn.png",
      color: "black",
      cubeNumber: "a8",
    ),
    Item(
      name: "rook",
      image: "assets/black/pawn.png",
      color: "black",
      cubeNumber: "a8",
    ),
  ];

  List<Item> whiteSide = [
    Item(
      name: "pawn",
      image: "assets/white/pawn.png",
      color: "white",
      cubeNumber: "a2",
    ),
    Item(
      name: "pawn",
      image: "assets/white/pawn.png",
      color: "white",
      cubeNumber: "b2",
    ),
    Item(
      name: "pawn",
      image: "assets/white/pawn.png",
      color: "white",
      cubeNumber: "c2",
    ),
    Item(
      name: "pawn",
      image: "assets/white/pawn.png",
      color: "white",
      cubeNumber: "d2",
    ),
    Item(
      name: "pawn",
      image: "assets/white/pawn.png",
      color: "white",
      cubeNumber: "e2",
    ),
    Item(
      name: "pawn",
      image: "assets/white/pawn.png",
      color: "white",
      cubeNumber: "f2",
    ),
    Item(
      name: "pawn",
      image: "assets/white/pawn.png",
      color: "white",
      cubeNumber: "g2",
    ),
    Item(
      name: "pawn",
      image: "assets/white/pawn.png",
      color: "white",
      cubeNumber: "h2",
    ),
    Item(
      name: "rook",
      image: "assets/white/rook.png",
      color: "white",
      cubeNumber: "a1",
    ),
    Item(
      name: "knight",
      image: "assets/white/knight.png",
      color: "white",
      cubeNumber: "b1",
    ),
    Item(
      name: "bishop",
      image: "assets/white/bishop.png",
      color: "white",
      cubeNumber: "c1",
    ),
    Item(
      name: "king",
      image: "assets/white/king.png",
      color: "white",
      cubeNumber: "d1",
    ),
    Item(
      name: "queen",
      image: "assets/white/queen.png",
      color: "white",
      cubeNumber: "e1",
    ),
    Item(
      name: "bishop",
      image: "assets/white/bishop.png",
      color: "white",
      cubeNumber: "f1",
    ),
    Item(
      name: "knight",
      image: "assets/white/knight.png",
      color: "white",
      cubeNumber: "g1",
    ),
    Item(
      name: "rook",
      image: "assets/white/rook.png",
      color: "white",
      cubeNumber: "h1",
    ),
  ];
  List cubeColors = [
    0,
    1,
    0,
    1,
    0,
    1,
    0,
    1,
    1,
    0,
    1,
    0,
    1,
    0,
    1,
    0,
    0,
    1,
    0,
    1,
    0,
    1,
    0,
    1,
    1,
    0,
    1,
    0,
    1,
    0,
    1,
    0,
    0,
    1,
    0,
    1,
    0,
    1,
    0,
    1,
    1,
    0,
    1,
    0,
    1,
    0,
    1,
    0,
    0,
    1,
    0,
    1,
    0,
    1,
    0,
    1,
    1,
    0,
    1,
    0,
    1,
    0,
    1,
    0,
  ];

  OriginalState originalState = OriginalState();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GridView.builder(
              itemCount: 64,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 8,
              ),
              itemBuilder: (BuildContext context, int index) {
                return chance.contains(index)
                    ? Container(
                        decoration: BoxDecoration(
                            color: Colors.red,
                            border: cubeColors[index] == -1
                                ? Border.all(width: 1, color: Colors.black)
                                : Border.all(
                                    width: 0, color: Colors.transparent),
                            boxShadow: cubeColors[index] == -1
                                ? [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.8),
                                      spreadRadius: 1,
                                      blurRadius: 1,
                                      offset: const Offset(0, 0),
                                    ),
                                  ]
                                : []),
                      )
                    : GestureDetector(
                        onTap: () {
                          if (index < 16 || index >= 48) {
                            if (originalState.cubeNumber == null ||
                                originalState.cubeNumber == index) {
                              selectCube(index);
                            } else {
                              setState(() {
                                cubeColors[originalState.cubeNumber!] =
                                    originalState.colorNumber;
                                originalState.cubeNumber = null;
                              });
                              selectCube(index);
                            }
                          }
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: cubeColors[index] == 1
                                  ? const Color(0xff769656)
                                  : const Color(0xffEEEED2),
                              border: cubeColors[index] == -1
                                  ? Border.all(width: 1, color: Colors.black)
                                  : Border.all(
                                      width: 0, color: Colors.transparent),
                              boxShadow: cubeColors[index] == -1
                                  ? [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.8),
                                        spreadRadius: 1,
                                        blurRadius: 1,
                                        offset: const Offset(0, 0),
                                      ),
                                    ]
                                  : []),
                          child: index < 16
                              ? Image.asset(blackSide[index].image)
                              : index >= 48 && index < 64
                                  ? Image.asset(whiteSide[index - 48].image)
                                  : const SizedBox.shrink(),
                        ),
                      );
              },
            ),
          ],
        ),
      ),
    );
  }

  selectCube(index) {
    setState(() {
      if (cubeColors[index] == 0 || cubeColors[index] == 1) {
        originalState.cubeNumber = index;
        originalState.colorNumber = cubeColors[index];
        cubeColors[index] = -1;
      } else if (cubeColors[index] == -1 && originalState.cubeNumber == index) {
        cubeColors[index] = originalState.colorNumber;
        originalState.cubeNumber = null;
      }
    });
  }
}
