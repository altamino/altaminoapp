package com.google.android.exoplayer2.util;

import com.google.android.exoplayer2.c3;

/* JADX INFO: loaded from: classes10.dex */
public final class h0 implements v {
    private long baseElapsedMs;
    private long baseUs;
    private final d clock;
    private c3 playbackParameters = c3.DEFAULT;
    private boolean started;

    @Override // com.google.android.exoplayer2.util.v
    public c3 getPlaybackParameters() {
        return this.playbackParameters;
    }

    public void a(long j6) {
        this.baseUs = j6;
        if (this.started) {
            this.baseElapsedMs = this.clock.elapsedRealtime();
        }
    }

    @Override // com.google.android.exoplayer2.util.v
    public void b(c3 c3Var) {
        if (this.started) {
            a(getPositionUs());
        }
        this.playbackParameters = c3Var;
    }

    public void c() {
        if (this.started) {
            return;
        }
        this.baseElapsedMs = this.clock.elapsedRealtime();
        this.started = true;
    }

    public void d() {
        if (this.started) {
            a(getPositionUs());
            this.started = false;
        }
    }

    @Override // com.google.android.exoplayer2.util.v
    public long getPositionUs() {
        long j6 = this.baseUs;
        if (!this.started) {
            return j6;
        }
        long jElapsedRealtime = this.clock.elapsedRealtime() - this.baseElapsedMs;
        c3 c3Var = this.playbackParameters;
        return j6 + (c3Var.speed == 1.0f ? o0.w0(jElapsedRealtime) : c3Var.b(jElapsedRealtime));
    }

    public h0(d dVar) {
        this.clock = dVar;
    }
}
