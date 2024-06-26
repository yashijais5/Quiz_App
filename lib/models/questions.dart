class QuestionModal{
  final String question;
  final List<String> options;
  final int correctAnswerIndex;

  const QuestionModal({
    required this.correctAnswerIndex,
    required this.question,
    required this.options,
  });
}

const List<QuestionModal>questions =[
  QuestionModal(
    question: '1. What is the captial of France?',
    correctAnswerIndex: 1,
   options:[
      'a) Madrid',
'b) Paris',
'c) Berlin',
'd) Rome',
    ],),

 QuestionModal(
    question: '2. In What continent is Brazil located?',
    correctAnswerIndex: 3,
   options:[
      'a) Europe',
'b) Asia',
'c) North America',
'd) South America',
    ],),

 QuestionModal(
    question: '3. What is the largest planet in our solar system?',
    correctAnswerIndex: 1,
   options:[
      'a) Earth',
'b) Jupiter',
'c) Saturn',
'd) Venus',
    ],),

     QuestionModal(
    question: '4. What is longest river in the world?',
    correctAnswerIndex: 0,
   options:[
      'a) Nile',
'b) Amazon',
'c) Mississippi',
'd) Danube',
    ],),

     QuestionModal(
    question: '5. What is Main character in the Harry Potter series?',
    correctAnswerIndex: 2,
   options:[
      'a) herminoe Granger',
'b) Ron Weasley',
'c) Harry Potter',
'd) Neville Longbottom',
    ],),

     QuestionModal(
    question: '6. What is the smallest planet in our solar system?',
    correctAnswerIndex: 3,
   options:[
      'a) Venus',
'b) Mars',
'c) Earth',
'd) Mercury',
    ],),

     QuestionModal(
    question: '7. Who wrote the play Romeo and Juliet?',
    correctAnswerIndex: 0,
   options:[
      'a) William Shakespeare',
'b) Oscar Wilde',
'c) Jane Austen',
'd) Charles Dickens',
    ],),

     QuestionModal(
    question: '8. What is the highest mountain in the world?',
    correctAnswerIndex: 1,
   options:[
      'a) Mont Blanc',
'b) Everest',
'c) Kilimanjaro',
'd) Aconcagua',
    ],),

     QuestionModal(
    question: '9. What is the name of the famous painting by Leonardo da Vinci that depicts a women?',
    correctAnswerIndex: 3,
   options:[
      'a) Starry Night',
'b) The Persistence Of Memory',
'c) The last Supper',
'd) Mona Lisa',
    ],),

    
];