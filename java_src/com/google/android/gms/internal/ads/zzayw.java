package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
final class zzayw implements zzz {
    private final /* synthetic */ String zzdli;
    private final /* synthetic */ zzayz zzdxk;

    zzayw(zzayu zzayuVar, String str, zzayz zzayzVar) {
        this.zzdli = str;
        this.zzdxk = zzayzVar;
    }

    @Override // com.google.android.gms.internal.ads.zzz
    public final void zzd(zzaf zzafVar) {
        String str = this.zzdli;
        String string = zzafVar.toString();
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 21 + String.valueOf(string).length());
        sb.append("Failed to load URL: ");
        sb.append(str);
        sb.append("\n");
        sb.append(string);
        zzbad.zzep(sb.toString());
        this.zzdxk.zzb(null);
    }
}
