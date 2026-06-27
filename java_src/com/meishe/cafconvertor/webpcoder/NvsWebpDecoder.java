package com.meishe.cafconvertor.webpcoder;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.Log;
import com.meishe.cafconvertor.webpcoder.FrameSequence;
import com.meishe.cafconvertor.webpcoder.FrameSequenceDrawable;
import com.meishe.cafconvertor.webpcoder.WebpImageView;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashSet;

/* loaded from: classes2.dex */
public class NvsWebpDecoder implements WebpImageView.OnWebpFrameCallback {
    private static final String a = "NvsWebpDecoder";
    private static NvsWebpDecoder b;
    private Context c;
    public int count = -1;
    private FrameSequence d;
    private FrameSequence.State e;
    private CheckingProvider f;
    private OnNvsWebpCallback g;

    public static class CheckingProvider implements FrameSequenceDrawable.BitmapProvider {
        HashSet<Bitmap> a = new HashSet<>();

        @Override // com.meishe.cafconvertor.webpcoder.FrameSequenceDrawable.BitmapProvider
        public Bitmap acquireBitmap(int i, int i2) {
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i, i2 + 4, Bitmap.Config.ARGB_8888);
            this.a.add(bitmapCreateBitmap);
            return bitmapCreateBitmap;
        }

        @Override // com.meishe.cafconvertor.webpcoder.FrameSequenceDrawable.BitmapProvider
        public void releaseBitmap(Bitmap bitmap) {
            if (!this.a.contains(bitmap)) {
                throw new IllegalStateException();
            }
            this.a.remove(bitmap);
            bitmap.recycle();
        }
    }

    public interface OnNvsWebpCallback {
        void onCallBack(int i, Bitmap bitmap, long j);
    }

    private NvsWebpDecoder(Context context) {
        this.c = context;
    }

    private static Bitmap a(FrameSequenceDrawable.BitmapProvider bitmapProvider, int i, int i2) {
        Bitmap bitmapAcquireBitmap = bitmapProvider.acquireBitmap(i, i2);
        if (bitmapAcquireBitmap.getWidth() < i || bitmapAcquireBitmap.getHeight() < i2 || bitmapAcquireBitmap.getConfig() != Bitmap.Config.ARGB_8888) {
            throw new IllegalArgumentException("Invalid bitmap provided");
        }
        return bitmapAcquireBitmap;
    }

    private byte[] b(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[4096];
        while (true) {
            int i = inputStream.read(bArr);
            if (-1 == i) {
                return byteArrayOutputStream.toByteArray();
            }
            byteArrayOutputStream.write(bArr, 0, i);
        }
    }

    public static NvsWebpDecoder getInstance(Context context) {
        if (b == null) {
            synchronized (NvsWebpDecoder.class) {
                if (b == null) {
                    b = new NvsWebpDecoder(context);
                }
            }
        }
        return b;
    }

    protected void a(InputStream inputStream) throws IOException {
        String str;
        StringBuilder sb;
        try {
            try {
                FrameSequence frameSequenceDecodeByteArray = FrameSequence.decodeByteArray(b(inputStream));
                frameSequenceDecodeByteArray.setDefaultLoopCount(1);
                this.d = frameSequenceDecodeByteArray;
                this.e = frameSequenceDecodeByteArray.a();
                this.count = this.d.getFrameCount();
                this.f = new CheckingProvider();
                int width = this.d.getWidth();
                int height = this.d.getHeight();
                for (int i = 0; i < this.count; i++) {
                    Bitmap bitmapA = a(this.f, width, height);
                    long frame = this.e.getFrame(i, bitmapA, i - 2);
                    if (frame < 20) {
                        frame = 100;
                    }
                    if (this.g != null) {
                        this.g.onCallBack(i, bitmapA, frame);
                    }
                }
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (IOException e) {
                        e = e;
                        str = a;
                        sb = new StringBuilder();
                        sb.append("io not closed in right way : ");
                        sb.append(e.getMessage());
                        Log.e(str, sb.toString());
                    }
                }
            } catch (Exception e2) {
                Log.e(a, "error happens when FrameSequence.decodeByteArray" + e2.getMessage());
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (IOException e3) {
                        e = e3;
                        str = a;
                        sb = new StringBuilder();
                        sb.append("io not closed in right way : ");
                        sb.append(e.getMessage());
                        Log.e(str, sb.toString());
                    }
                }
            }
        } catch (Throwable th) {
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException e4) {
                    Log.e(a, "io not closed in right way : " + e4.getMessage());
                }
            }
            throw th;
        }
    }

    public void setOnNvsWebpCallback(OnNvsWebpCallback onNvsWebpCallback) {
        this.g = onNvsWebpCallback;
    }

    public void startDecode(InputStream inputStream) throws IOException {
        a(inputStream);
    }

    @Override // com.meishe.cafconvertor.webpcoder.WebpImageView.OnWebpFrameCallback
    public void webpFrameCallback(int i, Bitmap bitmap, long j) {
        OnNvsWebpCallback onNvsWebpCallback = this.g;
        if (onNvsWebpCallback != null) {
            onNvsWebpCallback.onCallBack(i, bitmap, j);
        }
    }
}
