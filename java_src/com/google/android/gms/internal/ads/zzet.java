package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzbp;
import java.util.concurrent.Callable;

/* loaded from: classes2.dex */
public final class zzet implements Callable {
    private final zzdy zzvd;
    private final zzbp.zza.C0007zza zzzm;

    public zzet(zzdy zzdyVar, zzbp.zza.C0007zza c0007zza) {
        this.zzvd = zzdyVar;
        this.zzzm = c0007zza;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // java.util.concurrent.Callable
    /* renamed from: zzcz, reason: merged with bridge method [inline-methods] */
    public final Void call() throws Exception {
        if (this.zzvd.zzcq() != null) {
            this.zzvd.zzcq().get();
        }
        zzbp.zza zzaVarZzcp = this.zzvd.zzcp();
        if (zzaVarZzcp == null) {
            return null;
        }
        try {
            synchronized (this.zzzm) {
                zzbp.zza.C0007zza c0007zza = this.zzzm;
                byte[] byteArray = zzaVarZzcp.toByteArray();
                c0007zza.zza(byteArray, 0, byteArray.length, zzdno.zzaxe());
            }
            return null;
        } catch (zzdok unused) {
            return null;
        }
    }
}
