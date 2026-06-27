package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
final class zzake implements Runnable {
    private final /* synthetic */ zzajy zzdbx;
    private final /* synthetic */ String zzdby;

    zzake(zzajy zzajyVar, String str) {
        this.zzdbx = zzajyVar;
        this.zzdby = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzdbx.zzdbs.loadUrl(this.zzdby);
    }
}
