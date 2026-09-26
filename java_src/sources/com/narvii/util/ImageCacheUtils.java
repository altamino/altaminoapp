package com.narvii.util;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import com.narvii.app.NVContext;
import com.narvii.util.drawables.gif.GifLoader;
import com.narvii.util.drawables.gif.WrapGifDrawable;
import com.narvii.util.image.NVImageLoader;
import com.narvii.widget.NVImageView;
import org.apache.commons.compress.archivers.tar.TarConstants;

/* JADX INFO: loaded from: classes6.dex */
public class ImageCacheUtils {
    NVContext context;

    public Drawable getCachedDrawable(String str) {
        if (str == null) {
            return null;
        }
        String[] strArr = {TarConstants.VERSION_POSIX, "128", "68"};
        String[] strArr2 = {TarConstants.VERSION_POSIX, "128", "68"};
        if (!NVImageView.isGif(str)) {
            strArr = strArr2;
        }
        int i10 = 0;
        if (Utils.isGif(str)) {
            GifLoader gifLoader = (GifLoader) this.context.getService("gifLoader");
            if (gifLoader != null) {
                while (i10 < strArr.length) {
                    WrapGifDrawable cachedGifDrawable = gifLoader.getCachedGifDrawable(NVImageView.replaceUrl(str, strArr[i10]), true);
                    if (cachedGifDrawable != null) {
                        return cachedGifDrawable;
                    }
                    i10++;
                }
            }
        } else {
            NVImageLoader nVImageLoader = (NVImageLoader) this.context.getService("imageLoader");
            while (i10 < strArr.length) {
                Bitmap diskCachedBitmap = nVImageLoader.getDiskCachedBitmap(NVImageView.replaceUrl(str, strArr[i10]));
                if (diskCachedBitmap != null) {
                    return new BitmapDrawable(diskCachedBitmap);
                }
                i10++;
            }
        }
        return null;
    }

    public ImageCacheUtils(NVContext nVContext) {
        this.context = nVContext;
    }
}
