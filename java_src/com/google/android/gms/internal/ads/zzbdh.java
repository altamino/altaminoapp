package com.google.android.gms.internal.ads;

@zzard
/* loaded from: classes2.dex */
final class zzbdh implements Runnable {
    private boolean zzbut = false;
    private zzbcq zzecq;

    zzbdh(zzbcq zzbcqVar) {
        this.zzecq = zzbcqVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.zzbut) {
            return;
        }
        this.zzecq.zzxt();
        zzyn();
    }

    public final void pause() {
        this.zzbut = true;
        this.zzecq.zzxt();
    }

    public final void resume() {
        this.zzbut = false;
        zzyn();
    }

    private final void zzyn() {
        zzaxi.zzdvv.removeCallbacks(this);
        zzaxi.zzdvv.postDelayed(this, 250L);
    }
}
