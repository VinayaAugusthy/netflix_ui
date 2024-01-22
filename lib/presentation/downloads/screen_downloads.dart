// import 'package:flutter/material.dart';
// import 'package:netflix/domain/http/downloads/download_images.dart';
// import 'package:netflix/domain/model/downloads/download_model.dart';
// import 'package:netflix/presentation/downloads/widgets/button_session3.dart';
// import 'package:netflix/presentation/downloads/widgets/smart_downloads.dart';
// import 'package:netflix/presentation/downloads/widgets/text_session2.dart';
// import 'package:netflix/presentation/widgets/app_bar_widget.dart';


// class ScreenDownloads extends StatefulWidget {
//   const ScreenDownloads({super.key});

//   @override
//   State<ScreenDownloads> createState() => _ScreenDownloadsState();
// }

// class _ScreenDownloadsState extends State<ScreenDownloads> {
// List<ResultsDownloads> images = [];

// @override
//   void initState() {
//     getDownloadImages();
//     super.initState();
//   }

//   getDownloadImages() async{
//     images = await Download.getImages();
//     setState(() {
      
//     });
//   }
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         appBar: const PreferredSize(
//           preferredSize: Size.fromHeight(30),
//           child: AppBarWidget(title: 'Downloads',)),
//         body:SafeArea(
//           child:images.isEmpty? 
//           const Center(child:CircularProgressIndicator(),)
//           :ListView(
//             children:   [
//                const SmartDownloads(),
//               Session2(imageList:images,),
//               const Session3(),
//             ],
//           ),
//         )
//       ),
//     );
//   }
// }



