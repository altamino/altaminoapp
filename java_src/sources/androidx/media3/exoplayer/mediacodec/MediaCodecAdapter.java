package androidx.media3.exoplayer.mediacodec;

import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Bundle;
import android.os.Handler;
import android.view.Surface;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.media3.common.Format;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.decoder.CryptoInfo;
import java.io.IOException;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes6.dex */
@UnstableApi
public interface MediaCodecAdapter {

    public static final class Configuration {
        public final MediaCodecInfo codecInfo;

        @Nullable
        public final MediaCrypto crypto;
        public final int flags;
        public final Format format;
        public final MediaFormat mediaFormat;

        @Nullable
        public final Surface surface;

        public static Configuration a(MediaCodecInfo mediaCodecInfo, MediaFormat mediaFormat, Format format, @Nullable MediaCrypto mediaCrypto) {
            return new Configuration(mediaCodecInfo, mediaFormat, format, null, mediaCrypto, 0);
        }

        public static Configuration b(MediaCodecInfo mediaCodecInfo, MediaFormat mediaFormat, Format format, @Nullable Surface surface, @Nullable MediaCrypto mediaCrypto) {
            return new Configuration(mediaCodecInfo, mediaFormat, format, surface, mediaCrypto, 0);
        }

        private Configuration(MediaCodecInfo mediaCodecInfo, MediaFormat mediaFormat, Format format, @Nullable Surface surface, @Nullable MediaCrypto mediaCrypto, int i10) {
            this.codecInfo = mediaCodecInfo;
            this.mediaFormat = mediaFormat;
            this.format = format;
            this.surface = surface;
            this.crypto = mediaCrypto;
            this.flags = i10;
        }
    }

    public interface Factory {
        public static final Factory DEFAULT = new DefaultMediaCodecAdapterFactory();

        MediaCodecAdapter a(Configuration configuration) throws IOException;
    }

    public interface OnFrameRenderedListener {
        void a(MediaCodecAdapter mediaCodecAdapter, long j6, long j10);
    }

    boolean a();

    @RequiresApi
    void b(Bundle bundle);

    @RequiresApi
    void c(int i10, long j6);

    int d(MediaCodec.BufferInfo bufferInfo);

    void e(int i10, boolean z6);

    MediaFormat f();

    void flush();

    @Nullable
    ByteBuffer g(int i10);

    @RequiresApi
    void h(Surface surface);

    void i(int i10, int i11, int i12, long j6, int i13);

    int j();

    @Nullable
    ByteBuffer k(int i10);

    @RequiresApi
    void l(OnFrameRenderedListener onFrameRenderedListener, Handler handler);

    void m(int i10, int i11, CryptoInfo cryptoInfo, long j6, int i12);

    void release();

    void setVideoScalingMode(int i10);
}
