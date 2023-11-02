import 'package:flutter/material.dart';
import 'package:quotes/quotes.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Quotes> quotes = [
    Quotes(
        text:
            'If you’re offered a seat on a rocket ship, don’t ask what seat! Just get on.',
        author: 'Sheryl Sandberg',
        photo: 'assets/man.png'),
    Quotes(
        text: 'Keep your eyes on the stars, and your feet on the ground.',
        author: 'Theodore Roosevelt',
        photo: 'assets/profile.jpeg'),
    Quotes(
        text:
            'If everything seems to be under control, you’re not going fast enough.',
        author: 'Mario Andretti',
        photo: 'assets/woman.png'),
    Quotes(
        text:
            'Never allow a person to tell you no who doesn’t have the power to say yes.',
        author: 'Eleanor Roosevelt',
        photo: 'assets/woman1.jpg'),
    Quotes(
        text:
            'Perfection is not attainable, but if we chase perfection we can catch excellence.',
        author: 'Vince Lombardi',
        photo: 'assets/man.png'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[300],
      appBar: AppBar(
        backgroundColor: Colors.cyan[700],
        title: Text('Motivational Quotes'),
        titleSpacing: 2,
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: quotes.length,
          itemBuilder: (context, index) {
            return Card(
                margin: EdgeInsets.symmetric(vertical: 3, horizontal: 6),
                child: Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                          backgroundImage:
                              AssetImage('${quotes[index].photo}')),
                      title: Text(
                        '${quotes[index].text}',
                        style: TextStyle(fontSize: 16),
                      ),
                      subtitle: Text(
                        '${quotes[index].author}',
                      ),
                    ),
                    ElevatedButton.icon(
                        onPressed: () {
                          setState(() {
                            quotes.remove(quotes[index]);
                          });
                        },
                        style: ElevatedButton.styleFrom(
                            elevation: 0.0,
                            backgroundColor: Colors.transparent),
                        icon: Icon(
                          Icons.delete,
                          color: Colors.black,
                        ),
                        label: Text(
                          'delete quote',
                          style: TextStyle(color: Colors.red[400]),
                        ))
                  ],
                ));
          }),
    );
  }
}
