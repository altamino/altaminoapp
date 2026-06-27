package com.google.android.gms.internal.ads;

import android.content.Context;

@zzard
/* loaded from: classes2.dex */
public final class zzalk {
    private final Object zzdde = new Object();
    private final Object zzddf = new Object();
    private zzalr zzddg;
    private zzalr zzddh;

    public final zzalr zza(Context context, zzbai zzbaiVar) {
        zzalr zzalrVar;
        synchronized (this.zzddf) {
            if (this.zzddh == null) {
                this.zzddh = new zzalr(zzk(context), zzbaiVar, (String) zzyt.zzpe().zzd(zzacu.zzcku));
            }
            zzalrVar = this.zzddh;
        }
        return zzalrVar;
    }

    public final zzalr zzb(Context context, zzbai zzbaiVar) {
        zzalr zzalrVar;
        synchronized (this.zzdde) {
            if (this.zzddg == null) {
                this.zzddg = new zzalr(zzk(context), zzbaiVar, (String) zzyt.zzpe().zzd(zzacu.zzckv));
            }
            zzalrVar = this.zzddg;
        }
        return zzalrVar;
    }

    private static Context zzk(Context context) {
        Context applicationContext = context.getApplicationContext();
        return applicationContext == null ? context : applicationContext;
    }
}
