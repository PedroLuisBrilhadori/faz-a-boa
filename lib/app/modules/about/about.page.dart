import 'package:faz_a_boa/app/widgets/navigation_bar/navigation_bar.dart';
import 'package:flutter/material.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({super.key});

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade200,
        bottomNavigationBar:
            const FZBNavigationBar(navigationIndex: NavigationIndex.home),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(35.0, 0, 35.0, 0),
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    SizedBox(height: 70.0),
                    Card(
                        margin: EdgeInsets.symmetric(vertical: 10.0),
                        child: ListTile(
                            leading: Icon(
                              Icons.info_outlined,
                              color: Colors.white,
                            ),
                            tileColor: Color.fromRGBO(25, 118, 210, 1),
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 0.8, horizontal: 15.0),
                            title: Text('Sobre',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 27,
                                    fontWeight: FontWeight.w700))))
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    SizedBox(height: 10.0),
                    Card(
                        margin: EdgeInsets.symmetric(horizontal: 10.0),
                        child: ListTile(
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 23.0),
                          title: Text(
                            'Tema',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.justify,
                          ),
                          subtitle: Text(
                            'Aplicativo de postos de combustível.',
                            textAlign: TextAlign.justify,
                            style: TextStyle(fontSize: 19),
                          ),
                        )),
                    Card(
                        margin: EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 10.0),
                        child: ListTile(
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 23.0),
                          title: Text(
                            'Objetivo do aplicativo',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.justify,
                          ),
                          subtitle: Text(
                            'Fornecer informações acerca de postos de combustível nas proximidades da região, com o propósito de elencar estabelecimentos onde o usuário poderá ir, juntamente com dados sobre seus preços, distância e avaliações.',
                            textAlign: TextAlign.justify,
                            style: TextStyle(fontSize: 19),
                          ),
                        )),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    SizedBox(height: 30.0),
                    Card(
                        margin: EdgeInsets.symmetric(vertical: 10.0),
                        child: ListTile(
                            leading: Icon(
                              Icons.info_outlined,
                              color: Colors.white,
                            ),
                            tileColor: Color.fromRGBO(25, 118, 210, 1),
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 0.8, horizontal: 15.0),
                            title: Text('Desenvolvedores',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 27,
                                    fontWeight: FontWeight.w700))))
                  ],
                ),
                Card(
                  margin: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 10.0),
                  child: person('Pedro Luís Brilhadori', 'lib/assets/pedro.png',
                      'pedro.brilhadori@fatec.sp.gov.br'),
                ),
                Card(
                  margin: const EdgeInsets.symmetric(
                      vertical: 4.0, horizontal: 10.0),
                  child: person('Ciro E. A. Abib', 'lib/assets/ciro.jpeg',
                      'ciro.abib@fatec.sp.gov.br'),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    SizedBox(height: 100.0),
                    Image(
                      image: AssetImage('lib/assets/flutter.png'),
                      height: 40.0,
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      'Versão 3.3.3\n',
                      style: TextStyle(fontSize: 18, color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}

Widget person(String name, image, email) {
  return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      child: Column(
        children: [
          CircleAvatar(
            radius: 50.0,
            backgroundImage: AssetImage(image),
          ),
          const SizedBox(height: 10.0),
          Text(
            name,
            style: TextStyle(
                fontFamily: 'Pacifico',
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                color: Colors.grey.shade800),
          ),
          Text(
            'Estudante',
            style: TextStyle(
                fontSize: 20.0,
                fontFamily: 'Source Sans Pro',
                color: Colors.grey.shade700,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.5),
          ),
          const SizedBox(
            width: 150.0,
            height: 10.0,
            child: Divider(
              thickness: 0.6,
              color: Color.fromRGBO(25, 118, 210, 1),
            ),
          ),
          Card(
            margin:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
            child: ListTile(
              leading: const Icon(
                Icons.email,
                color: Color.fromRGBO(25, 118, 210, 1),
              ),
              title: Text(
                email,
                style: const TextStyle(
                    fontFamily: 'Source Sans Pro',
                    fontSize: 20.0,
                    color: Color.fromRGBO(25, 118, 210, 1)),
              ),
            ),
          ),
        ],
      ));
}
