package com.narvii.util.image;

import android.graphics.Bitmap;
import com.android.volley.toolbox.ImageLoader;
import com.narvii.util.WeakLruCache;

/* JADX INFO: loaded from: classes8.dex */
public class BitmapLruCache extends WeakLruCache<String, Bitmap> implements ImageLoader.ImageCache {
    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.util.LruCache
    public int sizeOf(String str, Bitmap bitmap) {
        return bitmap.getRowBytes() * bitmap.getHeight();
    }

    public BitmapLruCache(int i10) {
        super(i10);
    }

    @Override // com.android.volley.toolbox.ImageLoader.ImageCache
    public Bitmap getBitmap(String str) {
        return get(str);
    }

    @Override // com.android.volley.toolbox.ImageLoader.ImageCache
    public void putBitmap(String str, Bitmap bitmap) {
        put(str, bitmap);
    }
}
