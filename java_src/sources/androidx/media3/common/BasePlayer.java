package androidx.media3.common;

import androidx.annotation.VisibleForTesting;
import androidx.media3.common.util.UnstableApi;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
@UnstableApi
public abstract class BasePlayer implements Player {
    protected final Timeline.Window window = new Timeline.Window();

    @Override // androidx.media3.common.Player
    public final void G() {
        B(0, Integer.MAX_VALUE);
    }

    @VisibleForTesting
    public abstract void U(int i10, long j6, int i11, boolean z6);

    @Override // androidx.media3.common.Player
    public final void pause() {
        setPlayWhenReady(false);
    }

    @Override // androidx.media3.common.Player
    public final void play() {
        setPlayWhenReady(true);
    }

    @Override // androidx.media3.common.Player
    public final void seekTo(long j6) {
        V(j6, 5);
    }

    @Override // androidx.media3.common.Player
    public final void seekTo(int i10, long j6) {
        U(i10, j6, 10, false);
    }

    protected BasePlayer() {
    }

    private int S() {
        int repeatMode = getRepeatMode();
        if (repeatMode == 1) {
            return 0;
        }
        return repeatMode;
    }

    private void T(int i10) {
        U(x(), -9223372036854775807L, i10, true);
    }

    private void V(long j6, int i10) {
        U(x(), j6, i10, false);
    }

    private void X(int i10) {
        int iQ = Q();
        if (iQ == -1) {
            return;
        }
        if (iQ == x()) {
            T(i10);
        } else {
            W(iQ, i10);
        }
    }

    private void Y(long j6, int i10) {
        long currentPosition = getCurrentPosition() + j6;
        long duration = getDuration();
        if (duration != -9223372036854775807L) {
            currentPosition = Math.min(currentPosition, duration);
        }
        V(Math.max(currentPosition, 0L), i10);
    }

    private void Z(int i10) {
        int iR = R();
        if (iR == -1) {
            return;
        }
        if (iR == x()) {
            T(i10);
        } else {
            W(iR, i10);
        }
    }

    @Override // androidx.media3.common.Player
    public final long C() {
        Timeline currentTimeline = getCurrentTimeline();
        if (currentTimeline.u()) {
            return -9223372036854775807L;
        }
        return currentTimeline.r(x(), this.window).f();
    }

    @Override // androidx.media3.common.Player
    public final void J(MediaItem mediaItem) {
        P(com.google.common.collect.a0.y(mediaItem));
    }

    public final void P(List<MediaItem> list) {
        N(Integer.MAX_VALUE, list);
    }

    public final int Q() {
        Timeline currentTimeline = getCurrentTimeline();
        if (currentTimeline.u()) {
            return -1;
        }
        return currentTimeline.i(x(), S(), getShuffleModeEnabled());
    }

    public final int R() {
        Timeline currentTimeline = getCurrentTimeline();
        if (currentTimeline.u()) {
            return -1;
        }
        return currentTimeline.p(x(), S(), getShuffleModeEnabled());
    }

    @Override // androidx.media3.common.Player
    public final boolean f() {
        if (Q() != -1) {
            return true;
        }
        return false;
    }

    @Override // androidx.media3.common.Player
    public final boolean g(int i10) {
        return u().c(i10);
    }

    @Override // androidx.media3.common.Player
    @Deprecated
    public final int getCurrentWindowIndex() {
        return x();
    }

    @Override // androidx.media3.common.Player
    public final boolean isPlaying() {
        if (getPlaybackState() == 3 && getPlayWhenReady() && r() == 0) {
            return true;
        }
        return false;
    }

    @Override // androidx.media3.common.Player
    public final boolean k() {
        Timeline currentTimeline = getCurrentTimeline();
        if (!currentTimeline.u() && currentTimeline.r(x(), this.window).isSeekable) {
            return true;
        }
        return false;
    }

    @Override // androidx.media3.common.Player
    public final void m() {
        Y(j(), 12);
    }

    @Override // androidx.media3.common.Player
    public final boolean n() {
        Timeline currentTimeline = getCurrentTimeline();
        if (!currentTimeline.u() && currentTimeline.r(x(), this.window).h()) {
            return true;
        }
        return false;
    }

    @Override // androidx.media3.common.Player
    public final void o() {
        if (!getCurrentTimeline().u() && !isPlayingAd()) {
            boolean zW = w();
            if (n() && !k()) {
                if (zW) {
                    Z(7);
                }
            } else if (zW && getCurrentPosition() <= i()) {
                Z(7);
            } else {
                V(0L, 7);
            }
        }
    }

    @Override // androidx.media3.common.Player
    public final boolean q() {
        Timeline currentTimeline = getCurrentTimeline();
        if (!currentTimeline.u() && currentTimeline.r(x(), this.window).isDynamic) {
            return true;
        }
        return false;
    }

    @Override // androidx.media3.common.Player
    public final void seekToDefaultPosition() {
        W(x(), 4);
    }

    @Override // androidx.media3.common.Player
    public final void t() {
        if (!getCurrentTimeline().u() && !isPlayingAd()) {
            if (f()) {
                X(9);
            } else if (n() && q()) {
                W(x(), 9);
            }
        }
    }

    @Override // androidx.media3.common.Player
    public final boolean w() {
        if (R() != -1) {
            return true;
        }
        return false;
    }

    @Override // androidx.media3.common.Player
    public final void y() {
        Y(-A(), 11);
    }

    private void W(int i10, int i11) {
        U(i10, -9223372036854775807L, i11, false);
    }
}
