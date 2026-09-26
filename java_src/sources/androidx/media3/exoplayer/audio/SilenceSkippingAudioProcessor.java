package androidx.media3.exoplayer.audio;

import androidx.media3.common.audio.AudioProcessor;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes4.dex */
@UnstableApi
public final class SilenceSkippingAudioProcessor extends androidx.media3.common.audio.BaseAudioProcessor {
    public static final long DEFAULT_MINIMUM_SILENCE_DURATION_US = 150000;
    public static final long DEFAULT_PADDING_SILENCE_US = 20000;
    public static final short DEFAULT_SILENCE_THRESHOLD_LEVEL = 1024;
    private static final int STATE_MAYBE_SILENT = 1;
    private static final int STATE_NOISY = 0;
    private static final int STATE_SILENT = 2;
    private int bytesPerFrame;
    private boolean enabled;
    private boolean hasOutputNoise;
    private byte[] maybeSilenceBuffer;
    private int maybeSilenceBufferSize;
    private final long minimumSilenceDurationUs;
    private byte[] paddingBuffer;
    private final long paddingSilenceUs;
    private int paddingSize;
    private final short silenceThresholdLevel;
    private long skippedFrames;
    private int state;

    public SilenceSkippingAudioProcessor() {
        this(150000L, 20000L, (short) 1024);
    }

    @Override // androidx.media3.common.audio.BaseAudioProcessor
    protected void f() {
        this.enabled = false;
        this.paddingSize = 0;
        byte[] bArr = Util.EMPTY_BYTE_ARRAY;
        this.maybeSilenceBuffer = bArr;
        this.paddingBuffer = bArr;
    }

    @Override // androidx.media3.common.audio.BaseAudioProcessor, androidx.media3.common.audio.AudioProcessor
    public boolean isActive() {
        return this.enabled;
    }

    public long k() {
        return this.skippedFrames;
    }

    public void q(boolean z6) {
        this.enabled = z6;
    }

    public SilenceSkippingAudioProcessor(long j6, long j10, short s) {
        Assertions.a(j10 <= j6);
        this.minimumSilenceDurationUs = j6;
        this.paddingSilenceUs = j10;
        this.silenceThresholdLevel = s;
        byte[] bArr = Util.EMPTY_BYTE_ARRAY;
        this.maybeSilenceBuffer = bArr;
        this.paddingBuffer = bArr;
    }

    private int h(long j6) {
        return (int) ((j6 * ((long) this.inputAudioFormat.sampleRate)) / 1000000);
    }

    @Override // androidx.media3.common.audio.BaseAudioProcessor
    public AudioProcessor.AudioFormat c(AudioProcessor.AudioFormat audioFormat) throws AudioProcessor.UnhandledAudioFormatException {
        if (audioFormat.encoding == 2) {
            return this.enabled ? audioFormat : AudioProcessor.AudioFormat.NOT_SET;
        }
        throw new AudioProcessor.UnhandledAudioFormatException(audioFormat);
    }

    @Override // androidx.media3.common.audio.BaseAudioProcessor
    protected void d() {
        if (this.enabled) {
            this.bytesPerFrame = this.inputAudioFormat.bytesPerFrame;
            int iH = h(this.minimumSilenceDurationUs) * this.bytesPerFrame;
            if (this.maybeSilenceBuffer.length != iH) {
                this.maybeSilenceBuffer = new byte[iH];
            }
            int iH2 = h(this.paddingSilenceUs) * this.bytesPerFrame;
            this.paddingSize = iH2;
            if (this.paddingBuffer.length != iH2) {
                this.paddingBuffer = new byte[iH2];
            }
        }
        this.state = 0;
        this.skippedFrames = 0L;
        this.maybeSilenceBufferSize = 0;
        this.hasOutputNoise = false;
    }

    @Override // androidx.media3.common.audio.BaseAudioProcessor
    protected void e() {
        int i10 = this.maybeSilenceBufferSize;
        if (i10 > 0) {
            m(this.maybeSilenceBuffer, i10);
        }
        if (this.hasOutputNoise) {
            return;
        }
        this.skippedFrames += (long) (this.paddingSize / this.bytesPerFrame);
    }

    private int i(ByteBuffer byteBuffer) {
        int iLimit = byteBuffer.limit();
        do {
            iLimit -= 2;
            if (iLimit < byteBuffer.position()) {
                return byteBuffer.position();
            }
        } while (Math.abs((int) byteBuffer.getShort(iLimit)) <= this.silenceThresholdLevel);
        int i10 = this.bytesPerFrame;
        return ((iLimit / i10) * i10) + i10;
    }

    private int j(ByteBuffer byteBuffer) {
        for (int iPosition = byteBuffer.position(); iPosition < byteBuffer.limit(); iPosition += 2) {
            if (Math.abs((int) byteBuffer.getShort(iPosition)) > this.silenceThresholdLevel) {
                int i10 = this.bytesPerFrame;
                return i10 * (iPosition / i10);
            }
        }
        return byteBuffer.limit();
    }

    private void l(ByteBuffer byteBuffer) {
        int iRemaining = byteBuffer.remaining();
        g(iRemaining).put(byteBuffer).flip();
        if (iRemaining > 0) {
            this.hasOutputNoise = true;
        }
    }

    private void m(byte[] bArr, int i10) {
        g(i10).put(bArr, 0, i10).flip();
        if (i10 > 0) {
            this.hasOutputNoise = true;
        }
    }

    private void n(ByteBuffer byteBuffer) {
        int iLimit = byteBuffer.limit();
        int iJ = j(byteBuffer);
        int iPosition = iJ - byteBuffer.position();
        byte[] bArr = this.maybeSilenceBuffer;
        int length = bArr.length;
        int i10 = this.maybeSilenceBufferSize;
        int i11 = length - i10;
        if (iJ < iLimit && iPosition < i11) {
            m(bArr, i10);
            this.maybeSilenceBufferSize = 0;
            this.state = 0;
            return;
        }
        int iMin = Math.min(iPosition, i11);
        byteBuffer.limit(byteBuffer.position() + iMin);
        byteBuffer.get(this.maybeSilenceBuffer, this.maybeSilenceBufferSize, iMin);
        int i12 = this.maybeSilenceBufferSize + iMin;
        this.maybeSilenceBufferSize = i12;
        byte[] bArr2 = this.maybeSilenceBuffer;
        if (i12 == bArr2.length) {
            if (this.hasOutputNoise) {
                m(bArr2, this.paddingSize);
                this.skippedFrames += (long) ((this.maybeSilenceBufferSize - (this.paddingSize * 2)) / this.bytesPerFrame);
            } else {
                this.skippedFrames += (long) ((i12 - this.paddingSize) / this.bytesPerFrame);
            }
            r(byteBuffer, this.maybeSilenceBuffer, this.maybeSilenceBufferSize);
            this.maybeSilenceBufferSize = 0;
            this.state = 2;
        }
        byteBuffer.limit(iLimit);
    }

    private void o(ByteBuffer byteBuffer) {
        int iLimit = byteBuffer.limit();
        byteBuffer.limit(Math.min(iLimit, byteBuffer.position() + this.maybeSilenceBuffer.length));
        int i10 = i(byteBuffer);
        if (i10 == byteBuffer.position()) {
            this.state = 1;
        } else {
            byteBuffer.limit(i10);
            l(byteBuffer);
        }
        byteBuffer.limit(iLimit);
    }

    private void p(ByteBuffer byteBuffer) {
        int iLimit = byteBuffer.limit();
        int iJ = j(byteBuffer);
        byteBuffer.limit(iJ);
        this.skippedFrames += (long) (byteBuffer.remaining() / this.bytesPerFrame);
        r(byteBuffer, this.paddingBuffer, this.paddingSize);
        if (iJ < iLimit) {
            m(this.paddingBuffer, this.paddingSize);
            this.state = 0;
            byteBuffer.limit(iLimit);
        }
    }

    private void r(ByteBuffer byteBuffer, byte[] bArr, int i10) {
        int iMin = Math.min(byteBuffer.remaining(), this.paddingSize);
        int i11 = this.paddingSize - iMin;
        System.arraycopy(bArr, i10 - i11, this.paddingBuffer, 0, i11);
        byteBuffer.position(byteBuffer.limit() - iMin);
        byteBuffer.get(this.paddingBuffer, i11, iMin);
    }

    @Override // androidx.media3.common.audio.AudioProcessor
    public void queueInput(ByteBuffer byteBuffer) {
        while (byteBuffer.hasRemaining() && !b()) {
            int i10 = this.state;
            if (i10 != 0) {
                if (i10 != 1) {
                    if (i10 == 2) {
                        p(byteBuffer);
                    } else {
                        throw new IllegalStateException();
                    }
                } else {
                    n(byteBuffer);
                }
            } else {
                o(byteBuffer);
            }
        }
    }
}
