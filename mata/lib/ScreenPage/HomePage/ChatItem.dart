import 'package:flutter/material.dart';
import 'package:mata/ItemExport.dart';

class ChatItem extends StatelessWidget {
  const ChatItem({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: Colors.transparent, shadowColor: Colors.transparent),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => ChatPage()));
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Column(
                    children: [
                      Container(
                        width: 55.0,
                        height: 55.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                          color: Colors.redAccent,
                          image: DecorationImage(
                              image: AssetImage('assets/images/azizi.jpeg')),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Text(
                            'John Doe',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          child: Text(
                            'Kamu Lagi Apa...',
                            style: TextStyle(
                                color: Theme.of(context).secondaryHeaderColor),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                      width: 20.0,
                      height: 20.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        color: Colors.blue[400],
                      ),
                      child: Center(
                          child: Text(
                        '1',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}