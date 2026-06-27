package com.google.android.gms.measurement.internal;

import java.util.concurrent.Callable;

/* loaded from: classes2.dex */
final class zzfx implements Callable<String> {
    private final /* synthetic */ zzm zzos;
    private final /* synthetic */ zzft zzsr;

    zzfx(zzft zzftVar, zzm zzmVar) {
        this.zzsr = zzftVar;
        this.zzos = zzmVar;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ String call() throws Exception {
        zzg zzgVarZzae;
        if (!this.zzsr.zzaf().zzs(this.zzos.packageName)) {
            zzgVarZzae = this.zzsr.zzdo().zzae(this.zzos.packageName);
        } else {
            zzgVarZzae = this.zzsr.zzg(this.zzos);
        }
        if (zzgVarZzae == null) {
            this.zzsr.zzad().zzdd().zzaq("App info was null when attempting to get app instance id");
            return null;
        }
        return zzgVarZzae.getAppInstanceId();
    }
}
