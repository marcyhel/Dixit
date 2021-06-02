// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_mob.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$User_Mob on _User_Mob, Store {
  final _$paginaAtom = Atom(name: '_User_Mob.pagina');

  @override
  int get pagina {
    _$paginaAtom.reportRead();
    return super.pagina;
  }

  @override
  set pagina(int value) {
    _$paginaAtom.reportWrite(value, super.pagina, () {
      super.pagina = value;
    });
  }

  final _$usuarios_listAtom = Atom(name: '_User_Mob.usuarios_list');

  @override
  ObservableList<Usuario> get usuarios_list {
    _$usuarios_listAtom.reportRead();
    return super.usuarios_list;
  }

  @override
  set usuarios_list(ObservableList<Usuario> value) {
    _$usuarios_listAtom.reportWrite(value, super.usuarios_list, () {
      super.usuarios_list = value;
    });
  }

  final _$id_MesaAtom = Atom(name: '_User_Mob.id_Mesa');

  @override
  List<int> get id_Mesa {
    _$id_MesaAtom.reportRead();
    return super.id_Mesa;
  }

  @override
  set id_Mesa(List<int> value) {
    _$id_MesaAtom.reportWrite(value, super.id_Mesa, () {
      super.id_Mesa = value;
    });
  }

  final _$id_cards_usadosAtom = Atom(name: '_User_Mob.id_cards_usados');

  @override
  List<int> get id_cards_usados {
    _$id_cards_usadosAtom.reportRead();
    return super.id_cards_usados;
  }

  @override
  set id_cards_usados(List<int> value) {
    _$id_cards_usadosAtom.reportWrite(value, super.id_cards_usados, () {
      super.id_cards_usados = value;
    });
  }

  final _$id_cardsAtom = Atom(name: '_User_Mob.id_cards');

  @override
  List<int> get id_cards {
    _$id_cardsAtom.reportRead();
    return super.id_cards;
  }

  @override
  set id_cards(List<int> value) {
    _$id_cardsAtom.reportWrite(value, super.id_cards, () {
      super.id_cards = value;
    });
  }

  final _$_User_MobActionController = ActionController(name: '_User_Mob');

  @override
  void addUsuario(String nome, String img) {
    final _$actionInfo =
        _$_User_MobActionController.startAction(name: '_User_Mob.addUsuario');
    try {
      return super.addUsuario(nome, img);
    } finally {
      _$_User_MobActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeUsuario(String nome, String img) {
    final _$actionInfo = _$_User_MobActionController.startAction(
        name: '_User_Mob.removeUsuario');
    try {
      return super.removeUsuario(nome, img);
    } finally {
      _$_User_MobActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
pagina: ${pagina},
usuarios_list: ${usuarios_list},
id_Mesa: ${id_Mesa},
id_cards_usados: ${id_cards_usados},
id_cards: ${id_cards}
    ''';
  }
}
