package com.google.android.gms.internal.ads;

import com.google.android.exoplayer2.util.MimeTypes;

/* loaded from: classes2.dex */
public final class zzkl {
    public static String zzau(String str) {
        int iIndexOf = str.indexOf(47);
        if (iIndexOf != -1) {
            return str.substring(0, iIndexOf);
        }
        String strValueOf = String.valueOf(str);
        throw new IllegalArgumentException(strValueOf.length() != 0 ? "Invalid mime type: ".concat(strValueOf) : new String("Invalid mime type: "));
    }

    public static boolean zzav(String str) {
        return zzau(str).equals("audio");
    }

    public static boolean zzaw(String str) {
        return MimeTypes.AUDIO_AC3.equals(str) || MimeTypes.AUDIO_E_AC3.equals(str);
    }
}
