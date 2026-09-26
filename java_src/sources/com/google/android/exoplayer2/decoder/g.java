package com.google.android.exoplayer2.decoder;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.a2;
import com.google.android.exoplayer2.x1;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes5.dex */
public class g extends com.google.android.exoplayer2.decoder.a {
    public static final int BUFFER_REPLACEMENT_MODE_DIRECT = 2;
    public static final int BUFFER_REPLACEMENT_MODE_DISABLED = 0;
    public static final int BUFFER_REPLACEMENT_MODE_NORMAL = 1;
    private final int bufferReplacementMode;
    public final c cryptoInfo;

    @Nullable
    public ByteBuffer data;

    @Nullable
    public a2 format;
    private final int paddingSize;

    @Nullable
    public ByteBuffer supplementalData;
    public long timeUs;
    public boolean waitingForKeys;

    public static final class a extends IllegalStateException {
        public final int currentCapacity;
        public final int requiredCapacity;

        public a(int i10, int i11) {
            super("Buffer too small (" + i10 + " < " + i11 + ")");
            this.currentCapacity = i10;
            this.requiredCapacity = i11;
        }
    }

    public g(int i10) {
        this(i10, 0);
    }

    static {
        x1.a("goog.exo.decoder");
    }

    public g(int i10, int i11) {
        this.cryptoInfo = new c();
        this.bufferReplacementMode = i10;
        this.paddingSize = i11;
    }

    private ByteBuffer l(int i10) {
        int i11 = this.bufferReplacementMode;
        if (i11 == 1) {
            return ByteBuffer.allocate(i10);
        }
        if (i11 == 2) {
            return ByteBuffer.allocateDirect(i10);
        }
        ByteBuffer byteBuffer = this.data;
        throw new a(byteBuffer == null ? 0 : byteBuffer.capacity(), i10);
    }

    public static g q() {
        return new g(0);
    }

    public void n(int i10) {
        int i11 = i10 + this.paddingSize;
        ByteBuffer byteBuffer = this.data;
        if (byteBuffer == null) {
            this.data = l(i11);
            return;
        }
        int iCapacity = byteBuffer.capacity();
        int iPosition = byteBuffer.position();
        int i12 = i11 + iPosition;
        if (iCapacity >= i12) {
            this.data = byteBuffer;
            return;
        }
        ByteBuffer byteBufferL = l(i12);
        byteBufferL.order(byteBuffer.order());
        if (iPosition > 0) {
            byteBuffer.flip();
            byteBufferL.put(byteBuffer);
        }
        this.data = byteBufferL;
    }

    public final void o() {
        ByteBuffer byteBuffer = this.data;
        if (byteBuffer != null) {
            byteBuffer.flip();
        }
        ByteBuffer byteBuffer2 = this.supplementalData;
        if (byteBuffer2 != null) {
            byteBuffer2.flip();
        }
    }

    public final boolean p() {
        return d(1073741824);
    }

    public void r(int i10) {
        ByteBuffer byteBuffer = this.supplementalData;
        if (byteBuffer == null || byteBuffer.capacity() < i10) {
            this.supplementalData = ByteBuffer.allocate(i10);
        } else {
            this.supplementalData.clear();
        }
    }

    @Override // com.google.android.exoplayer2.decoder.a
    public void b() {
        super.b();
        ByteBuffer byteBuffer = this.data;
        if (byteBuffer != null) {
            byteBuffer.clear();
        }
        ByteBuffer byteBuffer2 = this.supplementalData;
        if (byteBuffer2 != null) {
            byteBuffer2.clear();
        }
        this.waitingForKeys = false;
    }
}
