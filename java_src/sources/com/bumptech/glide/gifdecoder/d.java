package com.bumptech.glide.gifdecoder;

import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;

/* JADX INFO: loaded from: classes8.dex */
public class d {
    static final int DEFAULT_FRAME_DELAY = 10;
    private static final int DESCRIPTOR_MASK_INTERLACE_FLAG = 64;
    private static final int DESCRIPTOR_MASK_LCT_FLAG = 128;
    private static final int DESCRIPTOR_MASK_LCT_SIZE = 7;
    private static final int EXTENSION_INTRODUCER = 33;
    private static final int GCE_DISPOSAL_METHOD_SHIFT = 2;
    private static final int GCE_MASK_DISPOSAL_METHOD = 28;
    private static final int GCE_MASK_TRANSPARENT_COLOR_FLAG = 1;
    private static final int IMAGE_SEPARATOR = 44;
    private static final int LABEL_APPLICATION_EXTENSION = 255;
    private static final int LABEL_COMMENT_EXTENSION = 254;
    private static final int LABEL_GRAPHIC_CONTROL_EXTENSION = 249;
    private static final int LABEL_PLAIN_TEXT_EXTENSION = 1;
    private static final int LSD_MASK_GCT_FLAG = 128;
    private static final int LSD_MASK_GCT_SIZE = 7;
    private static final int MASK_INT_LOWEST_BYTE = 255;
    private static final int MAX_BLOCK_SIZE = 256;
    static final int MIN_FRAME_DELAY = 2;
    private static final String TAG = "GifHeaderParser";
    private static final int TRAILER = 59;
    private final byte[] block = new byte[256];
    private int blockSize = 0;
    private c header;
    private ByteBuffer rawData;

    private void i(int i10) {
        boolean z6 = false;
        while (!z6 && !b() && this.header.frameCount <= i10) {
            int iD = d();
            if (iD == 33) {
                int iD2 = d();
                if (iD2 == 1) {
                    q();
                } else if (iD2 == LABEL_GRAPHIC_CONTROL_EXTENSION) {
                    this.header.currentFrame = new b();
                    j();
                } else if (iD2 == 254) {
                    q();
                } else if (iD2 != 255) {
                    q();
                } else {
                    f();
                    StringBuilder sb = new StringBuilder();
                    for (int i11 = 0; i11 < 11; i11++) {
                        sb.append((char) this.block[i11]);
                    }
                    if (sb.toString().equals("NETSCAPE2.0")) {
                        m();
                    } else {
                        q();
                    }
                }
            } else if (iD == 44) {
                c cVar = this.header;
                if (cVar.currentFrame == null) {
                    cVar.currentFrame = new b();
                }
                e();
            } else if (iD != 59) {
                this.header.status = 1;
            } else {
                z6 = true;
            }
        }
    }

    private void o() {
        this.rawData = null;
        Arrays.fill(this.block, (byte) 0);
        this.header = new c();
        this.blockSize = 0;
    }

    public void a() {
        this.rawData = null;
        this.header = null;
    }

    private boolean b() {
        return this.header.status != 0;
    }

    private int d() {
        try {
            return this.rawData.get() & 255;
        } catch (Exception unused) {
            this.header.status = 1;
            return 0;
        }
    }

    private void e() {
        this.header.currentFrame.ix = n();
        this.header.currentFrame.iy = n();
        this.header.currentFrame.iw = n();
        this.header.currentFrame.ih = n();
        int iD = d();
        boolean z6 = (iD & 128) != 0;
        int iPow = (int) Math.pow(2.0d, (iD & 7) + 1);
        b bVar = this.header.currentFrame;
        bVar.interlace = (iD & 64) != 0;
        if (z6) {
            bVar.lct = g(iPow);
        } else {
            bVar.lct = null;
        }
        this.header.currentFrame.bufferFrameStart = this.rawData.position();
        r();
        if (b()) {
            return;
        }
        c cVar = this.header;
        cVar.frameCount++;
        cVar.frames.add(cVar.currentFrame);
    }

    @Nullable
    private int[] g(int i10) {
        byte[] bArr = new byte[i10 * 3];
        int[] iArr = null;
        try {
            this.rawData.get(bArr);
            iArr = new int[256];
            int i11 = 0;
            int i12 = 0;
            while (i11 < i10) {
                int i13 = bArr[i12] & 255;
                int i14 = i12 + 2;
                int i15 = bArr[i12 + 1] & 255;
                i12 += 3;
                int i16 = i11 + 1;
                iArr[i11] = (i15 << 8) | (i13 << 16) | ViewCompat.MEASURED_STATE_MASK | (bArr[i14] & 255);
                i11 = i16;
            }
        } catch (BufferUnderflowException e) {
            if (Log.isLoggable(TAG, 3)) {
                Log.d(TAG, "Format Error Reading Color Table", e);
            }
            this.header.status = 1;
        }
        return iArr;
    }

    private void k() {
        StringBuilder sb = new StringBuilder();
        for (int i10 = 0; i10 < 6; i10++) {
            sb.append((char) d());
        }
        if (!sb.toString().startsWith("GIF")) {
            this.header.status = 1;
            return;
        }
        l();
        if (!this.header.gctFlag || b()) {
            return;
        }
        c cVar = this.header;
        cVar.gct = g(cVar.gctSize);
        c cVar2 = this.header;
        cVar2.bgColor = cVar2.gct[cVar2.bgIndex];
    }

    private void l() {
        this.header.width = n();
        this.header.height = n();
        int iD = d();
        c cVar = this.header;
        cVar.gctFlag = (iD & 128) != 0;
        cVar.gctSize = (int) Math.pow(2.0d, (iD & 7) + 1);
        this.header.bgIndex = d();
        this.header.pixelAspect = d();
    }

    private int n() {
        return this.rawData.getShort();
    }

    @NonNull
    public c c() {
        if (this.rawData == null) {
            throw new IllegalStateException("You must call setData() before parseHeader()");
        }
        if (b()) {
            return this.header;
        }
        k();
        if (!b()) {
            h();
            c cVar = this.header;
            if (cVar.frameCount < 0) {
                cVar.status = 1;
            }
        }
        return this.header;
    }

    private void f() {
        int iD = d();
        this.blockSize = iD;
        if (iD > 0) {
            int i10 = 0;
            int i11 = 0;
            while (true) {
                try {
                    int i12 = this.blockSize;
                    if (i10 < i12) {
                        i11 = i12 - i10;
                        this.rawData.get(this.block, i10, i11);
                        i10 += i11;
                    } else {
                        return;
                    }
                } catch (Exception e) {
                    if (Log.isLoggable(TAG, 3)) {
                        Log.d(TAG, "Error Reading Block n: " + i10 + " count: " + i11 + " blockSize: " + this.blockSize, e);
                    }
                    this.header.status = 1;
                    return;
                }
            }
        }
    }

    private void h() {
        i(Integer.MAX_VALUE);
    }

    private void j() {
        d();
        int iD = d();
        b bVar = this.header.currentFrame;
        int i10 = (iD & 28) >> 2;
        bVar.dispose = i10;
        boolean z6 = true;
        if (i10 == 0) {
            bVar.dispose = 1;
        }
        if ((iD & 1) == 0) {
            z6 = false;
        }
        bVar.transparency = z6;
        int iN = n();
        if (iN < 2) {
            iN = 10;
        }
        b bVar2 = this.header.currentFrame;
        bVar2.delay = iN * 10;
        bVar2.transIndex = d();
        d();
    }

    private void m() {
        do {
            f();
            byte[] bArr = this.block;
            if (bArr[0] == 1) {
                this.header.loopCount = ((bArr[2] & 255) << 8) | (bArr[1] & 255);
            }
            if (this.blockSize <= 0) {
                return;
            }
        } while (!b());
    }

    private void q() {
        int iD;
        do {
            iD = d();
            this.rawData.position(Math.min(this.rawData.position() + iD, this.rawData.limit()));
        } while (iD > 0);
    }

    private void r() {
        d();
        q();
    }

    public d p(@NonNull ByteBuffer byteBuffer) {
        o();
        ByteBuffer byteBufferAsReadOnlyBuffer = byteBuffer.asReadOnlyBuffer();
        this.rawData = byteBufferAsReadOnlyBuffer;
        byteBufferAsReadOnlyBuffer.position(0);
        this.rawData.order(ByteOrder.LITTLE_ENDIAN);
        return this;
    }
}
