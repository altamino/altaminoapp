package com.google.android.exoplayer2;

import androidx.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
final class l implements com.google.android.exoplayer2.util.v {
    private boolean isUsingStandaloneClock = true;
    private final a listener;

    @Nullable
    private com.google.android.exoplayer2.util.v rendererClock;

    @Nullable
    private m3 rendererClockSource;
    private final com.google.android.exoplayer2.util.h0 standaloneClock;
    private boolean standaloneClockIsStarted;

    public interface a {
        void o(c3 c3Var);
    }

    public void a(m3 m3Var) {
        if (m3Var == this.rendererClockSource) {
            this.rendererClock = null;
            this.rendererClockSource = null;
            this.isUsingStandaloneClock = true;
        }
    }

    public void f() {
        this.standaloneClockIsStarted = true;
        this.standaloneClock.c();
    }

    public void g() {
        this.standaloneClockIsStarted = false;
        this.standaloneClock.d();
    }

    private boolean e(boolean z6) {
        m3 m3Var = this.rendererClockSource;
        return m3Var == null || m3Var.isEnded() || (!this.rendererClockSource.isReady() && (z6 || this.rendererClockSource.hasReadStreamToEnd()));
    }

    @Override // com.google.android.exoplayer2.util.v
    public void b(c3 c3Var) {
        com.google.android.exoplayer2.util.v vVar = this.rendererClock;
        if (vVar != null) {
            vVar.b(c3Var);
            c3Var = this.rendererClock.getPlaybackParameters();
        }
        this.standaloneClock.b(c3Var);
    }

    public void d(long j6) {
        this.standaloneClock.a(j6);
    }

    @Override // com.google.android.exoplayer2.util.v
    public c3 getPlaybackParameters() {
        com.google.android.exoplayer2.util.v vVar = this.rendererClock;
        return vVar != null ? vVar.getPlaybackParameters() : this.standaloneClock.getPlaybackParameters();
    }

    @Override // com.google.android.exoplayer2.util.v
    public long getPositionUs() {
        return this.isUsingStandaloneClock ? this.standaloneClock.getPositionUs() : ((com.google.android.exoplayer2.util.v) com.google.android.exoplayer2.util.a.e(this.rendererClock)).getPositionUs();
    }

    public l(a aVar, com.google.android.exoplayer2.util.d dVar) {
        this.listener = aVar;
        this.standaloneClock = new com.google.android.exoplayer2.util.h0(dVar);
    }

    private void i(boolean z6) {
        if (e(z6)) {
            this.isUsingStandaloneClock = true;
            if (this.standaloneClockIsStarted) {
                this.standaloneClock.c();
                return;
            }
            return;
        }
        com.google.android.exoplayer2.util.v vVar = (com.google.android.exoplayer2.util.v) com.google.android.exoplayer2.util.a.e(this.rendererClock);
        long positionUs = vVar.getPositionUs();
        if (this.isUsingStandaloneClock) {
            if (positionUs < this.standaloneClock.getPositionUs()) {
                this.standaloneClock.d();
                return;
            } else {
                this.isUsingStandaloneClock = false;
                if (this.standaloneClockIsStarted) {
                    this.standaloneClock.c();
                }
            }
        }
        this.standaloneClock.a(positionUs);
        c3 playbackParameters = vVar.getPlaybackParameters();
        if (!playbackParameters.equals(this.standaloneClock.getPlaybackParameters())) {
            this.standaloneClock.b(playbackParameters);
            this.listener.o(playbackParameters);
        }
    }

    public void c(m3 m3Var) throws q {
        com.google.android.exoplayer2.util.v vVar;
        com.google.android.exoplayer2.util.v mediaClock = m3Var.getMediaClock();
        if (mediaClock != null && mediaClock != (vVar = this.rendererClock)) {
            if (vVar == null) {
                this.rendererClock = mediaClock;
                this.rendererClockSource = m3Var;
                mediaClock.b(this.standaloneClock.getPlaybackParameters());
                return;
            }
            throw q.i(new IllegalStateException("Multiple renderer media clocks enabled."));
        }
    }

    public long h(boolean z6) {
        i(z6);
        return getPositionUs();
    }
}
