import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

const green = Color(0xFF0E4D35);
const gold = Color(0xFFF2B632);
const cream = Color(0xFFFFF8E7);
const ink = Color(0xFF10231A);
const muted = Color(0xFF3D4F45);
const line = Color(0xFFE3D9BE);
const whatsapp = 'https://wa.me/22667209407';
const h2 = TextStyle(fontSize: 24, fontWeight: FontWeight.w800, color: green);

Future<void> openWhatsApp() =>
    launchUrl(Uri.parse(whatsapp), mode: LaunchMode.externalApplication);

void main() => runApp(const BaobabApp());

class BaobabApp extends StatelessWidget {
  const BaobabApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Baobab Digital',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: green).copyWith(primary: green),
        scaffoldBackgroundColor: cream,
        navigationBarTheme: const NavigationBarThemeData(
          backgroundColor: Colors.white,
          indicatorColor: gold,
        ),
      ),
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int tab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: tab == 0 ? const AgencyPage() : const SamplePage()),
      bottomNavigationBar: NavigationBar(
        selectedIndex: tab,
        onDestinationSelected: (i) => setState(() => tab = i),
        destinations: const [
          NavigationDestination(
              icon: Icon(Icons.storefront_outlined),
              selectedIcon: Icon(Icons.storefront),
              label: 'Agence'),
          NavigationDestination(
              icon: Icon(Icons.badge_outlined),
              selectedIcon: Icon(Icons.badge),
              label: 'Exemple de carte'),
        ],
      ),
    );
  }
}

class Logo extends StatelessWidget {
  const Logo({super.key, this.size = 36});
  final double size;

  @override
  Widget build(BuildContext context) =>
      CustomPaint(size: Size.square(size), painter: _LogoPainter());
}

class _LogoPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    canvas.scale(size.width / 120);
    final g = Paint()..color = gold;
    final d = Paint()..color = green;
    canvas.drawRRect(
        RRect.fromRectAndRadius(Rect.fromLTWH(0, 0, 120, 120), const Radius.circular(28)), g);
    canvas.drawPath(
        Path()
          ..moveTo(52, 58)
          ..cubicTo(51, 74, 44, 86, 39, 100)
          ..lineTo(81, 100)
          ..cubicTo(76, 86, 69, 74, 68, 58)
          ..close(),
        d);
    for (final c in const [
      [38.0, 50.0, 15.0],
      [60.0, 40.0, 20.0],
      [82.0, 50.0, 15.0],
      [49.0, 54.0, 13.0],
      [71.0, 54.0, 13.0],
    ]) {
      canvas.drawCircle(Offset(c[0], c[1]), c[2], d);
    }
    canvas.drawRRect(
        RRect.fromRectAndRadius(Rect.fromLTWH(24, 100, 72, 5), const Radius.circular(2.5)), d);
    canvas.drawPath(
        Path()
          ..moveTo(45, 48)
          ..l
