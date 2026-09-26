package androidx.media3.common.audio;

import androidx.annotation.Nullable;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import com.google.common.base.k;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import kotlinx.serialization.json.internal.b;

/* JADX INFO: loaded from: classes5.dex */
@UnstableApi
public interface AudioProcessor {
    public static final ByteBuffer EMPTY_BUFFER = ByteBuffer.allocateDirect(0).order(ByteOrder.nativeOrder());

    public static final class AudioFormat {
        public static final AudioFormat NOT_SET = new AudioFormat(-1, -1, -1);
        public final int bytesPerFrame;
        public final int channelCount;
        public final int encoding;
        public final int sampleRate;

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof AudioFormat)) {
                return false;
            }
            AudioFormat audioFormat = (AudioFormat) obj;
            return this.sampleRate == audioFormat.sampleRate && this.channelCount == audioFormat.channelCount && this.encoding == audioFormat.encoding;
        }

        public int hashCode() {
            return k.b(Integer.valueOf(this.sampleRate), Integer.valueOf(this.channelCount), Integer.valueOf(this.encoding));
        }

        public String toString() {
            return "AudioFormat[sampleRate=" + this.sampleRate + ", channelCount=" + this.channelCount + ", encoding=" + this.encoding + b.END_LIST;
        }

        public AudioFormat(int i10, int i11, int i12) {
            int iH0;
            this.sampleRate = i10;
            this.channelCount = i11;
            this.encoding = i12;
            if (Util.C0(i12)) {
                iH0 = Util.h0(i12, i11);
            } else {
                iH0 = -1;
            }
            this.bytesPerFrame = iH0;
        }
    }

    public static final class UnhandledAudioFormatException extends Exception {
        public UnhandledAudioFormatException(AudioFormat audioFormat) {
            this("Unhandled input format:", audioFormat);
        }

        public UnhandledAudioFormatException(String str, AudioFormat audioFormat) {
            super(str + " " + audioFormat);
        }
    }

    AudioFormat a(AudioFormat audioFormat) throws UnhandledAudioFormatException;

    void flush();

    ByteBuffer getOutput();

    boolean isActive();

    boolean isEnded();

    void queueEndOfStream();

    void queueInput(ByteBuffer byteBuffer);

    void reset();
}
