AES 128
----

Error Solve - [Base64 Error](https://qastack.kr/programming/13109588/encoding-as-base64-in-java)

Sample Code
~~~java
public Key getAESKey() throws Exception {
    String iv;
    Key keySpec;

    String key = "1234567890123456";
    iv = key.substring(0, 16);
    byte[] keyBytes = new byte[16];
    byte[] b = key.getBytes("UTF-8");

    int len = b.length;
    if (len > keyBytes.length) {
       len = keyBytes.length;
    }

    System.arraycopy(b, 0, keyBytes, 0, len);
    keySpec = new SecretKeySpec(keyBytes, "AES");

    return keySpec;
}

// 암호화
public String encAES(String str) throws Exception {
    Key keySpec = getAESKey();
    Cipher c = Cipher.getInstance("AES/CBC/PKCS5Padding");
    c.init(Cipher.ENCRYPT_MODE, keySpec);
    byte[] encrypted = c.doFinal(str.getBytes("UTF-8"));
    String enStr = new String(Base64.encodeBase64(encrypted));

    return enStr;
}

// 복호화
public String decAES(String enStr) throws Exception {
    Key keySpec = getAESKey();
    Cipher c = Cipher.getInstance("AES/CBC/PKCS5Padding");
    c.init(Cipher.DECRYPT_MODE, keySpec);
    byte[] byteStr = Base64.decodeBase64(enStr.getBytes("UTF-8"));
    String decStr = new String(c.doFinal(byteStr), "UTF-8");

    return decStr;
}
~~~
