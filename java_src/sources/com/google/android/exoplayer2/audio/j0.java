package com.google.android.exoplayer2.audio;

import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes11.dex */
final class j0 extends z {
    @Override // com.google.android.exoplayer2.audio.z
    public g.a c(g.a aVar) throws g.b {
        int i10 = aVar.encoding;
        if (i10 == 3 || i10 == 2 || i10 == 268435456 || i10 == 536870912 || i10 == 805306368 || i10 == 4) {
            return i10 != 2 ? new g.a(aVar.sampleRate, aVar.channelCount, 2) : g.a.NOT_SET;
        }
        throw new g.b(aVar);
    }

    j0() {
    }

    @Override // com.google.android.exoplayer2.audio.g
    public void queueInput(ByteBuffer byteBuffer) {
        int iPosition = byteBuffer.position();
        int iLimit = byteBuffer.limit();
        int i10 = iLimit - iPosition;
        int i11 = this.inputAudioFormat.encoding;
        if (i11 != 3) {
            if (i11 != 4) {
                if (i11 != 268435456) {
                    if (i11 != 536870912) {
                        if (i11 != 805306368) {
                            throw new IllegalStateException();
                        }
                        i10 /= 2;
                    } else {
                        i10 /= 3;
                        i10 *= 2;
                    }
                }
            } else {
                i10 /= 2;
            }
        } else {
            i10 *= 2;
        }
        ByteBuffer byteBufferG = g(i10);
        int i12 = this.inputAudioFormat.encoding;
        if (i12 != 3) {
            if (i12 != 4) {
                if (i12 != 268435456) {
                    if (i12 != 536870912) {
                        if (i12 == 805306368) {
                            while (iPosition < iLimit) {
                                byteBufferG.put(byteBuffer.get(iPosition + 2));
                                byteBufferG.put(byteBuffer.get(iPosition + 3));
                                iPosition += 4;
                            }
                        } else {
                            throw new IllegalStateException();
                        }
                    } else {
                        while (iPosition < iLimit) {
                            byteBufferG.put(byteBuffer.get(iPosition + 1));
                            byteBufferG.put(byteBuffer.get(iPosition + 2));
                            iPosition += 3;
                        }
                    }
                } else {
                    while (iPosition < iLimit) {
                        byteBufferG.put(byteBuffer.get(iPosition + 1));
                        byteBufferG.put(byteBuffer.get(iPosition));
                        iPosition += 2;
                    }
                }
            } else {
                while (iPosition < iLimit) {
                    short sO = (short) (com.google.android.exoplayer2.util.o0.o(byteBuffer.getFloat(iPosition), -1.0f, 1.0f) * 32767.0f);
                    byteBufferG.put((byte) (sO & 255));
                    byteBufferG.put((byte) ((sO >> 8) & 255));
                    iPosition += 4;
                }
            }
        } else {
            while (iPosition < iLimit) {
                byteBufferG.put((byte) 0);
                byteBufferG.put((byte) ((byteBuffer.get(iPosition) & 255) - 128));
                iPosition++;
            }
        }
        byteBuffer.position(byteBuffer.limit());
        byteBufferG.flip();
    }
}
