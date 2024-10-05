import 'package:flutter/material.dart';

class CuadradoAnimadoPage extends StatelessWidget {
  const CuadradoAnimadoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _CuadradoAnimado()
      ),
    );
  }
}

class _CuadradoAnimado extends StatefulWidget {

  @override
  State<_CuadradoAnimado> createState() => _CuadradoAnimadoState();
}

class _CuadradoAnimadoState extends State<_CuadradoAnimado> with SingleTickerProviderStateMixin {

  late AnimationController controller;
  late Animation moverDerecha;
  //animaciones

  @override
  void initState() {

    controller = AnimationController(
      vsync: this, 
      duration: const Duration(milliseconds: 8000)
    );

    moverDerecha = Tween(begin: 0.0, end: 100.0).animate(
      CurvedAnimation(
        parent: controller, 
        curve: const Interval(
          0.0, 
          0.25, 
          curve: Curves.bounceIn
        )
      )
    );

    controller.addListener(() {
      if(controller.status == AnimationStatus.completed){
        //controller.reverse();
        controller.reset();
      } 
    });

    super.initState();

  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {

    controller.forward();

    return AnimatedBuilder(
      animation: controller, 
      child: _CuadradoAnimado(),
      builder: (BuildContext context, Widget? childCuadrado){
        return Transform.translate(
          offset: Offset(moverDerecha.value, 0),
          child: Transform.translate(
            offset: Offset(0, moverDerecha.value * -1),
            child: Transform.translate(
              offset: Offset(moverDerecha.value * -1, 0),
              child: Transform.translate(
                offset: Offset(0, moverDerecha.value),
                child: childCuadrado,
              ),
            ),
          ),
        );
      },
    );
  }
}


class _Rectangulo extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 70,
      decoration: const BoxDecoration(
        color: Colors.blue
      ),
    );
  }
}