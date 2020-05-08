color lightbrown = #FFFFC3;
color darkbrown  = #D8864E;
PImage wrook, wbishop, wknight, wqueen, wking, wpawn;
PImage brook, bbishop, bknight, bqueen, bking, bpawn;
boolean firstClick;
int row1, col1, row2, col2;


char grid[][] = {
  {'R', 'B', 'N', 'Q', 'K', 'N', 'B', 'R'}, 
  {'P', 'P', 'P', 'P', 'P', 'P', 'P', 'P'}, 
  {' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '}, 
  {' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '}, 
  {' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '}, 
  {' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '}, 
  {'p', 'p', 'p', 'p', 'p', 'p', 'p', 'p'}, 
  {'r', 'b', 'n', 'q', 'k', 'n', 'b', 'r'}
};

void setup() {
  size(800, 800);
  
  firstClick = true;
  
  brook = loadImage("blackRook.png");
  bbishop = loadImage("blackBishop.png");
  bknight = loadImage("blackKnight.png");
  bqueen = loadImage("blackQueen.png");
  bking = loadImage("blackKing.png");
  bpawn = loadImage("blackPawn.png");

  wrook = loadImage("whiteRook.png");
  wbishop = loadImage("whiteBishop.png");
  wknight = loadImage("whiteKnight.png");
  wqueen = loadImage("whiteQueen.png");
  wking = loadImage("whiteKing.png");
  wpawn = loadImage("whitePawn.png");
}

void draw() {
  drawBoard();
  highlightSquare();
  drawPieces();
}

void drawBoard() {
 noStroke();
 
 for(int r = 0; r<8; r++) {
   for (int c=0; c<8; c++) {
     if ( (c%2) == (r%2) ) {
       fill(lightbrown);
     }else{
       fill(darkbrown);
     }
     rect(c*100,r*100,100,100);
   }
 }
}


void drawPieces() {
  for(int r = 0; r<8; r++) {
   for (int c=0; c<8; c++) {
     if (grid[r][c] == 'r') image(wrook,c*100,r*100,100,100);
     if (grid[r][c] == 'R') image(brook,c*100,r*100,100,100);
     if (grid[r][c] == 'b') image(wbishop,c*100,r*100,100,100);
     if (grid[r][c] == 'B') image(bbishop,c*100,r*100,100,100);
     if (grid[r][c] == 'n') image(wknight,c*100,r*100,100,100);
     if (grid[r][c] == 'N') image(bknight,c*100,r*100,100,100);
     if (grid[r][c] == 'q') image(wqueen,c*100,r*100,100,100);
     if (grid[r][c] == 'Q') image(bqueen,c*100,r*100,100,100);
     if (grid[r][c] == 'k') image(wking,c*100,r*100,100,100);
     if (grid[r][c] == 'K') image(bking,c*100,r*100,100,100);
     if (grid[r][c] == 'p') image(wpawn,c*100,r*100,100,100);
     if (grid[r][c] == 'P') image(bpawn,c*100,r*100,100,100);
}

void highlightSquare() {
  //if (firstClick == false) {
  // noFill();
  // stroke(255,0,0);
  //}
}
