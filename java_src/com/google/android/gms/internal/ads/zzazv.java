package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
final class zzazv extends Thread {
    private final /* synthetic */ String zzdli;

    zzazv(zzazu zzazuVar, String str) {
        this.zzdli = str;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        new zzbah().zzed(this.zzdli);
    }
}
