package com.google.android.gms.internal.ads;

import java.util.Set;

/* loaded from: classes2.dex */
public final class zzbrt extends zzbts<zzbrw> {
    private boolean zzfkb;

    public zzbrt(Set<zzbuz<zzbrw>> set) {
        super(set);
        this.zzfkb = false;
    }

    public final synchronized void onAdImpression() {
        if (!this.zzfkb) {
            zza(zzbru.zzfka);
            this.zzfkb = true;
        }
    }
}
