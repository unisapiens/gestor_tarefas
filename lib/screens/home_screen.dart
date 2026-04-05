import 'package:flutter/material.dart';
import 'package:gestor_tarefas/screens/lista_tarefas_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Task Manager"),
        centerTitle: true,
        backgroundColor: Colors.indigo,
      ) ,
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            Navigator.push(
              context, 
              MaterialPageRoute(builder: (context) => ListaTarefasScreen())
            );
          }, 
          child: Text("Listar minhas tarefas")
        ),
      ),
    );
  }

}