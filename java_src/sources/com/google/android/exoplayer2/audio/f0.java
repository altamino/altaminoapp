package com.google.android.exoplayer2.audio;

import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes11.dex */
final class f0 extends z {
    private static final int FLOAT_NAN_AS_INT = Float.floatToIntBits(Float.NaN);
    private static final double PCM_32_BIT_INT_TO_PCM_32_BIT_FLOAT_FACTOR = 4.656612875245797E-10d;

    @Override // com.google.android.exoplayer2.audio.z
    public g.a c(g.a aVar) throws g.b {
        int i10 = aVar.encoding;
        if (com.google.android.exoplayer2.util.o0.n0(i10)) {
            return i10 != 4 ? new g.a(aVar.sampleRate, aVar.channelCount, 4) : g.a.NOT_SET;
        }
        throw new g.b(aVar);
    }

    f0() {
    }

    @Override // com.google.android.exoplayer2.audio.g
    public void queueInput(ByteBuffer byteBuffer) {
        ByteBuffer byteBufferG;
        int iPosition = byteBuffer.position();
        int iLimit = byteBuffer.limit();
        int i10 = iLimit - iPosition;
        int i11 = this.inputAudioFormat.encoding;
        if (i11 != 536870912) {
            if (i11 == 805306368) {
                byteBufferG = g(i10);
                while (iPosition < iLimit) {
                    h((byteBuffer.get(iPosition) & 255) | ((byteBuffer.get(iPosition + 1) & 255) << 8) | ((byteBuffer.get(iPosition + 2) & 255) << 16) | ((byteBuffer.get(iPosition + 3) & 255) << 24), byteBufferG);
                    iPosition += 4;
                }
            } else {
                throw new IllegalStateException();
            }
        } else {
            byteBufferG = g((i10 / 3) * 4);
            while (iPosition < iLimit) {
                h(((byteBuffer.get(iPosition) & 255) << 8) | ((byteBuffer.get(iPosition + 1) & 255) << 16) | ((byteBuffer.get(iPosition + 2) & 255) << 24), byteBufferG);
                iPosition += 3;
            }
        }
        byteBuffer.position(byteBuffer.limit());
        byteBufferG.flip();
    }

    private static void h(int i10, ByteBuffer byteBuffer) {
        int iFloatToIntBits = Float.floatToIntBits((float) (((double) i10) * PCM_32_BIT_INT_TO_PCM_32_BIT_FLOAT_FACTOR));
        if (iFloatToIntBits == FLOAT_NAN_AS_INT) {
            iFloatToIntBits = Float.floatToIntBits(0.0f);
        }
        byteBuffer.putInt(iFloatToIntBits);
    }
}
