package com.google.android.gms.internal.ads;

import android.media.AudioTrack;
import android.os.SystemClock;
import com.google.android.exoplayer2.C;

/* loaded from: classes2.dex */
class zzmj {
    private int zzafv;
    protected AudioTrack zzagg;
    private long zzahg;
    private long zzahh;
    private long zzahi;
    private boolean zzaxc;
    private long zzaxd;
    private long zzaxe;
    private long zzaxf;

    private zzmj() {
    }

    public boolean zzex() {
        return false;
    }

    public void zza(AudioTrack audioTrack, boolean z) {
        this.zzagg = audioTrack;
        this.zzaxc = z;
        this.zzaxd = C.TIME_UNSET;
        this.zzahg = 0L;
        this.zzahh = 0L;
        this.zzahi = 0L;
        if (audioTrack != null) {
            this.zzafv = audioTrack.getSampleRate();
        }
    }

    public final void zzeh(long j) {
        this.zzaxe = zzev();
        this.zzaxd = SystemClock.elapsedRealtime() * 1000;
        this.zzaxf = j;
        this.zzagg.stop();
    }

    public final void pause() {
        if (this.zzaxd != C.TIME_UNSET) {
            return;
        }
        this.zzagg.pause();
    }

    public final long zzev() {
        if (this.zzaxd != C.TIME_UNSET) {
            return Math.min(this.zzaxf, this.zzaxe + ((((SystemClock.elapsedRealtime() * 1000) - this.zzaxd) * this.zzafv) / 1000000));
        }
        int playState = this.zzagg.getPlayState();
        if (playState == 1) {
            return 0L;
        }
        long playbackHeadPosition = 4294967295L & this.zzagg.getPlaybackHeadPosition();
        if (this.zzaxc) {
            if (playState == 2 && playbackHeadPosition == 0) {
                this.zzahi = this.zzahg;
            }
            playbackHeadPosition += this.zzahi;
        }
        if (this.zzahg > playbackHeadPosition) {
            this.zzahh++;
        }
        this.zzahg = playbackHeadPosition;
        return playbackHeadPosition + (this.zzahh << 32);
    }

    public final long zzdv() {
        return (zzev() * 1000000) / this.zzafv;
    }

    public long zzey() {
        throw new UnsupportedOperationException();
    }

    public long zzez() {
        throw new UnsupportedOperationException();
    }

    /* synthetic */ zzmj(zzmi zzmiVar) {
        this();
    }
}
