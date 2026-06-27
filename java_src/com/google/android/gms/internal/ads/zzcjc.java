package com.google.android.gms.internal.ads;

import android.database.sqlite.SQLiteDatabase;

/* loaded from: classes2.dex */
public final class zzcjc {
    private final zzcja zzfyc;
    private final zzbbl zzfyd;

    public zzcjc(zzcja zzcjaVar, zzbbl zzbblVar) {
        this.zzfyc = zzcjaVar;
        this.zzfyd = zzbblVar;
    }

    public final void zza(zzczc<SQLiteDatabase, Void> zzczcVar) {
        zzbbl zzbblVar = this.zzfyd;
        zzcja zzcjaVar = this.zzfyc;
        zzcjaVar.getClass();
        zzbar.zza(zzbblVar.submit(zzcjd.zza(zzcjaVar)), new zzcje(this, zzczcVar), this.zzfyd);
    }
}
