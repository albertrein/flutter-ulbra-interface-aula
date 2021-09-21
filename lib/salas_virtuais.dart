import 'package:flutter/material.dart';

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
          new Icon(Icons.star_border_outlined),
          new Positioned(
            right: 0,
            child: new Container(
              padding: EdgeInsets.all(1),
              decoration: new BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(6),
              ),
              constraints: BoxConstraints(
                minWidth: 12,
                minHeight: 12,
              ),
              child: new Text(
                this.counterAtividadeAvaliativa,
                style: new TextStyle(
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
          new Icon(Icons.chat_bubble_outline),
          new Positioned(
            right: 0,
            child: new Container(
              padding: EdgeInsets.all(1),
              decoration: new BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(6),
              ),
              constraints: BoxConstraints(
                minWidth: 12,
                minHeight: 12,
              ),
              child: new Text(
                this.counterIteracao,
                style: new TextStyle(
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
          new Icon(Icons.sim_card_alert_outlined),
          new Positioned(
            right: 0,
            child: new Container(
              padding: EdgeInsets.all(1),
              decoration: new BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(6),
              ),
              constraints: BoxConstraints(
                minWidth: 12,
                minHeight: 12,
              ),
              child: new Text(
                this.counterRoteiro,
                style: new TextStyle(
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
        padding: EdgeInsets.only(left: 5.0, top: 5.0),
        child: Card(
          color: Colors.white,
          child: Container(
            decoration: BoxDecoration(
            border: Border(left: BorderSide(color: corTema, width: 5))),
            child: Column(
              children: [
                Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 22.0, bottom: 8.0, left: 5),
                        child: Text(this.tituloCadeira, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                      ),
                      Padding(
                        padding:  EdgeInsets.only(top: 22),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            this._makeIconAtividadeAvaliativa(context),
                            Padding(
                              padding: EdgeInsets.only(left: 6.0, right: 6.0),
                              child: this._makeIconIteracao(context),
                            ),                            
                            this._makeIconRoteiro(context),
                          ],
                        ),
                      )
                    ],
                  )
                ),
              ],
            ),
          )
        ),
      )      
    );
  }  
}