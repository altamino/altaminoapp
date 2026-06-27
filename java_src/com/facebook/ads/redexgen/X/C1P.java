package com.facebook.ads.redexgen.X;

import android.annotation.SuppressLint;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Rect;
import android.os.Build;
import android.support.annotation.Nullable;
import java.io.BufferedInputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;

/* JADX WARN: Classes with same name are omitted:
  assets.dex
  assets/audience_network.dex
 */
/* renamed from: com.facebook.ads.redexgen.X.1P, reason: invalid class name */
/* loaded from: assets/assets/audience_network.dex */
public final class C1P {
    private static byte[] A00;

    static {
        A06();
    }

    private static String A04(int i, int i2, int i3) {
        byte[] bArrCopyOfRange = Arrays.copyOfRange(A00, i, i + i2);
        int i4 = 0;
        char c = 2;
        while (true) {
            switch (c) {
                case 2:
                    bArrCopyOfRange = bArrCopyOfRange;
                    if (i4 >= bArrCopyOfRange.length) {
                        c = 4;
                        break;
                    } else {
                        c = 3;
                        break;
                    }
                case 3:
                    bArrCopyOfRange = bArrCopyOfRange;
                    bArrCopyOfRange[i4] = (byte) ((bArrCopyOfRange[i4] ^ i3) ^ 78);
                    i4++;
                    c = 2;
                    break;
                case 4:
                    return new String(bArrCopyOfRange);
            }
        }
    }

    private static void A06() {
        A00 = new byte[]{11, 4, 1, 8, 87, 66, 66};
    }

    private C1P() {
    }

    private static int A00(BitmapFactory.Options options, int i, int height) {
        int i2 = 0;
        int i3 = 0;
        int i4 = options.outHeight;
        int i5 = options.outWidth;
        int i6 = 1;
        int inSampleSize = i4 <= height ? 2 : 3;
        while (true) {
            switch (inSampleSize) {
                case 2:
                    if (i5 <= i) {
                        inSampleSize = 7;
                        break;
                    } else {
                        inSampleSize = 3;
                        break;
                    }
                case 3:
                    i2 = i4 / 2;
                    i3 = i5 / 2;
                    inSampleSize = 4;
                    break;
                case 4:
                    int inSampleSize2 = i2 / i6;
                    if (inSampleSize2 < height) {
                        inSampleSize = 7;
                        break;
                    } else {
                        inSampleSize = 5;
                        break;
                    }
                case 5:
                    int inSampleSize3 = i3 / i6;
                    if (inSampleSize3 < i) {
                        inSampleSize = 7;
                        break;
                    } else {
                        inSampleSize = 6;
                        break;
                    }
                case 6:
                    i6 *= 2;
                    inSampleSize = 4;
                    break;
                case 7:
                    return i6;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v0 */
    /* JADX WARN: Type inference failed for: r4v1 */
    /* JADX WARN: Type inference failed for: r4v2, types: [com.facebook.ads.redexgen.X.1Q, java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r4v3, types: [com.facebook.ads.redexgen.X.1Q, java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r4v4 */
    /* JADX WARN: Type inference failed for: r4v5, types: [com.facebook.ads.redexgen.X.1Q, java.io.InputStream] */
    private static Bitmap A01(final InputStream inputStream, int i, int i2) throws IOException {
        Bitmap bitmapDecodeStream = null;
        ?? r4 = 0;
        BitmapFactory.Options options = null;
        Rect rect = null;
        char c = Build.VERSION.SDK_INT < 19 ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    inputStream = inputStream;
                    bitmapDecodeStream = BitmapFactory.decodeStream(inputStream);
                    c = 3;
                    break;
                case 3:
                    return bitmapDecodeStream;
                case 4:
                    inputStream = inputStream;
                    rect = null;
                    r4 = new BufferedInputStream(inputStream) { // from class: com.facebook.ads.redexgen.X.1Q
                        private int A00 = Integer.MAX_VALUE;
                        private int A01;
                        private boolean A02;

                        public final boolean A00() {
                            return this.A02;
                        }

                        @Override // java.io.BufferedInputStream, java.io.FilterInputStream, java.io.InputStream
                        public final synchronized void mark(int i3) {
                            this.A00 = i3;
                            super.mark(i3);
                        }

                        @Override // java.io.BufferedInputStream, java.io.FilterInputStream, java.io.InputStream
                        public final int read() throws IOException {
                            C1Q c1q = this;
                            int i3 = 0;
                            char c2 = c1q.A01 + 1 > c1q.A00 ? (char) 2 : (char) 4;
                            while (true) {
                                switch (c2) {
                                    case 2:
                                        c1q = c1q;
                                        c1q.A02 = true;
                                        i3 = -1;
                                        c2 = 3;
                                        break;
                                    case 3:
                                        return i3;
                                    case 4:
                                        c1q = c1q;
                                        c1q.A01++;
                                        i3 = super.read();
                                        c2 = 3;
                                        break;
                                }
                            }
                        }

                        @Override // java.io.FilterInputStream, java.io.InputStream
                        public final int read(byte[] bArr) throws IOException {
                            C1Q c1q = this;
                            int i3 = 0;
                            char c2 = c1q.A01 + bArr.length > c1q.A00 ? (char) 2 : (char) 4;
                            while (true) {
                                switch (c2) {
                                    case 2:
                                        c1q = c1q;
                                        c1q.A02 = true;
                                        i3 = -1;
                                        c2 = 3;
                                        break;
                                    case 3:
                                        return i3;
                                    case 4:
                                        c1q = c1q;
                                        bArr = bArr;
                                        i3 = super.read(bArr);
                                        c2 = 3;
                                        break;
                                }
                            }
                        }

                        @Override // java.io.BufferedInputStream, java.io.FilterInputStream, java.io.InputStream
                        public final synchronized int read(byte[] bArr, int i3, int i4) throws IOException {
                            int i5;
                            if (this.A01 + i4 > this.A00) {
                                this.A02 = true;
                                i5 = -1;
                            } else {
                                i5 = super.read(bArr, i3, i4);
                                this.A01 += i5;
                            }
                            return i5;
                        }

                        @Override // java.io.BufferedInputStream, java.io.FilterInputStream, java.io.InputStream
                        public final synchronized void reset() throws IOException {
                            this.A00 = Integer.MAX_VALUE;
                            super.reset();
                        }

                        @Override // java.io.BufferedInputStream, java.io.FilterInputStream, java.io.InputStream
                        public final synchronized long skip(long j) throws IOException {
                            long jSkip;
                            if (this.A01 + j > this.A00) {
                                this.A02 = true;
                                jSkip = 0;
                            } else {
                                this.A01 = (int) (this.A01 + j);
                                jSkip = super.skip(j);
                            }
                            return jSkip;
                        }
                    };
                    r4.mark(8192);
                    options = new BitmapFactory.Options();
                    options.inJustDecodeBounds = true;
                    BitmapFactory.decodeStream(r4, null, options);
                    r4.reset();
                    if (!r4.A00()) {
                        c = 5;
                        break;
                    } else {
                        c = 6;
                        break;
                    }
                case 5:
                    r4 = (C1Q) r4;
                    options = options;
                    options.inSampleSize = A00(options, i, i2);
                    options.inJustDecodeBounds = false;
                    bitmapDecodeStream = BitmapFactory.decodeStream(r4, rect, options);
                    c = 3;
                    break;
                case 6:
                    r4 = (C1Q) r4;
                    bitmapDecodeStream = BitmapFactory.decodeStream(r4);
                    c = 3;
                    break;
            }
        }
    }

    @SuppressLint({"CatchGeneralException"})
    private static Bitmap A02(String str, int i, int i2) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(str, options);
        options.inSampleSize = A00(options, i, i2);
        options.inJustDecodeBounds = false;
        return BitmapFactory.decodeFile(str, options);
    }

    @SuppressLint({"CatchGeneralException"})
    @Nullable
    public static Bitmap A03(String str, int i, int i2, boolean z) throws Throwable {
        FileInputStream fileInputStream;
        Bitmap bitmapDecodeStream;
        FileInputStream fileInputStream2 = null;
        try {
            fileInputStream = new FileInputStream(new File(str));
        } catch (Throwable th) {
            th = th;
        }
        try {
            if (i > 0 && i2 > 0) {
                if (z) {
                    bitmapDecodeStream = A01(fileInputStream, i, i2);
                    A07(fileInputStream);
                } else {
                    bitmapDecodeStream = A02(str, i, i2);
                    A07(fileInputStream);
                }
            } else {
                bitmapDecodeStream = BitmapFactory.decodeStream(fileInputStream);
                A07(fileInputStream);
            }
            return bitmapDecodeStream;
        } catch (Throwable th2) {
            th = th2;
            fileInputStream2 = fileInputStream;
            A07(fileInputStream2);
            throw th;
        }
    }

    @Nullable
    public static String A05(@Nullable File file) {
        String str = null;
        char c = file != null ? (char) 2 : (char) 4;
        while (true) {
            switch (c) {
                case 2:
                    file = file;
                    str = A04(0, 7, 35) + file.getPath();
                    c = 3;
                    break;
                case 3:
                    return str;
                case 4:
                    str = null;
                    c = 3;
                    break;
            }
        }
    }

    public static void A07(@Nullable Closeable closeable) throws IOException {
        if (closeable == null) {
            return;
        }
        try {
            closeable.close();
        } catch (IOException unused) {
        }
    }
}
