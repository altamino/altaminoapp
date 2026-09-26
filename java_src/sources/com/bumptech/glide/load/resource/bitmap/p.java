package com.bumptech.glide.load.resource.bitmap;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.ColorSpace;
import android.os.Build;
import android.os.ParcelFileDescriptor;
import android.util.DisplayMetrics;
import android.util.Log;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.bumptech.glide.load.ImageHeaderParser;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.Collections;
import java.util.EnumSet;
import java.util.HashSet;
import java.util.List;
import java.util.Queue;
import java.util.Set;

/* JADX INFO: loaded from: classes11.dex */
public final class p {
    public static final com.bumptech.glide.load.h<Boolean> ALLOW_HARDWARE_CONFIG;
    private static final b EMPTY_CALLBACKS;
    public static final com.bumptech.glide.load.h<Boolean> FIX_BITMAP_SIZE_TO_REQUESTED_DIMENSIONS;
    private static final String ICO_MIME_TYPE = "image/x-ico";
    private static final Set<String> NO_DOWNSAMPLE_PRE_N_MIME_TYPES;
    private static final Queue<BitmapFactory.Options> OPTIONS_QUEUE;
    static final String TAG = "Downsampler";
    private static final Set<ImageHeaderParser.ImageType> TYPES_THAT_USE_POOL_PRE_KITKAT;
    private static final String WBMP_MIME_TYPE = "image/vnd.wap.wbmp";
    private final com.bumptech.glide.load.engine.bitmap_recycle.d bitmapPool;
    private final com.bumptech.glide.load.engine.bitmap_recycle.b byteArrayPool;
    private final DisplayMetrics displayMetrics;
    private final u hardwareConfigState = u.a();
    private final List<ImageHeaderParser> parsers;
    public static final com.bumptech.glide.load.h<com.bumptech.glide.load.b> DECODE_FORMAT = com.bumptech.glide.load.h.f("com.bumptech.glide.load.resource.bitmap.Downsampler.DecodeFormat", com.bumptech.glide.load.b.DEFAULT);
    public static final com.bumptech.glide.load.h<com.bumptech.glide.load.j> PREFERRED_COLOR_SPACE = com.bumptech.glide.load.h.f("com.bumptech.glide.load.resource.bitmap.Downsampler.PreferredColorSpace", com.bumptech.glide.load.j.SRGB);

    @Deprecated
    public static final com.bumptech.glide.load.h<l> DOWNSAMPLE_STRATEGY = l.OPTION;

    public interface b {
        void a();

        void b(com.bumptech.glide.load.engine.bitmap_recycle.d dVar, Bitmap bitmap) throws IOException;
    }

    private static void c(ImageHeaderParser.ImageType imageType, v vVar, b bVar, com.bumptech.glide.load.engine.bitmap_recycle.d dVar, l lVar, int i10, int i11, int i12, int i13, int i14, BitmapFactory.Options options) throws IOException {
        int i15;
        int i16;
        int i17;
        int iFloor;
        double dFloor;
        int iRound;
        if (i11 <= 0 || i12 <= 0) {
            if (Log.isLoggable(TAG, 3)) {
                Log.d(TAG, "Unable to determine dimensions for: " + imageType + " with target [" + i13 + "x" + i14 + "]");
                return;
            }
            return;
        }
        if (r(i10)) {
            i16 = i11;
            i15 = i12;
        } else {
            i15 = i11;
            i16 = i12;
        }
        float fB = lVar.b(i15, i16, i13, i14);
        if (fB <= 0.0f) {
            throw new IllegalArgumentException("Cannot scale with factor: " + fB + " from: " + lVar + ", source: [" + i11 + "x" + i12 + "], target: [" + i13 + "x" + i14 + "]");
        }
        l.g gVarA = lVar.a(i15, i16, i13, i14);
        if (gVarA == null) {
            throw new IllegalArgumentException("Cannot round with null rounding");
        }
        float f = i15;
        float f6 = i16;
        int iX = i15 / x(fB * f);
        int iX2 = i16 / x(fB * f6);
        l.g gVar = l.g.MEMORY;
        int iMax = gVarA == gVar ? Math.max(iX, iX2) : Math.min(iX, iX2);
        int i18 = Build.VERSION.SDK_INT;
        if (i18 > 23 || !NO_DOWNSAMPLE_PRE_N_MIME_TYPES.contains(options.outMimeType)) {
            int iMax2 = Math.max(1, Integer.highestOneBit(iMax));
            if (gVarA == gVar && iMax2 < 1.0f / fB) {
                iMax2 <<= 1;
            }
            i17 = iMax2;
        } else {
            i17 = 1;
        }
        options.inSampleSize = i17;
        if (imageType == ImageHeaderParser.ImageType.JPEG) {
            float fMin = Math.min(i17, 8);
            iFloor = (int) Math.ceil(f / fMin);
            iRound = (int) Math.ceil(f6 / fMin);
            int i19 = i17 / 8;
            if (i19 > 0) {
                iFloor /= i19;
                iRound /= i19;
            }
        } else {
            if (imageType == ImageHeaderParser.ImageType.PNG || imageType == ImageHeaderParser.ImageType.PNG_A) {
                float f7 = i17;
                iFloor = (int) Math.floor(f / f7);
                dFloor = Math.floor(f6 / f7);
            } else if (imageType == ImageHeaderParser.ImageType.WEBP || imageType == ImageHeaderParser.ImageType.WEBP_A) {
                if (i18 >= 24) {
                    float f10 = i17;
                    iFloor = Math.round(f / f10);
                    iRound = Math.round(f6 / f10);
                } else {
                    float f11 = i17;
                    iFloor = (int) Math.floor(f / f11);
                    dFloor = Math.floor(f6 / f11);
                }
            } else if (i15 % i17 == 0 && i16 % i17 == 0) {
                iFloor = i15 / i17;
                iRound = i16 / i17;
            } else {
                int[] iArrM = m(vVar, options, bVar, dVar);
                iFloor = iArrM[0];
                iRound = iArrM[1];
            }
            iRound = (int) dFloor;
        }
        double dB = lVar.b(iFloor, iRound, i13, i14);
        options.inTargetDensity = a(dB);
        options.inDensity = l(dB);
        if (s(options)) {
            options.inScaled = true;
        } else {
            options.inTargetDensity = 0;
            options.inDensity = 0;
        }
        if (Log.isLoggable(TAG, 2)) {
            Log.v(TAG, "Calculate scaling, source: [" + i11 + "x" + i12 + "], degreesToRotate: " + i10 + ", target: [" + i13 + "x" + i14 + "], power of two scaled: [" + iFloor + "x" + iRound + "], exact scale factor: " + fB + ", power of 2 sample size: " + i17 + ", adjusted scale factor: " + dB + ", target density: " + options.inTargetDensity + ", density: " + options.inDensity);
        }
    }

    private com.bumptech.glide.load.engine.v<Bitmap> e(v vVar, int i10, int i11, com.bumptech.glide.load.i iVar, b bVar) throws IOException {
        byte[] bArr = (byte[]) this.byteArrayPool.c(65536, byte[].class);
        BitmapFactory.Options optionsK = k();
        optionsK.inTempStorage = bArr;
        com.bumptech.glide.load.b bVar2 = (com.bumptech.glide.load.b) iVar.c(DECODE_FORMAT);
        com.bumptech.glide.load.j jVar = (com.bumptech.glide.load.j) iVar.c(PREFERRED_COLOR_SPACE);
        l lVar = (l) iVar.c(l.OPTION);
        boolean zBooleanValue = ((Boolean) iVar.c(FIX_BITMAP_SIZE_TO_REQUESTED_DIMENSIONS)).booleanValue();
        com.bumptech.glide.load.h<Boolean> hVar = ALLOW_HARDWARE_CONFIG;
        try {
            return f.d(h(vVar, optionsK, lVar, bVar2, jVar, iVar.c(hVar) != null && ((Boolean) iVar.c(hVar)).booleanValue(), i10, i11, zBooleanValue, bVar), this.bitmapPool);
        } finally {
            v(optionsK);
            this.byteArrayPool.e(bArr);
        }
    }

    private static int[] m(v vVar, BitmapFactory.Options options, b bVar, com.bumptech.glide.load.engine.bitmap_recycle.d dVar) throws IOException {
        options.inJustDecodeBounds = true;
        i(vVar, options, bVar, dVar);
        options.inJustDecodeBounds = false;
        return new int[]{options.outWidth, options.outHeight};
    }

    private static boolean r(int i10) {
        return i10 == 90 || i10 == 270;
    }

    private static void w(BitmapFactory.Options options) {
        options.inTempStorage = null;
        options.inDither = false;
        options.inScaled = false;
        options.inSampleSize = 1;
        options.inPreferredConfig = null;
        options.inJustDecodeBounds = false;
        options.inDensity = 0;
        options.inTargetDensity = 0;
        if (Build.VERSION.SDK_INT >= 26) {
            options.inPreferredColorSpace = null;
            options.outColorSpace = null;
            options.outConfig = null;
        }
        options.outWidth = 0;
        options.outHeight = 0;
        options.outMimeType = null;
        options.inBitmap = null;
        options.inMutable = true;
    }

    private static int x(double d) {
        return (int) (d + 0.5d);
    }

    private boolean z(ImageHeaderParser.ImageType imageType) {
        return true;
    }

    public boolean p(InputStream inputStream) {
        return true;
    }

    public boolean q(ByteBuffer byteBuffer) {
        return true;
    }

    class a implements b {
        @Override // com.bumptech.glide.load.resource.bitmap.p.b
        public void a() {
        }

        @Override // com.bumptech.glide.load.resource.bitmap.p.b
        public void b(com.bumptech.glide.load.engine.bitmap_recycle.d dVar, Bitmap bitmap) {
        }

        a() {
        }
    }

    static {
        Boolean bool = Boolean.FALSE;
        FIX_BITMAP_SIZE_TO_REQUESTED_DIMENSIONS = com.bumptech.glide.load.h.f("com.bumptech.glide.load.resource.bitmap.Downsampler.FixBitmapSize", bool);
        ALLOW_HARDWARE_CONFIG = com.bumptech.glide.load.h.f("com.bumptech.glide.load.resource.bitmap.Downsampler.AllowHardwareDecode", bool);
        NO_DOWNSAMPLE_PRE_N_MIME_TYPES = Collections.unmodifiableSet(new HashSet(Arrays.asList(WBMP_MIME_TYPE, ICO_MIME_TYPE)));
        EMPTY_CALLBACKS = new a();
        TYPES_THAT_USE_POOL_PRE_KITKAT = Collections.unmodifiableSet(EnumSet.of(ImageHeaderParser.ImageType.JPEG, ImageHeaderParser.ImageType.PNG_A, ImageHeaderParser.ImageType.PNG));
        OPTIONS_QUEUE = com.bumptech.glide.util.k.e(0);
    }

    private void b(v vVar, com.bumptech.glide.load.b bVar, boolean z6, boolean z10, BitmapFactory.Options options, int i10, int i11) {
        Bitmap.Config config;
        if (this.hardwareConfigState.e(i10, i11, options, z6, z10)) {
            return;
        }
        if (bVar == com.bumptech.glide.load.b.PREFER_ARGB_8888) {
            options.inPreferredConfig = Bitmap.Config.ARGB_8888;
            return;
        }
        try {
            config = vVar.d().hasAlpha() ? Bitmap.Config.ARGB_8888 : Bitmap.Config.RGB_565;
        } catch (IOException e) {
            if (Log.isLoggable(TAG, 3)) {
                Log.d(TAG, "Cannot determine whether the image has alpha or not from header, format " + bVar, e);
            }
        }
        options.inPreferredConfig = config;
        if (config == Bitmap.Config.RGB_565) {
            options.inDither = true;
        }
    }

    private Bitmap h(v vVar, BitmapFactory.Options options, l lVar, com.bumptech.glide.load.b bVar, com.bumptech.glide.load.j jVar, boolean z6, int i10, int i11, boolean z10, b bVar2) throws IOException {
        int i12;
        int i13;
        int i14;
        String str;
        int iRound;
        int iRound2;
        long jB = com.bumptech.glide.util.f.b();
        int[] iArrM = m(vVar, options, bVar2, this.bitmapPool);
        int i15 = iArrM[0];
        int i16 = iArrM[1];
        String str2 = options.outMimeType;
        boolean z11 = (i15 == -1 || i16 == -1) ? false : z6;
        int iB = vVar.b();
        int iE = c0.e(iB);
        boolean zH = c0.h(iB);
        if (i10 == Integer.MIN_VALUE) {
            i12 = i11;
            i13 = r(iE) ? i16 : i15;
        } else {
            i12 = i11;
            i13 = i10;
        }
        if (i12 == Integer.MIN_VALUE) {
            i14 = r(iE) ? i15 : i16;
        } else {
            i14 = i12;
        }
        ImageHeaderParser.ImageType imageTypeD = vVar.d();
        c(imageTypeD, vVar, bVar2, this.bitmapPool, lVar, iE, i15, i16, i13, i14, options);
        b(vVar, bVar, z11, zH, options, i13, i14);
        int i17 = Build.VERSION.SDK_INT;
        if (z(imageTypeD)) {
            if (i15 < 0 || i16 < 0 || !z10) {
                float f = s(options) ? options.inTargetDensity / options.inDensity : 1.0f;
                int i18 = options.inSampleSize;
                float f6 = i18;
                int iCeil = (int) Math.ceil(i15 / f6);
                int iCeil2 = (int) Math.ceil(i16 / f6);
                iRound = Math.round(iCeil * f);
                iRound2 = Math.round(iCeil2 * f);
                str = TAG;
                if (Log.isLoggable(str, 2)) {
                    Log.v(str, "Calculated target [" + iRound + "x" + iRound2 + "] for source [" + i15 + "x" + i16 + "], sampleSize: " + i18 + ", targetDensity: " + options.inTargetDensity + ", density: " + options.inDensity + ", density multiplier: " + f);
                }
            } else {
                str = TAG;
                iRound = i13;
                iRound2 = i14;
            }
            if (iRound > 0 && iRound2 > 0) {
                y(options, this.bitmapPool, iRound, iRound2);
            }
        } else {
            str = TAG;
        }
        if (i17 >= 28) {
            options.inPreferredColorSpace = ColorSpace.get((jVar == com.bumptech.glide.load.j.DISPLAY_P3 && options.outColorSpace != null && options.outColorSpace.isWideGamut()) ? ColorSpace.Named.DISPLAY_P3 : ColorSpace.Named.SRGB);
        } else if (i17 >= 26) {
            options.inPreferredColorSpace = ColorSpace.get(ColorSpace.Named.SRGB);
        }
        Bitmap bitmapI = i(vVar, options, bVar2, this.bitmapPool);
        bVar2.b(this.bitmapPool, bitmapI);
        if (Log.isLoggable(str, 2)) {
            t(i15, i16, str2, options, bitmapI, i10, i11, jB);
        }
        if (bitmapI == null) {
            return null;
        }
        bitmapI.setDensity(this.displayMetrics.densityDpi);
        Bitmap bitmapI2 = c0.i(this.bitmapPool, bitmapI, iB);
        if (bitmapI.equals(bitmapI2)) {
            return bitmapI2;
        }
        this.bitmapPool.c(bitmapI);
        return bitmapI2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:?, code lost:
    
        throw r1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static Bitmap i(v vVar, BitmapFactory.Options options, b bVar, com.bumptech.glide.load.engine.bitmap_recycle.d dVar) throws IOException {
        if (!options.inJustDecodeBounds) {
            bVar.a();
            vVar.a();
        }
        int i10 = options.outWidth;
        int i11 = options.outHeight;
        String str = options.outMimeType;
        c0.d().lock();
        try {
            try {
                Bitmap bitmapC = vVar.c(options);
                c0.d().unlock();
                return bitmapC;
            } catch (IllegalArgumentException e) {
                IOException iOExceptionU = u(e, i10, i11, str, options);
                if (Log.isLoggable(TAG, 3)) {
                    Log.d(TAG, "Failed to decode with inBitmap, trying again without Bitmap re-use", iOExceptionU);
                }
                Bitmap bitmap = options.inBitmap;
                if (bitmap == null) {
                    throw iOExceptionU;
                }
                try {
                    dVar.c(bitmap);
                    options.inBitmap = null;
                    Bitmap bitmapI = i(vVar, options, bVar, dVar);
                    c0.d().unlock();
                    return bitmapI;
                } catch (IOException unused) {
                    throw iOExceptionU;
                }
            }
        } catch (Throwable th) {
            c0.d().unlock();
            throw th;
        }
    }

    @Nullable
    @TargetApi(19)
    private static String j(Bitmap bitmap) {
        if (bitmap == null) {
            return null;
        }
        return "[" + bitmap.getWidth() + "x" + bitmap.getHeight() + "] " + bitmap.getConfig() + (" (" + bitmap.getAllocationByteCount() + ")");
    }

    private static synchronized BitmapFactory.Options k() {
        BitmapFactory.Options optionsPoll;
        Queue<BitmapFactory.Options> queue = OPTIONS_QUEUE;
        synchronized (queue) {
            optionsPoll = queue.poll();
        }
        if (optionsPoll == null) {
            optionsPoll = new BitmapFactory.Options();
            w(optionsPoll);
        }
        return optionsPoll;
    }

    private static int l(double d) {
        if (d > 1.0d) {
            d = 1.0d / d;
        }
        return (int) Math.round(d * 2.147483647E9d);
    }

    private static String n(BitmapFactory.Options options) {
        return j(options.inBitmap);
    }

    private static boolean s(BitmapFactory.Options options) {
        int i10;
        int i11 = options.inTargetDensity;
        return i11 > 0 && (i10 = options.inDensity) > 0 && i11 != i10;
    }

    private static void t(int i10, int i11, String str, BitmapFactory.Options options, Bitmap bitmap, int i12, int i13, long j6) {
        Log.v(TAG, "Decoded " + j(bitmap) + " from [" + i10 + "x" + i11 + "] " + str + " with inBitmap " + n(options) + " for [" + i12 + "x" + i13 + "], sample size: " + options.inSampleSize + ", density: " + options.inDensity + ", target density: " + options.inTargetDensity + ", thread: " + Thread.currentThread().getName() + ", duration: " + com.bumptech.glide.util.f.a(j6));
    }

    private static IOException u(IllegalArgumentException illegalArgumentException, int i10, int i11, String str, BitmapFactory.Options options) {
        return new IOException("Exception decoding bitmap, outWidth: " + i10 + ", outHeight: " + i11 + ", outMimeType: " + str + ", inBitmap: " + n(options), illegalArgumentException);
    }

    @TargetApi(26)
    private static void y(BitmapFactory.Options options, com.bumptech.glide.load.engine.bitmap_recycle.d dVar, int i10, int i11) {
        Bitmap.Config config;
        if (Build.VERSION.SDK_INT < 26) {
            config = null;
        } else if (options.inPreferredConfig == Bitmap.Config.HARDWARE) {
            return;
        } else {
            config = options.outConfig;
        }
        if (config == null) {
            config = options.inPreferredConfig;
        }
        options.inBitmap = dVar.e(i10, i11, config);
    }

    @RequiresApi
    public com.bumptech.glide.load.engine.v<Bitmap> d(ParcelFileDescriptor parcelFileDescriptor, int i10, int i11, com.bumptech.glide.load.i iVar) throws IOException {
        return e(new v.b(parcelFileDescriptor, this.parsers, this.byteArrayPool), i10, i11, iVar, EMPTY_CALLBACKS);
    }

    public com.bumptech.glide.load.engine.v<Bitmap> f(InputStream inputStream, int i10, int i11, com.bumptech.glide.load.i iVar) throws IOException {
        return g(inputStream, i10, i11, iVar, EMPTY_CALLBACKS);
    }

    public com.bumptech.glide.load.engine.v<Bitmap> g(InputStream inputStream, int i10, int i11, com.bumptech.glide.load.i iVar, b bVar) throws IOException {
        return e(new v.a(inputStream, this.parsers, this.byteArrayPool), i10, i11, iVar, bVar);
    }

    public p(List<ImageHeaderParser> list, DisplayMetrics displayMetrics, com.bumptech.glide.load.engine.bitmap_recycle.d dVar, com.bumptech.glide.load.engine.bitmap_recycle.b bVar) {
        this.parsers = list;
        this.displayMetrics = (DisplayMetrics) com.bumptech.glide.util.j.d(displayMetrics);
        this.bitmapPool = (com.bumptech.glide.load.engine.bitmap_recycle.d) com.bumptech.glide.util.j.d(dVar);
        this.byteArrayPool = (com.bumptech.glide.load.engine.bitmap_recycle.b) com.bumptech.glide.util.j.d(bVar);
    }

    private static int a(double d) {
        int iL = l(d);
        int iX = x(((double) iL) * d);
        return x((d / ((double) (iX / iL))) * ((double) iX));
    }

    private static void v(BitmapFactory.Options options) {
        w(options);
        Queue<BitmapFactory.Options> queue = OPTIONS_QUEUE;
        synchronized (queue) {
            queue.offer(options);
        }
    }

    public boolean o(ParcelFileDescriptor parcelFileDescriptor) {
        return com.bumptech.glide.load.data.m.c();
    }
}
