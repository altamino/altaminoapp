package com.narvii.util;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import com.narvii.app.NVContext;
import com.narvii.util.drawables.gif.GifLoader;
import com.narvii.util.drawables.gif.WrapGifDrawable;
import com.narvii.util.image.NVImageLoader;
import com.narvii.widget.NVImageView;

/* loaded from: classes3.dex */
public class ImageCacheUtils {
    NVContext context;

    public ImageCacheUtils(NVContext nVContext) {
        this.context = nVContext;
    }

    public Drawable getCachedDrawable(String str) {
        if (str == null) {
            return null;
        }
        int i = 0;
        String[] strArr = {"00", "128", "68"};
        String[] strArr2 = {"00", "128", "68"};
        if (NVImageView.isGif(str)) {
            strArr2 = strArr;
        }
        if (Utils.isGif(str)) {
            GifLoader gifLoader = (GifLoader) this.context.getService("gifLoader");
            if (gifLoader != null) {
                while (i < strArr2.length) {
                    WrapGifDrawable cachedGifDrawable = gifLoader.getCachedGifDrawable(NVImageView.replaceUrl(str, strArr2[i]), true);
                    if (cachedGifDrawable != null) {
                        return cachedGifDrawable;
                    }
                    i++;
                }
            }
        } else {
            NVImageLoader nVImageLoader = (NVImageLoader) this.context.getService("imageLoader");
            while (i < strArr2.length) {
                Bitmap diskCachedBitmap = nVImageLoader.getDiskCachedBitmap(NVImageView.replaceUrl(str, strArr2[i]));
                if (diskCachedBitmap != null) {
                    return new BitmapDrawable(diskCachedBitmap);
                }
                i++;
            }
        }
        return null;
    }
}
