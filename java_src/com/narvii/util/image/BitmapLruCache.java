package com.narvii.util.image;

import android.graphics.Bitmap;
import com.android.volley.toolbox.ImageLoader;
import com.narvii.util.WeakLruCache;

/* loaded from: classes3.dex */
public class BitmapLruCache extends WeakLruCache<String, Bitmap> implements ImageLoader.ImageCache {
    public BitmapLruCache(int i) {
        super(i);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.util.LruCache
    public int sizeOf(String str, Bitmap bitmap) {
        return bitmap.getRowBytes() * bitmap.getHeight();
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
