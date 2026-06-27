package com.google.android.gms.internal.ads;

import android.os.Bundle;
import java.util.concurrent.Executor;

/* loaded from: classes2.dex */
public final class zzcrv implements zzcva<zzcuz<Bundle>> {
    private final zzawm zzbrw;
    private final Executor zzffi;

    zzcrv(Executor executor, zzawm zzawmVar) {
        this.zzffi = executor;
        this.zzbrw = zzawmVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcva
    public final zzbbh<zzcuz<Bundle>> zzalm() {
        if (((Boolean) zzyt.zzpe().zzd(zzacu.zzcri)).booleanValue()) {
            return zzbar.zzm(null);
        }
        return zzbar.zza(this.zzbrw.zzvd(), zzcrw.zzdrn, this.zzffi);
    }
}
