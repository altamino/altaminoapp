package com.google.android.gms.measurement.internal;

import android.net.Uri;

/* JADX INFO: loaded from: classes11.dex */
final class zzka implements Runnable {
    private final /* synthetic */ boolean zza;
    private final /* synthetic */ Uri zzb;
    private final /* synthetic */ String zzc;
    private final /* synthetic */ String zzd;
    private final /* synthetic */ zzjx zze;

    zzka(zzjx zzjxVar, boolean z6, Uri uri, String str, String str2) {
        this.zze = zzjxVar;
        this.zza = z6;
        this.zzb = uri;
        this.zzc = str;
        this.zzd = str2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzjx.zza(this.zze, this.zza, this.zzb, this.zzc, this.zzd);
    }
}
