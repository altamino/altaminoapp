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
import com.narvii.util.Log;
import com.narvii.util.crashlytics.OomHelper;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.IntBuffer;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.opengles.GL10;

/* JADX INFO: loaded from: classes4.dex */
public class BitmapUtils {
    public static Bitmap crop(Bitmap bitmap, int i10, int i11, float f, float f6) {
        if (f < 0.0f || f > 1.0f || f6 < 0.0f || f6 > 1.0f) {
            throw new IllegalArgumentException("horizontalCenterPercent and verticalCenterPercent must be between 0.0f and 1.0f, inclusive.");
        }
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        if (i10 == width && i11 == height) {
            return bitmap;
        }
        Matrix matrix = new Matrix();
        float f7 = i10;
        float f10 = width;
        float f11 = i11;
        float f12 = height;
        float fMax = Math.max(f7 / f10, f11 / f12);
        matrix.setScale(fMax, fMax);
        int iRound = Math.round(f7 / fMax);
        int iRound2 = Math.round(f11 / fMax);
        return Bitmap.createBitmap(bitmap, Math.max(Math.min((int) ((f10 * f) - (iRound / 2)), width - iRound), 0), Math.max(Math.min((int) ((f12 * f6) - (iRound2 / 2)), height - iRound2), 0), iRound, iRound2, matrix, true);
    }

    public static Bitmap cropBitmap(Bitmap bitmap, int i10, int i11, int i12, int i13, int i14, int i15) {
        if (bitmap == null) {
            return null;
        }
        if (i10 == 0 || i11 == 0) {
            i10 = 0;
            i11 = 0;
        }
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i10, i11, Bitmap.Config.ARGB_8888);
        Paint paint = new Paint();
        paint.setAntiAlias(true);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC_IN));
        Canvas canvas = new Canvas(bitmap);
        canvas.drawBitmap(bitmap, 0.0f, 0.0f, (Paint) null);
        canvas.drawRect(i12, i13, i14, i15, paint);
        return bitmapCreateBitmap;
    }

    public static int findBestSampleSize(int i10, int i11, int i12, int i13) {
        double dMax = Math.max(((double) i10) / ((double) i12), ((double) i11) / ((double) i13));
        float f = 1.0f;
        while (true) {
            float f6 = 2.0f * f;
            if (f6 > dMax) {
                return (int) f;
            }
            f = f6;
        }
    }

    public static Bitmap drawableToBitmap(Drawable drawable) {
        if (drawable == null) {
            return null;
        }
        if (drawable instanceof BitmapDrawable) {
            BitmapDrawable bitmapDrawable = (BitmapDrawable) drawable;
            if (bitmapDrawable.getBitmap() != null) {
                return bitmapDrawable.getBitmap();
            }
        }
        Bitmap bitmapCreateBitmap = (drawable.getIntrinsicWidth() <= 0 || drawable.getIntrinsicHeight() <= 0) ? Bitmap.createBitmap(1, 1, Bitmap.Config.ARGB_8888) : Bitmap.createBitmap(drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
        drawable.draw(canvas);
        return bitmapCreateBitmap;
    }

    public static void encodeYUV420SP(byte[] bArr, int[] iArr, int i10, int i11) {
        int i12 = i10 * i11;
        int i13 = 0;
        int i14 = 0;
        for (int i15 = 0; i15 < i11; i15++) {
            for (int i16 = 0; i16 < i10; i16++) {
                int i17 = iArr[i14];
                int i18 = (16711680 & i17) >> 16;
                int i19 = (65280 & i17) >> 8;
                int i20 = 255;
                int i21 = i17 & 255;
                int i22 = (((((i18 * 66) + (i19 * 129)) + (i21 * 25)) + 128) >> 8) + 16;
                int i23 = (((((i18 * (-38)) - (i19 * 74)) + (i21 * 112)) + 128) >> 8) + 128;
                int i24 = (((((i18 * 112) - (i19 * 94)) - (i21 * 18)) + 128) >> 8) + 128;
                if (i13 < bArr.length) {
                    int i25 = i13 + 1;
                    if (i22 < 0) {
                        i22 = 0;
                    } else if (i22 > 255) {
                        i22 = 255;
                    }
                    bArr[i13] = (byte) i22;
                    i13 = i25;
                }
                if (i15 % 2 == 0 && i14 % 2 == 0) {
                    if (i12 < bArr.length) {
                        int i26 = i12 + 1;
                        if (i24 < 0) {
                            i24 = 0;
                        } else if (i24 > 255) {
                            i24 = 255;
                        }
                        bArr[i12] = (byte) i24;
                        i12 = i26;
                    }
                    if (i12 < bArr.length) {
                        int i27 = i12 + 1;
                        if (i23 < 0) {
                            i20 = 0;
                        } else if (i23 <= 255) {
                            i20 = i23;
                        }
                        bArr[i12] = (byte) i20;
                        i12 = i27;
                    }
                }
                i14++;
            }
        }
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
        int i10 = width * height;
        int[] iArr = new int[i10];
        bitmap.getPixels(iArr, 0, width, 0, 0, width, height);
        byte[] bArr = new byte[(i10 * 3) / 2];
        encodeYUV420SP(bArr, iArr, width, height);
        return bArr;
    }

    public static Bitmap openBitmapAtSize(File file, int i10, int i11) {
        Bitmap bitmapDecodeFile;
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeFile(file.getAbsolutePath(), options);
        options.inSampleSize = findBestSampleSize(options.outWidth, options.outHeight, i10, i11);
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
        int attributeInt = exifInterface.getAttributeInt(androidx.exifinterface.media.ExifInterface.TAG_ORIENTATION, 1);
        if (attributeInt == 3) {
            return 180;
        }
        if (attributeInt != 6) {
            return attributeInt != 8 ? 0 : 270;
        }
        return 90;
    }

    public static void compressJpeg(Bitmap bitmap, int i10, OutputStream outputStream) {
        OutOfMemoryError e;
        Bitmap bitmapCreateBitmap;
        boolean zHasAlpha = bitmap.hasAlpha();
        if (zHasAlpha) {
            int width = bitmap.getWidth();
            int height = bitmap.getHeight();
            int iMax = Math.max(8, Math.min(48, width / 16));
            int iMax2 = Math.max(8, Math.min(48, height / 16));
            boolean z6 = false;
            for (int i11 = 0; i11 <= iMax && !z6; i11++) {
                for (int i12 = 0; i12 <= iMax2 && !z6; i12++) {
                    if (((bitmap.getPixel(Math.min((i11 * width) / iMax, width - 1), Math.min((i12 * height) / iMax2, height - 1)) >>> 24) & 255) != 255) {
                        z6 = true;
                    }
                }
            }
            zHasAlpha = z6;
        }
        Bitmap bitmap2 = null;
        if (zHasAlpha) {
            try {
                bitmapCreateBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), bitmap.getConfig());
                try {
                    bitmapCreateBitmap.eraseColor(-1);
                    new Canvas(bitmapCreateBitmap).drawBitmap(bitmap, 0.0f, 0.0f, (Paint) null);
                } catch (OutOfMemoryError e2) {
                    e = e2;
                    OomHelper.test(e);
                }
            } catch (OutOfMemoryError e6) {
                e = e6;
                bitmapCreateBitmap = null;
            }
            bitmap2 = bitmapCreateBitmap;
        }
        if (bitmap2 == null) {
            bitmap.compress(Bitmap.CompressFormat.JPEG, i10, outputStream);
            return;
        }
        try {
            bitmap2.compress(Bitmap.CompressFormat.JPEG, i10, outputStream);
        } finally {
            bitmap2.recycle();
        }
    }

    public static Bitmap createBitmapFromGLSurface(int i10, int i11, int i12, int i13) {
        GL10 gl10 = (GL10) ((EGL10) EGLContext.getEGL()).eglGetCurrentContext().getGL();
        int i14 = i12 * i13;
        int[] iArr = new int[i14];
        int[] iArr2 = new int[i14];
        IntBuffer intBufferWrap = IntBuffer.wrap(iArr);
        intBufferWrap.position(0);
        try {
            gl10.glReadPixels(i10, i11, i12, i13, 6408, 5121, intBufferWrap);
            for (int i15 = 0; i15 < i13; i15++) {
                int i16 = i15 * i12;
                int i17 = ((i13 - i15) - 1) * i12;
                for (int i18 = 0; i18 < i12; i18++) {
                    int i19 = iArr[i16 + i18];
                    iArr2[i17 + i18] = (i19 & (-16711936)) | ((i19 << 16) & 16711680) | ((i19 >> 16) & 255);
                }
            }
            return Bitmap.createBitmap(iArr2, i12, i13, Bitmap.Config.ARGB_8888);
        } catch (Throwable th) {
            Log.e("bitmap", th);
            return null;
        }
    }

    public static Bitmap cropCenterAtSize(Bitmap bitmap, int i10, int i11) {
        float f;
        float f6;
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        if (i10 > width || i11 > height) {
            float f7 = i10;
            float f10 = i11;
            float fMin = Math.min((width * 1.0f) / f7, (height * 1.0f) / f10);
            i10 = Math.round(f7 * fMin);
            i11 = Math.round(f10 * fMin);
        }
        float f11 = 0.0f;
        if (width * i11 > i10 * height) {
            f = i11 / height;
            float f12 = (i10 - (width * f)) * 0.5f;
            f6 = 0.0f;
            f11 = f12;
        } else {
            f = i10 / width;
            f6 = (i11 - (height * f)) * 0.5f;
        }
        Matrix matrix = new Matrix();
        matrix.setScale(f, f);
        matrix.postTranslate((int) (f11 + 0.5f), (int) (f6 + 0.5f));
        Bitmap.Config config = bitmap.getConfig();
        if (config == null) {
            config = Bitmap.Config.ARGB_8888;
        }
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i10, i11, config);
        new Canvas(bitmapCreateBitmap).drawBitmap(bitmap, matrix, null);
        return bitmapCreateBitmap;
    }

    public static Bitmap getScaledBitmap(Bitmap bitmap, int i10, int i11) {
        if (bitmap.getWidth() > i10 || bitmap.getHeight() > i11) {
            float fMin = Math.min((i10 * 1.0f) / bitmap.getWidth(), (i11 * 1.0f) / bitmap.getHeight());
            int width = (int) ((bitmap.getWidth() * fMin) + 0.5f);
            if (width <= i10) {
                i10 = width;
            }
            int height = (int) ((bitmap.getHeight() * fMin) + 0.5f);
            if (height <= i11) {
                i11 = height;
            }
            return Bitmap.createScaledBitmap(bitmap, i10, i11, true);
        }
        return bitmap;
    }
}
