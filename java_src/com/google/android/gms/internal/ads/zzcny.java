package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

/* loaded from: classes2.dex */
final class zzcny implements zzbvo {
    private final /* synthetic */ zzcxu zzgbx;
    private final /* synthetic */ zzcxm zzgby;
    private final /* synthetic */ zzcjy zzgbz;
    final /* synthetic */ zzcnw zzgca;

    zzcny(zzcnw zzcnwVar, zzcxu zzcxuVar, zzcxm zzcxmVar, zzcjy zzcjyVar) {
        this.zzgca = zzcnwVar;
        this.zzgbx = zzcxuVar;
        this.zzgby = zzcxmVar;
        this.zzgbz = zzcjyVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbvo
    public final void onInitializationSucceeded() {
        Executor executor = this.zzgca.zzffv;
        final zzcxu zzcxuVar = this.zzgbx;
        final zzcxm zzcxmVar = this.zzgby;
        final zzcjy zzcjyVar = this.zzgbz;
        executor.execute(new Runnable(this, zzcxuVar, zzcxmVar, zzcjyVar) { // from class: com.google.android.gms.internal.ads.zzcnz
            private final zzcxm zzfhm;
            private final zzcxu zzfra;
            private final zzcny zzgcb;
            private final zzcjy zzgcc;

            {
                this.zzgcb = this;
                this.zzfra = zzcxuVar;
                this.zzfhm = zzcxmVar;
                this.zzgcc = zzcjyVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                zzcny zzcnyVar = this.zzgcb;
                zzcxu zzcxuVar2 = this.zzfra;
                zzcxm zzcxmVar2 = this.zzfhm;
                zzcjy zzcjyVar2 = this.zzgcc;
                zzcnw zzcnwVar = zzcnyVar.zzgca;
                zzcnw.zzc(zzcxuVar2, zzcxmVar2, zzcjyVar2);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzbvo
    public final void zzdl(int i) {
        String strValueOf = String.valueOf(this.zzgbz.zzfis);
        zzbad.zzep(strValueOf.length() != 0 ? "Fail to initialize adapter ".concat(strValueOf) : new String("Fail to initialize adapter "));
    }
}
