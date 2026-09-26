package androidx.media3.exoplayer.audio;

import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.extractor.OpusUtil;
import java.math.RoundingMode;

/* JADX INFO: loaded from: classes6.dex */
@UnstableApi
public class DefaultAudioTrackBufferSizeProvider implements DefaultAudioSink.AudioTrackBufferSizeProvider {
    private static final int AC3_BUFFER_MULTIPLICATION_FACTOR = 2;
    private static final int MAX_PCM_BUFFER_DURATION_US = 750000;
    private static final int MIN_PCM_BUFFER_DURATION_US = 250000;
    private static final int OFFLOAD_BUFFER_DURATION_US = 50000000;
    private static final int PASSTHROUGH_BUFFER_DURATION_US = 250000;
    private static final int PCM_BUFFER_MULTIPLICATION_FACTOR = 4;
    public final int ac3BufferMultiplicationFactor;
    protected final int maxPcmBufferDurationUs;
    protected final int minPcmBufferDurationUs;
    protected final int offloadBufferDurationUs;
    protected final int passthroughBufferDurationUs;
    protected final int pcmBufferMultiplicationFactor;

    public static class Builder {
        private int minPcmBufferDurationUs = 250000;
        private int maxPcmBufferDurationUs = DefaultAudioTrackBufferSizeProvider.MAX_PCM_BUFFER_DURATION_US;
        private int pcmBufferMultiplicationFactor = 4;
        private int passthroughBufferDurationUs = 250000;
        private int offloadBufferDurationUs = DefaultAudioTrackBufferSizeProvider.OFFLOAD_BUFFER_DURATION_US;
        private int ac3BufferMultiplicationFactor = 2;

        public DefaultAudioTrackBufferSizeProvider g() {
            return new DefaultAudioTrackBufferSizeProvider(this);
        }
    }

    protected static int b(int i10, int i11, int i12) {
        return com.google.common.primitives.e.d(((((long) i10) * ((long) i11)) * ((long) i12)) / 1000000);
    }

    protected int c(int i10, int i11, int i12, int i13, int i14, int i15) {
        if (i12 == 0) {
            return g(i10, i14, i13);
        }
        if (i12 == 1) {
            return e(i11);
        }
        if (i12 == 2) {
            return f(i11, i15);
        }
        throw new IllegalArgumentException();
    }

    protected int f(int i10, int i11) {
        int i12 = this.passthroughBufferDurationUs;
        if (i10 == 5) {
            i12 *= this.ac3BufferMultiplicationFactor;
        }
        return com.google.common.primitives.e.d((((long) i12) * ((long) (i11 != -1 ? com.google.common.math.b.a(i11, 8, RoundingMode.CEILING) : d(i10)))) / 1000000);
    }

    protected int g(int i10, int i11, int i12) {
        return Util.q(i10 * this.pcmBufferMultiplicationFactor, b(this.minPcmBufferDurationUs, i11, i12), b(this.maxPcmBufferDurationUs, i11, i12));
    }

    protected DefaultAudioTrackBufferSizeProvider(Builder builder) {
        this.minPcmBufferDurationUs = builder.minPcmBufferDurationUs;
        this.maxPcmBufferDurationUs = builder.maxPcmBufferDurationUs;
        this.pcmBufferMultiplicationFactor = builder.pcmBufferMultiplicationFactor;
        this.passthroughBufferDurationUs = builder.passthroughBufferDurationUs;
        this.offloadBufferDurationUs = builder.offloadBufferDurationUs;
        this.ac3BufferMultiplicationFactor = builder.ac3BufferMultiplicationFactor;
    }

    protected static int d(int i10) {
        switch (i10) {
            case 5:
                return 80000;
            case 6:
            case 18:
                return 768000;
            case 7:
                return 192000;
            case 8:
                return 2250000;
            case 9:
                return 40000;
            case 10:
                return 100000;
            case 11:
                return 16000;
            case 12:
                return 7000;
            case 13:
            case 19:
            default:
                throw new IllegalArgumentException();
            case 14:
                return 3062500;
            case 15:
                return 8000;
            case 16:
                return 256000;
            case 17:
                return 336000;
            case 20:
                return OpusUtil.MAX_BYTES_PER_SECOND;
        }
    }

    @Override // androidx.media3.exoplayer.audio.DefaultAudioSink.AudioTrackBufferSizeProvider
    public int a(int i10, int i11, int i12, int i13, int i14, int i15, double d) {
        return (((Math.max(i10, (int) (((double) c(i10, i11, i12, i13, i14, i15)) * d)) + i13) - 1) / i13) * i13;
    }

    protected int e(int i10) {
        return com.google.common.primitives.e.d((((long) this.offloadBufferDurationUs) * ((long) d(i10))) / 1000000);
    }
}
