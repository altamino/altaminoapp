package com.google.android.gms.internal.ads;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArraySet;

/* loaded from: classes2.dex */
final class zzgi implements zzge {
    private final Handler zzabq;
    private final zzgk zzabr;
    private final CopyOnWriteArraySet<zzgh> zzabs;
    private final boolean[] zzabt;
    private boolean zzabu;
    private int zzabv;
    private int zzabw;

    @SuppressLint({"HandlerLeak"})
    public zzgi(int i, int i2, int i3) {
        Log.i("ExoPlayerImpl", "Init 1.3.1");
        int i4 = 0;
        this.zzabu = false;
        this.zzabv = 1;
        this.zzabs = new CopyOnWriteArraySet<>();
        this.zzabt = new boolean[2];
        while (true) {
            boolean[] zArr = this.zzabt;
            if (i4 >= zArr.length) {
                this.zzabq = new zzgj(this);
                this.zzabr = new zzgk(this.zzabq, this.zzabu, this.zzabt, 2500, 5000);
                return;
            } else {
                zArr[i4] = true;
                i4++;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzge
    public final void zza(zzgh zzghVar) {
        this.zzabs.add(zzghVar);
    }

    @Override // com.google.android.gms.internal.ads.zzge
    public final int getPlaybackState() {
        return this.zzabv;
    }

    @Override // com.google.android.gms.internal.ads.zzge
    public final void zza(zzhp... zzhpVarArr) {
        this.zzabr.zza(zzhpVarArr);
    }

    @Override // com.google.android.gms.internal.ads.zzge
    public final void zzc(int i, boolean z) {
        boolean[] zArr = this.zzabt;
        if (zArr[0] != z) {
            zArr[0] = z;
            this.zzabr.zzc(0, z);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzge
    public final void zzd(boolean z) {
        if (this.zzabu != z) {
            this.zzabu = z;
            this.zzabw++;
            this.zzabr.zzd(z);
            Iterator<zzgh> it = this.zzabs.iterator();
            while (it.hasNext()) {
                it.next().zza(z, this.zzabv);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzge
    public final boolean zzdm() {
        return this.zzabu;
    }

    @Override // com.google.android.gms.internal.ads.zzge
    public final void seekTo(long j) {
        this.zzabr.seekTo(j);
    }

    @Override // com.google.android.gms.internal.ads.zzge
    public final void stop() {
        this.zzabr.stop();
    }

    @Override // com.google.android.gms.internal.ads.zzge
    public final void release() {
        this.zzabr.release();
        this.zzabq.removeCallbacksAndMessages(null);
    }

    @Override // com.google.android.gms.internal.ads.zzge
    public final void zza(zzgf zzgfVar, int i, Object obj) {
        this.zzabr.zza(zzgfVar, 1, obj);
    }

    @Override // com.google.android.gms.internal.ads.zzge
    public final void zzb(zzgf zzgfVar, int i, Object obj) {
        this.zzabr.zzb(zzgfVar, 1, obj);
    }

    @Override // com.google.android.gms.internal.ads.zzge
    public final long getDuration() {
        return this.zzabr.getDuration();
    }

    @Override // com.google.android.gms.internal.ads.zzge
    public final long zzdn() {
        return this.zzabr.zzdn();
    }

    @Override // com.google.android.gms.internal.ads.zzge
    public final long getBufferedPosition() {
        return this.zzabr.getBufferedPosition();
    }

    final void zza(Message message) {
        int i = message.what;
        if (i == 1) {
            this.zzabv = message.arg1;
            Iterator<zzgh> it = this.zzabs.iterator();
            while (it.hasNext()) {
                it.next().zza(this.zzabu, this.zzabv);
            }
            return;
        }
        if (i != 2) {
            if (i != 3) {
                return;
            }
            zzgd zzgdVar = (zzgd) message.obj;
            Iterator<zzgh> it2 = this.zzabs.iterator();
            while (it2.hasNext()) {
                it2.next().zza(zzgdVar);
            }
            return;
        }
        this.zzabw--;
        if (this.zzabw == 0) {
            Iterator<zzgh> it3 = this.zzabs.iterator();
            while (it3.hasNext()) {
                it3.next().zzdo();
            }
        }
    }
}
