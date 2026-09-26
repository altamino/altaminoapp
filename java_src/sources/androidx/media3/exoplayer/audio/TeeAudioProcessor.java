package androidx.media3.exoplayer.audio;

import androidx.annotation.Nullable;
import androidx.media3.common.audio.AudioProcessor;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.extractor.WavUtil;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* JADX INFO: loaded from: classes8.dex */
@UnstableApi
public final class TeeAudioProcessor extends androidx.media3.common.audio.BaseAudioProcessor {
    private final AudioBufferSink audioBufferSink;

    public interface AudioBufferSink {
        void a(ByteBuffer byteBuffer);

        void b(int i10, int i11, int i12);
    }

    public static final class WavFileAudioBufferSink implements AudioBufferSink {
        private static final int FILE_SIZE_MINUS_44_OFFSET = 40;
        private static final int FILE_SIZE_MINUS_8_OFFSET = 4;
        private static final int HEADER_LENGTH = 44;
        private static final String TAG = "WaveFileAudioBufferSink";
        private int bytesWritten;
        private int channelCount;
        private int counter;
        private int encoding;
        private final String outputFileNamePrefix;

        @Nullable
        private RandomAccessFile randomAccessFile;
        private int sampleRateHz;
        private final byte[] scratchBuffer;
        private final ByteBuffer scratchByteBuffer;

        private String c() {
            int i10 = this.counter;
            this.counter = i10 + 1;
            return Util.D("%s-%04d.wav", this.outputFileNamePrefix, Integer.valueOf(i10));
        }

        private void d() throws IOException {
            if (this.randomAccessFile != null) {
                return;
            }
            RandomAccessFile randomAccessFile = new RandomAccessFile(c(), "rw");
            g(randomAccessFile);
            this.randomAccessFile = randomAccessFile;
            this.bytesWritten = 44;
        }

        private void e() throws IOException {
            RandomAccessFile randomAccessFile = this.randomAccessFile;
            if (randomAccessFile == null) {
                return;
            }
            try {
                this.scratchByteBuffer.clear();
                this.scratchByteBuffer.putInt(this.bytesWritten - 8);
                randomAccessFile.seek(4L);
                randomAccessFile.write(this.scratchBuffer, 0, 4);
                this.scratchByteBuffer.clear();
                this.scratchByteBuffer.putInt(this.bytesWritten - 44);
                randomAccessFile.seek(40L);
                randomAccessFile.write(this.scratchBuffer, 0, 4);
            } catch (IOException e) {
                Log.j(TAG, "Error updating file size", e);
            }
            try {
                randomAccessFile.close();
            } finally {
                this.randomAccessFile = null;
            }
        }

        private void f(ByteBuffer byteBuffer) throws IOException {
            RandomAccessFile randomAccessFile = (RandomAccessFile) Assertions.e(this.randomAccessFile);
            while (byteBuffer.hasRemaining()) {
                int iMin = Math.min(byteBuffer.remaining(), this.scratchBuffer.length);
                byteBuffer.get(this.scratchBuffer, 0, iMin);
                randomAccessFile.write(this.scratchBuffer, 0, iMin);
                this.bytesWritten += iMin;
            }
        }

        public WavFileAudioBufferSink(String str) {
            this.outputFileNamePrefix = str;
            byte[] bArr = new byte[1024];
            this.scratchBuffer = bArr;
            this.scratchByteBuffer = ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN);
        }

        private void g(RandomAccessFile randomAccessFile) throws IOException {
            randomAccessFile.writeInt(1380533830);
            randomAccessFile.writeInt(-1);
            randomAccessFile.writeInt(1463899717);
            randomAccessFile.writeInt(1718449184);
            this.scratchByteBuffer.clear();
            this.scratchByteBuffer.putInt(16);
            this.scratchByteBuffer.putShort((short) WavUtil.b(this.encoding));
            this.scratchByteBuffer.putShort((short) this.channelCount);
            this.scratchByteBuffer.putInt(this.sampleRateHz);
            int iH0 = Util.h0(this.encoding, this.channelCount);
            this.scratchByteBuffer.putInt(this.sampleRateHz * iH0);
            this.scratchByteBuffer.putShort((short) iH0);
            this.scratchByteBuffer.putShort((short) ((iH0 * 8) / this.channelCount));
            randomAccessFile.write(this.scratchBuffer, 0, this.scratchByteBuffer.position());
            randomAccessFile.writeInt(1684108385);
            randomAccessFile.writeInt(-1);
        }

        @Override // androidx.media3.exoplayer.audio.TeeAudioProcessor.AudioBufferSink
        public void a(ByteBuffer byteBuffer) {
            try {
                d();
                f(byteBuffer);
            } catch (IOException e) {
                Log.d(TAG, "Error writing data", e);
            }
        }

        @Override // androidx.media3.exoplayer.audio.TeeAudioProcessor.AudioBufferSink
        public void b(int i10, int i11, int i12) {
            try {
                e();
            } catch (IOException e) {
                Log.d(TAG, "Error resetting", e);
            }
            this.sampleRateHz = i10;
            this.channelCount = i11;
            this.encoding = i12;
        }
    }

    @Override // androidx.media3.common.audio.BaseAudioProcessor
    public AudioProcessor.AudioFormat c(AudioProcessor.AudioFormat audioFormat) {
        return audioFormat;
    }

    public TeeAudioProcessor(AudioBufferSink audioBufferSink) {
        this.audioBufferSink = (AudioBufferSink) Assertions.e(audioBufferSink);
    }

    private void h() {
        if (isActive()) {
            AudioBufferSink audioBufferSink = this.audioBufferSink;
            AudioProcessor.AudioFormat audioFormat = this.inputAudioFormat;
            audioBufferSink.b(audioFormat.sampleRate, audioFormat.channelCount, audioFormat.encoding);
        }
    }

    @Override // androidx.media3.common.audio.BaseAudioProcessor
    protected void d() {
        h();
    }

    @Override // androidx.media3.common.audio.BaseAudioProcessor
    protected void e() {
        h();
    }

    @Override // androidx.media3.common.audio.BaseAudioProcessor
    protected void f() {
        h();
    }

    @Override // androidx.media3.common.audio.AudioProcessor
    public void queueInput(ByteBuffer byteBuffer) {
        int iRemaining = byteBuffer.remaining();
        if (iRemaining == 0) {
            return;
        }
        this.audioBufferSink.a(byteBuffer.asReadOnlyBuffer());
        g(iRemaining).put(byteBuffer).flip();
    }
}
