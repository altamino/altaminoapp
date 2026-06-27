package com.meishe.cafconvertor.gifdecoder;

import android.support.v4.view.ViewCompat;
import android.util.Log;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;

/* loaded from: classes2.dex */
public class GifHeaderParser {
    public static final String TAG = "GifHeaderParser";
    private ByteBuffer c;
    private GifHeader d;
    private final byte[] b = new byte[256];
    private int e = 0;
    protected boolean a = true;

    private void a() {
        this.c = null;
        Arrays.fill(this.b, (byte) 0);
        this.d = new GifHeader();
        this.e = 0;
    }

    private int[] a(int i) {
        byte[] bArr = new byte[i * 3];
        int[] iArr = null;
        try {
            this.c.get(bArr);
            iArr = new int[256];
            int i2 = 0;
            int i3 = 0;
            while (i2 < i) {
                int i4 = i3 + 1;
                int i5 = bArr[i3] & 255;
                int i6 = i4 + 1;
                int i7 = bArr[i4] & 255;
                int i8 = i6 + 1;
                int i9 = i2 + 1;
                iArr[i2] = (i5 << 16) | ViewCompat.MEASURED_STATE_MASK | (i7 << 8) | (bArr[i6] & 255);
                i3 = i8;
                i2 = i9;
            }
        } catch (BufferUnderflowException e) {
            if (Log.isLoggable(TAG, 3)) {
                Log.d(TAG, "Format Error Reading Color Table", e);
            }
            this.d.b = 1;
        }
        return iArr;
    }

    private void b() {
        boolean z = false;
        while (!z && !m()) {
            int iK = k();
            if (iK == 33) {
                int iK2 = k();
                if (iK2 != 1) {
                    if (iK2 == 249) {
                        this.d.d = new GifFrame();
                        c();
                    } else if (iK2 != 254 && iK2 == 255) {
                        j();
                        String str = "";
                        for (int i = 0; i < 11; i++) {
                            str = str + ((char) this.b[i]);
                        }
                        if (str.equals("NETSCAPE2.0")) {
                            e();
                        }
                    }
                }
                i();
            } else if (iK == 44) {
                GifHeader gifHeader = this.d;
                if (gifHeader.d == null) {
                    gifHeader.d = new GifFrame();
                }
                d();
            } else if (iK != 59) {
                this.d.b = 1;
            } else {
                z = true;
            }
        }
    }

    private void c() {
        k();
        int iK = k();
        GifFrame gifFrame = this.d.d;
        gifFrame.g = (iK & 28) >> 2;
        if (gifFrame.g == 0) {
            gifFrame.g = 1;
        }
        this.d.d.f = (iK & 1) != 0;
        int iL = l();
        if (iL < 3) {
            iL = 10;
        }
        GifFrame gifFrame2 = this.d.d;
        gifFrame2.i = iL * 10;
        gifFrame2.h = k();
        k();
    }

    private void d() {
        this.d.d.a = l();
        this.d.d.b = l();
        this.d.d.c = l();
        this.d.d.d = l();
        int iK = k();
        boolean z = (iK & 128) != 0;
        int iPow = (int) Math.pow(2.0d, (iK & 7) + 1);
        this.d.d.e = (iK & 64) != 0;
        GifFrame gifFrame = this.d.d;
        if (z) {
            gifFrame.k = a(iPow);
        } else {
            gifFrame.k = null;
        }
        this.d.d.j = this.c.position();
        h();
        if (m()) {
            return;
        }
        GifHeader gifHeader = this.d;
        gifHeader.c++;
        gifHeader.e.add(gifHeader.d);
    }

    private void e() {
        do {
            j();
            byte[] bArr = this.b;
            if (bArr[0] == 1) {
                this.d.m = ((bArr[2] & 255) << 8) | (bArr[1] & 255);
            }
            if (this.e <= 0) {
                return;
            }
        } while (!m());
    }

    private void f() {
        String str = "";
        for (int i = 0; i < 6; i++) {
            str = str + ((char) k());
        }
        if (!str.startsWith("GIF")) {
            this.d.b = 1;
            this.a = false;
            return;
        }
        g();
        if (!this.d.h || m()) {
            return;
        }
        GifHeader gifHeader = this.d;
        gifHeader.a = a(gifHeader.i);
        GifHeader gifHeader2 = this.d;
        gifHeader2.l = gifHeader2.a[gifHeader2.j];
    }

    private void g() {
        this.d.f = l();
        this.d.g = l();
        int iK = k();
        this.d.h = (iK & 128) != 0;
        GifHeader gifHeader = this.d;
        gifHeader.i = 2 << (iK & 7);
        gifHeader.j = k();
        this.d.k = k();
    }

    private void h() {
        k();
        i();
    }

    private void i() {
        int iK;
        do {
            iK = k();
            ByteBuffer byteBuffer = this.c;
            byteBuffer.position(byteBuffer.position() + iK);
        } while (iK > 0);
    }

    private int j() {
        this.e = k();
        int i = 0;
        if (this.e > 0) {
            int i2 = 0;
            while (i < this.e) {
                try {
                    i2 = this.e - i;
                    this.c.get(this.b, i, i2);
                    i += i2;
                } catch (Exception e) {
                    if (Log.isLoggable(TAG, 3)) {
                        Log.d(TAG, "Error Reading Block n: " + i + " count: " + i2 + " blockSize: " + this.e, e);
                    }
                    this.d.b = 1;
                }
            }
        }
        return i;
    }

    private int k() {
        try {
            return this.c.get() & 255;
        } catch (Exception unused) {
            this.d.b = 1;
            return 0;
        }
    }

    private int l() {
        return this.c.getShort();
    }

    private boolean m() {
        return this.d.b != 0;
    }

    public GifHeader parseHeader() {
        if (this.c == null) {
            throw new IllegalStateException("You must call setData() before parseHeader()");
        }
        if (m()) {
            return this.d;
        }
        f();
        if (!m()) {
            b();
            GifHeader gifHeader = this.d;
            if (gifHeader.c < 0) {
                gifHeader.b = 1;
            }
        }
        return this.d;
    }

    public GifHeaderParser setData(byte[] bArr) {
        a();
        if (bArr != null) {
            this.c = ByteBuffer.wrap(bArr);
            this.c.rewind();
            this.c.order(ByteOrder.LITTLE_ENDIAN);
        } else {
            this.c = null;
            this.d.b = 2;
        }
        return this;
    }
}
