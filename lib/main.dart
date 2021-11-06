//Disciplina: Projeto Integrador 3
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Flutter Hello World',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      // A widget which will be started on application startup
      home: MyHomePage(title: 'Cadastro de Estudante'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title ="Cadastro de Estudante";

  const MyHomePage({@required title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        // The title text which will be shown on the action bar
        title: Text(title),
      ),
      body: Column(children: [
        TextFormField(
          initialValue: '',
          decoration: InputDecoration(
            labelText: 'Digite o Nome',
            border: OutlineInputBorder(),
            suffixIcon: Icon(
              Icons.error,
            ),
          ),
        ),
        TextFormField(
          initialValue: '',
          decoration: InputDecoration(
            labelText: 'Digite sua Idade',
            border: OutlineInputBorder(),
            suffixIcon: Icon(
              Icons.error,
            ),
          ),
        ),
        TextFormField(
          initialValue: '',
          decoration: InputDecoration(
            labelText: 'Digite a Data',
            border: OutlineInputBorder(),
            suffixIcon: Icon(
              Icons.error,
            ),
          ),
        ),
        DropdownButton<String>(
          hint: Text('Escolha seu Curso'),
          items: <String>[
            'Análise e desenvolvimento de sistemas',
            'Ciência da Computação',
            'Sistema de informação'
          ].map((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
          onChanged: (_) {},
        ),
        DropdownButton<String>(
          hint: Text('Escolha suas Disciplinas:'),
          items: <String>[
            'Cálculo 1',
            'Matemática discreta',
            'Introdução a Programação'
          ].map((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
          onChanged: (_) {},
        ),
        DropdownButton<String>(
          hint: Text('Graduado:'),
          items: <String>[
            'Sim',
            'Não'
          ].map((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
          onChanged: (_) {},
        ),
        RaisedButton.icon(
          icon: Icon(Icons.add, size: 16),
          label: Text('Salvar'),
          onPressed: () => {},
        ),
        RaisedButton.icon(
          icon: Icon(Icons.add, size: 16),
          label: Text('Curso'),
          onPressed: () => {
            Navigator.push(
          context,
          MaterialPageRoute(builder: (context)=>new Curso())
          ),

          },
        ),
      ]),
    );
  }
}


class Curso extends StatelessWidget {
  @override
  Widget build(BuildContext context){

  return Scaffold(
    backgroundColor: Colors.green,
  appBar: AppBar(title: Text('Curso'),),
    body: Column(children: [
      TextFormField(
      initialValue: '',
      decoration: InputDecoration(
        labelText: 'Digite o Nome',
        border: OutlineInputBorder(),
        suffixIcon: Icon(
          Icons.error,
        ),
      ),
    ),
    TextFormField(
      initialValue: '',
      decoration: InputDecoration(
        labelText: 'Digite a carga horária',
        border: OutlineInputBorder(),
        suffixIcon: Icon(
          Icons.error,
        ),
      ),
    ),
    DropdownButton<String>(
      hint: Text('Escolha a área do curso'),
      items: <String>[
        'Exatas',
        'Humanas',
        'Biologicas'
      ].map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      onChanged: (_) {},
    ),
    DropdownButton<String>(
      hint: Text('Escolha o tipo do curso'),
      items: <String>[
        'Presencial Diurno',
        'Presencial Noturno',
        'Semi-presencial',
        'Á Distancia'
      ].map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      onChanged: (_) {},
    ),
    RaisedButton.icon(
      icon: Icon(Icons.add, size: 16),
      label: Text('Salvar'),
      onPressed: () => {},
    ),
      RaisedButton.icon(
        icon: Icon(Icons.add, size: 16),
        label: Text('Voltar a tela de Estudante'),
        onPressed: () => {
          Navigator.pop(context)
        },
      ),
    ]),
    );
  }
}
