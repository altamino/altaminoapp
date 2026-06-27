package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
final class zzbgm implements zzbdo {
    private final /* synthetic */ zzbgl zzeiq;

    zzbgm(zzbgl zzbglVar) {
        this.zzeiq = zzbglVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbdo
    public final void zzl(String str, String str2) {
        zzbgl zzbglVar = this.zzeiq;
        String strValueOf = String.valueOf(str);
        zzbglVar.zzeio = strValueOf.length() != 0 ? "ExoPlayer caching failed. Type: ".concat(strValueOf) : new String("ExoPlayer caching failed. Type: ");
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 46 + String.valueOf(str2).length());
        sb.append("ExoPlayer failed during precache: ");
        sb.append(str);
        sb.append(" Exception: ");
        sb.append(str2);
        zzbad.zzep(sb.toString());
        this.zzeiq.abort();
    }
}
