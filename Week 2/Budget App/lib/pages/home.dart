import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override

  int total=48700;

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[200],
      appBar: AppBar(
        title: Text(
          'BUDGET TRACKER',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: 'IndieFlower',
            fontSize: 35,
            letterSpacing: 2,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue[500],
      ),
      body: SafeArea(
        child: Column(

          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 50, 10, 10),
                child: ElevatedButton.icon(
                    onPressed: ()  {
                      Navigator.pushReplacementNamed(context, '/expense');
                    },
                    icon: Icon(
                      Icons.person,
                      size: 100,
                      color: Colors.black,
                    ),
                    label: Text('',
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'IndieDlower',
                      color: Colors.black,
                    ),),
                ),
              ),
            ),
            SizedBox(height: 40,),
            Text('Welcome',
            style: TextStyle(
              fontFamily: 'IndieFlower',
              fontWeight: FontWeight.bold,
              fontSize: 75.0,
            ),),
            Text('Back!',
              style: TextStyle(
                fontFamily: 'IndieFlower',
                fontWeight: FontWeight.bold,
                fontSize: 75,
              ),),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text('Total:     $total',
                style: TextStyle(
                  fontSize: 50,
                  fontFamily: 'IndieFlower',
                ),),
              ),
              color: Colors.blue[400],
            ),
            SizedBox(height: 70,),
            Row(
              crossAxisAlignment:
              CrossAxisAlignment.end,
              mainAxisAlignment:
              MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: FilledButton.icon(
                    onPressed: (){},
                    icon: Icon(
                      Icons.add_rounded,

                    ),
                    label: Text(''),),
                ),
              ],
            ),
          ],
        ),
      ),


    );
  }
}
