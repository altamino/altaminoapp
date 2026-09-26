package com.bytedance.tea.common.utility;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import l9.p;

/* JADX INFO: loaded from: classes9.dex */
public class c {
    public static String a(String str) {
        return a(str, p.SHA_256);
    }

    public static String a(String str, String str2) {
        byte[] bytes = str.getBytes();
        try {
            if (d.a(str2)) {
                str2 = p.SHA_256;
            }
            MessageDigest messageDigest = MessageDigest.getInstance(str2);
            messageDigest.update(bytes);
            return a(messageDigest.digest());
        } catch (NoSuchAlgorithmException | Exception unused) {
            return null;
        }
    }

    public static String a(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        try {
            StringBuilder sb = new StringBuilder();
            for (byte b7 : bArr) {
                sb.append(String.format("%02x", Byte.valueOf(b7)));
            }
            return sb.toString();
        } catch (Throwable unused) {
            return null;
        }
    }
}
