package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.Set;
import java.util.concurrent.Callable;

/* loaded from: classes2.dex */
public final class zzctw implements zzcva<zzctv> {
    private final zzbbl zzfqw;
    private final Set<String> zzggk;
    private final Context zzlj;

    public zzctw(zzbbl zzbblVar, Context context, Set<String> set) {
        this.zzfqw = zzbblVar;
        this.zzlj = context;
        this.zzggk = set;
    }

    @Override // com.google.android.gms.internal.ads.zzcva
    public final zzbbh<zzctv> zzalm() {
        return this.zzfqw.submit(new Callable(this) { // from class: com.google.android.gms.internal.ads.zzctx
            private final zzctw zzghn;

            {
                this.zzghn = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.zzghn.zzalu();
            }
        });
    }

    final /* synthetic */ zzctv zzalu() throws Exception {
        if (((Boolean) zzyt.zzpe().zzd(zzacu.zzcuu)).booleanValue() && zzctv.zzd(this.zzggk)) {
            return new zzctv(com.google.android.gms.ads.internal.zzk.zzlv().getVersion(this.zzlj));
        }
        return new zzctv(null);
    }
}
