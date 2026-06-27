package com.meishe.cafconvertor.gifdecoder;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.os.Build;
import android.util.Log;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;
import java.util.Iterator;

/* loaded from: classes2.dex */
public class GifDecoder {
    public static final int STATUS_FORMAT_ERROR = 1;
    public static final int STATUS_OK = 0;
    public static final int STATUS_OPEN_ERROR = 2;
    public static final int STATUS_PARTIAL_DECODE = 3;
    private static final String a = "GifDecoder";
    private static final Bitmap.Config b = Bitmap.Config.ARGB_8888;
    private int[] c;
    private ByteBuffer d;
    private GifHeaderParser f;
    private short[] g;
    private byte[] h;
    private byte[] i;
    private byte[] j;
    private int[] k;
    private int l;
    private byte[] m;
    private BitmapProvider o;
    private Bitmap p;
    private boolean q;
    private int r;
    private final byte[] e = new byte[256];
    private GifHeader n = new GifHeader();

    public interface BitmapProvider {
        Bitmap obtain(int i, int i2, Bitmap.Config config);
    }

    public GifDecoder(BitmapProvider bitmapProvider) {
        this.o = bitmapProvider;
    }

    private Bitmap a(GifFrame gifFrame, GifFrame gifFrame2) {
        int i;
        int i2;
        int i3;
        Bitmap bitmap;
        GifHeader gifHeader = this.n;
        int i4 = gifHeader.f;
        int i5 = gifHeader.g;
        int[] iArr = this.k;
        if (gifFrame2 == null || (i3 = gifFrame2.g) <= 0) {
            i = 2;
        } else {
            if (i3 == 2) {
                Arrays.fill(iArr, !gifFrame.f ? gifHeader.l : 0);
            } else if (i3 == 3 && (bitmap = this.p) != null) {
                i = 2;
                bitmap.getPixels(iArr, 0, i4, 0, 0, i4, i5);
            }
            i = 2;
        }
        a(gifFrame);
        int i6 = 0;
        int i7 = 0;
        int i8 = 1;
        int i9 = 8;
        while (true) {
            int i10 = gifFrame.d;
            if (i6 >= i10) {
                break;
            }
            if (gifFrame.e) {
                if (i7 >= i10) {
                    i8++;
                    if (i8 == i) {
                        i7 = 4;
                    } else if (i8 == 3) {
                        i7 = 2;
                        i9 = 4;
                    } else if (i8 == 4) {
                        i7 = 1;
                        i9 = 2;
                    }
                }
                i2 = i7 + i9;
            } else {
                i2 = i7;
                i7 = i6;
            }
            int i11 = i7 + gifFrame.b;
            GifHeader gifHeader2 = this.n;
            if (i11 < gifHeader2.g) {
                int i12 = gifHeader2.f;
                int i13 = i11 * i12;
                int i14 = gifFrame.a + i13;
                int i15 = gifFrame.c + i14;
                if (i13 + i12 < i15) {
                    i15 = i13 + i12;
                }
                int i16 = gifFrame.c * i6;
                while (i14 < i15) {
                    int i17 = i16 + 1;
                    int i18 = this.c[this.j[i16] & 255];
                    if (i18 != 0) {
                        iArr[i14] = i18;
                    }
                    i14++;
                    i16 = i17;
                }
            }
            i6++;
            i7 = i2;
            i = 2;
        }
        if ((this.q && gifFrame.g == 0) || gifFrame.g == 1) {
            if (this.p == null) {
                this.p = d();
            }
            this.p.setPixels(iArr, 0, i4, 0, 0, i4, i5);
        }
        Bitmap bitmapD = d();
        bitmapD.setPixels(iArr, 0, i4, 0, 0, i4, i5);
        return bitmapD;
    }

    @TargetApi(12)
    private static void a(Bitmap bitmap) {
        if (Build.VERSION.SDK_INT >= 12) {
            bitmap.setHasAlpha(true);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:58:0x012f A[PHI: r11
  0x012f: PHI (r11v8 int) = (r11v3 int), (r11v10 int) binds: [B:52:0x0117, B:54:0x0124] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Type inference failed for: r1v19 */
    /* JADX WARN: Type inference failed for: r1v20 */
    /* JADX WARN: Type inference failed for: r1v21 */
    /* JADX WARN: Type inference failed for: r1v25, types: [short] */
    /* JADX WARN: Type inference failed for: r1v28 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void a(com.meishe.cafconvertor.gifdecoder.GifFrame r28) {
        /*
            Method dump skipped, instructions count: 380
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.meishe.cafconvertor.gifdecoder.GifDecoder.a(com.meishe.cafconvertor.gifdecoder.GifFrame):void");
    }

    private int b() {
        try {
            return this.d.get() & 255;
        } catch (Exception unused) {
            this.r = 1;
            return 0;
        }
    }

    private int c() {
        int iB = b();
        int i = 0;
        if (iB > 0) {
            while (i < iB) {
                int i2 = iB - i;
                try {
                    this.d.get(this.e, i, i2);
                    i += i2;
                } catch (Exception e) {
                    Log.w(a, "Error Reading Block", e);
                    this.r = 1;
                }
            }
        }
        return i;
    }

    private Bitmap d() {
        BitmapProvider bitmapProvider = this.o;
        GifHeader gifHeader = this.n;
        Bitmap bitmapObtain = bitmapProvider.obtain(gifHeader.f, gifHeader.g, b);
        if (bitmapObtain == null) {
            GifHeader gifHeader2 = this.n;
            bitmapObtain = Bitmap.createBitmap(gifHeader2.f, gifHeader2.g, b);
        }
        a(bitmapObtain);
        return bitmapObtain;
    }

    public void advance() {
        this.l = (this.l + 1) % this.n.c;
    }

    public int getDelay(int i) {
        if (i >= 0) {
            GifHeader gifHeader = this.n;
            if (i < gifHeader.c) {
                return gifHeader.e.get(i).i;
            }
        }
        return -1;
    }

    public synchronized Bitmap getNextFrame() {
        if (this.n.c <= 0 || this.l < 0) {
            if (Log.isLoggable(a, 3)) {
                Log.d(a, "unable to decode frame, frameCount=" + this.n.c + " framePointer=" + this.l);
            }
            this.r = 1;
        }
        if (this.r != 1 && this.r != 2) {
            int i = 0;
            this.r = 0;
            GifFrame gifFrame = this.n.e.get(this.l);
            int i2 = this.l - 1;
            GifFrame gifFrame2 = i2 >= 0 ? this.n.e.get(i2) : null;
            if (gifFrame.k == null) {
                this.c = this.n.a;
            } else {
                this.c = gifFrame.k;
                if (this.n.j == gifFrame.h) {
                    this.n.l = 0;
                }
            }
            if (gifFrame.f) {
                int i3 = this.c[gifFrame.h];
                this.c[gifFrame.h] = 0;
                i = i3;
            }
            if (this.c == null) {
                if (Log.isLoggable(a, 3)) {
                    Log.d(a, "No Valid Color Table");
                }
                this.r = 1;
                return null;
            }
            Bitmap bitmapA = a(gifFrame, gifFrame2);
            if (gifFrame.f) {
                this.c[gifFrame.h] = i;
            }
            return bitmapA;
        }
        if (Log.isLoggable(a, 3)) {
            Log.d(a, "Unable to decode frame, status=" + this.r);
        }
        return null;
    }

    public void resetFrameIndex() {
        this.l = -1;
    }

    public void setData(GifHeader gifHeader, byte[] bArr) {
        this.n = gifHeader;
        this.m = bArr;
        this.r = 0;
        this.l = -1;
        this.d = ByteBuffer.wrap(bArr);
        this.d.rewind();
        this.d.order(ByteOrder.LITTLE_ENDIAN);
        this.q = false;
        Iterator<GifFrame> it = gifHeader.e.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            } else if (it.next().g == 3) {
                this.q = true;
                break;
            }
        }
        int i = gifHeader.f;
        int i2 = gifHeader.g;
        this.j = new byte[i * i2];
        this.k = new int[i * i2];
    }
}
