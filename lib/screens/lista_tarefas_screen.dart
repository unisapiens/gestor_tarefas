import 'package:flutter/material.dart';
import 'package:gestor_tarefas/models/tarefa.dart';
import 'package:gestor_tarefas/screens/form_tarefa_screen.dart';

class ListaTarefasScreen extends StatefulWidget {
  const ListaTarefasScreen({super.key});

  @override
  State<StatefulWidget> createState() => _ListaTarefasScreenState();

}

class _ListaTarefasScreenState extends State<ListaTarefasScreen> {

  final List<Tarefa> listaDeTarefas = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Minhas tarefas"),
        centerTitle: true,
        backgroundColor: Colors.indigo,
      ),
      body: ListView.builder(
        itemBuilder: (context, index){
          return Card(
            child: ListTile(
              title: Text(listaDeTarefas[index].nome),
              subtitle: Text(listaDeTarefas[index].descricao),
              trailing: IconButton(
                onPressed: (){},
                icon: Icon(Icons.delete),
                color: Colors.red
              ),
            ) ,
          );
        },
        itemCount: listaDeTarefas.length
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final tarefaRecebida = await Navigator.push<Tarefa>(
            context, 
            MaterialPageRoute(
              builder: (context) => FormTarefaScreen())
          );

          setState(() {
            listaDeTarefas.add(tarefaRecebida!);
          });

        },
        child: Icon(Icons.add),
      ),
    );
  }

}