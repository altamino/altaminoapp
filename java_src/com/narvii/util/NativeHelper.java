package com.narvii.util;

import android.util.Base64;
import java.nio.charset.StandardCharsets;

/* loaded from: classes3.dex */
public class NativeHelper {
    private static final char[] HEX_ARRAY;

    public static byte[] B(byte[] bArr, int i) {
        return bArr;
    }

    public static native byte[] c(byte[] bArr);

    public static native byte[] s(String str);

    static {
        System.loadLibrary("animate");
        HEX_ARRAY = "0123456789ABCDEF".toCharArray();
    }

    public static String S(String str) {
        return Base64.encodeToString(s(str), 2);
    }

    public static String S(byte[] bArr, String str, int i) {
        return Base64.encodeToString(s(new String(bArr)), 2);
    }

    public static String S(byte[] bArr, byte[] bArr2, int i) {
        return Base64.encodeToString(s(new String(bArr)), 2);
    }

    public static String S(byte[] bArr) {
        return Base64.encodeToString(s(new String(bArr)), 2);
    }

    public static String Bd(byte[] bArr) {
        return new String(Base64.decode(bArr, 2), StandardCharsets.UTF_8);
    }

    public static byte[] Be(String str) {
        return Base64.encode(str.getBytes(), 2);
    }

    public static byte[] hex2bytes(String str) {
        int length = str.length();
        byte[] bArr = new byte[length / 2];
        for (int i = 0; i < length; i += 2) {
            bArr[i / 2] = (byte) ((Character.digit(str.charAt(i), 16) << 4) + Character.digit(str.charAt(i + 1), 16));
        }
        return bArr;
    }

    public static String bytes2hex(byte[] bArr) {
        char[] cArr = new char[bArr.length * 2];
        for (int i = 0; i < bArr.length; i++) {
            int i2 = bArr[i] & 255;
            int i3 = i * 2;
            char[] cArr2 = HEX_ARRAY;
            cArr[i3] = cArr2[i2 >>> 4];
            cArr[i3 + 1] = cArr2[i2 & 15];
        }
        return new String(cArr);
    }

    private static int addPadding(byte[] bArr, int i) {
        byte length = (byte) (bArr.length - i);
        while (i < bArr.length) {
            bArr[i] = length;
            i++;
        }
        return length;
    }

    private static int padCount(byte[] bArr) {
        int i = bArr[bArr.length - 1] & 255;
        byte b = (byte) i;
        boolean z = (i > bArr.length) | (i == 0);
        for (int i2 = 0; i2 < bArr.length; i2++) {
            z |= (bArr.length - i2 <= i) & (bArr[i2] != b);
        }
        if (z) {
            return -1;
        }
        return i;
    }

    public static byte[] padder16(byte[] bArr) {
        int length = bArr.length;
        int i = length % 16;
        byte[] bArr2 = new byte[(i != 0 ? 16 - i : 16) + length];
        System.arraycopy(bArr, 0, bArr2, 0, length);
        addPadding(bArr2, length);
        return bArr2;
    }

    public static byte[] unpadder16(byte[] bArr) {
        int iPadCount = padCount(bArr);
        if (iPadCount <= 0) {
            return bArr;
        }
        int length = bArr.length - iPadCount;
        byte[] bArr2 = new byte[length];
        System.arraycopy(bArr, 0, bArr2, 0, length);
        return bArr2;
    }

    public static String C(byte[] bArr, String str, int i) {
        return bytes2hex(c(bArr));
    }

    public static String C(byte[] bArr) {
        return bytes2hex(c(bArr));
    }

    public static void test() {
        android.util.Log.i("TESTJNI TEST", Base64.encodeToString(s("test"), 2).equals("Qlg1+2sQEq8OpKQFK4noqFoLq8Z1") ? "PASS" : "FAIL");
        android.util.Log.i("TESTJNI TEST2", Base64.encodeToString(s("test2"), 2).equals("QoyTINLutnic5yrff5V4VUVv4ahv") ? "PASS" : "FAIL");
        android.util.Log.i("TESTJNI TEST3", Base64.encodeToString(s("test3"), 2).equals("QqgOFYAblu4lnnPPRpFUeFh7A2q1") ? "PASS" : "FAIL");
        android.util.Log.i("TESTJNI TEST4", Base64.encodeToString(s("test4"), 2).equals("QgELK6vmhEpAH3ANGsX4zzB+qLaj") ? "PASS" : "FAIL");
        android.util.Log.i("TESTJNI DID", C(hex2bytes("FE343E39C4D39E539A24E574F4C1628C88975410")));
        android.util.Log.i("TESTJNI DID", "42FE343E39C4D39E539A24E574F4C1628C889754100204751C23A79242CF18ABC25FCDB263CF52FEE5");
        android.util.Log.i("TESTJNI DID2", C(hex2bytes("28187A9644F937F785E58E5A5439916A809C0E91")));
        android.util.Log.i("TESTJNI DID2", "4228187A9644F937F785E58E5A5439916A809C0E91B6C1F4D75B7A6E769D4BD00EF5BAE245F6142BEA");
        android.util.Log.i("TESTJNI DID2", C(hex2bytes("50B53761B1F6097759EB1628E39297C7E7EB931C")));
        android.util.Log.i("TESTJNI DID2", "4250B53761B1F6097759EB1628E39297C7E7EB931CF9F6E07CB1DAC1EC0AC5B8D1D0FA0E366FDBA3DD");
    }
}
