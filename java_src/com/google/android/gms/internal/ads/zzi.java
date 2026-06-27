package com.google.android.gms.internal.ads;

import android.os.Handler;
import java.util.concurrent.Executor;

/* loaded from: classes2.dex */
public final class zzi implements zzab {
    private final Executor zzv;

    public zzi(Handler handler) {
        this.zzv = new zzj(this, handler);
    }

    @Override // com.google.android.gms.internal.ads.zzab
    public final void zzb(zzr<?> zzrVar, zzy<?> zzyVar) {
        zza(zzrVar, zzyVar, null);
    }

    @Override // com.google.android.gms.internal.ads.zzab
    public final void zza(zzr<?> zzrVar, zzy<?> zzyVar, Runnable runnable) {
        zzrVar.zzk();
        zzrVar.zzb("post-response");
        this.zzv.execute(new zzk(zzrVar, zzyVar, runnable));
    }

    @Override // com.google.android.gms.internal.ads.zzab
    public final void zza(zzr<?> zzrVar, zzaf zzafVar) {
        zzrVar.zzb("post-error");
        this.zzv.execute(new zzk(zzrVar, zzy.zzc(zzafVar), null));
    }
}
