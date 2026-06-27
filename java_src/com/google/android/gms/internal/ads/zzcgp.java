package com.google.android.gms.internal.ads;

import java.util.concurrent.ExecutionException;

/* loaded from: classes2.dex */
final /* synthetic */ class zzcgp implements zzbal {
    static final zzbal zzbqz = new zzcgp();

    private zzcgp() {
    }

    @Override // com.google.android.gms.internal.ads.zzbal
    public final zzbbh zzf(Object obj) {
        return zzbar.zzd(((ExecutionException) obj).getCause());
    }
}
