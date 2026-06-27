package com.google.android.gms.internal.ads;

import java.io.IOException;

/* loaded from: classes2.dex */
final class zzof implements zzoc {
    private final /* synthetic */ zzod zzbbg;

    private zzof(zzod zzodVar) {
        this.zzbbg = zzodVar;
    }

    @Override // com.google.android.gms.internal.ads.zzoc
    public final int zzx(int i) {
        return zzod.zzx(i);
    }

    @Override // com.google.android.gms.internal.ads.zzoc
    public final boolean zzav(int i) {
        return zzod.zzav(i);
    }

    @Override // com.google.android.gms.internal.ads.zzoc
    public final void zzb(int i, long j, long j2) throws zzlm {
        this.zzbbg.zzb(i, j, j2);
    }

    @Override // com.google.android.gms.internal.ads.zzoc
    public final void zzy(int i) throws zzlm {
        this.zzbbg.zzy(i);
    }

    @Override // com.google.android.gms.internal.ads.zzoc
    public final void zzc(int i, long j) throws zzlm {
        this.zzbbg.zzc(i, j);
    }

    @Override // com.google.android.gms.internal.ads.zzoc
    public final void zza(int i, double d) throws zzlm {
        this.zzbbg.zza(i, d);
    }

    @Override // com.google.android.gms.internal.ads.zzoc
    public final void zza(int i, String str) throws zzlm {
        this.zzbbg.zza(i, str);
    }

    @Override // com.google.android.gms.internal.ads.zzoc
    public final void zza(int i, int i2, zzno zznoVar) throws InterruptedException, IOException {
        this.zzbbg.zza(i, i2, zznoVar);
    }

    /* synthetic */ zzof(zzod zzodVar, zzoe zzoeVar) {
        this(zzodVar);
    }
}
