package com.google.android.gms.internal.ads;

import android.os.Bundle;

/* loaded from: classes2.dex */
public final class zzcsy implements zzcuz<Bundle> {
    private final int zzghf;
    private final zzxz zzghg;

    public zzcsy(int i, zzxz zzxzVar) {
        this.zzghf = i;
        this.zzghg = zzxzVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcuz
    public final /* synthetic */ void zzt(Bundle bundle) {
        zzcxz.zza(bundle, "correlation_id", Integer.valueOf(this.zzghf), this.zzghg.versionCode >= 6);
    }
}
