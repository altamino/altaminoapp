package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Callable;

/* loaded from: classes2.dex */
public final class zzcus implements zzcva<zzcur> {
    private final zzavg zzbsq;
    private final zzbbl zzfqw;
    private final Context zzlj;

    public zzcus(zzavg zzavgVar, zzbbl zzbblVar, Context context) {
        this.zzbsq = zzavgVar;
        this.zzfqw = zzbblVar;
        this.zzlj = context;
    }

    @Override // com.google.android.gms.internal.ads.zzcva
    public final zzbbh<zzcur> zzalm() {
        return this.zzfqw.submit(new Callable(this) { // from class: com.google.android.gms.internal.ads.zzcut
            private final zzcus zzgid;

            {
                this.zzgid = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.zzgid.zzalx();
            }
        });
    }

    final /* synthetic */ zzcur zzalx() throws Exception {
        if (!this.zzbsq.zzx(this.zzlj)) {
            return new zzcur(null, null, null, null, null);
        }
        String strZzaa = this.zzbsq.zzaa(this.zzlj);
        String str = strZzaa == null ? "" : strZzaa;
        String strZzab = this.zzbsq.zzab(this.zzlj);
        String str2 = strZzab == null ? "" : strZzab;
        String strZzac = this.zzbsq.zzac(this.zzlj);
        String str3 = strZzac == null ? "" : strZzac;
        String strZzad = this.zzbsq.zzad(this.zzlj);
        return new zzcur(str, str2, str3, strZzad == null ? "" : strZzad, "TIME_OUT".equals(str2) ? (Long) zzyt.zzpe().zzd(zzacu.zzcnx) : null);
    }
}
