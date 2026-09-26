package com.google.android.exoplayer2;

import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
public abstract class e implements d3 {
    protected final z3.d window = new z3.d();

    public final void Q(List<i2> list) {
        C(list, true);
    }

    @Override // com.google.android.exoplayer2.d3
    public final void pause() {
        setPlayWhenReady(false);
    }

    @Override // com.google.android.exoplayer2.d3
    public final void play() {
        setPlayWhenReady(true);
    }

    protected e() {
    }

    private int J() {
        int repeatMode = getRepeatMode();
        if (repeatMode == 1) {
            return 0;
        }
        return repeatMode;
    }

    private void O(long j6) {
        long currentPosition = getCurrentPosition() + j6;
        long duration = getDuration();
        if (duration != -9223372036854775807L) {
            currentPosition = Math.min(currentPosition, duration);
        }
        seekTo(Math.max(currentPosition, 0L));
    }

    @Override // com.google.android.exoplayer2.d3
    public final void E(i2 i2Var) {
        Q(com.google.common.collect.a0.y(i2Var));
    }

    public final long G() {
        z3 currentTimeline = getCurrentTimeline();
        if (currentTimeline.u()) {
            return -9223372036854775807L;
        }
        return currentTimeline.r(x(), this.window).g();
    }

    public final int H() {
        z3 currentTimeline = getCurrentTimeline();
        if (currentTimeline.u()) {
            return -1;
        }
        return currentTimeline.i(x(), J(), getShuffleModeEnabled());
    }

    public final int I() {
        z3 currentTimeline = getCurrentTimeline();
        if (currentTimeline.u()) {
            return -1;
        }
        return currentTimeline.p(x(), J(), getShuffleModeEnabled());
    }

    protected void K() {
        L();
    }

    public final void L() {
        M(x());
    }

    public final void N() {
        int iH = H();
        if (iH == -1) {
            return;
        }
        if (iH == x()) {
            K();
        } else {
            M(iH);
        }
    }

    public final void P() {
        int I = I();
        if (I == -1) {
            return;
        }
        if (I == x()) {
            K();
        } else {
            M(I);
        }
    }

    @Override // com.google.android.exoplayer2.d3
    public final boolean f() {
        if (H() != -1) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.exoplayer2.d3
    public final boolean g(int i10) {
        return u().c(i10);
    }

    @Override // com.google.android.exoplayer2.d3
    public final boolean isPlaying() {
        if (getPlaybackState() == 3 && getPlayWhenReady() && r() == 0) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.exoplayer2.d3
    public final boolean k() {
        z3 currentTimeline = getCurrentTimeline();
        if (!currentTimeline.u() && currentTimeline.r(x(), this.window).isSeekable) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.exoplayer2.d3
    public final void m() {
        O(j());
    }

    @Override // com.google.android.exoplayer2.d3
    public final boolean n() {
        z3 currentTimeline = getCurrentTimeline();
        if (!currentTimeline.u() && currentTimeline.r(x(), this.window).i()) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.exoplayer2.d3
    public final void o() {
        if (!getCurrentTimeline().u() && !isPlayingAd()) {
            boolean zW = w();
            if (n() && !k()) {
                if (zW) {
                    P();
                }
            } else if (zW && getCurrentPosition() <= i()) {
                P();
            } else {
                seekTo(0L);
            }
        }
    }

    @Override // com.google.android.exoplayer2.d3
    public final boolean q() {
        z3 currentTimeline = getCurrentTimeline();
        if (!currentTimeline.u() && currentTimeline.r(x(), this.window).isDynamic) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.exoplayer2.d3
    public final void seekTo(long j6) {
        seekTo(x(), j6);
    }

    @Override // com.google.android.exoplayer2.d3
    public final void t() {
        if (!getCurrentTimeline().u() && !isPlayingAd()) {
            if (f()) {
                N();
            } else if (n() && q()) {
                L();
            }
        }
    }

    @Override // com.google.android.exoplayer2.d3
    public final boolean w() {
        if (I() != -1) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.exoplayer2.d3
    public final void y() {
        O(-A());
    }

    public final void M(int i10) {
        seekTo(i10, -9223372036854775807L);
    }
}
