class Question{
    String questionText;
    String option1;
    String option2;
    String option3;
    String option4;
    int answer;

    Question(this.questionText, this.option1, this.option2, this.option3, this.option4, this.answer);

    static List<Question> getQuestionsList(){
      List<Question> questions = [];

      questions.add(Question(
        'O que é flutter?',
        'Um novo smartphone',
        'Um sistema operacional',
        'Um SDK de desenvolvimento Multiplataforma',
        'Uma Linguagem de programação orientada a objetos com cara de java e corpo de C muito facil de utilizar  e quem sabe pra testar o layout',
        3,
       ));
      questions.add(Question(
        'Qual a linguagem de programação usada no Flutter',
        'Dart',
        'Go lang',
        'C#',
        'Java',
        1,
      ));
      return questions;

    }



}