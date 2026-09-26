package com.google.android.exoplayer2.audio;

/* JADX INFO: loaded from: classes9.dex */
public class d0 implements c0.f {
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

    public static class a {
        private int minPcmBufferDurationUs = 250000;
        private int maxPcmBufferDurationUs = d0.MAX_PCM_BUFFER_DURATION_US;
        private int pcmBufferMultiplicationFactor = 4;
        private int passthroughBufferDurationUs = 250000;
        private int offloadBufferDurationUs = d0.OFFLOAD_BUFFER_DURATION_US;
        private int ac3BufferMultiplicationFactor = 2;

        public d0 g() {
            return new d0(this);
        }
    }

    protected static int b(int i10, int i11, int i12) {
        return com.google.common.primitives.e.d(((((long) i10) * ((long) i11)) * ((long) i12)) / 1000000);
    }

    protected int c(int i10, int i11, int i12, int i13, int i14) {
        if (i12 == 0) {
            return g(i10, i14, i13);
        }
        if (i12 == 1) {
            return e(i11);
        }
        if (i12 == 2) {
            return f(i11);
        }
        throw new IllegalArgumentException();
    }

    protected int f(int i10) {
        int i11 = this.passthroughBufferDurationUs;
        if (i10 == 5) {
            i11 *= this.ac3BufferMultiplicationFactor;
        }
        return com.google.common.primitives.e.d((((long) i11) * ((long) d(i10))) / 1000000);
    }

    protected int g(int i10, int i11, int i12) {
        return com.google.android.exoplayer2.util.o0.p(i10 * this.pcmBufferMultiplicationFactor, b(this.minPcmBufferDurationUs, i11, i12), b(this.maxPcmBufferDurationUs, i11, i12));
    }

    protected d0(a aVar) {
        this.minPcmBufferDurationUs = aVar.minPcmBufferDurationUs;
        this.maxPcmBufferDurationUs = aVar.maxPcmBufferDurationUs;
        this.pcmBufferMultiplicationFactor = aVar.pcmBufferMultiplicationFactor;
        this.passthroughBufferDurationUs = aVar.passthroughBufferDurationUs;
        this.offloadBufferDurationUs = aVar.offloadBufferDurationUs;
        this.ac3BufferMultiplicationFactor = aVar.ac3BufferMultiplicationFactor;
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
        }
    }

    @Override // com.google.android.exoplayer2.audio.c0.f
    public int a(int i10, int i11, int i12, int i13, int i14, double d) {
        return (((Math.max(i10, (int) (((double) c(i10, i11, i12, i13, i14)) * d)) + i13) - 1) / i13) * i13;
    }

    protected int e(int i10) {
        return com.google.common.primitives.e.d((((long) this.offloadBufferDurationUs) * ((long) d(i10))) / 1000000);
    }
}
