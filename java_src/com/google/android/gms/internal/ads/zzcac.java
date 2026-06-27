package com.google.android.gms.internal.ads;

import android.support.v4.util.ArrayMap;

/* loaded from: classes2.dex */
public final class zzcac implements zzbrw {
    private final zzbyt zzfmq;
    private final zzbyx zzfnq;

    public zzcac(zzbyt zzbytVar, zzbyx zzbyxVar) {
        this.zzfmq = zzbytVar;
        this.zzfnq = zzbyxVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbrw
    public final void onAdImpression() {
        if (this.zzfmq.zzaib() == null) {
            return;
        }
        zzbgz zzbgzVarZzaia = this.zzfmq.zzaia();
        zzbgz zzbgzVarZzahz = this.zzfmq.zzahz();
        if (zzbgzVarZzaia == null) {
            zzbgzVarZzaia = zzbgzVarZzahz != null ? zzbgzVarZzahz : null;
        }
        if (!this.zzfnq.zzaih() || zzbgzVarZzaia == null) {
            return;
        }
        zzbgzVarZzaia.zza("onSdkImpression", new ArrayMap());
    }
}
