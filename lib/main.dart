import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData.dark(),
        home: Scaffold(
          appBar: AppBar(
            title: const Text('GtiHub Perfil'),
          ),
          drawer: const Drawer(
            child: Column(
              children: <Widget>[
                UserAccountsDrawerHeader(
                  accountEmail: Text('jsilvavieira@github.com'),
                  accountName: Text('José da Silva Vieira'),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: AssetImage('images/gustavo-guanabara.jpg'),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text('Perfil'),
                ),
                ListTile(
                  leading: Icon(Icons.book),
                  title: Text('Repositórios'),
                ),
                ListTile(
                  leading: Icon(Icons.star),
                  title: Text('Favoritos'),
                )
              ],
            ),
          ),
          body: const Center(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage('images/gustavo-guanabara.jpg'),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'José da Silva Vieira',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    'jsvieira',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.grey,
                        fontSize: 20),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.map),
                      Text(
                        '  Brazil, São Paulo, SP',
                        style: TextStyle(fontSize: 18),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.email),
                      Text(
                        '  jsilvavieira@github.com',
                        style: TextStyle(fontSize: 18),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.supervisor_account),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        '32',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        ' seguidores',
                        style: TextStyle(fontSize: 15),
                      ),
                      Text(
                        '  45',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        ' seguindo',
                        style: TextStyle(fontSize: 15),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          floatingActionButton: FloatingActionButton(onPressed: () {
            print("pressed");
          },
          child: const Icon(Icons.add),
          ),
        ));
  }
}
