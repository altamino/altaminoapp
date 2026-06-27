package com.google.android.gms.internal.ads;

import android.os.Bundle;
import java.util.concurrent.Callable;

/* loaded from: classes2.dex */
public final class zzcue implements zzcva<zzcud> {
    private final Bundle zzfjv;
    private final zzbbl zzfqw;

    public zzcue(zzbbl zzbblVar, Bundle bundle) {
        this.zzfqw = zzbblVar;
        this.zzfjv = bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzcva
    public final zzbbh<zzcud> zzalm() {
        return this.zzfqw.submit(new Callable(this) { // from class: com.google.android.gms.internal.ads.zzcuf
            private final zzcue zzghp;

            {
                this.zzghp = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.zzghp.zzalv();
            }
        });
    }

    final /* synthetic */ zzcud zzalv() throws Exception {
        return new zzcud(this.zzfjv);
    }
}
