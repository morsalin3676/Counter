//
//
// import 'package:flutter/material.dart';
//
// void main(){
//   runApp(myapp());
// }
// class myapp extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//   return MaterialApp(
//     title: 'Counter_Application',
//     home:HomeSreen() ,
//   );
//   }
// }
//
// class HomeSreen extends StatefulWidget{
//
//   @override
//   State<StatefulWidget> createState() {
//   return _HomeSreen();
//   }
// }
//
// class _HomeSreen extends State<StatefulWidget>{
//   int Counter=0;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.green,
//         title: Text('Home'),
//         leading: Icon(Icons.home),
//         actions: [
//           Icon(Icons.add),
//         ],
//       ),
//       body: Center(
//         child: Text(Counter.toString(), style: TextStyle(fontSize: 40),),
//       ),
//       floatingActionButton: FloatingActionButton(onPressed: (){
//         Counter++;
//         print(Counter);
//         setState(() {
//
//         });
//       } , child: Icon(Icons.add),),
//     );
//   }
//
// }
//
//
// // class honeSreen extends StatelessWidget {
// //    honeSreen({super.key});
// //
// //   int Counter = 0;
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         backgroundColor: Colors.green,
// //         title: Text('Home'),
// //         leading: Icon(Icons.home),
// //         actions: [
// //           Icon(Icons.add),
// //         ],
// //       ),
// //       body: Center(
// //         child: Text(Counter.toString(), style: TextStyle(fontSize: 40),),
// //       ),
// //       floatingActionButton: FloatingActionButton( onPressed: (){
// //         Counter++;
// //         print(Counter);
// //
// //       }, child: Icon(Icons.add , color: Colors.green, ),),
// //     );
// //   }
// // }
//
//
//


import 'package:flutter/material.dart';

void main (){
  runApp(myapp());
}

class myapp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Counter Application ",
      home: HomeSreen(),
    );
  }
}

class HomeSreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   return _HomeSreen() ;
  }
}

class _HomeSreen extends State<StatefulWidget>{

  int Counter = 0 ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Home'),
        leading: Icon(Icons.home),
        actions: [
          Icon(Icons.add),
        ],
      ),
      body: Center(
        child: Text(Counter.toString(), style: TextStyle(fontSize: 40),),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(onPressed: (){    //counter
            Counter++;
            print(Counter);
            setState(() {

            });
          } , child: Icon(Icons.add),),
          SizedBox(width: 20,),
          FloatingActionButton(onPressed: (){
            Counter--;
            print(Counter);
            setState(() {

            });
          } , child: Icon(Icons.remove),),
        ],
      ),

    );
  }

}