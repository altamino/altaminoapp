package com.meishe.cafconvertor.gifdecoder;

import android.graphics.Bitmap;
import android.util.Log;
import com.meishe.cafconvertor.gifdecoder.GifDecoder;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes2.dex */
public class NvsGifDecoder {
    private final String a = "NvsGifDecoder";
    private GifHeaderParser b;
    private GifHeader c;
    private GifDecoder d;

    private byte[] a(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[1024];
        while (true) {
            try {
                int i = inputStream.read(bArr);
                if (i == -1) {
                    inputStream.close();
                    return byteArrayOutputStream.toByteArray();
                }
                byteArrayOutputStream.write(bArr, 0, i);
            } catch (Throwable th) {
                inputStream.close();
                throw th;
            }
        }
    }

    public int getFrameCount() {
        if (this.c == null || !isGif()) {
            return 0;
        }
        return this.c.c;
    }

    public GifDecoder getGifDecoder() {
        if (isGif()) {
            return this.d;
        }
        return null;
    }

    public boolean isGif() {
        String str;
        GifHeaderParser gifHeaderParser = this.b;
        if (gifHeaderParser == null) {
            str = "isGif: headerParser is null!";
        } else {
            if (gifHeaderParser.a) {
                return true;
            }
            str = "isGif: this file is not gif!";
        }
        Log.e("NvsGifDecoder", str);
        return false;
    }

    public void read(InputStream inputStream) {
        if (inputStream == null) {
            return;
        }
        try {
            byte[] bArrA = a(inputStream);
            this.b = new GifHeaderParser();
            this.b.setData(bArrA);
            this.c = this.b.parseHeader();
            this.d = new GifDecoder(new GifDecoder.BitmapProvider() { // from class: com.meishe.cafconvertor.gifdecoder.NvsGifDecoder.1
                @Override // com.meishe.cafconvertor.gifdecoder.GifDecoder.BitmapProvider
                public Bitmap obtain(int i, int i2, Bitmap.Config config) {
                    return Bitmap.createBitmap(i, i2, config);
                }
            });
            this.d.setData(this.c, bArrA);
        } catch (Exception e) {
            Log.e("NvsGifDecoder", "read: InputStream to bytes exception!");
            e.printStackTrace();
        }
    }
}
