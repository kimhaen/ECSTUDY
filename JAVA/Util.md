TimeStamp
---
현재시간 +1시간 구하기

~~~~java
import java.util.*;
import java.sql.*;


public class Test { public static void main(String[] args) {

     int hour = 1;
     long retryDate = System.currentTimeMillis();
     Timestamp original = new Timestamp(retryDate);

     Calendar cal = Calendar.getInstance();
     cal.setTimeInMillis(original.getTime());
     cal.add(Calendar.HOUR, hour);

     Timestamp later = new Timestamp(cal.getTime().getTime());

     String now = original.toString().substring(0, 19);
     String nowPlus1hr = later.toString().substring(0, 19);

     System.out.println("現在時刻："+ now);
     System.out.println("現在時刻+1時間："+ nowPlus1hr);

  }

}


-------console

現在時刻：2021-01-07 07:06:19
現在時刻+1時間：2021-01-07 08:06:19
~~~~

Split
---

String[] split(String regex)

~~~~java
String str ="010-1234-5678";
String [] mobNum = str.split("-");
String ret1 = mobNum[0];
String ret2 = mobNum[1];
String ret3 = mobNum[2];

System.out.println("ret1 = "+ ret1);
System.out.println("ret2 = "+ ret2);
System.out.println("ret3 = "+ ret3);

-------console

ret1 = 010
ret1 = 1234
ret1 = 5678
~~~~

~~~~java
String str2 = "Seoul,Busan,Tokyo";
String[] cityArr = str2.split(",");
for(int i=0; i<cityArr.length; i++)
System.out.println(cityArr[i]);
}

-------console

Seoul
Busan
Tokyo
~~~~

~~~~java
String str3 = "123-2-456-789";
String[] arr = str3.split("-", 2);
System.out.println("ret4 = " + arr[0]);
System.out.println("ret5 = " + arr[1]);


-------console

ret4 = 123
ret5 = 2-456-789
~~~~

~~~~java
String str4 = "123-2-456-789-010";
String[] arr4 = str4.split("-", 4);
System.out.println(arr4.length);
for(int i =0; i<arr4.length; i++){
System.out.println("ret" + i + " = " + arr4[i]);
}


-------console
4
ret0 = 123
ret1 = 2
ret2 = 456
ret3 = 789-010
~~~~
