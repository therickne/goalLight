
void requestPage(String _page) {
  
  // Get Page  
  scores = loadStrings(_page);
 
  // Print
  for(int i = 0; i < scores.length; i++) {
    // Base Text Result
    println("\nThis is the Page Result: \n****************\n"); 
    println(scores[i]); 
    println("");
    
    // Split
    team = split(scores[i], ':');
    println("Split Into " + team.length + " Sections...");
    
  }
  
  // Team
  for(int i = 0; i < team.length; i++) {
    if(team[i].contains(favouriteTeam)) {
      println(team[i]);
    } 
  }
  println(team.length);
  println("\n\n");

  
  // Pass To Parser
  //parseTeam(favouriteTeam, scores[]);
  
}
