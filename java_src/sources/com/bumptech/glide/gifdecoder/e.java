package com.bumptech.glide.gifdecoder;

import android.graphics.Bitmap;
import android.util.Log;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.FragmentTransaction;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;
import java.util.Iterator;

/* JADX INFO: loaded from: classes8.dex */
public class e implements a {
    private static final int BYTES_PER_INTEGER = 4;

    @ColorInt
    private static final int COLOR_TRANSPARENT_BLACK = 0;
    private static final int INITIAL_FRAME_POINTER = -1;
    private static final int MASK_INT_LOWEST_BYTE = 255;
    private static final int MAX_STACK_SIZE = 4096;
    private static final int NULL_CODE = -1;
    private static final String TAG = "e";

    @ColorInt
    private int[] act;

    @NonNull
    private Bitmap.Config bitmapConfig;
    private final a.InterfaceC0118a bitmapProvider;
    private byte[] block;
    private int downsampledHeight;
    private int downsampledWidth;
    private int framePointer;
    private c header;

    @Nullable
    private Boolean isFirstFrameTransparent;
    private byte[] mainPixels;

    @ColorInt
    private int[] mainScratch;
    private d parser;

    @ColorInt
    private final int[] pct;
    private byte[] pixelStack;
    private short[] prefix;
    private Bitmap previousImage;
    private ByteBuffer rawData;
    private int sampleSize;
    private boolean savePrevious;
    private int status;
    private byte[] suffix;

    public e(@NonNull a.InterfaceC0118a interfaceC0118a, c cVar, ByteBuffer byteBuffer) {
        this(interfaceC0118a, cVar, byteBuffer, 1);
    }

    @ColorInt
    private int i(int i10, int i11, int i12) {
        int i13 = 0;
        int i14 = 0;
        int i15 = 0;
        int i16 = 0;
        int i17 = 0;
        for (int i18 = i10; i18 < this.sampleSize + i10; i18++) {
            byte[] bArr = this.mainPixels;
            if (i18 >= bArr.length || i18 >= i11) {
                break;
            }
            int i19 = this.act[bArr[i18] & 255];
            if (i19 != 0) {
                i13 += (i19 >> 24) & 255;
                i14 += (i19 >> 16) & 255;
                i15 += (i19 >> 8) & 255;
                i16 += i19 & 255;
                i17++;
            }
        }
        int i20 = i10 + i12;
        for (int i21 = i20; i21 < this.sampleSize + i20; i21++) {
            byte[] bArr2 = this.mainPixels;
            if (i21 >= bArr2.length || i21 >= i11) {
                break;
            }
            int i22 = this.act[bArr2[i21] & 255];
            if (i22 != 0) {
                i13 += (i22 >> 24) & 255;
                i14 += (i22 >> 16) & 255;
                i15 += (i22 >> 8) & 255;
                i16 += i22 & 255;
                i17++;
            }
        }
        if (i17 == 0) {
            return 0;
        }
        return ((i13 / i17) << 24) | ((i14 / i17) << 16) | ((i15 / i17) << 8) | (i16 / i17);
    }

    @Override // com.bumptech.glide.gifdecoder.a
    public void b() {
        this.framePointer = -1;
    }

    @Override // com.bumptech.glide.gifdecoder.a
    public int c() {
        return this.framePointer;
    }

    @Override // com.bumptech.glide.gifdecoder.a
    public void clear() {
        this.header = null;
        byte[] bArr = this.mainPixels;
        if (bArr != null) {
            this.bitmapProvider.e(bArr);
        }
        int[] iArr = this.mainScratch;
        if (iArr != null) {
            this.bitmapProvider.f(iArr);
        }
        Bitmap bitmap = this.previousImage;
        if (bitmap != null) {
            this.bitmapProvider.c(bitmap);
        }
        this.previousImage = null;
        this.rawData = null;
        this.isFirstFrameTransparent = null;
        byte[] bArr2 = this.block;
        if (bArr2 != null) {
            this.bitmapProvider.e(bArr2);
        }
    }

    @Override // com.bumptech.glide.gifdecoder.a
    @Nullable
    public synchronized Bitmap e() {
        try {
            if (this.header.frameCount <= 0 || this.framePointer < 0) {
                String str = TAG;
                if (Log.isLoggable(str, 3)) {
                    Log.d(str, "Unable to decode frame, frameCount=" + this.header.frameCount + ", framePointer=" + this.framePointer);
                }
                this.status = 1;
            }
            int i10 = this.status;
            if (i10 != 1 && i10 != 2) {
                this.status = 0;
                if (this.block == null) {
                    this.block = this.bitmapProvider.a(255);
                }
                b bVar = this.header.frames.get(this.framePointer);
                int i11 = this.framePointer - 1;
                b bVar2 = i11 >= 0 ? this.header.frames.get(i11) : null;
                int[] iArr = bVar.lct;
                if (iArr == null) {
                    iArr = this.header.gct;
                }
                this.act = iArr;
                if (iArr == null) {
                    String str2 = TAG;
                    if (Log.isLoggable(str2, 3)) {
                        Log.d(str2, "No valid color table found for frame #" + this.framePointer);
                    }
                    this.status = 1;
                    return null;
                }
                if (bVar.transparency) {
                    System.arraycopy(iArr, 0, this.pct, 0, iArr.length);
                    int[] iArr2 = this.pct;
                    this.act = iArr2;
                    iArr2[bVar.transIndex] = 0;
                    if (bVar.dispose == 2 && this.framePointer == 0) {
                        this.isFirstFrameTransparent = Boolean.TRUE;
                    }
                }
                return r(bVar, bVar2);
            }
            String str3 = TAG;
            if (Log.isLoggable(str3, 3)) {
                Log.d(str3, "Unable to decode frame, status=" + this.status);
            }
            return null;
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.bumptech.glide.gifdecoder.a
    @NonNull
    public ByteBuffer getData() {
        return this.rawData;
    }

    public synchronized void q(@NonNull c cVar, @NonNull ByteBuffer byteBuffer, int i10) {
        try {
            if (i10 <= 0) {
                throw new IllegalArgumentException("Sample size must be >=0, not: " + i10);
            }
            int iHighestOneBit = Integer.highestOneBit(i10);
            this.status = 0;
            this.header = cVar;
            this.framePointer = -1;
            ByteBuffer byteBufferAsReadOnlyBuffer = byteBuffer.asReadOnlyBuffer();
            this.rawData = byteBufferAsReadOnlyBuffer;
            byteBufferAsReadOnlyBuffer.position(0);
            this.rawData.order(ByteOrder.LITTLE_ENDIAN);
            this.savePrevious = false;
            Iterator<b> it = cVar.frames.iterator();
            while (it.hasNext()) {
                if (it.next().dispose == 3) {
                    this.savePrevious = true;
                    break;
                }
            }
            this.sampleSize = iHighestOneBit;
            int i11 = cVar.width;
            this.downsampledWidth = i11 / iHighestOneBit;
            int i12 = cVar.height;
            this.downsampledHeight = i12 / iHighestOneBit;
            this.mainPixels = this.bitmapProvider.a(i11 * i12);
            this.mainScratch = this.bitmapProvider.d(this.downsampledWidth * this.downsampledHeight);
        } catch (Throwable th) {
            throw th;
        }
    }

    public e(@NonNull a.InterfaceC0118a interfaceC0118a, c cVar, ByteBuffer byteBuffer, int i10) {
        this(interfaceC0118a);
        q(cVar, byteBuffer, i10);
    }

    private void j(b bVar) {
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int[] iArr = this.mainScratch;
        int i15 = bVar.ih;
        int i16 = this.sampleSize;
        int i17 = i15 / i16;
        int i18 = bVar.iy / i16;
        int i19 = bVar.iw / i16;
        int i20 = bVar.ix / i16;
        boolean z6 = this.framePointer == 0;
        int i21 = this.downsampledWidth;
        int i22 = this.downsampledHeight;
        byte[] bArr = this.mainPixels;
        int[] iArr2 = this.act;
        Boolean bool = this.isFirstFrameTransparent;
        int i23 = 8;
        int i24 = 0;
        int i25 = 0;
        int i26 = 1;
        while (i25 < i17) {
            Boolean bool2 = bool;
            if (bVar.interlace) {
                if (i24 >= i17) {
                    int i27 = i26 + 1;
                    i10 = i17;
                    if (i27 == 2) {
                        i24 = 4;
                    } else if (i27 == 3) {
                        i23 = 4;
                        i26 = i27;
                        i24 = 2;
                    } else if (i27 == 4) {
                        i26 = i27;
                        i24 = 1;
                        i23 = 2;
                    }
                    i26 = i27;
                } else {
                    i10 = i17;
                }
                i11 = i24 + i23;
            } else {
                i10 = i17;
                i11 = i24;
                i24 = i25;
            }
            int i28 = i24 + i18;
            boolean z10 = i16 == 1;
            if (i28 < i22) {
                int i29 = i28 * i21;
                int i30 = i29 + i20;
                int i31 = i30 + i19;
                int i32 = i29 + i21;
                if (i32 < i31) {
                    i31 = i32;
                }
                i12 = i11;
                int i33 = i25 * i16 * bVar.iw;
                if (!z10) {
                    i14 = i18;
                    int i34 = ((i31 - i30) * i16) + i33;
                    int i35 = i30;
                    while (true) {
                        i13 = i19;
                        if (i35 >= i31) {
                            break;
                        }
                        int i36 = i(i33, i34, bVar.iw);
                        if (i36 != 0) {
                            iArr[i35] = i36;
                        } else if (z6 && bool2 == null) {
                            bool2 = Boolean.TRUE;
                        }
                        i33 += i16;
                        i35++;
                        i19 = i13;
                    }
                } else {
                    int i37 = i30;
                    while (i37 < i31) {
                        int i38 = i18;
                        int i39 = iArr2[bArr[i33] & 255];
                        if (i39 != 0) {
                            iArr[i37] = i39;
                        } else if (z6 && bool2 == null) {
                            bool2 = Boolean.TRUE;
                        }
                        i33 += i16;
                        i37++;
                        i18 = i38;
                    }
                }
                bool = bool2;
                i25++;
                i18 = i14;
                i17 = i10;
                i19 = i13;
                i24 = i12;
            } else {
                i12 = i11;
            }
            i14 = i18;
            i13 = i19;
            bool = bool2;
            i25++;
            i18 = i14;
            i17 = i10;
            i19 = i13;
            i24 = i12;
        }
        Boolean bool3 = bool;
        if (this.isFirstFrameTransparent == null) {
            this.isFirstFrameTransparent = Boolean.valueOf(bool3 == null ? false : bool3.booleanValue());
        }
    }

    private void k(b bVar) {
        b bVar2 = bVar;
        int[] iArr = this.mainScratch;
        int i10 = bVar2.ih;
        int i11 = bVar2.iy;
        int i12 = bVar2.iw;
        int i13 = bVar2.ix;
        boolean z6 = this.framePointer == 0;
        int i14 = this.downsampledWidth;
        byte[] bArr = this.mainPixels;
        int[] iArr2 = this.act;
        int i15 = 0;
        byte b7 = -1;
        while (i15 < i10) {
            int i16 = (i15 + i11) * i14;
            int i17 = i16 + i13;
            int i18 = i17 + i12;
            int i19 = i16 + i14;
            if (i19 < i18) {
                i18 = i19;
            }
            int i20 = bVar2.iw * i15;
            int i21 = i17;
            while (i21 < i18) {
                byte b10 = bArr[i20];
                int i22 = i10;
                int i23 = b10 & 255;
                if (i23 != b7) {
                    int i24 = iArr2[i23];
                    if (i24 != 0) {
                        iArr[i21] = i24;
                    } else {
                        b7 = b10;
                    }
                }
                i20++;
                i21++;
                i10 = i22;
            }
            i15++;
            bVar2 = bVar;
        }
        Boolean bool = this.isFirstFrameTransparent;
        this.isFirstFrameTransparent = Boolean.valueOf((bool != null && bool.booleanValue()) || (this.isFirstFrameTransparent == null && z6 && b7 != -1));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v10 */
    /* JADX WARN: Type inference failed for: r7v11 */
    /* JADX WARN: Type inference failed for: r7v12 */
    /* JADX WARN: Type inference failed for: r7v15, types: [short] */
    /* JADX WARN: Type inference failed for: r7v17 */
    private void l(b bVar) {
        int i10;
        int i11;
        short s;
        e eVar = this;
        if (bVar != null) {
            eVar.rawData.position(bVar.bufferFrameStart);
        }
        if (bVar == null) {
            c cVar = eVar.header;
            i10 = cVar.width;
            i11 = cVar.height;
        } else {
            i10 = bVar.iw;
            i11 = bVar.ih;
        }
        int i12 = i10 * i11;
        byte[] bArr = eVar.mainPixels;
        if (bArr == null || bArr.length < i12) {
            eVar.mainPixels = eVar.bitmapProvider.a(i12);
        }
        byte[] bArr2 = eVar.mainPixels;
        if (eVar.prefix == null) {
            eVar.prefix = new short[4096];
        }
        short[] sArr = eVar.prefix;
        if (eVar.suffix == null) {
            eVar.suffix = new byte[4096];
        }
        byte[] bArr3 = eVar.suffix;
        if (eVar.pixelStack == null) {
            eVar.pixelStack = new byte[FragmentTransaction.TRANSIT_FRAGMENT_OPEN];
        }
        byte[] bArr4 = eVar.pixelStack;
        int iP = p();
        int i13 = 1 << iP;
        int i14 = i13 + 1;
        int i15 = i13 + 2;
        int i16 = iP + 1;
        int i17 = (1 << i16) - 1;
        int i18 = 0;
        for (int i19 = 0; i19 < i13; i19++) {
            sArr[i19] = 0;
            bArr3[i19] = (byte) i19;
        }
        byte[] bArr5 = eVar.block;
        int i20 = i16;
        int i21 = i15;
        int i22 = i17;
        int iO = 0;
        int i23 = 0;
        int i24 = 0;
        int i25 = 0;
        int i26 = 0;
        int i27 = 0;
        int i28 = 0;
        int i29 = -1;
        while (i18 < i12) {
            if (iO == 0) {
                iO = o();
                if (iO <= 0) {
                    eVar.status = 3;
                    break;
                }
                i23 = 0;
            }
            i25 += (bArr5[i23] & 255) << i24;
            i23++;
            iO--;
            int i30 = i24 + 8;
            i21 = i21;
            i29 = i29;
            i20 = i20;
            i16 = i16;
            i28 = i28;
            while (true) {
                if (i30 < i20) {
                    i24 = i30;
                    break;
                }
                int i31 = i15;
                int i32 = i25 & i22;
                i25 >>= i20;
                i30 -= i20;
                if (i32 == i13) {
                    i22 = i17;
                    i20 = i16;
                    i21 = i31;
                    i15 = i21;
                    i29 = -1;
                } else {
                    if (i32 == i14) {
                        i24 = i30;
                        i15 = i31;
                        break;
                    }
                    if (i29 == -1) {
                        bArr2[i26] = bArr3[i32];
                        i26++;
                        i18++;
                        i29 = i32;
                        i28 = i29;
                        i15 = i31;
                        i30 = i30;
                    } else {
                        if (i32 >= i21) {
                            bArr4[i27] = (byte) i28;
                            i27++;
                            s = i29;
                        } else {
                            s = i32;
                        }
                        while (s >= i13) {
                            bArr4[i27] = bArr3[s];
                            i27++;
                            s = sArr[s];
                        }
                        i28 = bArr3[s] & 255;
                        byte b7 = (byte) i28;
                        bArr2[i26] = b7;
                        while (true) {
                            i26++;
                            i18++;
                            if (i27 <= 0) {
                                break;
                            }
                            i27--;
                            bArr2[i26] = bArr4[i27];
                        }
                        byte[] bArr6 = bArr4;
                        if (i21 < 4096) {
                            sArr[i21] = (short) i29;
                            bArr3[i21] = b7;
                            i21++;
                            if ((i21 & i22) == 0 && i21 < 4096) {
                                i20++;
                                i22 += i21;
                            }
                        }
                        i29 = i32;
                        i15 = i31;
                        i30 = i30;
                        bArr4 = bArr6;
                    }
                }
            }
            eVar = this;
        }
        Arrays.fill(bArr2, i26, i12, (byte) 0);
    }

    private Bitmap n() {
        Boolean bool = this.isFirstFrameTransparent;
        Bitmap bitmapB = this.bitmapProvider.b(this.downsampledWidth, this.downsampledHeight, (bool == null || bool.booleanValue()) ? Bitmap.Config.ARGB_8888 : this.bitmapConfig);
        bitmapB.setHasAlpha(true);
        return bitmapB;
    }

    private int p() {
        return this.rawData.get() & 255;
    }

    private Bitmap r(b bVar, b bVar2) {
        int i10;
        int i11;
        Bitmap bitmap;
        int[] iArr = this.mainScratch;
        int i12 = 0;
        if (bVar2 == null) {
            Bitmap bitmap2 = this.previousImage;
            if (bitmap2 != null) {
                this.bitmapProvider.c(bitmap2);
            }
            this.previousImage = null;
            Arrays.fill(iArr, 0);
        }
        if (bVar2 != null && bVar2.dispose == 3 && this.previousImage == null) {
            Arrays.fill(iArr, 0);
        }
        if (bVar2 != null && (i11 = bVar2.dispose) > 0) {
            if (i11 == 2) {
                if (!bVar.transparency) {
                    c cVar = this.header;
                    int i13 = cVar.bgColor;
                    if (bVar.lct == null || cVar.bgIndex != bVar.transIndex) {
                        i12 = i13;
                    }
                }
                int i14 = bVar2.ih;
                int i15 = this.sampleSize;
                int i16 = i14 / i15;
                int i17 = bVar2.iy / i15;
                int i18 = bVar2.iw / i15;
                int i19 = bVar2.ix / i15;
                int i20 = this.downsampledWidth;
                int i21 = (i17 * i20) + i19;
                int i22 = (i16 * i20) + i21;
                while (i21 < i22) {
                    int i23 = i21 + i18;
                    for (int i24 = i21; i24 < i23; i24++) {
                        iArr[i24] = i12;
                    }
                    i21 += this.downsampledWidth;
                }
            } else if (i11 == 3 && (bitmap = this.previousImage) != null) {
                int i25 = this.downsampledWidth;
                bitmap.getPixels(iArr, 0, i25, 0, 0, i25, this.downsampledHeight);
            }
        }
        l(bVar);
        if (bVar.interlace || this.sampleSize != 1) {
            j(bVar);
        } else {
            k(bVar);
        }
        if (this.savePrevious && ((i10 = bVar.dispose) == 0 || i10 == 1)) {
            if (this.previousImage == null) {
                this.previousImage = n();
            }
            Bitmap bitmap3 = this.previousImage;
            int i26 = this.downsampledWidth;
            bitmap3.setPixels(iArr, 0, i26, 0, 0, i26, this.downsampledHeight);
        }
        Bitmap bitmapN = n();
        int i27 = this.downsampledWidth;
        bitmapN.setPixels(iArr, 0, i27, 0, 0, i27, this.downsampledHeight);
        return bitmapN;
    }

    @Override // com.bumptech.glide.gifdecoder.a
    public void a(@NonNull Bitmap.Config config) {
        Bitmap.Config config2;
        Bitmap.Config config3 = Bitmap.Config.ARGB_8888;
        if (config == config3 || config == (config2 = Bitmap.Config.RGB_565)) {
            this.bitmapConfig = config;
            return;
        }
        throw new IllegalArgumentException("Unsupported format: " + config + ", must be one of " + config3 + " or " + config2);
    }

    @Override // com.bumptech.glide.gifdecoder.a
    public int d() {
        return this.rawData.limit() + this.mainPixels.length + (this.mainScratch.length * 4);
    }

    @Override // com.bumptech.glide.gifdecoder.a
    public void f() {
        this.framePointer = (this.framePointer + 1) % this.header.frameCount;
    }

    @Override // com.bumptech.glide.gifdecoder.a
    public int g() {
        return this.header.frameCount;
    }

    @Override // com.bumptech.glide.gifdecoder.a
    public int h() {
        int i10;
        if (this.header.frameCount <= 0 || (i10 = this.framePointer) < 0) {
            return 0;
        }
        return m(i10);
    }

    public int m(int i10) {
        if (i10 >= 0) {
            c cVar = this.header;
            if (i10 < cVar.frameCount) {
                return cVar.frames.get(i10).delay;
            }
        }
        return -1;
    }

    private int o() {
        int iP = p();
        if (iP <= 0) {
            return iP;
        }
        ByteBuffer byteBuffer = this.rawData;
        byteBuffer.get(this.block, 0, Math.min(iP, byteBuffer.remaining()));
        return iP;
    }

    public e(@NonNull a.InterfaceC0118a interfaceC0118a) {
        this.pct = new int[256];
        this.bitmapConfig = Bitmap.Config.ARGB_8888;
        this.bitmapProvider = interfaceC0118a;
        this.header = new c();
    }
}
