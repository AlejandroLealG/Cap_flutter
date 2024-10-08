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
  late Animation moverArriba;
  late Animation moverIzquierda;
  late Animation moverAbajo;
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
          curve: Curves.bounceOut
        )
      )
    );
    moverArriba = Tween(begin: 0.0, end: 100.0).animate(
      CurvedAnimation(
        parent: controller, 
        curve: const Interval(
          0.25, 
          0.5, 
          curve: Curves.bounceOut
        )
      )
    );
    moverIzquierda = Tween(begin: 0.0, end: 100.0).animate(
      CurvedAnimation(
        parent: controller, 
        curve: const Interval(
          0.5, 
          0.75, 
          curve: Curves.bounceOut
        )
      )
    );
    moverAbajo = Tween(begin: 0.0, end: 100.0).animate(
      CurvedAnimation(
        parent: controller, 
        curve: const Interval(
          0.75, 
          1.0, 
          curve: Curves.bounceOut
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
      child: _Rectangulo(),
      builder: (BuildContext context, Widget? childCuadrado){
        return Transform.translate(
          offset: Offset(moverDerecha.value, 0),
          child: Transform.translate(
            offset: Offset(0, moverArriba.value * -1),
            child: Transform.translate(
              offset: Offset(moverIzquierda.value * -1, 0),
              child: Transform.translate(
                offset: Offset(0, moverAbajo.value),
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