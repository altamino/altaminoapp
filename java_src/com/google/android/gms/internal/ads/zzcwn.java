package com.google.android.gms.internal.ads;

import java.util.List;
import java.util.concurrent.Callable;

/* loaded from: classes2.dex */
public final class zzcwn implements zzcva<zzcwm> {
    List<String> zzdly;
    private zzbbl zzfqw;
    zzaci zzgji;

    public zzcwn(zzaci zzaciVar, zzbbl zzbblVar, List<String> list) {
        this.zzgji = zzaciVar;
        this.zzfqw = zzbblVar;
        this.zzdly = list;
    }

    @Override // com.google.android.gms.internal.ads.zzcva
    public final zzbbh<zzcwm> zzalm() {
        return this.zzfqw.submit(new Callable(this) { // from class: com.google.android.gms.internal.ads.zzcwo
            private final zzcwn zzgjj;

            {
                this.zzgjj = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                zzcwn zzcwnVar = this.zzgjj;
                return new zzcwm(zzcwnVar.zzgji.zzb(zzcwnVar.zzdly));
            }
        });
    }
}
