package com.google.android.exoplayer2.video.spherical;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.a2;
import com.google.android.exoplayer2.n3;
import com.google.android.exoplayer2.q;
import com.google.android.exoplayer2.util.c0;
import com.google.android.exoplayer2.util.o0;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes10.dex */
public final class b extends com.google.android.exoplayer2.f {
    private static final int SAMPLE_WINDOW_DURATION_US = 100000;
    private static final String TAG = "CameraMotionRenderer";
    private final com.google.android.exoplayer2.decoder.g buffer;
    private long lastTimestampUs;

    @Nullable
    private a listener;
    private long offsetUs;
    private final c0 scratch;

    public b() {
        super(6);
        this.buffer = new com.google.android.exoplayer2.decoder.g(1);
        this.scratch = new c0();
    }

    @Override // com.google.android.exoplayer2.m3, com.google.android.exoplayer2.o3
    public String getName() {
        return TAG;
    }

    @Override // com.google.android.exoplayer2.m3
    public boolean isReady() {
        return true;
    }

    @Override // com.google.android.exoplayer2.f
    protected void v(a2[] a2VarArr, long j6, long j10) {
        this.offsetUs = j10;
    }

    private void A() {
        a aVar = this.listener;
        if (aVar != null) {
            aVar.b();
        }
    }

    @Override // com.google.android.exoplayer2.o3
    public int a(a2 a2Var) {
        return "application/x-camera-motion".equals(a2Var.sampleMimeType) ? n3.a(4) : n3.a(0);
    }

    @Override // com.google.android.exoplayer2.f, com.google.android.exoplayer2.h3.b
    public void handleMessage(int i10, @Nullable Object obj) throws q {
        if (i10 == 8) {
            this.listener = (a) obj;
        } else {
            super.handleMessage(i10, obj);
        }
    }

    @Override // com.google.android.exoplayer2.f
    protected void r(long j6, boolean z6) {
        this.lastTimestampUs = Long.MIN_VALUE;
        A();
    }

    @Nullable
    private float[] z(ByteBuffer byteBuffer) {
        if (byteBuffer.remaining() != 16) {
            return null;
        }
        this.scratch.N(byteBuffer.array(), byteBuffer.limit());
        this.scratch.P(byteBuffer.arrayOffset() + 4);
        float[] fArr = new float[3];
        for (int i10 = 0; i10 < 3; i10++) {
            fArr[i10] = Float.intBitsToFloat(this.scratch.q());
        }
        return fArr;
    }

    @Override // com.google.android.exoplayer2.m3
    public boolean isEnded() {
        return hasReadStreamToEnd();
    }

    @Override // com.google.android.exoplayer2.f
    protected void p() {
        A();
    }

    @Override // com.google.android.exoplayer2.m3
    public void render(long j6, long j10) {
        while (!hasReadStreamToEnd() && this.lastTimestampUs < 100000 + j6) {
            this.buffer.b();
            if (w(k(), this.buffer, 0) == -4 && !this.buffer.h()) {
                com.google.android.exoplayer2.decoder.g gVar = this.buffer;
                this.lastTimestampUs = gVar.timeUs;
                if (this.listener != null && !gVar.f()) {
                    this.buffer.o();
                    float[] fArrZ = z((ByteBuffer) o0.j(this.buffer.data));
                    if (fArrZ != null) {
                        ((a) o0.j(this.listener)).a(this.lastTimestampUs - this.offsetUs, fArrZ);
                    }
                }
            } else {
                return;
            }
        }
    }
}
