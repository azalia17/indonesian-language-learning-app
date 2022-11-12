class Question {
  final int id, answer;
  final String question, image;
  final List<String> options;

  Question(this.id, this.answer, this.question, this.image, this.options);
}

const List vocab_family_question = [

  {
    "id" : 1,
    "question": "Ayah",
    "image" : "assets/images/familyVocabFather.png",
    "options" : ['Rama', 'Eyang Kakung', 'Mbakayu', 'Ibu'],
    "answer_option" : 0,
  },
  {
    "id" : 2,
    "question": "Ibu",
    "image" : "assets/images/familyVocabMother.png",
    "options" : ['Rama', 'Eyang Kakung', 'Mbakayu', 'Ibu'],
    "answer_option" : 3,
  },
  {
    "id" : 3,
    "question": "Kakak Perempuan",
    "image" : "assets/images/familyVocabSister.png",
    "options" : ['Rama', 'Eyang Kakung', 'Mbakayu', 'Ibu'],
    "answer_option" : 2,
  },
  {
    "id" : 4,
    "question": "Kakek",
    "image" : "assets/images/familyVocabGrandfather.png",
    "options" : ['Rama', 'Eyang Kakung', 'Mbakayu', 'Ibu'],
    "answer_option" : 1,
  },
  {
    "id" : 5,
    "question": "Nenek",
    "image" : "assets/images/familyVocabGrandmother.png",
    "options" : ['Rama', 'Eyang Kakung', 'Mbak', 'Eyang Putri'],
    "answer_option" : 3,
  },


];