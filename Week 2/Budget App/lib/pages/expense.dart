import 'package:flutter/material.dart';

class Expense extends StatefulWidget {
  const Expense({super.key});

  @override
  State<Expense> createState() => _ExpenseState();
}

class _ExpenseState extends State<Expense> {
  @override


  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[200],
      appBar: AppBar(
        title: const Text(
          'BUDGET TRACKER',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: 'IndieFlower',
            fontSize: 30,
            letterSpacing: 2,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue[500],
      ),

      body:  SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: [
                SizedBox(height:10,),
                Card(
                  child: Padding(
                    padding:  EdgeInsets.all(10.0),
                    child: Text(
                      'Total:          ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'IndieFlower',
                        fontSize: 50,
                        letterSpacing: 2,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  color: Colors.blue[400],
                ),
                SizedBox(height: 50,),



                Row(
                  children: [
                    Card(
                      child: Padding(
                        padding:  EdgeInsets.all(8.0),
                        child: Text(
                          'Groceries:       ',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'IndieFlower',
                            fontSize: 30,
                            letterSpacing: 2,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      color: Colors.blue[400],
                    ),

                    SizedBox(width: 10,),

                    ElevatedButton.icon(
                        onPressed: (){ },
                        icon: Icon(
                          Icons.delete_rounded,
                        ), label: Text(''),
                    )

                  ],
                ),


                SizedBox(height: 20,),



                Row(
                  children: [
                    Card(
                      child: Padding(
                        padding:  EdgeInsets.all(10.0),
                        child: Text(
                          'Bills:             ',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'IndieFlower',
                            fontSize: 30,
                            letterSpacing: 2,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      color: Colors.blue[400],
                    ),

                    SizedBox(width: 10,),

                    ElevatedButton.icon(
                      onPressed: (){ },
                      icon: Icon(
                        Icons.delete_rounded,
                      ), label: Text(''),
                    )

                  ],
                ),

                SizedBox(height: 20,),

                Row(
                  children: [
                    Card(
                      child: Padding(
                        padding:  EdgeInsets.all(10.0),
                        child: Text(
                          'Salary:           ',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'IndieFlower',
                            fontSize: 30,
                            letterSpacing: 2,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      color: Colors.blue[400],
                    ),

                    SizedBox(width: 10,),

                    ElevatedButton.icon(
                      onPressed: (){ },
                      icon: Icon(
                        Icons.delete_rounded,
                      ), label: Text(''),
                    )

                  ],
                ),
                SizedBox(height: 140,),
                Row(
                  crossAxisAlignment:
                  CrossAxisAlignment.end,
                  mainAxisAlignment:
                  MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: FilledButton.icon(
                        onPressed: (){
                          Navigator.pushReplacementNamed(context, '/addexpense');
                        },
                        icon: Icon(
                          Icons.add_rounded,
                        ),
                        label: Text(''),
                      ),
                    ),
                  ],
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
