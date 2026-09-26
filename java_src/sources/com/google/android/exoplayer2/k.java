package com.google.android.exoplayer2;

/* JADX INFO: loaded from: classes9.dex */
public class k implements g2 {
    public static final int DEFAULT_AUDIO_BUFFER_SIZE = 13107200;
    public static final int DEFAULT_BACK_BUFFER_DURATION_MS = 0;
    public static final int DEFAULT_BUFFER_FOR_PLAYBACK_AFTER_REBUFFER_MS = 5000;
    public static final int DEFAULT_BUFFER_FOR_PLAYBACK_MS = 2500;
    public static final int DEFAULT_CAMERA_MOTION_BUFFER_SIZE = 131072;
    public static final int DEFAULT_IMAGE_BUFFER_SIZE = 131072;
    public static final int DEFAULT_MAX_BUFFER_MS = 50000;
    public static final int DEFAULT_METADATA_BUFFER_SIZE = 131072;
    public static final int DEFAULT_MIN_BUFFER_MS = 50000;
    public static final int DEFAULT_MIN_BUFFER_SIZE = 13107200;
    public static final int DEFAULT_MUXED_BUFFER_SIZE = 144310272;
    public static final boolean DEFAULT_PRIORITIZE_TIME_OVER_SIZE_THRESHOLDS = false;
    public static final boolean DEFAULT_RETAIN_BACK_BUFFER_FROM_KEYFRAME = false;
    public static final int DEFAULT_TARGET_BUFFER_BYTES = -1;
    public static final int DEFAULT_TEXT_BUFFER_SIZE = 131072;
    public static final int DEFAULT_VIDEO_BUFFER_SIZE = 131072000;
    private final com.google.android.exoplayer2.upstream.p allocator;
    private final long backBufferDurationUs;
    private final long bufferForPlaybackAfterRebufferUs;
    private final long bufferForPlaybackUs;
    private boolean isLoading;
    private final long maxBufferUs;
    private final long minBufferUs;
    private final boolean prioritizeTimeOverSizeThresholds;
    private final boolean retainBackBufferFromKeyframe;
    private int targetBufferBytes;
    private final int targetBufferBytesOverwrite;

    public k() {
        this(new com.google.android.exoplayer2.upstream.p(true, 65536), 50000, 50000, 2500, 5000, -1, false, 0, false);
    }

    protected int e(m3[] m3VarArr, com.google.android.exoplayer2.trackselection.s[] sVarArr) {
        int iF = 0;
        for (int i10 = 0; i10 < m3VarArr.length; i10++) {
            if (sVarArr[i10] != null) {
                iF += f(m3VarArr[i10].getTrackType());
            }
        }
        return Math.max(13107200, iF);
    }

    @Override // com.google.android.exoplayer2.g2
    public com.google.android.exoplayer2.upstream.b getAllocator() {
        return this.allocator;
    }

    @Override // com.google.android.exoplayer2.g2
    public long getBackBufferDurationUs() {
        return this.backBufferDurationUs;
    }

    @Override // com.google.android.exoplayer2.g2
    public void onPrepared() {
        g(false);
    }

    @Override // com.google.android.exoplayer2.g2
    public void onReleased() {
        g(true);
    }

    @Override // com.google.android.exoplayer2.g2
    public void onStopped() {
        g(true);
    }

    @Override // com.google.android.exoplayer2.g2
    public boolean retainBackBufferFromKeyframe() {
        return this.retainBackBufferFromKeyframe;
    }

    protected k(com.google.android.exoplayer2.upstream.p pVar, int i10, int i11, int i12, int i13, int i14, boolean z6, int i15, boolean z10) {
        d(i12, 0, "bufferForPlaybackMs", "0");
        d(i13, 0, "bufferForPlaybackAfterRebufferMs", "0");
        d(i10, i12, "minBufferMs", "bufferForPlaybackMs");
        d(i10, i13, "minBufferMs", "bufferForPlaybackAfterRebufferMs");
        d(i11, i10, "maxBufferMs", "minBufferMs");
        d(i15, 0, "backBufferDurationMs", "0");
        this.allocator = pVar;
        this.minBufferUs = com.google.android.exoplayer2.util.o0.w0(i10);
        this.maxBufferUs = com.google.android.exoplayer2.util.o0.w0(i11);
        this.bufferForPlaybackUs = com.google.android.exoplayer2.util.o0.w0(i12);
        this.bufferForPlaybackAfterRebufferUs = com.google.android.exoplayer2.util.o0.w0(i13);
        this.targetBufferBytesOverwrite = i14;
        this.targetBufferBytes = i14 == -1 ? 13107200 : i14;
        this.prioritizeTimeOverSizeThresholds = z6;
        this.backBufferDurationUs = com.google.android.exoplayer2.util.o0.w0(i15);
        this.retainBackBufferFromKeyframe = z10;
    }

    private static void d(int i10, int i11, String str, String str2) {
        com.google.android.exoplayer2.util.a.b(i10 >= i11, str + " cannot be less than " + str2);
    }

    private static int f(int i10) {
        switch (i10) {
            case -2:
                return 0;
            case -1:
            default:
                throw new IllegalArgumentException();
            case 0:
                return 144310272;
            case 1:
                return 13107200;
            case 2:
                return 131072000;
            case 3:
            case 4:
            case 5:
            case 6:
                return 131072;
        }
    }

    private void g(boolean z6) {
        int i10 = this.targetBufferBytesOverwrite;
        if (i10 == -1) {
            i10 = 13107200;
        }
        this.targetBufferBytes = i10;
        this.isLoading = false;
        if (z6) {
            this.allocator.d();
        }
    }

    @Override // com.google.android.exoplayer2.g2
    public boolean a(long j6, long j10, float f) {
        boolean z6 = true;
        boolean z10 = this.allocator.c() >= this.targetBufferBytes;
        long jMin = this.minBufferUs;
        if (f > 1.0f) {
            jMin = Math.min(com.google.android.exoplayer2.util.o0.U(jMin, f), this.maxBufferUs);
        }
        if (j10 < Math.max(jMin, 500000L)) {
            if (!this.prioritizeTimeOverSizeThresholds && z10) {
                z6 = false;
            }
            this.isLoading = z6;
            if (!z6 && j10 < 500000) {
                com.google.android.exoplayer2.util.t.i("DefaultLoadControl", "Target buffer size reached with less than 500ms of buffered media data.");
            }
        } else if (j10 >= this.maxBufferUs || z10) {
            this.isLoading = false;
        }
        return this.isLoading;
    }

    @Override // com.google.android.exoplayer2.g2
    public void b(m3[] m3VarArr, com.google.android.exoplayer2.source.h1 h1Var, com.google.android.exoplayer2.trackselection.s[] sVarArr) {
        int iE = this.targetBufferBytesOverwrite;
        if (iE == -1) {
            iE = e(m3VarArr, sVarArr);
        }
        this.targetBufferBytes = iE;
        this.allocator.e(iE);
    }

    @Override // com.google.android.exoplayer2.g2
    public boolean c(long j6, float f, boolean z6, long j10) {
        long jMin;
        long jZ = com.google.android.exoplayer2.util.o0.Z(j6, f);
        if (z6) {
            jMin = this.bufferForPlaybackAfterRebufferUs;
        } else {
            jMin = this.bufferForPlaybackUs;
        }
        if (j10 != -9223372036854775807L) {
            jMin = Math.min(j10 / 2, jMin);
        }
        if (jMin > 0 && jZ < jMin && (this.prioritizeTimeOverSizeThresholds || this.allocator.c() < this.targetBufferBytes)) {
            return false;
        }
        return true;
    }
}
