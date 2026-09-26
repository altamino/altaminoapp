package androidx.media3.exoplayer.video.spherical;

import androidx.annotation.Nullable;
import androidx.media3.common.Format;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.decoder.DecoderInputBuffer;
import androidx.media3.exoplayer.BaseRenderer;
import androidx.media3.exoplayer.ExoPlaybackException;
import androidx.media3.exoplayer.h2;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes11.dex */
@UnstableApi
public final class CameraMotionRenderer extends BaseRenderer {
    private static final int SAMPLE_WINDOW_DURATION_US = 100000;
    private static final String TAG = "CameraMotionRenderer";
    private final DecoderInputBuffer buffer;
    private long lastTimestampUs;

    @Nullable
    private CameraMotionListener listener;
    private long offsetUs;
    private final ParsableByteArray scratch;

    public CameraMotionRenderer() {
        super(6);
        this.buffer = new DecoderInputBuffer(1);
        this.scratch = new ParsableByteArray();
    }

    @Override // androidx.media3.exoplayer.Renderer, androidx.media3.exoplayer.RendererCapabilities
    public String getName() {
        return TAG;
    }

    @Override // androidx.media3.exoplayer.Renderer
    public boolean isReady() {
        return true;
    }

    @Override // androidx.media3.exoplayer.BaseRenderer
    protected void z(Format[] formatArr, long j6, long j10) {
        this.offsetUs = j10;
    }

    private void E() {
        CameraMotionListener cameraMotionListener = this.listener;
        if (cameraMotionListener != null) {
            cameraMotionListener.b();
        }
    }

    @Override // androidx.media3.exoplayer.RendererCapabilities
    public int a(Format format) {
        return "application/x-camera-motion".equals(format.sampleMimeType) ? h2.c(4) : h2.c(0);
    }

    @Override // androidx.media3.exoplayer.BaseRenderer, androidx.media3.exoplayer.PlayerMessage.Target
    public void handleMessage(int i10, @Nullable Object obj) throws ExoPlaybackException {
        if (i10 == 8) {
            this.listener = (CameraMotionListener) obj;
        } else {
            super.handleMessage(i10, obj);
        }
    }

    @Override // androidx.media3.exoplayer.BaseRenderer
    protected void t(long j6, boolean z6) {
        this.lastTimestampUs = Long.MIN_VALUE;
        E();
    }

    @Nullable
    private float[] D(ByteBuffer byteBuffer) {
        if (byteBuffer.remaining() != 16) {
            return null;
        }
        this.scratch.S(byteBuffer.array(), byteBuffer.limit());
        this.scratch.U(byteBuffer.arrayOffset() + 4);
        float[] fArr = new float[3];
        for (int i10 = 0; i10 < 3; i10++) {
            fArr[i10] = Float.intBitsToFloat(this.scratch.u());
        }
        return fArr;
    }

    @Override // androidx.media3.exoplayer.Renderer
    public boolean isEnded() {
        return hasReadStreamToEnd();
    }

    @Override // androidx.media3.exoplayer.BaseRenderer
    protected void r() {
        E();
    }

    @Override // androidx.media3.exoplayer.Renderer
    public void render(long j6, long j10) {
        while (!hasReadStreamToEnd() && this.lastTimestampUs < 100000 + j6) {
            this.buffer.b();
            if (A(m(), this.buffer, 0) == -4 && !this.buffer.h()) {
                DecoderInputBuffer decoderInputBuffer = this.buffer;
                this.lastTimestampUs = decoderInputBuffer.timeUs;
                if (this.listener != null && !decoderInputBuffer.f()) {
                    this.buffer.p();
                    float[] fArrD = D((ByteBuffer) Util.j(this.buffer.data));
                    if (fArrD != null) {
                        ((CameraMotionListener) Util.j(this.listener)).a(this.lastTimestampUs - this.offsetUs, fArrD);
                    }
                }
            } else {
                return;
            }
        }
    }
}
