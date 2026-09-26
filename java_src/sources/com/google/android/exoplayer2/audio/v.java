package com.google.android.exoplayer2.audio;

import android.media.AudioDeviceInfo;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.google.android.exoplayer2.a2;
import com.google.android.exoplayer2.analytics.t1;
import com.google.android.exoplayer2.c3;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes8.dex */
public interface v {
    public static final long CURRENT_POSITION_NOT_SET = Long.MIN_VALUE;
    public static final int SINK_FORMAT_SUPPORTED_DIRECTLY = 2;
    public static final int SINK_FORMAT_SUPPORTED_WITH_TRANSCODING = 1;
    public static final int SINK_FORMAT_UNSUPPORTED = 0;

    public static final class a extends Exception {
        public final a2 format;

        public a(Throwable th, a2 a2Var) {
            super(th);
            this.format = a2Var;
        }

        public a(String str, a2 a2Var) {
            super(str);
            this.format = a2Var;
        }
    }

    public static final class b extends Exception {
        public final int audioTrackState;
        public final a2 format;
        public final boolean isRecoverable;

        public b(int i10, int i11, int i12, int i13, a2 a2Var, boolean z6, @Nullable Exception exc) {
            StringBuilder sb = new StringBuilder();
            sb.append("AudioTrack init failed ");
            sb.append(i10);
            sb.append(" ");
            sb.append("Config(");
            sb.append(i11);
            sb.append(", ");
            sb.append(i12);
            sb.append(", ");
            sb.append(i13);
            sb.append(")");
            sb.append(z6 ? " (recoverable)" : "");
            super(sb.toString(), exc);
            this.audioTrackState = i10;
            this.isRecoverable = z6;
            this.format = a2Var;
        }
    }

    public interface c {
        void a(Exception exc);

        void b(long j6);

        void c();

        void d();

        void onPositionDiscontinuity();

        void onSkipSilenceEnabledChanged(boolean z6);

        void onUnderrun(int i10, long j6, long j10);
    }

    public static final class d extends Exception {
        public final long actualPresentationTimeUs;
        public final long expectedPresentationTimeUs;

        public d(long j6, long j10) {
            super("Unexpected audio track timestamp discontinuity: expected " + j10 + ", got " + j6);
            this.actualPresentationTimeUs = j6;
            this.expectedPresentationTimeUs = j10;
        }
    }

    public static final class e extends Exception {
        public final int errorCode;
        public final a2 format;
        public final boolean isRecoverable;

        public e(int i10, a2 a2Var, boolean z6) {
            super("AudioTrack write failed: " + i10);
            this.isRecoverable = z6;
            this.errorCode = i10;
            this.format = a2Var;
        }
    }

    boolean a(a2 a2Var);

    void b(c3 c3Var);

    void c();

    void d();

    void disableTunneling();

    boolean e(ByteBuffer byteBuffer, long j6, int i10) throws b, e;

    void f(long j6);

    void flush();

    void g(boolean z6);

    long getCurrentPositionUs(boolean z6);

    c3 getPlaybackParameters();

    void h(com.google.android.exoplayer2.audio.e eVar);

    void handleDiscontinuity();

    boolean hasPendingData();

    void i(@Nullable t1 t1Var);

    boolean isEnded();

    void j(c cVar);

    int k(a2 a2Var);

    void l(y yVar);

    void m(a2 a2Var, int i10, @Nullable int[] iArr) throws a;

    void pause();

    void play();

    void playToEndOfStream() throws e;

    void reset();

    void setAudioSessionId(int i10);

    @RequiresApi
    void setPreferredDevice(@Nullable AudioDeviceInfo audioDeviceInfo);

    void setVolume(float f);
}
