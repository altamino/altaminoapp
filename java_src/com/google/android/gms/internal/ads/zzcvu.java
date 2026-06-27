package com.google.android.gms.internal.ads;

import android.content.pm.PackageInfo;
import java.util.concurrent.Executor;

/* loaded from: classes2.dex */
public final class zzcvu implements zzcva<zzcvt> {
    private final PackageInfo zzdlm;
    private final Executor zzffi;
    private final zzawi zzgir;
    private final String zzgiv;

    public zzcvu(zzawi zzawiVar, Executor executor, String str, PackageInfo packageInfo) {
        this.zzgir = zzawiVar;
        this.zzffi = executor;
        this.zzgiv = str;
        this.zzdlm = packageInfo;
    }

    @Override // com.google.android.gms.internal.ads.zzcva
    public final zzbbh<zzcvt> zzalm() {
        return zzbar.zza(zzbar.zza(this.zzgir.zza(this.zzgiv, this.zzdlm), zzcvv.zzdrn, this.zzffi), Throwable.class, new zzbal(this) { // from class: com.google.android.gms.internal.ads.zzcvw
            private final zzcvu zzgiw;

            {
                this.zzgiw = this;
            }

            @Override // com.google.android.gms.internal.ads.zzbal
            public final zzbbh zzf(Object obj) {
                return this.zzgiw.zzf((Throwable) obj);
            }
        }, this.zzffi);
    }

    final /* synthetic */ zzbbh zzf(Throwable th) throws Exception {
        return zzbar.zzm(new zzcvt(this.zzgiv));
    }
}
