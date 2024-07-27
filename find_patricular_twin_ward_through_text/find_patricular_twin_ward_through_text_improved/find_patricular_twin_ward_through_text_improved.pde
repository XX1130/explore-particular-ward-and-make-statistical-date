String textF ="KR4c0013_000.txt";//change this failename to anoter filename that I wanna research

int countWord1=0;
int countWord2=0;
int countWord12=0;

String savefile="output/resultOfSearchTwinWard";
String[] saveLines=new String[countWord12+1];

void setup()
{
  String[] lines = loadStrings(textF);
  for(int i=0; i<lines.length; i++)
  {
    findWord(lines[i]);
   }
  
  println("行数は"+lines.length);
  println("李の出現回数は"+countWord1);
  println("白の出現回数は"+countWord2);
  println("同じ行の中に李と白両方が出現する回数は"+countWord12);
  
  String outputWords = "行数："+lines.length+",李の出現回数："+countWord1+",白の出現回数；"+countWord2+",同時出現回数："+countWord12+",,";
  String[] outputLines = split(outputWords,',');
  saveStrings(savefile,outputLines);
  
  exit();
}
 
 void findWord(String lines)//李を抽出し、カウントをふやす
 {
   int textFindText1 = lines.indexOf('李');
   
   if(textFindText1>=0)
   {
     countWord1++;
     //println(lines);
   }
   
   int textFindText2 = lines.indexOf('白');
   if(textFindText2>=0)
   {
     countWord2++;
     //println(lines);
    }
   
   if(textFindText1>=0 && textFindText2>=0)
   {
     println(lines);
     println("findTwin");
     countWord12++;
    }
 }
 
