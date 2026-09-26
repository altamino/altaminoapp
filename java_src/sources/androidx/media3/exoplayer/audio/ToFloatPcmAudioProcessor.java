package androidx.media3.exoplayer.audio;

import androidx.media3.common.audio.AudioProcessor;
import androidx.media3.common.util.Util;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes5.dex */
final class ToFloatPcmAudioProcessor extends androidx.media3.common.audio.BaseAudioProcessor {
    private static final int FLOAT_NAN_AS_INT = Float.floatToIntBits(Float.NaN);
    private static final double PCM_32_BIT_INT_TO_PCM_32_BIT_FLOAT_FACTOR = 4.656612875245797E-10d;

    @Override // androidx.media3.common.audio.BaseAudioProcessor
    public AudioProcessor.AudioFormat c(AudioProcessor.AudioFormat audioFormat) throws AudioProcessor.UnhandledAudioFormatException {
        int i10 = audioFormat.encoding;
        if (Util.B0(i10)) {
            return i10 != 4 ? new AudioProcessor.AudioFormat(audioFormat.sampleRate, audioFormat.channelCount, 4) : AudioProcessor.AudioFormat.NOT_SET;
        }
        throw new AudioProcessor.UnhandledAudioFormatException(audioFormat);
    }

    ToFloatPcmAudioProcessor() {
    }

    @Override // androidx.media3.common.audio.AudioProcessor
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
