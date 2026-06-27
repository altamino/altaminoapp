package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;

/* loaded from: classes2.dex */
public final class zzcwj implements zzcva<zzcwi> {
    private String packageName;
    private zzbbl zzfqw;
    private zzawe zzgjh;

    public zzcwj(zzawe zzaweVar, zzbbl zzbblVar, String str) {
        this.zzgjh = zzaweVar;
        this.zzfqw = zzbblVar;
        this.packageName = str;
    }

    @Override // com.google.android.gms.internal.ads.zzcva
    public final zzbbh<zzcwi> zzalm() {
        new zzbbr();
        final zzbbh<String> zzbbhVarZzm = zzbar.zzm(null);
        if (((Boolean) zzyt.zzpe().zzd(zzacu.zzcvx)).booleanValue()) {
            zzbbhVarZzm = this.zzgjh.zzdq(this.packageName);
        }
        final zzbbh<String> zzbbhVarZzdr = this.zzgjh.zzdr(this.packageName);
        return zzbar.zza(zzbbhVarZzm, zzbbhVarZzdr).zza(new Callable(zzbbhVarZzm, zzbbhVarZzdr) { // from class: com.google.android.gms.internal.ads.zzcwk
            private final zzbbh zzdzi;
            private final zzbbh zzdzo;

            {
                this.zzdzo = zzbbhVarZzm;
                this.zzdzi = zzbbhVarZzdr;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return new zzcwi((String) this.zzdzo.get(), (String) this.zzdzi.get());
            }
        }, zzaxg.zzdvp);
    }
}
