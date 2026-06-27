package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
import java.util.concurrent.Callable;

/* loaded from: classes2.dex */
public final class zzcuw implements zzcva<zzcuv> {
    private final zzbai zzbtc;
    private final zzbbl zzfqw;
    private final Context zzlj;

    public zzcuw(zzbbl zzbblVar, Context context, zzbai zzbaiVar) {
        this.zzfqw = zzbblVar;
        this.zzlj = context;
        this.zzbtc = zzbaiVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcva
    public final zzbbh<zzcuv> zzalm() {
        return this.zzfqw.submit(new Callable(this) { // from class: com.google.android.gms.internal.ads.zzcux
            private final zzcuw zzgig;

            {
                this.zzgig = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.zzgig.zzaly();
            }
        });
    }

    final /* synthetic */ zzcuv zzaly() throws Exception {
        boolean zIsCallerInstantApp = Wrappers.packageManager(this.zzlj).isCallerInstantApp();
        com.google.android.gms.ads.internal.zzk.zzlg();
        boolean zZzau = zzaxi.zzau(this.zzlj);
        String str = this.zzbtc.zzbsx;
        com.google.android.gms.ads.internal.zzk.zzli();
        boolean zZzwh = zzaxo.zzwh();
        com.google.android.gms.ads.internal.zzk.zzlg();
        return new zzcuv(zIsCallerInstantApp, zZzau, str, zZzwh, zzaxi.zzar(this.zzlj), DynamiteModule.getRemoteVersion(this.zzlj, ModuleDescriptor.MODULE_ID));
    }
}
