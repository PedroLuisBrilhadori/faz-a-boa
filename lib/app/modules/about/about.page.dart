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
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(35.0, 0, 35.0, 0),
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                SizedBox(height: 120.0),
                Text('Sobre',
                    style: TextStyle(fontSize: 27, fontWeight: FontWeight.w700))
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                SizedBox(height: 20.0),
                Text(
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
                  style: TextStyle(fontSize: 19),
                  textAlign: TextAlign.justify,
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                SizedBox(height: 30.0),
                Text('Desenvolvedores',
                    style: TextStyle(fontSize: 27, fontWeight: FontWeight.w700))
              ],
            ),
            const SizedBox(height: 30.0),
            person('Ciro E. A. Abib', 'lib/assets/ciro.jpeg',
                'ciro.abib@fatec.sp.gov.br'),
            const SizedBox(height: 30.0),
            person('Pedro Luís Brilhadori', 'lib/assets/pedro.png',
                'pedro.brilhadori@fatec.sp.gov.br'),
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
  return Column(
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
        margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
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
  );
}
