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
