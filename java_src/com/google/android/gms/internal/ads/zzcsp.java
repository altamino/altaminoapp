package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Callable;

/* loaded from: classes2.dex */
public final class zzcsp implements zzcva<zzcss> {
    private final zzbbl zzfqw;
    private final Context zzys;

    zzcsp(Context context, zzbbl zzbblVar) {
        this.zzys = context;
        this.zzfqw = zzbblVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcva
    public final zzbbh<zzcss> zzalm() {
        return this.zzfqw.submit(new Callable(this) { // from class: com.google.android.gms.internal.ads.zzcsq
            private final zzcsp zzghb;

            {
                this.zzghb = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.zzghb.zzalq();
            }
        });
    }

    final /* synthetic */ zzcss zzalq() throws Exception {
        com.google.android.gms.ads.internal.zzk.zzlg();
        String strZzav = zzaxi.zzav(this.zzys);
        com.google.android.gms.ads.internal.zzk.zzlg();
        return new zzcss(strZzav, zzaxi.zzaw(this.zzys));
    }
}
