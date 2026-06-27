package com.google.android.gms.internal.ads;

import android.text.TextUtils;

/* loaded from: classes2.dex */
final class zzadf extends zzadc {
    zzadf() {
    }

    @Override // com.google.android.gms.internal.ads.zzadc
    public final String zzg(String str, String str2) {
        String strZzci = zzci(str);
        String strZzci2 = zzci(str2);
        if (TextUtils.isEmpty(strZzci)) {
            return strZzci2;
        }
        if (TextUtils.isEmpty(strZzci2)) {
            return strZzci;
        }
        StringBuilder sb = new StringBuilder(String.valueOf(strZzci).length() + 1 + String.valueOf(strZzci2).length());
        sb.append(strZzci);
        sb.append(",");
        sb.append(strZzci2);
        return sb.toString();
    }

    private static String zzci(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        int i = 0;
        int length = str.length();
        while (i < str.length() && str.charAt(i) == ',') {
            i++;
        }
        while (length > 0 && str.charAt(length - 1) == ',') {
            length--;
        }
        if (length < i) {
            return null;
        }
        return (i == 0 && length == str.length()) ? str : str.substring(i, length);
    }
}
