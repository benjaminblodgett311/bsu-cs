//****************************************************************************
// darkle.dart - Main entrypoint for Darkle game
//
// Boise State University CS 402
// Dr. Henderson
// Homework 0
//
// Implements the dice game 'Farkle' (https://farkle.games/official-rules/).
//
// First prompts for the player names, then gives each player a turn until
// the score reaches the point threshold at which point the game is over
// and the winning player is displayed.
//
// After a game is finished, begins a new game. Repeats until the user
// responds with an empty string when prompted for players.
//----------------------------------------------------------------------------
import 'dart:io';
import 'dart:math';

//**************************************************************************************************
// The point threshold determines when the gameplay ends
//--------------------------------------------------------------------------------------------------
// TODO: 1. (1 pts) Create a constant integer called pointThreshold and set it to 1000

//**************************************************************************************************
// We'll use the random object from the math library. Call rand.nextInt(n) for a random number
// between 0 and n-1.
//--------------------------------------------------------------------------------------------------
final rand = Random();

//**************************************************************************************************
// Constants used in displaying a player's roll. Selectors allow the user to specify which dice to hold
//--------------------------------------------------------------------------------------------------
const diceSymbols = ["⚀","⚁","⚂","⚃","⚄","⚅"];
const selectors = ["A","B","C","D","E","F"];

//**************************************************************************************************
// The main entry point
//--------------------------------------------------------------------------------------------------
main() {

  // Keep starting new games until the user quits
  while (true) {

    // TODO: 2. (2 pts) Print a welcome message

    // TODO: 3. (2 pts) Create a list of strings called 'players' to hold the player names

    //--------------------------------------------------------------------------------------------------
    // Allow the user to enter player names until they submit an empty return
    //
    // Use stdout.write() to print without a newline.
    // Use stdin.readLineSync() to read a string from the input
    //--------------------------------------------------------------------------------------------------
    print("Enter player names (empty RETURN to finish)");
    while (true) {
      stdout.write("Player ${ players.length + 1}: ");
      var player = stdin.readLineSync() ?? "";

      // TODO: 4. (4 pts) If the user entered a player name, add it to your players list, otherwise break
    }

    // TODO: 5. (3 pts) If the user entered no players, print an appropriate message and exit the app

    // TODO: 6. (1 pts) Call the play() function with your players list
  }
}

//**************************************************************************************************
// Runs a complete game of Darkle
//--------------------------------------------------------------------------------------------------
play(List<String> players) {

  // TODO: 7. (4 pts) Create a map named scores that maps player names to their scores. Initialize
  //                  each player's score to 0

  // TODO: 8. (1 pts) Create an integer called currentPlayer that keeps track of turns. Start with player 1.

  //--------------------------------------------------------------------------------------------------
  // Main gameplay loop. getWinner() returns an empty string until someone crosses the pointThreshold.
  // While there is no current winner do the following:
  // 1. Display the current score table (showScores())
  // 2. Let the next player take a turn (takeTurn()) and update their score in the scores map
  // 3. Update currentPlayer to the next player (be sure to wrap)
  //--------------------------------------------------------------------------------------------------
  // TODO: 9. (7 pts) Write a while loop that implements the main gameplay as described above

  // TODO: 10. (2 pts) Display the final score table and a message giving the winner
}

//**************************************************************************************************
// Implements a player's turn:
// 1. First rolls all six dice
// 2. Checks if there is no scoring option (called a Farkle) and if so ends the turn with no score
// 3. Allows the user to select scoring dice to hold
// 4. Rolls remaining unheld dice
// 5. Repeats from step 2 until all dice are rolled or the user 'banks' their score (by entering
//    an empty response). At that point the remaining dice must be scored and added to any held
//    dice (called 'hands')
//--------------------------------------------------------------------------------------------------
int takeTurn(String player) {
  // TODO: 11. (1 pts) Display an appropriate message showing which player is taking a turn

  // TODO: 12. (4 pts) Create a list of records called hands to remember the dice the player holds. The
  //   record should have two named fields: a list of integers named dice, and a single integer named value.
  //   The dice field will record the value of the dice the player held and the value will record the corresponding
  //   score.

  // TODO: 13. (1 pts) Create a variable named diceRemaining to track how many dice are left to roll and initialize it to 6

  //--------------------------------------------------------------------------------------------------
  // This is the loop that implements the player's turn as described in the function comment above
  //--------------------------------------------------------------------------------------------------
  while (diceRemaining > 0) {
    // TODO: 14. (1 pts) Create a list of integers named roll to hold the dice values of the player's throw

    // TODO: 15. (4 pts) Roll the dice by adding diceRemaining random numbers between 1 and 6 to the roll list

    showRoll(roll);

    // TODO: 16. (3 pts) Using the score() function, check if the values in the roll list have any scoring option.
    //    If not, print a (obnoxious) message informing the user they 'Darkled' and return 0 for their score.

    //--------------------------------------------------------------------------------------------------
    // Gives the player the option to hold some scoring dice (called a "hand") and roll again. If the
    // player just enters an empty return, it means they want to end their turn and score whatever is
    // on the current roll.
    //
    // Implemented in a loop in case the player submits an invalid selection, i.e. tries to hold a
    // non-scoring hand, and prompts until a valid selection is entered.
    //--------------------------------------------------------------------------------------------------
    while (true) {

      // TODO: 17. (2 pts) Create a list of integers named hand to record the player's selection

      stdout.write("Select dice to hold or ENTER to bank: ");
      var response = stdin.readLineSync() ?? "";
      response.split('').forEach((ch) {

        // TODO: 18. (5 pts) Create a switch statement that uses ch.toUpperCase() to determine which dice to add
        //    to hand, i.e. 'A' should add the first die, 'B' the second, etc.
      });

      // TODO: 19. (5 pts) If the hand is empty check that the response is also empty. If not ignore it and continue.
      //  Otherwise bank the score from their hands and current roll by calling the bank() function and returning the
      //  result.

      // TODO: 20. (5 pts) If the hand is non-scoring it is invalid. Call the score() function and check the return
      // value. If it is less than or equal to 0 print a message that the selection is invalid and don't break out of
      // the loop. Otherwise, add the hand to the hands list, adjust the diceRemaining variable appropriately, and break out
      // of the hold loop.
    }
  };

  // If the user held all remaining dice, this code will be executed. Bank their score
  // TODO: 21. (2 pts) Call the bank() function with the hands list and an empty roll list. Return the result
}

//**************************************************************************************************
// Given a list of integer values representing a dice roll, calculates the optimal score according
// to the Farkle rules:
// A straight (1-6) is worth 1000
// Three pairs are worth 750
// Three ones are worth 1000
// Three of a kind (except 1s) are worth the face value * 100 (e.g. three 4s -> 400)
// Any remaining 1 is worth 100
// Any remaining 5 is worth 50
//--------------------------------------------------------------------------------------------------
int score(List<int> roll) {

  // TODO: 22. (5 pts) Create vars named ones, twos, threes, etc. to hold the count of each possible value.
  //   You can use this simple construction: roll.where((e) => e == x).toList().length, where x is the value
  //   you want to count.

  // TODO: 23. (25 pts) Use your vars above to calculate the optimum score for the roll as described in the function
  //      comment and return the result.
}

// TODO: 24. (10 pts) Create a function named getWinner() which takes a map of player names to integer scores.
//   The function should find the player with the highest score. If the score is over the pointThreshold it
// should return the player's name, otherwise it should return an empty string.

//**************************************************************************************************
// The rest of the code below are helper functions and do not require any modification
//--------------------------------------------------------------------------------------------------
//**************************************************************************************************
// Displays a table of scores from a map of player names to values. Takes a list of player names
// in playing order.
//--------------------------------------------------------------------------------------------------
showScores(players, scores) {
  for (var _ in players) stdout.write("━━━━━━━━━━━");
  print("");

  for (var player in players) {
    stdout.write("${player.padLeft(10)}");
    stdout.write(" ");
  }
  print("");

  for (var _ in players) {
    stdout.write("---------- ");
  }
  print("");

  for (var player in players) {
    stdout.write("${scores[player].toString().padLeft(10)} ");
  }
  print("");

  for (var _ in players) stdout.write("━━━━━━━━━━━");

  print("");
  print("");
}

//**************************************************************************************************
// Displays each value in the roll list as a die symbol with a letter above it (for selection) and
// the numerical value below (for readability)
//--------------------------------------------------------------------------------------------------
showRoll(List<int> roll) {
  for (var i = 0; i < roll.length; ++i) stdout.write("${selectors[i]} ");
  print("");

  for (var num in roll) stdout.write("${diceSymbols[num - 1]} ");
  print("");

  for (var num in roll) stdout.write("$num ");
  print("");

  print("");
}

//**************************************************************************************************
// Calculates the optimal score for each hand in the hands list and also the values in the roll list
// Displays each hand and the roll using dice symbols and the corresponding scores.
// Returns the total score.
//--------------------------------------------------------------------------------------------------
int bank(player, roll, hands) {
  // score and bank
  int total = 0;
  print("-----------------");
  for (var hand in hands) {
    for (var die in hand.dice) stdout.write(diceSymbols[die-1]);
    print("|${hand.value}");
    total += hand.value as int;
  }
  if (roll.isNotEmpty) {
    var rval = score(roll);
    for (var die in roll) stdout.write(diceSymbols[die - 1]);
    print("|$rval");
    total += rval;
  }
  print("-----------------");
  print("$player scores $total");
  return total;
}

// Total points: 100
