package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
public final class zzmp extends Exception {
    private final int errorCode;

    public zzmp(int i) {
        StringBuilder sb = new StringBuilder(36);
        sb.append("AudioTrack write failed: ");
        sb.append(i);
        super(sb.toString());
        this.errorCode = i;
    }
}
