package com.meishe.cafconvertor;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.Log;
import com.meishe.cafconvertor.cafencoder.NvCafEncoder;
import com.meishe.cafconvertor.gifdecoder.GifDecoder;
import com.meishe.cafconvertor.gifdecoder.NvsGifDecoder;
import com.meishe.cafconvertor.webpcoder.NvsWebpDecoder;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes2.dex */
public class NvCafCreator implements NvsWebpDecoder.OnNvsWebpCallback {
    public static final int NvCafCreateStatusCreateGifDecoderFailed = 106;
    public static final int NvCafCreateStatusFinish = 101;
    public static final int NvCafCreateStatusGifNotExist = 103;
    public static final int NvCafCreateStatusGifNotSupport = 104;
    public static final int NvCafCreateStatusParamInvalid = 105;
    public static final int NvCafCreateStatusRunning = 102;
    public static final int NvCafCreateStatusUnknow = 100;
    public static final int OUTPUT_CAF_LOOP_MODE_MIRROR = 2;
    public static final int OUTPUT_CAF_LOOP_MODE_NONE = 0;
    public static final int OUTPUT_CAF_LOOP_MODE_REPEAT = 1;
    public static final int OUTPUT_CAF_LOOP_MODE_REPEAT_LAST_FRAME = 3;
    public static final int OUTPUT_FORMAT_JPG = 1;
    public static final int OUTPUT_FORMAT_PNG = 2;
    private final String a;
    private Context b;
    private String c;
    private String d;
    private int e;
    private int f;
    private int g;
    private NvRational h;
    private NvRational i;
    private int j;
    private int k;
    private NvsGifDecoder l;
    private NvCafEncoder m;
    private Bitmap n;
    private OnConvertListener o;
    private int p;
    private long q;
    private long r;
    private int s;
    private int t;
    private int u;
    private NvsWebpDecoder v;

    public interface OnConvertListener {
        void convertBitmap(Bitmap bitmap);

        void convertFinished(boolean z);
    }

    public NvCafCreator(Context context) {
        this.a = "NvCafCreator";
        this.g = 2;
        this.h = new NvRational(20, 1);
        this.i = new NvRational(1, 1);
        this.j = 0;
        this.k = 90;
        this.p = 101;
        this.q = 0L;
        this.r = 0L;
        this.s = 0;
        this.t = 0;
        this.b = context;
    }

    public NvCafCreator(Context context, String str, String str2, int i, int i2, int i3, NvRational nvRational, NvRational nvRational2, int i4) {
        this.a = "NvCafCreator";
        this.g = 2;
        this.h = new NvRational(20, 1);
        this.i = new NvRational(1, 1);
        this.j = 0;
        this.k = 90;
        this.p = 101;
        this.q = 0L;
        this.r = 0L;
        this.s = 0;
        this.t = 0;
        if (context == null) {
            Log.e("NvCafCreator", "NvCafCreator: context is null");
            return;
        }
        if (str == null || str.isEmpty()) {
            Log.e("NvCafCreator", "NvCafCreator: sourcePath is null");
            return;
        }
        if (str2 == null || str2.isEmpty()) {
            Log.e("NvCafCreator", "NvCafCreator: cafTargetPath is null");
            return;
        }
        this.b = context;
        this.c = str;
        this.d = str2;
        this.e = i;
        this.f = i2;
        if (nvRational != null) {
            NvRational nvRational3 = this.h;
            nvRational3.num = nvRational.num;
            nvRational3.den = nvRational.den;
        }
        if (nvRational2 != null) {
            NvRational nvRational4 = this.i;
            nvRational4.num = nvRational2.num;
            nvRational4.den = nvRational2.den;
        }
        this.g = i3;
        this.j = i4;
        b();
        a();
    }

    private void a() {
        String str = "initwebp: Input file stream is null";
        if (!this.c.toLowerCase().endsWith("webp")) {
            Log.e("NvCafCreator", "initwebp: Input file is not webp");
            return;
        }
        try {
        } catch (IOException e) {
            e.printStackTrace();
        }
        if (this.b == null) {
            Log.e("NvCafCreator", "initwebp: Context is null");
            return;
        }
        if ((this.c.startsWith("assets:/") ? this.b.getAssets().open(this.c.substring(8)) : new FileInputStream(this.c)) == null) {
            Log.e("NvCafCreator", "initwebp: Input file stream is null");
            return;
        }
        this.v = NvsWebpDecoder.getInstance(this.b);
        if (this.v == null) {
            str = "initwebp: create mNvsWebpDecoder failed!";
            Log.e("NvCafCreator", str);
        }
    }

    private void b() {
        String str = "initgif: Input file stream is null";
        if (!this.c.toLowerCase().endsWith("gif")) {
            Log.e("NvCafCreator", "initgif: Input file is not gif");
            return;
        }
        try {
        } catch (IOException e) {
            e.printStackTrace();
        }
        if (this.b == null) {
            Log.e("NvCafCreator", "initgif: Context is null");
            return;
        }
        InputStream inputStreamOpen = this.c.startsWith("assets:/") ? this.b.getAssets().open(this.c.substring(8)) : new FileInputStream(this.c);
        if (inputStreamOpen == null) {
            Log.e("NvCafCreator", "initgif: Input file stream is null");
            return;
        }
        this.l = new NvsGifDecoder();
        NvsGifDecoder nvsGifDecoder = this.l;
        if (nvsGifDecoder == null) {
            str = "initgif: create gifDecoder failed!";
        } else {
            nvsGifDecoder.read(inputStreamOpen);
            if (this.l.isGif()) {
                return;
            } else {
                str = "initgif: It is not a gif!";
            }
        }
        Log.e("NvCafCreator", str);
    }

    public int getCafDuration() {
        NvRational nvRational = this.h;
        float f = (nvRational.den * 1000.0f) / nvRational.num;
        if (this.m != null) {
            return (int) (f * r0.getFrameCount());
        }
        return 0;
    }

    @Override // com.meishe.cafconvertor.webpcoder.NvsWebpDecoder.OnNvsWebpCallback
    public void onCallBack(int i, Bitmap bitmap, long j) throws IOException {
        if (bitmap == null) {
            return;
        }
        OnConvertListener onConvertListener = this.o;
        if (onConvertListener != null) {
            onConvertListener.convertBitmap(bitmap);
        }
        this.s = (int) (this.s + j);
        while (this.t < this.s) {
            this.m.writeOneImage(bitmap, 90);
            this.t += this.u;
        }
        int i2 = i + 1;
        if (this.v.count == i2) {
            if (!this.m.writeHeader()) {
                Log.e("NvCafCreator", "start: writeHeader failed!");
            }
            if (!this.m.writeFrameIndexTable()) {
                Log.e("NvCafCreator", "start: writeFrameIndexTable failed!");
            }
            this.s = 0;
            this.t = 0;
            this.p = 101;
            Log.d("NvCafCreator", "解码完成，总帧数是：" + i2);
            OnConvertListener onConvertListener2 = this.o;
            if (onConvertListener2 != null) {
                onConvertListener2.convertFinished(true);
            }
        }
    }

    public void setOnConvertListener(OnConvertListener onConvertListener) {
        this.o = onConvertListener;
    }

    public int start() {
        int i;
        OnConvertListener onConvertListener;
        String str;
        if (this.p != 101) {
            Log.e("NvCafCreator", "start: current is running!");
        } else {
            if (this.c == null) {
                str = "start: Input file path is null";
            } else {
                String str2 = this.d;
                if (str2 == null) {
                    str = "start: target file path is null";
                } else {
                    this.m = new NvCafEncoder(this.b, str2, this.e, this.f, this.g, this.h, this.i, this.j);
                    if (this.m == null) {
                        str = "start: create cafEncoder failed!";
                    } else {
                        NvsGifDecoder nvsGifDecoder = this.l;
                        if (nvsGifDecoder == null || nvsGifDecoder.getGifDecoder() == null) {
                            Log.e("NvCafCreator", "start: create gifDecoder failed!");
                            i = 106;
                        } else if (this.l.isGif()) {
                            this.p = 102;
                            NvRational nvRational = this.h;
                            int i2 = (int) ((nvRational.den * 1000.0f) / nvRational.num);
                            int frameCount = this.l.getFrameCount();
                            GifDecoder gifDecoder = this.l.getGifDecoder();
                            gifDecoder.resetFrameIndex();
                            int delay = 0;
                            int i3 = 0;
                            for (int i4 = 0; i4 < frameCount; i4++) {
                                gifDecoder.advance();
                                this.n = gifDecoder.getNextFrame();
                                if (this.n != null) {
                                    delay += gifDecoder.getDelay(i4);
                                    while (i3 < delay) {
                                        i3 += i2;
                                        if (this.m.writeOneImage(this.n, 90) && (onConvertListener = this.o) != null) {
                                            onConvertListener.convertBitmap(this.n);
                                        }
                                    }
                                }
                            }
                            if (!this.m.writeHeader()) {
                                Log.e("NvCafCreator", "start: writeHeader failed!");
                                OnConvertListener onConvertListener2 = this.o;
                                if (onConvertListener2 != null) {
                                    onConvertListener2.convertFinished(false);
                                }
                                return this.p;
                            }
                            if (!this.m.writeFrameIndexTable()) {
                                Log.e("NvCafCreator", "start: writeFrameIndexTable failed!");
                                OnConvertListener onConvertListener3 = this.o;
                                if (onConvertListener3 != null) {
                                    onConvertListener3.convertFinished(false);
                                }
                                return this.p;
                            }
                            OnConvertListener onConvertListener4 = this.o;
                            if (onConvertListener4 != null) {
                                onConvertListener4.convertFinished(true);
                            }
                            this.p = 101;
                        } else {
                            Log.e("NvCafCreator", "start: It is not a gif!");
                            i = 104;
                        }
                        this.p = i;
                    }
                }
            }
            Log.e("NvCafCreator", str);
            this.p = 105;
        }
        return this.p;
    }

    public int startWebpToCaf() throws IOException {
        String str;
        if (this.p != 101) {
            Log.e("NvCafCreator", "start: current is running!");
        } else {
            if (this.c == null) {
                str = "start: Input file path is null";
            } else {
                String str2 = this.d;
                if (str2 == null) {
                    str = "start: target file path is null";
                } else {
                    this.m = new NvCafEncoder(this.b, str2, this.e, this.f, this.g, this.h, this.i, this.j);
                    if (this.m == null) {
                        str = "start: create cafEncoder failed!";
                    } else if (this.v == null) {
                        Log.e("NvCafCreator", "start: create gifDecoder failed!");
                        this.p = 106;
                    } else {
                        this.p = 102;
                        NvRational nvRational = this.h;
                        this.u = (int) ((nvRational.den * 1000.0f) / nvRational.num);
                        InputStream inputStreamOpen = null;
                        if (this.c.toLowerCase().endsWith("webp")) {
                            try {
                                inputStreamOpen = this.c.startsWith("assets:/") ? this.b.getAssets().open(this.c.substring(8)) : new FileInputStream(this.c);
                            } catch (IOException e) {
                                e.printStackTrace();
                                Log.e("NvCafCreator", "initwebp: Input file stream is null");
                            }
                        }
                        this.v.setOnNvsWebpCallback(this);
                        this.v.startDecode(inputStreamOpen);
                    }
                }
            }
            Log.e("NvCafCreator", str);
            this.p = 105;
        }
        return this.p;
    }
}
