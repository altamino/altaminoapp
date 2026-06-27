package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
final class zzbch implements Runnable {
    private final /* synthetic */ zzbcd zzebm;
    private final /* synthetic */ String zzebn;
    private final /* synthetic */ String zzebo;

    zzbch(zzbcd zzbcdVar, String str, String str2) {
        this.zzebm = zzbcdVar;
        this.zzebn = str;
        this.zzebo = str2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.zzebm.zzebk != null) {
            this.zzebm.zzebk.zzl(this.zzebn, this.zzebo);
        }
    }
}
