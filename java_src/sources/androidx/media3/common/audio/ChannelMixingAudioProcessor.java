package androidx.media3.common.audio;

import android.util.SparseArray;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes9.dex */
@UnstableApi
public final class ChannelMixingAudioProcessor extends BaseAudioProcessor {
    private final SparseArray<ChannelMixingMatrix> matrixByInputChannelCount = new SparseArray<>();

    @Override // androidx.media3.common.audio.BaseAudioProcessor
    protected AudioProcessor.AudioFormat c(AudioProcessor.AudioFormat audioFormat) throws AudioProcessor.UnhandledAudioFormatException {
        if (audioFormat.encoding != 2) {
            throw new AudioProcessor.UnhandledAudioFormatException(audioFormat);
        }
        ChannelMixingMatrix channelMixingMatrix = this.matrixByInputChannelCount.get(audioFormat.channelCount);
        if (channelMixingMatrix != null) {
            return channelMixingMatrix.e() ? AudioProcessor.AudioFormat.NOT_SET : new AudioProcessor.AudioFormat(audioFormat.sampleRate, channelMixingMatrix.d(), 2);
        }
        throw new AudioProcessor.UnhandledAudioFormatException("No mixing matrix for input channel count", audioFormat);
    }

    @Override // androidx.media3.common.audio.AudioProcessor
    public void queueInput(ByteBuffer byteBuffer) {
        ChannelMixingMatrix channelMixingMatrix = (ChannelMixingMatrix) Assertions.i(this.matrixByInputChannelCount.get(this.inputAudioFormat.channelCount));
        ByteBuffer byteBufferG = g((byteBuffer.remaining() / this.inputAudioFormat.bytesPerFrame) * this.outputAudioFormat.bytesPerFrame);
        int iB = channelMixingMatrix.b();
        int iD = channelMixingMatrix.d();
        float[] fArr = new float[iD];
        while (byteBuffer.hasRemaining()) {
            for (int i10 = 0; i10 < iB; i10++) {
                short s = byteBuffer.getShort();
                for (int i11 = 0; i11 < iD; i11++) {
                    fArr[i11] = fArr[i11] + (channelMixingMatrix.c(i10, i11) * s);
                }
            }
            for (int i12 = 0; i12 < iD; i12++) {
                short sP = (short) Util.p(fArr[i12], -32768.0f, 32767.0f);
                byteBufferG.put((byte) (sP & 255));
                byteBufferG.put((byte) ((sP >> 8) & 255));
                fArr[i12] = 0.0f;
            }
        }
        byteBufferG.flip();
    }
}
