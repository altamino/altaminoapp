package com.google.android.exoplayer2.audio;

import androidx.annotation.Nullable;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes10.dex */
final class a0 extends z {

    @Nullable
    private int[] outputChannels;

    @Nullable
    private int[] pendingOutputChannels;

    @Override // com.google.android.exoplayer2.audio.z
    protected void d() {
        this.outputChannels = this.pendingOutputChannels;
    }

    @Override // com.google.android.exoplayer2.audio.z
    protected void f() {
        this.outputChannels = null;
        this.pendingOutputChannels = null;
    }

    public void h(@Nullable int[] iArr) {
        this.pendingOutputChannels = iArr;
    }

    @Override // com.google.android.exoplayer2.audio.z
    public g.a c(g.a aVar) throws g.b {
        int[] iArr = this.pendingOutputChannels;
        if (iArr == null) {
            return g.a.NOT_SET;
        }
        if (aVar.encoding != 2) {
            throw new g.b(aVar);
        }
        boolean z6 = aVar.channelCount != iArr.length;
        int i10 = 0;
        while (i10 < iArr.length) {
            int i11 = iArr[i10];
            if (i11 >= aVar.channelCount) {
                throw new g.b(aVar);
            }
            z6 |= i11 != i10;
            i10++;
        }
        return z6 ? new g.a(aVar.sampleRate, iArr.length, 2) : g.a.NOT_SET;
    }

    @Override // com.google.android.exoplayer2.audio.g
    public void queueInput(ByteBuffer byteBuffer) {
        int[] iArr = (int[]) com.google.android.exoplayer2.util.a.e(this.outputChannels);
        int iPosition = byteBuffer.position();
        int iLimit = byteBuffer.limit();
        ByteBuffer byteBufferG = g(((iLimit - iPosition) / this.inputAudioFormat.bytesPerFrame) * this.outputAudioFormat.bytesPerFrame);
        while (iPosition < iLimit) {
            for (int i10 : iArr) {
                byteBufferG.putShort(byteBuffer.getShort((i10 * 2) + iPosition));
            }
            iPosition += this.inputAudioFormat.bytesPerFrame;
        }
        byteBuffer.position(iLimit);
        byteBufferG.flip();
    }

    a0() {
    }
}
