String textF ="KR4c0013_000.txt";//change this failename to anoter filename that I wanna research

int countWard1=0;
int countWard2=0;
int countWard12=0;

void setup()
{
  String[] lines = loadStrings(textF);
  for(int i=0; i<lines.length; i++)
  {
    findWard(lines[i]);
   }
  exit();
  
  println("李の出現回数は"+countWard1);
  println("行数は"+lines.length);
}
 
 void findWard(String lines)//李を抽出し、カウントをふやす
 {
   int textFindText1 = lines.indexOf('李');
   
   if(textFindText1>=0)
   {
     countWard1++;
     println(lines);
   }
   
   int textFindText2 = lines.indexOf('白');
   if(textFindText2>=0)
   {
    countWard2++;
    println(lines);
    }
   
   if(textFindText1>=0 && textFindText2>=0)
   {
    println("findTwin");
    countWard12++;
    }
 }
