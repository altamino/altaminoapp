package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
public final class zzakw extends zzbbw<zzalf> {
    private final Object lock = new Object();
    private final zzala zzdct;
    private boolean zzdcu;

    public zzakw(zzala zzalaVar) {
        this.zzdct = zzalaVar;
    }

    public final void release() {
        synchronized (this.lock) {
            if (this.zzdcu) {
                return;
            }
            this.zzdcu = true;
            zza(new zzakx(this), new zzbbu());
            zza(new zzaky(this), new zzakz(this));
        }
    }
}
