package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;

/* loaded from: classes2.dex */
public final class zzctl implements zzcva<zzctk> {
    private final zzcxk zzfex;
    private final zzbbl zzfqw;

    public zzctl(zzbbl zzbblVar, zzcxk zzcxkVar) {
        this.zzfqw = zzbblVar;
        this.zzfex = zzcxkVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcva
    public final zzbbh<zzctk> zzalm() {
        return this.zzfqw.submit(new Callable(this) { // from class: com.google.android.gms.internal.ads.zzctm
            private final zzctl zzghj;

            {
                this.zzghj = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.zzghj.zzals();
            }
        });
    }

    final /* synthetic */ zzctk zzals() throws Exception {
        return new zzctk(this.zzfex);
    }
}
