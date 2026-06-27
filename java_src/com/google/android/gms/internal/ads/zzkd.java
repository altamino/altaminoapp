package com.google.android.gms.internal.ads;

import java.io.IOException;

/* loaded from: classes2.dex */
public final class zzkd extends IOException {
    public zzkd(Exception exc) {
        String strValueOf = String.valueOf(exc.getClass().getSimpleName());
        String strValueOf2 = String.valueOf(exc.getMessage());
        StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 13 + String.valueOf(strValueOf2).length());
        sb.append("Unexpected ");
        sb.append(strValueOf);
        sb.append(": ");
        sb.append(strValueOf2);
        super(sb.toString(), exc);
    }
}
