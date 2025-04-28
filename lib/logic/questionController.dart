List<String> getRandomQuestionList(
    List<String> wrongAnswer,String correctAnswer){
  wrongAnswer.add(correctAnswer);
  wrongAnswer.shuffle();
  return wrongAnswer;
}
List<int> getRandomQuestiomIndex(int length){
  var list= new List<int>.generate(length, (index) => index);
  list.shuffle();
  return list;
}

int getCorrectAnswerIndex(List<String> answers,String correctAnswer){
  for(int index =0;index < answers.length;index++){
    if (answers[index] == correctAnswer) {
      return index;
    }
  }
  return -1;
}

