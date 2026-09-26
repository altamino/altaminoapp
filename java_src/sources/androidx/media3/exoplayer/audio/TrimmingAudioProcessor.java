package androidx.media3.exoplayer.audio;

import androidx.media3.common.audio.AudioProcessor;
import androidx.media3.common.util.Util;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes7.dex */
final class TrimmingAudioProcessor extends androidx.media3.common.audio.BaseAudioProcessor {
    private static final int OUTPUT_ENCODING = 2;
    private byte[] endBuffer = Util.EMPTY_BYTE_ARRAY;
    private int endBufferSize;
    private int pendingTrimStartBytes;
    private boolean reconfigurationPending;
    private int trimEndFrames;
    private int trimStartFrames;
    private long trimmedFrameCount;

    public long h() {
        return this.trimmedFrameCount;
    }

    public void i() {
        this.trimmedFrameCount = 0L;
    }

    public void j(int i10, int i11) {
        this.trimStartFrames = i10;
        this.trimEndFrames = i11;
    }

    @Override // androidx.media3.common.audio.BaseAudioProcessor
    public AudioProcessor.AudioFormat c(AudioProcessor.AudioFormat audioFormat) throws AudioProcessor.UnhandledAudioFormatException {
        if (audioFormat.encoding != 2) {
            throw new AudioProcessor.UnhandledAudioFormatException(audioFormat);
        }
        this.reconfigurationPending = true;
        return (this.trimStartFrames == 0 && this.trimEndFrames == 0) ? AudioProcessor.AudioFormat.NOT_SET : audioFormat;
    }

    @Override // androidx.media3.common.audio.BaseAudioProcessor
    protected void d() {
        if (this.reconfigurationPending) {
            this.reconfigurationPending = false;
            int i10 = this.trimEndFrames;
            int i11 = this.inputAudioFormat.bytesPerFrame;
            this.endBuffer = new byte[i10 * i11];
            this.pendingTrimStartBytes = this.trimStartFrames * i11;
        }
        this.endBufferSize = 0;
    }

    @Override // androidx.media3.common.audio.BaseAudioProcessor
    protected void e() {
        if (this.reconfigurationPending) {
            int i10 = this.endBufferSize;
            if (i10 > 0) {
                this.trimmedFrameCount += (long) (i10 / this.inputAudioFormat.bytesPerFrame);
            }
            this.endBufferSize = 0;
        }
    }

    @Override // androidx.media3.common.audio.BaseAudioProcessor
    protected void f() {
        this.endBuffer = Util.EMPTY_BYTE_ARRAY;
    }

    @Override // androidx.media3.common.audio.BaseAudioProcessor, androidx.media3.common.audio.AudioProcessor
    public ByteBuffer getOutput() {
        int i10;
        if (super.isEnded() && (i10 = this.endBufferSize) > 0) {
            g(i10).put(this.endBuffer, 0, this.endBufferSize).flip();
            this.endBufferSize = 0;
        }
        return super.getOutput();
    }

    @Override // androidx.media3.common.audio.BaseAudioProcessor, androidx.media3.common.audio.AudioProcessor
    public boolean isEnded() {
        if (super.isEnded() && this.endBufferSize == 0) {
            return true;
        }
        return false;
    }

    @Override // androidx.media3.common.audio.AudioProcessor
    public void queueInput(ByteBuffer byteBuffer) {
        int iPosition = byteBuffer.position();
        int iLimit = byteBuffer.limit();
        int i10 = iLimit - iPosition;
        if (i10 == 0) {
            return;
        }
        int iMin = Math.min(i10, this.pendingTrimStartBytes);
        this.trimmedFrameCount += (long) (iMin / this.inputAudioFormat.bytesPerFrame);
        this.pendingTrimStartBytes -= iMin;
        byteBuffer.position(iPosition + iMin);
        if (this.pendingTrimStartBytes > 0) {
            return;
        }
        int i11 = i10 - iMin;
        int length = (this.endBufferSize + i11) - this.endBuffer.length;
        ByteBuffer byteBufferG = g(length);
        int iQ = Util.q(length, 0, this.endBufferSize);
        byteBufferG.put(this.endBuffer, 0, iQ);
        int iQ2 = Util.q(length - iQ, 0, i11);
        byteBuffer.limit(byteBuffer.position() + iQ2);
        byteBufferG.put(byteBuffer);
        byteBuffer.limit(iLimit);
        int i12 = i11 - iQ2;
        int i13 = this.endBufferSize - iQ;
        this.endBufferSize = i13;
        byte[] bArr = this.endBuffer;
        System.arraycopy(bArr, iQ, bArr, 0, i13);
        byteBuffer.get(this.endBuffer, this.endBufferSize, i12);
        this.endBufferSize += i12;
        byteBufferG.flip();
    }
}
