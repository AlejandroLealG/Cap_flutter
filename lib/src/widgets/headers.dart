import 'package:flutter/material.dart';

class HeaderCuadrado extends StatelessWidget {
  const HeaderCuadrado({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      color: const Color(0xff615AAB),
    );
  }
}

class HeaderBordesRedondeados extends StatelessWidget {
  const HeaderBordesRedondeados({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      decoration: const BoxDecoration(
        color: Color(0xff615AAB),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(60),
          bottomRight: Radius.circular(60)
        ),
      ),
    );
  }
}

class HeaderDiagonal extends StatelessWidget {
  const HeaderDiagonal({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: _HeaderDiagonalPainter(),
      ),
    );
  }
}

class _HeaderDiagonalPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();

    //Propiedades del paint
    paint.color = const Color(0xff615AAB);
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 2;

    final path = Path();  //Inicializar el path

    //Dibujar con el path

    path.moveTo(0, size.height * 0.35);
    path.lineTo(size.width, size.height * 0.3);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);

    canvas.drawPath(path, paint);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}

class HeaderTriangulo extends StatelessWidget {
  const HeaderTriangulo({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: _HeaderTriangulo(),
      ),
    );
  }
}

class _HeaderTriangulo extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();

    //Propiedades del paint
    paint.color = const Color(0xff615AAB);
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 2;

    final path = Path();  //Inicializar el path

    //Dibujar con el path

    //Dibujar la diagonal superior
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);

    //Dibujar la diagonal inferior
    //path.lineTo(size.width, size.height);
    //path.lineTo(0, size.height);


    canvas.drawPath(path, paint);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}

class HeaderCurvo extends StatelessWidget {
  const HeaderCurvo({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter:  _HeaderCurvoPainter(),
      ),
    );
  }
}

class  _HeaderCurvoPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();

    //Propiedades del paint
    paint.color = const Color(0xff615AAB);
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 2;

    final path = Path();  //Inicializar el path

    //Dibujar con el path

    path.lineTo(0, size.height * 0.25);
    path.quadraticBezierTo(size.width * 0.5, size.height * 0.5, size.width, size.height * 0.25);
    path.lineTo(size.width, 0);

    canvas.drawPath(path, paint);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}
class HeaderPico extends StatelessWidget {
  const HeaderPico({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter:  _HeaderPicoPainter(),
      ),
    );
  }
}

class  _HeaderPicoPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();

    //Propiedades del paint
    paint.color = const Color(0xff615AAB);
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 2;

    final path = Path();  //Inicializar el path

    //Dibujar con el path

    path.lineTo(0, size.height * 0.3);
    path.lineTo(size.width * 0.5, size.height * 0.4);
    path.lineTo(size.width, size.height * 0.3);
    path.lineTo(size.width, 0);

    canvas.drawPath(path, paint);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}

class HeaderWaves extends StatelessWidget {
  const HeaderWaves({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter:  _HeaderWavesPainter(),
      ),
    );
  }
}

class  _HeaderWavesPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();

    //Propiedades del paint
    paint.color = const Color(0xff615AAB);
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 2;

    final path = Path();  //Inicializar el path

    //Dibujar con el path

    path.lineTo(0, size.height * 0.25);
    path.quadraticBezierTo(size.width * 0.25, size.height * 0.15, size.width * 0.5, size.height * 0.25);
    path.quadraticBezierTo(size.width * 0.75, size.height * 0.35, size.width, size.height * 0.25);
    path.lineTo(size.width, 0);

    canvas.drawPath(path, paint);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}

class HeaderWavesGradient extends StatelessWidget {
  const HeaderWavesGradient({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter:  _HeaderWavesGradientPainter(),
      ),
    );
  }
}

class  _HeaderWavesGradientPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {

    final Rect rect = Rect.fromCircle(
      center: const Offset(0.0, 55.0), radius: 180
    );
    
    const Gradient gradiente = LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: <Color>[
        Color(0xff6D05E8),
        Color(0xffC012FF),
        Color(0xff6D05FA)
      ]
    );

    final paint = Paint()..shader = gradiente.createShader(rect);

    //Propiedades del paint
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 2;

    final path = Path();  //Inicializar el path

    //Dibujar con el path

    path.lineTo(0, size.height * 0.25);
    path.quadraticBezierTo(size.width * 0.25, size.height * 0.15, size.width * 0.5, size.height * 0.25);
    path.quadraticBezierTo(size.width * 0.75, size.height * 0.35, size.width, size.height * 0.25);
    path.lineTo(size.width, 0);

    canvas.drawPath(path, paint);

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}