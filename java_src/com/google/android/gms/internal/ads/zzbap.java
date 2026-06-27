package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
final class zzbap implements zzban {
    private final /* synthetic */ String zzdzg;

    zzbap(String str) {
        this.zzdzg = str;
    }

    @Override // com.google.android.gms.internal.ads.zzban
    public final void zzk(Object obj) {
    }

    @Override // com.google.android.gms.internal.ads.zzban
    public final void zzb(Throwable th) {
        com.google.android.gms.ads.internal.zzk.zzlk().zza(th, this.zzdzg);
    }
}
