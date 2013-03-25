
//--------------------------
// PARSE THE CURRENT SCORE
//--------------------------

void parseScore(String _gameDayStats) {
  println(" ---- This is the parseScore Data ---- \n"); 

  // Split String
  sections = split(_gameDayStats, ':');
  
  // Get Line With Score
  for(int i = 0; i < sections.length; i++) {
      // Print
      println(sections[i]);  
      
      // Set Line With Score
      if(sections[i].contains(favouriteTeam)) {
         // Set Line With Score
         scoreLine = sections[i+2];
         // Home
         if(sections[i].contains("htv")) {
           otherTeam = sections[i-4];
         }
         // Away
         else if(sections[i].contains("atv")) {
           otherTeam = sections[i+4];
         }
         // Parse
         score = split(scoreLine, ',');
      }
      println("");
  }
  
  // Score Section
  for(int i = 0; i < score.length; i++) {
    if(score[i] != "\"atc\"") {
      println("Keeping This Line: " + score[i]);
      // Trim The Score
      String tempScore = score[0].substring(1, 2);
      // Assign It To Our Global int
      currentScore = int(tempScore);
    }
  }
  
  // Print
  println("");
  println("The Current Score For " + favouriteTeam + " is " + str(currentScore));

  // Did They Score ???
  if(currentScore > lastScore) {
    println("");
    println("GGGOOAAAAAALLLLLL!!!!!!"); 
    println("");
    goal = true;
  }
  else {
    println("");
    println("No Goal :-( "); 
    println(""); 
    goal = false;
  }

  // Store Score
  lastScore = currentScore;
  
  
}
