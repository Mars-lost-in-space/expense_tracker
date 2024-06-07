import 'dart:math';

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
            const SizedBox(height: 25),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Text(
                      'Transactions',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'View All',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ],
                ),
              ],
            ),
            //where the transaction list begins from
            //item food
            const SizedBox(height: 20),
            Container(
              width:  MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.width / 5,
              decoration: BoxDecoration(
                color: Colors.white60,
                borderRadius: BorderRadius.circular(25),   
                boxShadow: [
                  BoxShadow (
                    blurRadius: 4,
                    color: Colors.grey.shade300,
                    offset: Offset(5, 5),
                  )   
                ]     
              ),
              child:  Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                          width: 45,
                          height: 45,
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
                      Text(
                        'Food', 
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).colorScheme.onBackground
                          )
                      )
                      ],
                    ),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              '-\$45.00',
                              style: TextStyle(
                               fontSize: 14,
                               fontWeight: FontWeight.w600,
                               color: Colors.black,
                              ),
                            ),
                            Text(
                              'Today',
                              style: TextStyle(
                               fontSize: 12,
                               fontWeight: FontWeight.w400,
                               color: Theme.of(context).colorScheme.outline
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ]
                ),
              ),
            ),
            //item 2: shopping
            const SizedBox(height: 20),
            Container(
              width:  MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.width / 5,
              decoration: BoxDecoration(
                color: Colors.white60,
                borderRadius: BorderRadius.circular(25),   
                boxShadow: [
                  BoxShadow (
                    blurRadius: 4,
                    color: Colors.grey.shade300,
                    offset: Offset(5, 5),
                  )   
                ]     
              ),
              child:  Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                          width: 45,
                          height: 45,
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
                      Text(
                        'Shopping', 
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).colorScheme.onBackground
                          )
                      )
                      ],
                    ),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              '-\$280.00',
                              style: TextStyle(
                               fontSize: 14,
                               fontWeight: FontWeight.w600,
                               color: Colors.black,
                              ),
                            ),
                            Text(
                              'Today',
                              style: TextStyle(
                               fontSize: 12,
                               fontWeight: FontWeight.w400,
                               color: Theme.of(context).colorScheme.outline
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ]
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}