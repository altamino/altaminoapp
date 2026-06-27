package com.google.android.gms.internal.ads;

/* JADX INFO: Add missing generic type declarations: [T] */
/* loaded from: classes2.dex */
final class zzbby<T> implements zzban<T> {
    private final /* synthetic */ zzbbv zzear;
    private final /* synthetic */ zzbbt zzeas;

    zzbby(zzbbw zzbbwVar, zzbbv zzbbvVar, zzbbt zzbbtVar) {
        this.zzear = zzbbvVar;
        this.zzeas = zzbbtVar;
    }

    @Override // com.google.android.gms.internal.ads.zzban
    public final void zzk(T t) {
        this.zzear.zzh(t);
    }

    @Override // com.google.android.gms.internal.ads.zzban
    public final void zzb(Throwable th) {
        this.zzeas.run();
    }
}
