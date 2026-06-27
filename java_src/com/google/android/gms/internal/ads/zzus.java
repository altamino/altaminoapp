package com.google.android.gms.internal.ads;

import java.util.Iterator;

/* loaded from: classes2.dex */
final class zzus implements Runnable {
    private final /* synthetic */ zzur zzbuy;

    zzus(zzur zzurVar) {
        this.zzbuy = zzurVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.zzbuy.lock) {
            if (this.zzbuy.foreground && this.zzbuy.zzbut) {
                zzur.zza(this.zzbuy, false);
                zzbad.zzdp("App went background");
                Iterator it = this.zzbuy.zzbuu.iterator();
                while (it.hasNext()) {
                    try {
                        ((zzut) it.next()).zzp(false);
                    } catch (Exception e) {
                        zzbad.zzc("", e);
                    }
                }
            } else {
                zzbad.zzdp("App is still foreground");
            }
        }
    }
}
