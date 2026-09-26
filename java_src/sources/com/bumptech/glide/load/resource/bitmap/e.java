package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.graphics.ImageDecoder;
import android.graphics.ImageDecoder$OnHeaderDecodedListener;
import android.util.Log;
import androidx.annotation.RequiresApi;
import java.io.IOException;

/* JADX INFO: loaded from: classes11.dex */
@RequiresApi
public final class e extends com.bumptech.glide.load.resource.j<Bitmap> {
    private static final String TAG = "BitmapImageDecoder";
    private final com.bumptech.glide.load.engine.bitmap_recycle.d bitmapPool = new com.bumptech.glide.load.engine.bitmap_recycle.e();

    @Override // com.bumptech.glide.load.resource.j
    protected com.bumptech.glide.load.engine.v<Bitmap> c(ImageDecoder.Source source, int i10, int i11, ImageDecoder$OnHeaderDecodedListener imageDecoder$OnHeaderDecodedListener) throws IOException {
        Bitmap bitmapDecodeBitmap = ImageDecoder.decodeBitmap(source, imageDecoder$OnHeaderDecodedListener);
        if (Log.isLoggable(TAG, 2)) {
            Log.v(TAG, "Decoded [" + bitmapDecodeBitmap.getWidth() + "x" + bitmapDecodeBitmap.getHeight() + "] for [" + i10 + "x" + i11 + "]");
        }
        return new f(bitmapDecodeBitmap, this.bitmapPool);
    }
}
