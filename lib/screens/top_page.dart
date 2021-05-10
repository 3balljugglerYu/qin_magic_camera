import 'package:flutter/material.dart';
import 'take_picture_screen.dart';
import 'package:qin_magic_camera_app/components/top_page_card.dart';

class TopPage extends StatelessWidget {
  TopPage({@required this.title});

  final String? title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title!,
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              SizedBox(
                height: 50.0,
              ),
              Expanded(
                  flex: 2,
                  child: TopPageCard(
                    icon: Icons.album,
                    mainTitle: '写真撮影の画面へ遷移',
                    subTitle: 'image_pickerライブラリを使用',
                    transitionDestination: MaterialPageRoute(
                        builder: (context) =>
                            TakePictureScreen(title: 'Qin Magic Camera')),
                  )),
              SizedBox(
                height: 550.0,
              )
            ],
          ),
        ),
      ),
    );
  }
}
