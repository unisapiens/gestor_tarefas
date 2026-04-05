import 'package:flutter/material.dart';
import 'package:gestor_tarefas/models/tarefa.dart';

class FormTarefaScreen extends StatelessWidget {
  FormTarefaScreen({super.key});

  final TextEditingController nomeController = TextEditingController();
  final TextEditingController descricaoController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Nova tarefa"),
        centerTitle: true,
        backgroundColor: Colors.indigo,
      ),
      body: Column(
        children: [

          //input do nome
          Padding(
            padding: EdgeInsets.all(16),
            child: TextField(
              decoration: InputDecoration(
                labelText: "Nome",
                border: OutlineInputBorder() 
              ),
              controller: nomeController,
            )
          ),

          //input da descricao
          Padding(
            padding: EdgeInsets.all(16),
            child: TextField(
              decoration: InputDecoration(
                labelText: "Descrição",
                border: OutlineInputBorder() 
              ),
              controller: descricaoController,
            )
          ),

          ElevatedButton(
            onPressed: (){

              //pegar os campos
              final nome = nomeController.text;
              final descricao = descricaoController.text;

              //montar a nova tarefa
              final novaTarefa = Tarefa(nome, descricao);

              //enviar para a lista de tarefas
              Navigator.pop(context, novaTarefa);
            }, 
            child: Text("Salvar")
          )
        ],
      ),
    );

  }
}