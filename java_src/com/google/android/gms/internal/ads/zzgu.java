package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
final class zzgu implements Runnable {
    private final /* synthetic */ zzgr zzaej;
    private final /* synthetic */ String zzael;
    private final /* synthetic */ long zzaem;
    private final /* synthetic */ long zzaen;

    zzgu(zzgr zzgrVar, String str, long j, long j2) {
        this.zzaej = zzgrVar;
        this.zzael = str;
        this.zzaem = j;
        this.zzaen = j2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzaej.zzadn.zza(this.zzael, this.zzaem, this.zzaen);
    }
}
