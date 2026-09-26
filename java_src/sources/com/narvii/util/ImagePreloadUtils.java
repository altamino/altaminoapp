package com.narvii.util;

import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import androidx.webkit.ProxyConfig;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.ImageLoader;
import com.narvii.app.NVApplication;
import com.narvii.util.drawables.DrawableLoaderListener;
import com.narvii.util.drawables.gif.GifLoader;
import com.narvii.util.drawables.webp.WebPLoader;
import com.narvii.util.image.NVImageLoader;
import com.narvii.widget.NVImageView;

/* JADX INFO: loaded from: classes2.dex */
public class ImagePreloadUtils {
    static DrawableLoaderListener drawableLoaderListener = new DrawableLoaderListener() { // from class: com.narvii.util.ImagePreloadUtils.1
        @Override // com.narvii.util.drawables.DrawableLoaderListener
        public void onFailed(String str) {
        }

        @Override // com.narvii.util.drawables.DrawableLoaderListener
        public void onFinished(String str, Drawable drawable, boolean z6) {
        }
    };
    static ImageLoader.ImageListener imageListener = new ImageLoader.ImageListener() { // from class: com.narvii.util.ImagePreloadUtils.2
        @Override // com.android.volley.Response.ErrorListener
        public void onErrorResponse(VolleyError volleyError) {
        }

        @Override // com.android.volley.toolbox.ImageLoader.ImageListener
        public void onResponse(ImageLoader.ImageContainer imageContainer, boolean z6) {
        }
    };

    public static void preloadImageUrl(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (str.toLowerCase().startsWith(ProxyConfig.MATCH_HTTP) || str.toLowerCase().startsWith(ProxyConfig.MATCH_HTTPS)) {
            if (NVImageView.isGif(str)) {
                ((GifLoader) NVApplication.instance().getService("gifLoader")).request(str, drawableLoaderListener);
            } else if (NVImageView.isWebP(str)) {
                ((WebPLoader) NVApplication.instance().getService("webpLoader")).request(str, drawableLoaderListener, 0, 0);
            } else {
                ((NVImageLoader) NVApplication.instance().getService("imageLoader")).get(str, imageListener, 0, 0);
            }
        }
    }
}
