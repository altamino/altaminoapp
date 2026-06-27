package com.google.android.gms.internal.ads;

import android.media.MediaCodec;

/* loaded from: classes2.dex */
public final class zzgv extends Exception {
    private final String zzaeo;
    private final String zzaep;

    public zzgv(zzhj zzhjVar, Throwable th, int i) {
        String strValueOf = String.valueOf(zzhjVar);
        StringBuilder sb = new StringBuilder(String.valueOf(strValueOf).length() + 36);
        sb.append("Decoder init failed: [");
        sb.append(i);
        sb.append("], ");
        sb.append(strValueOf);
        super(sb.toString(), th);
        this.zzaeo = null;
        String str = i < 0 ? "neg_" : "";
        int iAbs = Math.abs(i);
        StringBuilder sb2 = new StringBuilder(str.length() + 64);
        sb2.append("com.google.android.gms.ads.exoplayer1.MediaCodecTrackRenderer_");
        sb2.append(str);
        sb2.append(iAbs);
        this.zzaep = sb2.toString();
    }

    public zzgv(zzhj zzhjVar, Throwable th, String str) {
        String strValueOf = String.valueOf(zzhjVar);
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 23 + String.valueOf(strValueOf).length());
        sb.append("Decoder init failed: ");
        sb.append(str);
        sb.append(", ");
        sb.append(strValueOf);
        super(sb.toString(), th);
        this.zzaeo = str;
        String diagnosticInfo = null;
        if (zzkq.SDK_INT >= 21 && (th instanceof MediaCodec.CodecException)) {
            diagnosticInfo = ((MediaCodec.CodecException) th).getDiagnosticInfo();
        }
        this.zzaep = diagnosticInfo;
    }
}
