import 'dart:convert';

import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

import 'package:http/http.dart';

void main() async{

  //get
  var url = Uri.https('localhost:5001', '/api/Curso/Listar');

  var resposta = await http.get(url);

  var respostaConvertida = convert.jsonDecode(resposta.body) as List<dynamic>;

  print(respostaConvertida[0]);

  var url2 = Uri.https('localhost:5001', '/api/Estudante/Listar');

  var estudante = await http.get(url2);

  var estudanteConvertida = convert.jsonDecode(estudante.body) as List<dynamic>;

  print(estudanteConvertida[2]);



    //post
    var urlPrefix = 'https://localhost:5001/api/Curso/Cadastrar';
    final urls = Uri.parse('$urlPrefix');
    final headers = {"Content-type": "application/json"};
    final json = '{"nome": "teste2" , "carga": 33, "tipo": "Exatas","IdArea": 1 }';
    final response = await post(urls, headers: headers, body: json);
    print('Status code: ${response.statusCode}');
    print('Body: ${response.body}');

    var urlPrefixx = 'https://localhost:5001/api/Estudante/Cadastrar';
    final urlsx = Uri.parse('$urlPrefixx');
    final headersx = {"Content-type": "application/json"};
    final jsonx = '{"nome": "01 Franklin Roosevelt" , "data": "10/02/2019" , "idade": 28, "graduado": 0 , "IdCurso": 1 , "IdcursoDisciplina": 1 , "IdcursoEstudante": 1 }';
    final responsex = await post(urlsx, headers: headersx, body: jsonx);
    print('Status code Estudante: ${responsex.statusCode}');
    print('Body: ${responsex.body}');


  //put
  var urlPrefixs = 'https://localhost:5001/api/Curso/Alterar';
  final urlp = Uri.parse('$urlPrefixs');
  final header = {"Content-type": "application/json"};
  final jsons = '{"idCurso": 1,"nome": "teste5" , "carga": 35, "tipo": "Exatas","IdArea": 1 }';
  final responses = await put(urlp, headers: header, body: jsons);
  print('Status code: ${responses.statusCode}');
  print('Body: ${responses.body}');

  var urlPrefixsxs = 'https://localhost:5001/api/Estudante/Alterar';
  final urlpxs = Uri.parse('$urlPrefixsxs');
  final headerxs = {"Content-type": "application/json"};
  final jsonsxs = '{"Id": 4 , "nome": "Franklin Rooseveltsss" , "data": "10/02/2001" , "idade": 28, "graduado": 0 , "IdCurso": 1 , "IdcursoDisciplina": 1 , "IdcursoEstudante": 1 }';
  final responsesxs = await put(urlpxs, headers: headerxs, body: jsonsxs);
  print('Status code: ${responsesxs.statusCode}');
  print('Body: ${responsesxs.body}');

  //delete
  var urlPrefixs2 = 'https://localhost:5001/api/Curso/Excluir';
  final urls2 = Uri.parse('$urlPrefixs2');
  final headerss = {"Content-type": "application/json"};
  final jsonss = '7';
  final responsess = await delete(urls2,headers: headerss ,body: jsonss);
  print('Status code: ${responsess.statusCode}');
  print('Body: ${responsess.body}');

  var urlPrefixs2sd = 'https://localhost:5001/api/Estudante/Excluir';
  final urls2sd = Uri.parse('$urlPrefixs2sd');
  final headersssd = {"Content-type": "application/json"};
  final jsonsssd = '5';
  final responsesssd = await delete(urls2sd,headers: headersssd ,body: jsonsssd);
  print('Status code: ${responsesssd.statusCode}');
  print('Body: ${responsesssd.body}');

}


