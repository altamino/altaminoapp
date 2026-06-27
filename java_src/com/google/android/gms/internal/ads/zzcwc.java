package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Callable;

/* loaded from: classes2.dex */
public final class zzcwc implements zzcva<zzcwb> {
    private zzbbl zzfqw;
    zzvx zzgjb;
    Context zzlj;

    public zzcwc(zzvx zzvxVar, zzbbl zzbblVar, Context context) {
        this.zzgjb = zzvxVar;
        this.zzfqw = zzbblVar;
        this.zzlj = context;
    }

    @Override // com.google.android.gms.internal.ads.zzcva
    public final zzbbh<zzcwb> zzalm() {
        return this.zzfqw.submit(new Callable(this) { // from class: com.google.android.gms.internal.ads.zzcwd
            private final zzcwc zzgjc;

            {
                this.zzgjc = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                zzcwc zzcwcVar = this.zzgjc;
                return new zzcwb(zzcwcVar.zzgjb.zzf(zzcwcVar.zzlj));
            }
        });
    }
}
