package com.google.android.gms.internal.ads;

import android.media.AudioTrack;

/* loaded from: classes2.dex */
final class zzhr extends Thread {
    private final /* synthetic */ AudioTrack zzahd;
    private final /* synthetic */ zzhq zzahe;

    zzhr(zzhq zzhqVar, AudioTrack audioTrack) {
        this.zzahe = zzhqVar;
        this.zzahd = audioTrack;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        try {
            this.zzahd.release();
        } finally {
            this.zzahe.zzagd.open();
        }
    }
}
