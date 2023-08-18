import 'package:flutter/material.dart';

List datalist = [
  {
    "CategoryName": "Sport Test",
    "Color": Colors.deepPurple,
    "data": [
      {
        "question": "How many players are there on a featbool team?",
        "answers": ["10", "21", "11", "9"],
        //0,0,1,0
      },
      {
        "question": "How many players are there on a baseball team?",
        "answers": ["10", "21", "11", "9"],
        //0,0,0,1
      },
      {
        "question": "Which of the following is not a position in football?",
        "answers": ["Goalkeeper", "Defender", "Forward", "Quarterback"],
        //0,0,0,1
      },
      {
        "question":
            "Which of the following is the longest football match ever played?",
        "answers": [
          "3 hours and 26 minutes",
          "3 hours and 5 minutes",
          "3 hours and 15 minutes",
          "3 hours and 8 minutes",
        ],
        //0,1,0,0
      },
      {
        "question": "Which country has won the most FIFA World Cups?",
        "answers": ["Brazil", "Germany", "Italy", "Argentina"],
        //1,0,0,0
      },
      {
        "question": "Who is the all-time leading scorer in the FIFA World Cup?",
        "answers": [
          "Cristiano Ronaldo",
          "Lionel Messi",
          "Pelé",
          "Miroslav Klose"
        ],
        //1,0,0,0
      },
      {
        "question":
            "Which football club has won the most UEFA Champions League titles?",
        "answers": [
          "Real Madrid",
          "Barcelona",
          "Manchester United",
          "AC Milan"
        ],
        //1,0,0,0
      },
      {
        "question":
            "Which of the following is the largest football stadium in the world?",
        "answers": [
          "Camp Nou",
          "Old Trafford",
          "Lusail Iconic Stadium",
          "MetLife Stadium"
        ],
        //0,0,1,0
      },
      {
        "question":
            "Which of the following is the most expensive football transfer of all time?",
        "answers": [
          "Neymar to Paris Saint-Germain",
          "Cristiano Ronaldo to Real Madrid",
          "Lionel Messi to Barcelona",
          "Kylian Mbappé to Paris Saint-Germain"
        ],
        //1,0,0,0
      },
      {
        "question":
            "Which of the following is the most famous football trophy?",
        "answers": [
          "The FIFA World Cup",
          "The UEFA Champions League",
          "The UEFA Europa League",
          "The FA Cup"
        ],
        //1,0,0,0
      },
      {
        "question":
            "Which of the following is the most famous football player of all time?",
        "answers": [
          "Pelé",
          "Diego Maradona",
          "Lionel Messi",
          "Cristiano Ronaldo"
        ],
        //1,0,0,0
      },
    ]
  },
  {
    "CategoryName": "Math Test",
    "Color": Colors.red,
    "data": [
      {
        "question":
            "Which of the following is the correct equation for the volume of a sphere?",
        "answers": ["V = πr^2 h", "V = πr^3", "V = 4/3 πr^3", "V = r^3"],
        //0,0,1,0
      },
      {
        "question":
            "Which of the following is the correct equation for the area of a circle?",
        "answers": ["A = πr^2", "A = r^2", "A = 2r^2", "A = πr^3"],
        //1,0,0,0
      },
      {
        "question": "What is 10% of 50?",
        "answers": ["5", "10", "20", "25"],
        //1,0,0,0
      },
      {
        "question":
            "Which of the following is the correct equation for the slope of a line?",
        "answers": [
          "m = (y - y1)/(x - x1)",
          "m = (x - x1)/(y - y1)",
          "m = y/x",
          "m = x/y"
        ],
        //1,0,0,0
      },
      {
        "question":
            "Which of the following is the correct equation for the distance formula?",
        "answers": [
          "d = √(x2 - x1)^2 + (y2 - y1)^2",
          "d = √(x1 - x2)^2 + (y1 - y2)^2",
          "d = x2 - x1 + y2 - y1",
          "d = x2 + x1 + y2 + y1"
        ],
        //1,0,0,0
      },
      {
        "question":
            "Which of the following is the correct equation for the area of a triangle?",
        "answers": ["A = bh/2", "A = bh", "A = b/2h", "A = b^2h"],
        //1,,0,0,0
      },
      {
        "question":
            "Which of the following is the correct equation for the volume of a rectangular prism?",
        "answers": ["V = lwh", "V = lw/2", "V = l^2w", "V = l/2w"],
        //1,0,0,0
      },
      {
        "question": "What is the sum of the first 100 natural numbers?",
        "answers": ["5050", "5000", "10000", "1150"],
        //1,0,0,0
      },
      {
        "question":
            "What is the next number in the sequence 1, 2, 4, 7, 11, 16??",
        "answers": ["15", "20", "18", "22"],
        //0,0,0,1
      },
      {
        "question": "What is the value of 2^10?",
        "answers": ["1000", "1024", "512", "128"],
        //0,1,0,0
      },
      {
        "question": "What is the square root of 16?",
        "answers": ["8", "2", "4", "1"],
        //0,0,1,0
      },
    ]
  },
  {
    "CategoryName": "Chemistry Test",
    "Color": Colors.blue,
    "data": [
      {
        "question":
            "Which of the following is the most common element in the universe?",
        "answers": ["Hydrogen", "Helium", "Oxygen", "Carbon"],
        //1,0,0,0
      },
      {
        "question":
            "Which of the following is the most abundant element in the Earth's crust?",
        "answers": ["Oxygen", "Silicon", "Aluminum", "Calcium"],
        //1,0,0,0
      },
      {
        "question":
            "Which of the following is the smallest unit of an element?",
        "answers": ["Atom", "Ion", "Mixture", "Compound"],
        //1,0,0,0
      },
      {
        "question": "Which of the following is a compound?",
        "answers": ["Water", "Hydrogen", "Oxygen", "Nitrogen"],
        //1,0,0,0
      },
      {
        "question": "Which of the following is a mixture?",
        "answers": ["Salt", "Water", "Sugar", "Air"],
        //1,0,0,0
      },
      {
        "question": "Which of the following is a pure substance?",
        "answers": ["Salt", "Water", "Sugar", "Air"],
        //1,,0,0,0
      },
      {
        "question": "Which of the following is a physical change?",
        "answers": [
          "Burning wood",
          "Cooking an egg",
          "Rusting iron",
          "Melting ice"
        ],
        //0,0,0,1
      },
      {
        "question": "Which of the following is a chemical change?",
        "answers": [
          "Burning wood",
          "Cooking an egg",
          "Rusting iron",
          "Melting ice"
        ],
        //1,0,0,0
      },
      {
        "question": "Which of the following is a heterogeneous mixture?",
        "answers": ["Salt", "Water", "Sugar", "Oil and water"],
        //0,0,0,1
      },
      {
        "question": "Which of the following is a homogeneous mixture?",
        "answers": ["Salt", "Water", "Sugar", "Oil and water"],
        //1,0,0,0
      },
      {
        "question": "Which of the following is a chemical bond?",
        "answers": [
          "The force of attraction between two atoms",
          "The force of attraction between two molecules",
          "The force of attraction between two ions",
          "The force of attraction between two compounds"
        ],
        //1,0,0,0
      },
    ]
  }
];
