package androidx.media3.exoplayer;

import androidx.annotation.Nullable;
import androidx.media3.common.MediaPeriodId;
import androidx.media3.common.Timeline;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.source.TrackGroupArray;
import androidx.media3.exoplayer.trackselection.ExoTrackSelection;
import androidx.media3.exoplayer.upstream.Allocator;
import androidx.media3.exoplayer.upstream.DefaultAllocator;

/* JADX INFO: loaded from: classes6.dex */
@UnstableApi
public class DefaultLoadControl implements LoadControl {
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
    private final DefaultAllocator allocator;
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

    public static final class Builder {

        @Nullable
        private DefaultAllocator allocator;
        private boolean buildCalled;
        private int minBufferMs = 50000;
        private int maxBufferMs = 50000;
        private int bufferForPlaybackMs = 2500;
        private int bufferForPlaybackAfterRebufferMs = 5000;
        private int targetBufferBytes = -1;
        private boolean prioritizeTimeOverSizeThresholds = false;
        private int backBufferDurationMs = 0;
        private boolean retainBackBufferFromKeyframe = false;

        public DefaultLoadControl a() {
            Assertions.g(!this.buildCalled);
            this.buildCalled = true;
            if (this.allocator == null) {
                this.allocator = new DefaultAllocator(true, 65536);
            }
            return new DefaultLoadControl(this.allocator, this.minBufferMs, this.maxBufferMs, this.bufferForPlaybackMs, this.bufferForPlaybackAfterRebufferMs, this.targetBufferBytes, this.prioritizeTimeOverSizeThresholds, this.backBufferDurationMs, this.retainBackBufferFromKeyframe);
        }

        public Builder b(DefaultAllocator defaultAllocator) {
            Assertions.g(!this.buildCalled);
            this.allocator = defaultAllocator;
            return this;
        }
    }

    public DefaultLoadControl() {
        this(new DefaultAllocator(true, 65536), 50000, 50000, 2500, 5000, -1, false, 0, false);
    }

    protected int e(Renderer[] rendererArr, ExoTrackSelection[] exoTrackSelectionArr) {
        int iF = 0;
        for (int i10 = 0; i10 < rendererArr.length; i10++) {
            if (exoTrackSelectionArr[i10] != null) {
                iF += f(rendererArr[i10].getTrackType());
            }
        }
        return Math.max(13107200, iF);
    }

    @Override // androidx.media3.exoplayer.LoadControl
    public Allocator getAllocator() {
        return this.allocator;
    }

    @Override // androidx.media3.exoplayer.LoadControl
    public long getBackBufferDurationUs() {
        return this.backBufferDurationUs;
    }

    @Override // androidx.media3.exoplayer.LoadControl
    public void onPrepared() {
        g(false);
    }

    @Override // androidx.media3.exoplayer.LoadControl
    public void onReleased() {
        g(true);
    }

    @Override // androidx.media3.exoplayer.LoadControl
    public void onStopped() {
        g(true);
    }

    @Override // androidx.media3.exoplayer.LoadControl
    public boolean retainBackBufferFromKeyframe() {
        return this.retainBackBufferFromKeyframe;
    }

    protected DefaultLoadControl(DefaultAllocator defaultAllocator, int i10, int i11, int i12, int i13, int i14, boolean z6, int i15, boolean z10) {
        d(i12, 0, "bufferForPlaybackMs", "0");
        d(i13, 0, "bufferForPlaybackAfterRebufferMs", "0");
        d(i10, i12, "minBufferMs", "bufferForPlaybackMs");
        d(i10, i13, "minBufferMs", "bufferForPlaybackAfterRebufferMs");
        d(i11, i10, "maxBufferMs", "minBufferMs");
        d(i15, 0, "backBufferDurationMs", "0");
        this.allocator = defaultAllocator;
        this.minBufferUs = Util.K0(i10);
        this.maxBufferUs = Util.K0(i11);
        this.bufferForPlaybackUs = Util.K0(i12);
        this.bufferForPlaybackAfterRebufferUs = Util.K0(i13);
        this.targetBufferBytesOverwrite = i14;
        this.targetBufferBytes = i14 == -1 ? 13107200 : i14;
        this.prioritizeTimeOverSizeThresholds = z6;
        this.backBufferDurationUs = Util.K0(i15);
        this.retainBackBufferFromKeyframe = z10;
    }

    private static void d(int i10, int i11, String str, String str2) {
        Assertions.b(i10 >= i11, str + " cannot be less than " + str2);
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

    @Override // androidx.media3.exoplayer.LoadControl
    public boolean a(long j6, long j10, float f) {
        boolean z6 = true;
        boolean z10 = this.allocator.c() >= this.targetBufferBytes;
        long jMin = this.minBufferUs;
        if (f > 1.0f) {
            jMin = Math.min(Util.d0(jMin, f), this.maxBufferUs);
        }
        if (j10 < Math.max(jMin, 500000L)) {
            if (!this.prioritizeTimeOverSizeThresholds && z10) {
                z6 = false;
            }
            this.isLoading = z6;
            if (!z6 && j10 < 500000) {
                Log.i("DefaultLoadControl", "Target buffer size reached with less than 500ms of buffered media data.");
            }
        } else if (j10 >= this.maxBufferUs || z10) {
            this.isLoading = false;
        }
        return this.isLoading;
    }

    @Override // androidx.media3.exoplayer.LoadControl
    public void c(Timeline timeline, MediaPeriodId mediaPeriodId, Renderer[] rendererArr, TrackGroupArray trackGroupArray, ExoTrackSelection[] exoTrackSelectionArr) {
        int iE = this.targetBufferBytesOverwrite;
        if (iE == -1) {
            iE = e(rendererArr, exoTrackSelectionArr);
        }
        this.targetBufferBytes = iE;
        this.allocator.e(iE);
    }

    @Override // androidx.media3.exoplayer.LoadControl
    public boolean b(Timeline timeline, MediaPeriodId mediaPeriodId, long j6, float f, boolean z6, long j10) {
        long jMin;
        long jI0 = Util.i0(j6, f);
        if (z6) {
            jMin = this.bufferForPlaybackAfterRebufferUs;
        } else {
            jMin = this.bufferForPlaybackUs;
        }
        if (j10 != -9223372036854775807L) {
            jMin = Math.min(j10 / 2, jMin);
        }
        if (jMin > 0 && jI0 < jMin && (this.prioritizeTimeOverSizeThresholds || this.allocator.c() < this.targetBufferBytes)) {
            return false;
        }
        return true;
    }
}
