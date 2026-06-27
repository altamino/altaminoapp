package com.google.android.gms.internal.ads;

/* JADX INFO: Add missing generic type declarations: [T] */
/* loaded from: classes2.dex */
final class zzbbx<T> implements zzban<T> {
    private final /* synthetic */ zzbbw zzeaq;

    zzbbx(zzbbw zzbbwVar) {
        this.zzeaq = zzbbwVar;
    }

    @Override // com.google.android.gms.internal.ads.zzban
    public final void zzk(T t) {
        this.zzeaq.zzeap.set(1);
    }

    @Override // com.google.android.gms.internal.ads.zzban
    public final void zzb(Throwable th) {
        this.zzeaq.zzeap.set(-1);
    }
}
