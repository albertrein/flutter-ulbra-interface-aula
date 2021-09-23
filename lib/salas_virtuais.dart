import 'package:flutter/material.dart';
import 'cadeira.dart';

class SalaVirtual extends StatelessWidget{
  String tituloCadeira = "";
  String counterAtividadeAvaliativa = "";
  String counterIteracao = "";
  String counterRoteiro = "";
  Color corTema;


  SalaVirtual(this.tituloCadeira, this.counterAtividadeAvaliativa, this.counterIteracao, this.counterRoteiro, this.corTema);

  Widget _makeIconAtividadeAvaliativa(BuildContext context){
    return(
      Stack(
        children: <Widget>[
          const Icon(Icons.star_border_outlined),
          Positioned(
            right: 0,
            child: Container(
              padding: const EdgeInsets.all(1),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(6),
              ),
              constraints: const BoxConstraints(
                minWidth: 12,
                minHeight: 12,
              ),
              child: Text(
                counterAtividadeAvaliativa,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 8,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          )
        ],
      )
    );
  }

    Widget _makeIconIteracao(BuildContext context){
    return(
      Stack(
        children: <Widget>[
          const Icon(Icons.chat_bubble_outline),
          Positioned(
            right: 0,
            child: Container(
              padding: const EdgeInsets.all(1),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(6),
              ),
              constraints: const BoxConstraints(
                minWidth: 12,
                minHeight: 12,
              ),
              child: Text(
                counterIteracao,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 8,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          )
        ],
      )
    );
  }

    Widget _makeIconRoteiro(BuildContext context){
    return(
      Stack(
        children: <Widget>[
          const Icon(Icons.sim_card_alert_outlined),
          Positioned(
            right: 0,
            child: Container(
              padding: const EdgeInsets.all(1),
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(6),
              ),
              constraints: const BoxConstraints(
                minWidth: 12,
                minHeight: 12,
              ),
              child: Text(
                counterRoteiro,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 8,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          )
        ],
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return (
      Padding(
        padding: const EdgeInsets.only(left: 5.0, top: 5.0),
        child: Card(
          color: Colors.white,
          child: InkWell(
            splashColor: corTema,
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Cadeira(tituloCadeira, corTema)));        
            },
            child: Container(
              decoration: BoxDecoration(
                border: Border(left: BorderSide(color: corTema, width: 5))
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 22.0, bottom: 8.0, left: 5),
                    child: Text(tituloCadeira, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 22),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        _makeIconAtividadeAvaliativa(context),
                        Padding(
                          padding: const EdgeInsets.only(left: 6.0, right: 6.0),
                          child: _makeIconIteracao(context),
                        ),                            
                        _makeIconRoteiro(context),
                      ],
                    ),
                  )
                ],
              )
            )
          ),
        )
      )
    );
  }  
}