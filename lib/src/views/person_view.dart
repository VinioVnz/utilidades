import 'package:flutter/material.dart';
import 'package:utilidades/src/controllers/person_controller.dart';

class PersonView extends StatefulWidget {
  const PersonView({super.key});
  
  @override
  State<PersonView> createState() => _PersonViewState();
}

class _PersonViewState extends State<PersonView> {
  final controller = PersonController();
  final nomeController = TextEditingController();
  final idadeController = TextEditingController();

  @override 
  void initState(){
    super.initState();
    controller.loadPersons();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(24),
      child: Column(
        children: [
          TextField(
            controller: nomeController,
            decoration: const InputDecoration(
              labelText: 'Nome',
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 8),
          TextField(
            controller: idadeController,
            decoration: const InputDecoration(
              labelText: 'Idade',
              border: OutlineInputBorder(),
            ),
            keyboardType: TextInputType.number,
          ),
          const SizedBox(height: 10),
          ElevatedButton(onPressed: () {
            final nome = nomeController.text.trim();
            final idade = int.tryParse(idadeController.text.trim()) ?? 0;

            if(nome.isNotEmpty && idade >= 0){
              controller.addPerson(nome, idade);
              nomeController.clear();
              idadeController.clear();
            }


          }, child: Text('Cadastrar')),
        ],
      ),
    );
  }
}
