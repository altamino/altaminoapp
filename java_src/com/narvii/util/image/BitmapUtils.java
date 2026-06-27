package com.narvii.util.image;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.media.ExifInterface;
import android.support.v4.view.MotionEventCompat;
import com.narvii.util.Log;
import com.narvii.util.crashlytics.OomHelper;
import java.io.File;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.IntBuffer;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.opengles.GL10;

/* loaded from: classes.dex */
public class BitmapUtils {
    public static int findBestSampleSize(int i, int i2, int i3, int i4) {
        double d = i;
        double d2 = i3;
        Double.isNaN(d);
        Double.isNaN(d2);
        double d3 = i2;
        double d4 = i4;
        Double.isNaN(d3);
        Double.isNaN(d4);
        double dMax = Math.max(d / d2, d3 / d4);
        float f = 1.0f;
        while (true) {
            float f2 = 2.0f * f;
            if (f2 > dMax) {
                return (int) f;
            }
            f = f2;
        }
    }

    public static Bitmap openBitmapAtSize(File file, int i, int i2) {
        Bitmap bitmapDecodeFile;
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(file.getAbsolutePath(), options);
        options.inSampleSize = findBestSampleSize(options.outWidth, options.outHeight, i, i2);
        try {
            options.inJustDecodeBounds = false;
            options.inPreferQualityOverSpeed = true;
            bitmapDecodeFile = BitmapFactory.decodeFile(file.getAbsolutePath(), options);
        } catch (OutOfMemoryError e) {
            OomHelper.test(e);
            bitmapDecodeFile = null;
        }
        if (bitmapDecodeFile != null) {
            return bitmapDecodeFile;
        }
        options.inSampleSize *= 2;
        options.inJustDecodeBounds = false;
        options.inPreferQualityOverSpeed = true;
        return BitmapFactory.decodeFile(file.getAbsolutePath(), options);
    }

    public static Bitmap cropCenterAtSize(Bitmap bitmap, int i, int i2) {
        float f;
        float f2;
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        if (i > width || i2 > height) {
            float f3 = i;
            float f4 = i2;
            float fMin = Math.min((width * 1.0f) / f3, (height * 1.0f) / f4);
            i = Math.round(f3 * fMin);
            i2 = Math.round(f4 * fMin);
        }
        float f5 = 0.0f;
        if (width * i2 > i * height) {
            f = i2 / height;
            f2 = (i - (width * f)) * 0.5f;
        } else {
            f = i / width;
            f5 = (i2 - (height * f)) * 0.5f;
            f2 = 0.0f;
        }
        Matrix matrix = new Matrix();
        matrix.setScale(f, f);
        matrix.postTranslate((int) (f2 + 0.5f), (int) (f5 + 0.5f));
        Bitmap.Config config = bitmap.getConfig();
        if (config == null) {
            config = Bitmap.Config.ARGB_8888;
        }
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i, i2, config);
        new Canvas(bitmapCreateBitmap).drawBitmap(bitmap, matrix, null);
        return bitmapCreateBitmap;
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0087  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x008d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void compressJpeg(android.graphics.Bitmap r13, int r14, java.io.OutputStream r15) {
        /*
            boolean r0 = r13.hasAlpha()
            if (r0 == 0) goto L5a
            int r0 = r13.getWidth()
            int r1 = r13.getHeight()
            int r2 = r0 / 16
            r3 = 48
            int r2 = java.lang.Math.min(r3, r2)
            r4 = 8
            int r2 = java.lang.Math.max(r4, r2)
            int r5 = r1 / 16
            int r3 = java.lang.Math.min(r3, r5)
            int r3 = java.lang.Math.max(r4, r3)
            r4 = 0
            r5 = 0
            r6 = 0
        L29:
            if (r5 > r2) goto L59
            if (r6 != 0) goto L59
            r7 = r6
            r6 = 0
        L2f:
            if (r6 > r3) goto L55
            if (r7 != 0) goto L55
            int r8 = r5 * r0
            int r8 = r8 / r2
            r9 = 1
            int r10 = r0 + (-1)
            int r8 = java.lang.Math.min(r8, r10)
            int r10 = r6 * r1
            int r10 = r10 / r3
            int r11 = r1 + (-1)
            int r10 = java.lang.Math.min(r10, r11)
            int r8 = r13.getPixel(r8, r10)
            int r8 = r8 >>> 24
            r10 = 255(0xff, float:3.57E-43)
            r8 = r8 & r10
            if (r8 == r10) goto L52
            r7 = 1
        L52:
            int r6 = r6 + 1
            goto L2f
        L55:
            int r5 = r5 + 1
            r6 = r7
            goto L29
        L59:
            r0 = r6
        L5a:
            r1 = 0
            if (r0 == 0) goto L85
            int r0 = r13.getWidth()     // Catch: java.lang.OutOfMemoryError -> L81
            int r2 = r13.getHeight()     // Catch: java.lang.OutOfMemoryError -> L81
            android.graphics.Bitmap$Config r3 = r13.getConfig()     // Catch: java.lang.OutOfMemoryError -> L81
            android.graphics.Bitmap r0 = android.graphics.Bitmap.createBitmap(r0, r2, r3)     // Catch: java.lang.OutOfMemoryError -> L81
            r2 = -1
            r0.eraseColor(r2)     // Catch: java.lang.OutOfMemoryError -> L7c
            android.graphics.Canvas r2 = new android.graphics.Canvas     // Catch: java.lang.OutOfMemoryError -> L7c
            r2.<init>(r0)     // Catch: java.lang.OutOfMemoryError -> L7c
            r3 = 0
            r2.drawBitmap(r13, r3, r3, r1)     // Catch: java.lang.OutOfMemoryError -> L7c
            r1 = r0
            goto L85
        L7c:
            r1 = move-exception
            r12 = r1
            r1 = r0
            r0 = r12
            goto L82
        L81:
            r0 = move-exception
        L82:
            com.narvii.util.crashlytics.OomHelper.test(r0)
        L85:
            if (r1 != 0) goto L8d
            android.graphics.Bitmap$CompressFormat r0 = android.graphics.Bitmap.CompressFormat.JPEG
            r13.compress(r0, r14, r15)
            goto L95
        L8d:
            android.graphics.Bitmap$CompressFormat r13 = android.graphics.Bitmap.CompressFormat.JPEG     // Catch: java.lang.Throwable -> L96
            r1.compress(r13, r14, r15)     // Catch: java.lang.Throwable -> L96
            r1.recycle()
        L95:
            return
        L96:
            r13 = move-exception
            r1.recycle()
            goto L9c
        L9b:
            throw r13
        L9c:
            goto L9b
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.util.image.BitmapUtils.compressJpeg(android.graphics.Bitmap, int, java.io.OutputStream):void");
    }

    public static Bitmap drawableToBitmap(Drawable drawable) {
        Bitmap bitmapCreateBitmap;
        if (drawable == null) {
            return null;
        }
        if (drawable instanceof BitmapDrawable) {
            BitmapDrawable bitmapDrawable = (BitmapDrawable) drawable;
            if (bitmapDrawable.getBitmap() != null) {
                return bitmapDrawable.getBitmap();
            }
        }
        if (drawable.getIntrinsicWidth() <= 0 || drawable.getIntrinsicHeight() <= 0) {
            bitmapCreateBitmap = Bitmap.createBitmap(1, 1, Bitmap.Config.ARGB_8888);
        } else {
            bitmapCreateBitmap = Bitmap.createBitmap(drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), Bitmap.Config.ARGB_8888);
        }
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
        drawable.draw(canvas);
        return bitmapCreateBitmap;
    }

    public static Bitmap cropBitmap(Bitmap bitmap, int i, int i2, int i3, int i4, int i5, int i6) {
        if (bitmap == null) {
            return null;
        }
        if (i == 0 || i2 == 0) {
            i = 0;
            i2 = 0;
        }
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i, i2, Bitmap.Config.ARGB_8888);
        Paint paint = new Paint();
        paint.setAntiAlias(true);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
        Canvas canvas = new Canvas(bitmap);
        canvas.drawBitmap(bitmap, 0.0f, 0.0f, (Paint) null);
        canvas.drawRect(i3, i4, i5, i6, paint);
        return bitmapCreateBitmap;
    }

    public static Bitmap crop(Bitmap bitmap, int i, int i2, float f, float f2) {
        if (f < 0.0f || f > 1.0f || f2 < 0.0f || f2 > 1.0f) {
            throw new IllegalArgumentException("horizontalCenterPercent and verticalCenterPercent must be between 0.0f and 1.0f, inclusive.");
        }
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        if (i == width && i2 == height) {
            return bitmap;
        }
        Matrix matrix = new Matrix();
        float f3 = i;
        float f4 = width;
        float f5 = i2;
        float f6 = height;
        float fMax = Math.max(f3 / f4, f5 / f6);
        matrix.setScale(fMax, fMax);
        int iRound = Math.round(f3 / fMax);
        int iRound2 = Math.round(f5 / fMax);
        return Bitmap.createBitmap(bitmap, Math.max(Math.min((int) ((f4 * f) - (iRound / 2)), width - iRound), 0), Math.max(Math.min((int) ((f6 * f2) - (iRound2 / 2)), height - iRound2), 0), iRound, iRound2, matrix, true);
    }

    public static byte[] getBytes(Bitmap bitmap) {
        if (bitmap == null) {
            return null;
        }
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(bitmap.getByteCount());
        bitmap.copyPixelsToBuffer(byteBufferAllocate);
        return byteBufferAllocate.array();
    }

    public static byte[] getNV21Bytes(Bitmap bitmap) {
        if (bitmap == null) {
            return null;
        }
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        int i = width * height;
        int[] iArr = new int[i];
        bitmap.getPixels(iArr, 0, width, 0, 0, width, height);
        byte[] bArr = new byte[(i * 3) / 2];
        encodeYUV420SP(bArr, iArr, width, height);
        return bArr;
    }

    public static void encodeYUV420SP(byte[] bArr, int[] iArr, int i, int i2) {
        int i3 = i * i2;
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        while (i4 < i2) {
            int i7 = i3;
            int i8 = i5;
            for (int i9 = 0; i9 < i; i9++) {
                int i10 = iArr[i6];
                int i11 = (iArr[i6] & 16711680) >> 16;
                int i12 = (iArr[i6] & MotionEventCompat.ACTION_POINTER_INDEX_MASK) >> 8;
                int i13 = 255;
                int i14 = (iArr[i6] & 255) >> 0;
                int i15 = (((((i11 * 66) + (i12 * 129)) + (i14 * 25)) + 128) >> 8) + 16;
                int i16 = (((((i11 * (-38)) - (i12 * 74)) + (i14 * 112)) + 128) >> 8) + 128;
                int i17 = (((((i11 * 112) - (i12 * 94)) - (i14 * 18)) + 128) >> 8) + 128;
                if (i8 < bArr.length) {
                    int i18 = i8 + 1;
                    if (i15 < 0) {
                        i15 = 0;
                    } else if (i15 > 255) {
                        i15 = 255;
                    }
                    bArr[i8] = (byte) i15;
                    i8 = i18;
                }
                if (i4 % 2 == 0 && i6 % 2 == 0) {
                    if (i7 < bArr.length) {
                        int i19 = i7 + 1;
                        if (i17 < 0) {
                            i17 = 0;
                        } else if (i17 > 255) {
                            i17 = 255;
                        }
                        bArr[i7] = (byte) i17;
                        i7 = i19;
                    }
                    if (i7 < bArr.length) {
                        int i20 = i7 + 1;
                        if (i16 < 0) {
                            i13 = 0;
                        } else if (i16 <= 255) {
                            i13 = i16;
                        }
                        bArr[i7] = (byte) i13;
                        i7 = i20;
                    }
                }
                i6++;
            }
            i4++;
            i5 = i8;
            i3 = i7;
        }
    }

    public static Bitmap getScaledBitmap(Bitmap bitmap, int i, int i2) {
        if (bitmap.getWidth() <= i && bitmap.getHeight() <= i2) {
            return bitmap;
        }
        float fMin = Math.min((i * 1.0f) / bitmap.getWidth(), (i2 * 1.0f) / bitmap.getHeight());
        int width = (int) ((bitmap.getWidth() * fMin) + 0.5f);
        if (width <= i) {
            i = width;
        }
        int height = (int) ((bitmap.getHeight() * fMin) + 0.5f);
        if (height <= i2) {
            i2 = height;
        }
        return Bitmap.createScaledBitmap(bitmap, i, i2, true);
    }

    public static Bitmap createBitmapFromGLSurface(int i, int i2, int i3, int i4) {
        GL10 gl10 = (GL10) ((EGL10) EGLContext.getEGL()).eglGetCurrentContext().getGL();
        int i5 = i3 * i4;
        int[] iArr = new int[i5];
        int[] iArr2 = new int[i5];
        IntBuffer intBufferWrap = IntBuffer.wrap(iArr);
        intBufferWrap.position(0);
        try {
            gl10.glReadPixels(i, i2, i3, i4, 6408, 5121, intBufferWrap);
            for (int i6 = 0; i6 < i4; i6++) {
                int i7 = i6 * i3;
                int i8 = ((i4 - i6) - 1) * i3;
                for (int i9 = 0; i9 < i3; i9++) {
                    int i10 = iArr[i7 + i9];
                    iArr2[i8 + i9] = (i10 & (-16711936)) | ((i10 << 16) & 16711680) | ((i10 >> 16) & 255);
                }
            }
            return Bitmap.createBitmap(iArr2, i3, i4, Bitmap.Config.ARGB_8888);
        } catch (Throwable th) {
            Log.e("bitmap", th);
            return null;
        }
    }

    public static int readImageRotation(String str) {
        ExifInterface exifInterface;
        try {
            exifInterface = new ExifInterface(str);
        } catch (IOException unused) {
            exifInterface = null;
        }
        if (exifInterface == null) {
            return 0;
        }
        int attributeInt = exifInterface.getAttributeInt("Orientation", 1);
        if (attributeInt == 3) {
            return 180;
        }
        if (attributeInt != 6) {
            return attributeInt != 8 ? 0 : 270;
        }
        return 90;
    }
}
