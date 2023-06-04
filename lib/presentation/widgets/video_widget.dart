import 'package:flutter/material.dart';
import 'package:netflix/core/strings.dart';

class VideoWidget extends StatelessWidget {
   VideoWidget({
     required this.passList,
     required this.index,
    super.key,
  });

 List passList;
 int index;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity-50,
          height: 200,
          child: 
              
              Image.network(
                kBaseUrl+passList[index].backdropPath,
                fit: BoxFit.cover,
              ),
            ),
        Positioned(
          bottom: 10,
          right: 10,
          child: CircleAvatar(
            backgroundColor: Colors.black.withOpacity(0.5),
            radius: 25,
            child: IconButton(
              onPressed: (){}, 
              icon: const Icon(
                Icons.volume_down_alt,
              ),
            ),
          ),
        ),
      ],
    );
  }
}