String textF ="rigizan-shishuchu.txt";//change this failename to anoter filename that I wanna research

int countWard=0;
void setup()
{
  String[] lines = loadStrings(textF);
  for(int i=0; i<lines.length; i++)
  {
    findWard(lines[i]);
   }
  exit();
  
  println("李の出現回数は"+countWard);
  println("行数は"+lines.length);
}
 
 void findWard(String lines)//李を抽出し、カウントをふやす
 {
   int textFindLi = lines.indexOf('李');
   if(textFindLi>=0)
   {
     countWard++;
     println(lines);
   }
 }
