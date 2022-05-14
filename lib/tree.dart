// import 'package:flutter/material.dart';
// import 'package:flutter_simple_treeview/flutter_simple_treeview.dart';
// import 'package:treeview_example/screen_one.dart';
// import 'package:treeview_example/user_scfeen.dart';
//
// class FlutterTree extends StatefulWidget {
//   const FlutterTree({Key? key}) : super(key: key);
//
//   @override
//   _FlutterTreeState createState() => _FlutterTreeState();
// }
//
// class _FlutterTreeState extends State<FlutterTree> {
//
//   TreeController controller = TreeController();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: const Text("Family Tree"),
//           actions: [
//             IconButton(
//                 onPressed: () {
//                   controller.collapseAll();
//                   setState(() {});
//                 },
//                 icon: const Icon(Icons.expand_less)),
//             IconButton(
//                 onPressed: () {
//                   controller.expandAll();
//                   setState(() {});
//                 },
//                 icon: const Icon(Icons.expand_more)),
//             InkWell(
//                 onTap: (){
//                   Navigator.of(context).push(MaterialPageRoute(builder: (context) => ScreenOne()));
//
//                 },
//                 child: Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Text("TASK 2",style: TextStyle(color: Colors.white,fontSize:15 ,  fontWeight: FontWeight.bold),),
//                 )),
//
//           ],
//         ),
//         body: Container(
//           height: 1600,
//
//           child: SingleChildScrollView(
//
//             child: Column(
//               children: [
//                 TreeView(
//                     nodes: [
//                       TreeNode(
//                         content: Text("Family"),
//                         children: [
//                           TreeNode(content: Text('Parents 1'),
//                               children: [
//                                 TreeNode(content: Text('amma appa'),
//                                     children: [TreeNode(content: Text('brothers sisters')),
//                                       TreeNode(content: Text('daughter')),]),
//
//
//                               ]),
//                           // TreeNode(
//                           // content: Text("Parents2"),
//
//                           TreeNode(content: Text('Parents'),
//                               children: [
//                                 TreeNode(content: Text('amma appa'),
//                                     children: [TreeNode(content: Text('brothers sisters')),
//                                       TreeNode(content: Text('daughter')),]),
//
//
//                               ]),
//
//                         ],
//
//                       )
//                     ]),
//                 TreeView(
//                     nodes: [
//                       TreeNode(
//                         content: Text("Family"),
//                         children: [
//                           TreeNode(content: Text('Parents 1'),
//                               children: [
//                                 TreeNode(content: Text('amma appa'),
//                                     children: [TreeNode(content: Text('brothers sisters')),
//                                       TreeNode(content: Text('daughter')),]),
//
//
//                               ]),
//                           // TreeNode(
//                           // content: Text("Parents2"),
//
//                           TreeNode(content: Text('Parents'),
//                               children: [
//                                 TreeNode(content: Text('amma appa'),
//                                     children: [TreeNode(content: Text('brothers sisters')),
//                                       TreeNode(content: Text('daughter')),]),
//
//
//                               ]),
//
//                         ],
//
//                       )
//                     ]),
//                 TreeView(
//                     nodes: [
//                       TreeNode(
//                         content: Text("Family"),
//                         children: [
//                           TreeNode(content: Text('Parents 1'),
//                               children: [
//                                 TreeNode(content: Text('amma appa'),
//                                     children: [TreeNode(content: Text('brothers sisters')),
//                                       TreeNode(content: Text('daughter')),]),
//
//
//                               ]),
//                           // TreeNode(
//                           // content: Text("Parents2"),
//
//                           TreeNode(content: Text('Parents'),
//                               children: [
//                                 TreeNode(content: Text('amma appa'),
//                                     children: [TreeNode(content: Text('brothers sisters')),
//                                       TreeNode(content: Text('daughter')),]),
//
//
//                               ]),
//
//                         ],
//
//                       )
//                     ]),
//               ],
//             ),
//           ),
//         )
//
//     );
//   }
// }
