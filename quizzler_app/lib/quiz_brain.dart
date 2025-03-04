import 'package:quizzler_app/main.dart';
import 'question.dart';

class Quiz_brain
{
  int _questionNumber = 0;
    List<Question> _questionBank = [
    Question(q: 'Hagrid\'in Felsefe Taşı\'nı koruyan 3 başlı köpeğinin adı Fluffy\' dir', a: true),
    Question(q: 'Black ailesinin ev cininin adı Dobby\'dir', a: true),
    Question(q: 'Basilisk zehirinin bilinen tek panzehiri Şahgaga\'nın gözyaşlarıdır', a: false),
    Question(q: 'Peter Pettigrew\'un lakabı Kılkuyruk\'tur', a: true),
    Question(q: 'Sirius Black Lucius Malfoy tarafından öldürülmüştür', a: false),
    Question(q: 'Sırlar odasını ikinci kez açan kişi Ginny Weasley\'dir', a: true),
    Question(q: 'Dumbledore\'un hayvanı bir baykuştur', a: false),
    Question(q: 'Rawena Ravenclaw\'ın diademi 7 hortkuluktan biridir', a: true),
    Question(q: 'Hermonie Granger dönüşüm iksirini ilk içtiğinde kediye dönüşmüştür.', a: true),
    Question(q: 'Charlie Weasley İtalya\'da ejdarhalarla ilgili çalışmaktadır', a: false),

  ];
    bool isFinish(){
      return true;
    }
    void reset(){
      if(_questionNumber > _questionBank.length-1){
        _questionNumber=0;
      }
    }

  String getQuestionText (){
    return _questionBank[_questionNumber].questionText;
  }
  bool getQuestionAnswer (){
    return _questionBank[_questionNumber].questionAnswer;
  }
  void nextQuestion(){
    if (_questionNumber < _questionBank.length-1){ //-1 i koymazsan son soru çıkmaz (out of index hatası)
      _questionNumber++;
    }
  }

}