package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
public final class zzsp {
    public static boolean zzav(String str) {
        return "audio".equals(zzau(str));
    }

    public static boolean zzbf(String str) {
        return "video".equals(zzau(str));
    }

    private static String zzau(String str) {
        if (str == null) {
            return null;
        }
        int iIndexOf = str.indexOf(47);
        if (iIndexOf == -1) {
            String strValueOf = String.valueOf(str);
            throw new IllegalArgumentException(strValueOf.length() != 0 ? "Invalid mime type: ".concat(strValueOf) : new String("Invalid mime type: "));
        }
        return str.substring(0, iIndexOf);
    }
}
