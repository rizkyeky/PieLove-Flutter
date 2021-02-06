part of 'page.dart';

class EntryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF554AB2),
      body: SizedBox(
        height: MediaQuery.of(context).size.height*0.7,
        child: CustomPaint(
          painter: EntryBackground(),
          child: Image.asset('assets/img/entry.png',),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        height: 280,
        padding: const EdgeInsets.all(40),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(24))
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          textBaseline: TextBaseline.alphabetic,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: const [
                Text('PieLove Anetto', style: TextStyle(
                  color: Color(0xFF0E0943),
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),),
                SizedBox(height: 12,),
                Text("Let's taste the Pie Cake made by Chef Bimo Semesta",
                  textAlign: TextAlign.center, 
                  style: TextStyle(
                    color: Color(0xFFAFAFAF),
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            FlatButton(
              color: const Color(0xFFFA7854),
              onPressed: () => Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (_) => HomePage())
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12)
              ),
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: const Text("Let’s Order", style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),),
            )
          ],
        ),
      ),
    );
  }
}

class EntryBackground extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = const Color(0xFF4A3EAE)
      ..style = PaintingStyle.fill;

    const startingPoint = Offset(0, 300);
    final endingPoint = Offset(size.width, size.height);

    final rect = Rect.fromPoints(startingPoint, endingPoint);
    final rrect = RRect.fromRectAndCorners(rect, topRight: const Radius.circular(150));

    canvas.drawRRect(rrect, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;

}