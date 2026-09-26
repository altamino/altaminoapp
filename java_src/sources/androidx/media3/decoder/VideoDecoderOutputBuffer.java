package androidx.media3.decoder;

import androidx.annotation.Nullable;
import androidx.media3.common.Format;
import androidx.media3.common.util.UnstableApi;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes6.dex */
@UnstableApi
public class VideoDecoderOutputBuffer extends DecoderOutputBuffer {
    public static final int COLORSPACE_BT2020 = 3;
    public static final int COLORSPACE_BT601 = 1;
    public static final int COLORSPACE_BT709 = 2;
    public static final int COLORSPACE_UNKNOWN = 0;
    public int colorspace;

    @Nullable
    public ByteBuffer data;
    public int decoderPrivate;

    @Nullable
    public Format format;
    public int height;
    public int mode;
    private final DecoderOutputBuffer.Owner<VideoDecoderOutputBuffer> owner;

    @Nullable
    public ByteBuffer supplementalData;
    public int width;

    @Nullable
    public ByteBuffer[] yuvPlanes;

    @Nullable
    public int[] yuvStrides;

    @Override // androidx.media3.decoder.DecoderOutputBuffer
    public void n() {
        this.owner.a(this);
    }

    public VideoDecoderOutputBuffer(DecoderOutputBuffer.Owner<VideoDecoderOutputBuffer> owner) {
        this.owner = owner;
    }
}
