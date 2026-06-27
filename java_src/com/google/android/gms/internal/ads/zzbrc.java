package com.google.android.gms.internal.ads;

import android.os.Bundle;

/* loaded from: classes2.dex */
public final class zzbrc implements zzdti<Bundle> {
    private final zzbqy zzfjw;

    private zzbrc(zzbqy zzbqyVar) {
        this.zzfjw = zzbqyVar;
    }

    public static zzbrc zzg(zzbqy zzbqyVar) {
        return new zzbrc(zzbqyVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdtu
    public final /* synthetic */ Object get() {
        return this.zzfjw.zzagf();
    }
}
