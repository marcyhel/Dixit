import 'package:mobx/mobx.dart';
import "dart:math";
part 'user_mob.g.dart';

class User_Mob = _User_Mob with _$User_Mob;



abstract class _User_Mob with Store {
  _User_Mob(){
    DistribuirCartas();
    DistribuirCartas();
  }
  @observable
  List<Usuario> usuarios_list = [Usuario('nome'),Usuario('nome'),Usuario('nome')];
  @observable
  List<int> id_Mesa = [];
  @observable
  List<int> id_cards_usados = [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21];
  @observable
  List<int> id_cards = [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21];
  
  dynamic randomListItem(List lst) => lst[Random().nextInt(lst.length)];

  
  void DistribuirCartas(){
    print('ee');
    print(randomListItem(id_cards_usados));
    print('ff');
    for (var i = 0 ; i < usuarios_list.length ; i++){
      //print(usuarios_list[i].deck.cartas);
      for (var j=0; j < 3 ;j++){
        var element= randomListItem(id_cards_usados);
       
        usuarios_list[i].deck.cartas.add(element);
        id_cards_usados.remove(element);
      }
      print(usuarios_list[i].deck.cartas);
    }
  }
}

class Deck{
  late List<int> cartas;
  Deck(){
    cartas=[];
  }
  void remove(int nume)=>cartas.remove(nume);
}


class Usuario{
  
  String nome;
  late Deck deck;
  Usuario(this.nome){
    this.nome=nome;
    this.deck=Deck();
  }

}
