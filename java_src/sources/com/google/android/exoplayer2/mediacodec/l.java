package com.google.android.exoplayer2.mediacodec;

import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Bundle;
import android.os.Handler;
import android.view.Surface;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.google.android.exoplayer2.a2;
import java.io.IOException;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes6.dex */
public interface l {

    public static final class a {
        public final n codecInfo;

        @Nullable
        public final MediaCrypto crypto;
        public final int flags;
        public final a2 format;
        public final MediaFormat mediaFormat;

        @Nullable
        public final Surface surface;

        public static a a(n nVar, MediaFormat mediaFormat, a2 a2Var, @Nullable MediaCrypto mediaCrypto) {
            return new a(nVar, mediaFormat, a2Var, null, mediaCrypto, 0);
        }

        public static a b(n nVar, MediaFormat mediaFormat, a2 a2Var, @Nullable Surface surface, @Nullable MediaCrypto mediaCrypto) {
            return new a(nVar, mediaFormat, a2Var, surface, mediaCrypto, 0);
        }

        private a(n nVar, MediaFormat mediaFormat, a2 a2Var, @Nullable Surface surface, @Nullable MediaCrypto mediaCrypto, int i10) {
            this.codecInfo = nVar;
            this.mediaFormat = mediaFormat;
            this.format = a2Var;
            this.surface = surface;
            this.crypto = mediaCrypto;
            this.flags = i10;
        }
    }

    public interface b {
        public static final b DEFAULT = new j();

        l a(a aVar) throws IOException;
    }

    public interface c {
        void a(l lVar, long j6, long j10);
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

    void l(int i10, int i11, com.google.android.exoplayer2.decoder.c cVar, long j6, int i12);

    @RequiresApi
    void m(c cVar, Handler handler);

    void release();

    void setVideoScalingMode(int i10);
}
