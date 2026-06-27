package com.google.android.gms.internal.ads;

import android.media.AudioTrack;

/* loaded from: classes2.dex */
final class zzmi extends Thread {
    private final /* synthetic */ AudioTrack zzahd;
    private final /* synthetic */ zzmh zzaxb;

    zzmi(zzmh zzmhVar, AudioTrack audioTrack) {
        this.zzaxb = zzmhVar;
        this.zzahd = audioTrack;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        try {
            this.zzahd.flush();
            this.zzahd.release();
        } finally {
            this.zzaxb.zzagd.open();
        }
    }
}
