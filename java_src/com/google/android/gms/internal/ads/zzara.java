package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
final class zzara implements Runnable {
    private final /* synthetic */ zzbah zzdlh;
    private final /* synthetic */ String zzdli;

    zzara(zzaqx zzaqxVar, zzbah zzbahVar, String str) {
        this.zzdlh = zzbahVar;
        this.zzdli = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzdlh.zzed(this.zzdli);
    }
}
