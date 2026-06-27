package com.google.android.gms.internal.ads;

import java.io.IOException;

/* loaded from: classes2.dex */
public final class zzju extends IOException {
    private final String zzaqd;

    /* JADX WARN: Illegal instructions before constructor call */
    public zzju(String str) {
        String strValueOf = String.valueOf(str);
        super(strValueOf.length() != 0 ? "Unsupported URI scheme: ".concat(strValueOf) : new String("Unsupported URI scheme: "));
        this.zzaqd = str;
    }
}
