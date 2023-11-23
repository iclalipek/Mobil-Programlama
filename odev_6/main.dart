import 'package:flutter/material.dart';
// Uncomment lines 3 and 6 to view the visual layout at runtime.
// import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

void main() {
  // debugPaintSizeEnabled = true;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Karagöl-Sahara Millî Parkı',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Şavşat, Artvin, Türkiye',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          /*3*/
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          const Text('282'),
        ],
      ),
    );

    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        'Karagöl-Sahara Millî Parkı, Türkiye’deki millî park alanlarından birisidir. '
            'Artvin’in Şavşat ilçesi sınırları içerisinde yer alan park, Karagöl '
            've Sahara Yaylası olmak üzere iki ayrı sahadan oluşur. '
            'Karagöl, Şavşat ilçe merkezinin 45 km kuzeyinde ve 1.630 m rakımda '
            'yer almaktadır. '
            'Karagöl, rotasyonel olarak kayan kütlenin gerisindeki çanakta '
            'biriken suların meydana getirdiği bir heyelan gölüdür. '
            'Göl çevresi ladin ve çamların meydana getirdiği yoğun ormanlarla '
            'kaplıdır. '
            'Çevresinde tüketilmesi zor yürüyüş rotaları bulunur. '
            'Aşağı Koyunlu Köyü’nden bir buçuk saat yürüyüşle, kayadan oyma '
            'bir Ortaçağ Manastırı ile karşılaşmanız mümkün. '
            'Karagöl, ender manzara güzelliklerine sahiptir.',
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: ListView(
          children: [
            Image.asset(
              'images/karagol.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}