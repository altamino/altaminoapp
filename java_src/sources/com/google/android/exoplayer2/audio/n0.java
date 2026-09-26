package com.google.android.exoplayer2.audio;

import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes11.dex */
final class n0 extends z {
    private static final int OUTPUT_ENCODING = 2;
    private byte[] endBuffer = com.google.android.exoplayer2.util.o0.EMPTY_BYTE_ARRAY;
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

    @Override // com.google.android.exoplayer2.audio.z
    public g.a c(g.a aVar) throws g.b {
        if (aVar.encoding != 2) {
            throw new g.b(aVar);
        }
        this.reconfigurationPending = true;
        return (this.trimStartFrames == 0 && this.trimEndFrames == 0) ? g.a.NOT_SET : aVar;
    }

    @Override // com.google.android.exoplayer2.audio.z
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

    @Override // com.google.android.exoplayer2.audio.z
    protected void e() {
        if (this.reconfigurationPending) {
            int i10 = this.endBufferSize;
            if (i10 > 0) {
                this.trimmedFrameCount += (long) (i10 / this.inputAudioFormat.bytesPerFrame);
            }
            this.endBufferSize = 0;
        }
    }

    @Override // com.google.android.exoplayer2.audio.z
    protected void f() {
        this.endBuffer = com.google.android.exoplayer2.util.o0.EMPTY_BYTE_ARRAY;
    }

    @Override // com.google.android.exoplayer2.audio.z, com.google.android.exoplayer2.audio.g
    public ByteBuffer getOutput() {
        int i10;
        if (super.isEnded() && (i10 = this.endBufferSize) > 0) {
            g(i10).put(this.endBuffer, 0, this.endBufferSize).flip();
            this.endBufferSize = 0;
        }
        return super.getOutput();
    }

    @Override // com.google.android.exoplayer2.audio.z, com.google.android.exoplayer2.audio.g
    public boolean isEnded() {
        if (super.isEnded() && this.endBufferSize == 0) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.exoplayer2.audio.g
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
        int iP = com.google.android.exoplayer2.util.o0.p(length, 0, this.endBufferSize);
        byteBufferG.put(this.endBuffer, 0, iP);
        int iP2 = com.google.android.exoplayer2.util.o0.p(length - iP, 0, i11);
        byteBuffer.limit(byteBuffer.position() + iP2);
        byteBufferG.put(byteBuffer);
        byteBuffer.limit(iLimit);
        int i12 = i11 - iP2;
        int i13 = this.endBufferSize - iP;
        this.endBufferSize = i13;
        byte[] bArr = this.endBuffer;
        System.arraycopy(bArr, iP, bArr, 0, i13);
        byteBuffer.get(this.endBuffer, this.endBufferSize, i12);
        this.endBufferSize += i12;
        byteBufferG.flip();
    }
}
