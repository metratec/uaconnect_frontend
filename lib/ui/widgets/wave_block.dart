// import 'package:flutter/material.dart';
// import 'package:wave/config.dart';
// import 'package:wave/wave.dart';

// class WaveBlock extends StatelessWidget {
//   WaveBlock({
//     Key? key,
//   }) : super(key: key);

//   final CustomConfig config = CustomConfig(
//     // gradients: [
//     //   [Colors.red, Color(0xEEF44336)],
//     //   [Colors.redAccent, Color(0x77E57373)],
//     //   [Colors.orange, Color(0x66FF9800)],
//     //   [Colors.yellow, Color(0x55FFEB3B)]
//     // ],
//     colors: [
//       Colors.blue,
//       Colors.blueAccent,
//       Colors.lightBlue,
//       // Colors.lightBlueAccent
//       Colors.yellow
//     ],

//     durations: [35000, 19440, 10800, 6000],
//     heightPercentages: [0.20, 0.23, 0.25, 0.30],
//     blur: const MaskFilter.blur(BlurStyle.outer, 10.0),
//     // gradientBegin: Alignment.bottomLeft,
//     // gradientEnd: Alignment.topRight,
//   );

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 30,
//       width: double.infinity,
//       child: WaveWidget(
//         config: config,
//         size: const Size(double.infinity, double.infinity),
//         waveAmplitude: 2,
//       ),
//     );
//   }
// }
