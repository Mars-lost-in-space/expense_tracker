import 'dart:math';

import 'package:expense_tracker/data/data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Stack(
                      alignment: Alignment.center,
                      children: [Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.yellow[700],
                        ),
                      ),
                      Icon(
                        CupertinoIcons.person_fill,
                        color: Colors.yellow[900],
                      )
                    ]
                  ),
                    const SizedBox(
                      width: 8,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Welcome!', style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Theme.of(context).colorScheme.outline,
                        )),
                        Text('Mariam Shahzad', style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).colorScheme.onBackground
                        ))
                      ],
                    ),
                  ],
                ),
                IconButton(
                  onPressed: () {},
                   icon: Icon(CupertinoIcons.settings),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width:  MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.width / 2,              
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Theme.of(context).colorScheme.primary,
                    Theme.of(context).colorScheme.secondary,
                    Theme.of(context).colorScheme.tertiary,
                  ], 
                  transform: const GradientRotation(pi / 4),
                ),
                borderRadius: BorderRadius.circular(25),   
                boxShadow: [
                  BoxShadow (
                    blurRadius: 4,
                    color: Colors.grey.shade300,
                    offset: Offset(5, 5),
                  )   
                ]     
              ),
              child: Column (
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 const Text(
                  'Total Balance', 
                  style: TextStyle(
                   color: Colors.white,
                   fontSize: 16,
                   fontWeight: FontWeight.w400
                  ),
                 ),
                 const SizedBox(height: 7),
                 const Text(
                  '\$ 4800.00',  
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.w500
                  )
                 ),
                const SizedBox(height: 12),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row( 
                        children: [
                          Container(
                            width: 20,
                            height: 20,
                            decoration: const BoxDecoration(
                              color: Colors.white30,
                              shape: BoxShape.circle
                            ),
                            child: const Center(
                              child: Icon(
                                CupertinoIcons.arrow_down,
                                size: 12,
                                color: Colors.greenAccent,
                                )
                            ),
                          ),
                          const SizedBox(
                            width: 8
                          ),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                             Text(
                              'Income', 
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w400
                              ),
                             ),
                             Text(
                              '2,500.00',  
                              style: TextStyle( 
                                fontSize: 14, 
                                fontWeight: FontWeight.w600, 
                                color: Colors.white)
                              ),
                            ],
                          )
                      ],
                     ),
                     Row( 
                        children: [
                          Container(
                            width: 20,
                            height: 20,
                            decoration: const BoxDecoration(
                              color: Colors.white30,
                              shape: BoxShape.circle
                            ),
                            child: const Center(
                              child: Icon(
                                CupertinoIcons.arrow_up,
                                size: 12,
                                color: Colors.redAccent,
                                )
                            ),
                          ),
                          const SizedBox(
                            width: 8
                          ),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                             Text(
                              'Expenses', 
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w400
                              ),
                             ),
                             Text(
                              '800.00',  
                              style: TextStyle( 
                                fontSize: 14, 
                                fontWeight: FontWeight.w600, 
                                color: Colors.white)
                              ),
                            ],
                          )
                      ],
                     ),
                    ],
                  ),
                )

              ],
              ),
            ),
            //this is where the main gradient container ends
            const SizedBox(height: 40),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Text(
                      'Transactions',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.onBackground,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: (){

                      },
                      child: Text(
                        'View All',
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.outline,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),
            Expanded(  //where the transaction list begins from
              child: ListView.builder(
                itemCount: transactionsData.length,
                itemBuilder: (context, int i){
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 16.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Container(
                                      width: 50,
                                      height: 50,
                                      decoration: BoxDecoration(
                                        color: transactionsData[i]['color'],
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                    transactionsData[i]['icon'],
                                  ],
                                ),
                                const SizedBox(width: 12),
                                Text(
                                  transactionsData[i]['name'],
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Theme.of(context).colorScheme.onBackground,
                                    fontWeight: FontWeight.w500
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  transactionsData[i]['totalAmount'],
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Theme.of(context).colorScheme.onBackground,
                                    fontWeight: FontWeight.w400
                                  ),
                                ),
                                Text(
                                  transactionsData[i]['date'],
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Theme.of(context).colorScheme.outline,
                                    fontWeight: FontWeight.w500
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }
              ),
            ),
          ],
        ),
      ),
    );
  }
}