package com.google.android.exoplayer2;

import androidx.annotation.Nullable;
import java.io.IOException;

/* JADX INFO: loaded from: classes10.dex */
public interface m3 extends h3.b {
    public static final int MSG_CUSTOM_BASE = 10000;
    public static final int MSG_SET_AUDIO_ATTRIBUTES = 3;
    public static final int MSG_SET_AUDIO_SESSION_ID = 10;
    public static final int MSG_SET_AUX_EFFECT_INFO = 6;
    public static final int MSG_SET_CAMERA_MOTION_LISTENER = 8;
    public static final int MSG_SET_CHANGE_FRAME_RATE_STRATEGY = 5;
    public static final int MSG_SET_PREFERRED_AUDIO_DEVICE = 12;
    public static final int MSG_SET_SCALING_MODE = 4;
    public static final int MSG_SET_SKIP_SILENCE_ENABLED = 9;
    public static final int MSG_SET_VIDEO_FRAME_METADATA_LISTENER = 7;
    public static final int MSG_SET_VIDEO_OUTPUT = 1;
    public static final int MSG_SET_VOLUME = 2;
    public static final int MSG_SET_WAKEUP_LISTENER = 11;
    public static final int STATE_DISABLED = 0;
    public static final int STATE_ENABLED = 1;
    public static final int STATE_STARTED = 2;

    public interface a {
        void a();

        void b();
    }

    long c();

    void d(float f, float f6) throws q;

    void disable();

    void e(int i10, com.google.android.exoplayer2.analytics.t1 t1Var);

    void g(a2[] a2VarArr, com.google.android.exoplayer2.source.w0 w0Var, long j6, long j10) throws q;

    o3 getCapabilities();

    @Nullable
    com.google.android.exoplayer2.util.v getMediaClock();

    String getName();

    int getState();

    @Nullable
    com.google.android.exoplayer2.source.w0 getStream();

    int getTrackType();

    void h(p3 p3Var, a2[] a2VarArr, com.google.android.exoplayer2.source.w0 w0Var, long j6, boolean z6, boolean z10, long j10, long j11) throws q;

    boolean hasReadStreamToEnd();

    boolean isCurrentStreamFinal();

    boolean isEnded();

    boolean isReady();

    void maybeThrowStreamError() throws IOException;

    void render(long j6, long j10) throws q;

    void reset();

    void resetPosition(long j6) throws q;

    void setCurrentStreamFinal();

    void start() throws q;

    void stop();
}
