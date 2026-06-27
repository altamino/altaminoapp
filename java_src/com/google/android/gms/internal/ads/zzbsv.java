package com.google.android.gms.internal.ads;

import java.util.Set;

/* loaded from: classes2.dex */
public final class zzbsv extends zzbts<com.google.android.gms.ads.internal.overlay.zzo> implements com.google.android.gms.ads.internal.overlay.zzo {
    public zzbsv(Set<zzbuz<com.google.android.gms.ads.internal.overlay.zzo>> set) {
        super(set);
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final synchronized void zzsz() {
        zza(zzbsw.zzfka);
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final synchronized void onPause() {
        zza(zzbsx.zzfka);
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final synchronized void onResume() {
        zza(zzbsy.zzfka);
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final synchronized void zzta() {
        zza(zzbsz.zzfka);
    }
}
