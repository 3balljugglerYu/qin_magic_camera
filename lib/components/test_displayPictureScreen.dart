// class _TakePictureScreenState extends State<TakePictureScreen> {
//   File? _image;
//   final imagePicker = ImagePicker();
//
//   Future getImageFromCamera() async {
//     final pickedFile = await imagePicker.getImage(source: ImageSource.camera);
//     setState(() {
//       if (pickedFile != null) {
//         _image = File(pickedFile.path);
//         // Navigator.push(
//         //   context,
//         //   MaterialPageRoute(
//         //     builder: (context) => DisplayPictureScreen(
//         //       imagePath: pickedFile.path,
//         //     ),
//         //   ),
//         // );
//       }
//     });
//   }
//
//   Future getImageFromGallery() async {
//     final pickedFile = await imagePicker.getImage(source: ImageSource.gallery);
//     setState(() {
//       if (pickedFile != null) {
//         _image = File(pickedFile.path);
//       }
//     });
//   }
//
//   Future _saveImage() async {
//     if (_image != null) {
//       Uint8List _buffer = await _image!.readAsBytes();
//       await ImageGallerySaver.saveImage(_buffer);
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           widget.title!,
//           style: TextStyle(color: Colors.white),
//         ),
//       ),
//       body: Center(
//         child: Column(
//           children: [
//             _image == null
//                 ? Container(
//               padding: EdgeInsets.all(10),
//               child: Column(children: [
//                 SizedBox(height: 300.0),
//                 Text(
//                   '撮影またはライブラリを選んでください♪',
//                   style: Theme.of(context).textTheme.headline6,
//                 ),
//               ]),
//             )
//                 : Column(
//               children: [
//                 Image.file(_image!),
//                 ElevatedButton(
//                   child: Text('Save'),
//                   onPressed: _saveImage,
//                 )
//               ],
//             )
//           ],
//         ),
//       ),
//       floatingActionButton: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: [
//           FloatingActionButton(
//             heroTag: 'Camera',
//             onPressed: getImageFromCamera,
//             child: Icon(Icons.photo_camera),
//           ),
//           FloatingActionButton(
//             heroTag: 'Gallery',
//             onPressed: getImageFromGallery,
//             child: Icon(Icons.photo_album),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
//
//
// class DisplayPictureScreen extends StatelessWidget {
//   final String imagePath;
//
//   const DisplayPictureScreen({required this.imagePath});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(title: Text('Display the Picture')),
//         body: Image.file(File(imagePath)));
//   }
// }