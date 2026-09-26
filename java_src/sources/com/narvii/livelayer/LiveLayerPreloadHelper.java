package com.narvii.livelayer;

import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.ImageLoader;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.model.User;
import com.narvii.util.Callback;
import com.narvii.util.CollectionUtils;
import com.narvii.util.Utils;
import com.narvii.util.drawables.DrawableLoaderListener;
import com.narvii.util.drawables.gif.GifLoader;
import com.narvii.util.drawables.webp.WebPLoader;
import com.narvii.util.image.NVImageLoader;
import com.narvii.widget.NVImageView;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class LiveLayerPreloadHelper {
    boolean allDone;
    boolean canceled;
    private GifLoader gifLoader;
    HashMap<String, Boolean> iconHashMap = new HashMap<>();
    Callback multiLoadCallback;
    NVContext nvContext;
    private WebPLoader webpLoader;

    public void discard() {
        this.canceled = true;
    }

    private boolean checkAllLoadDone() {
        Iterator<String> it = this.iconHashMap.keySet().iterator();
        while (it.hasNext()) {
            Boolean bool = this.iconHashMap.get(it.next());
            if (bool == null || !bool.booleanValue()) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onUrlResponse(String str) {
        if (this.allDone || this.canceled) {
            return;
        }
        this.iconHashMap.put(str, Boolean.TRUE);
        if (checkAllLoadDone()) {
            this.allDone = true;
            if (this.multiLoadCallback != null) {
                Utils.handler.postDelayed(new Runnable() { // from class: com.narvii.livelayer.LiveLayerPreloadHelper.1
                    @Override // java.lang.Runnable
                    public void run() {
                        LiveLayerPreloadHelper liveLayerPreloadHelper = LiveLayerPreloadHelper.this;
                        Callback callback = liveLayerPreloadHelper.multiLoadCallback;
                        if (callback == null || liveLayerPreloadHelper.canceled) {
                            return;
                        }
                        callback.call(null);
                    }
                }, 0L);
            }
        }
    }

    public GifLoader getGifLoader() {
        NVContext nVContext;
        if (this.gifLoader == null && (nVContext = this.nvContext) != null) {
            this.gifLoader = (GifLoader) nVContext.getService("gifLoader");
        }
        GifLoader gifLoader = this.gifLoader;
        return gifLoader == null ? (GifLoader) NVApplication.instance().getService("gifLoader") : gifLoader;
    }

    public WebPLoader getWebPLoader() {
        NVContext nVContext;
        if (this.webpLoader == null && (nVContext = this.nvContext) != null) {
            this.webpLoader = (WebPLoader) nVContext.getService("webpLoader");
        }
        WebPLoader webPLoader = this.webpLoader;
        return webPLoader == null ? (WebPLoader) NVApplication.instance().getService("webpLoader") : webPLoader;
    }

    public LiveLayerPreloadHelper(NVContext nVContext) {
        this.nvContext = nVContext;
    }

    public void preloadIcon(final String str, int i10, final Callback<String> callback) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (NVImageView.isGif(str)) {
            getGifLoader().request(str, new DrawableLoaderListener() { // from class: com.narvii.livelayer.LiveLayerPreloadHelper.2
                @Override // com.narvii.util.drawables.DrawableLoaderListener
                public void onFailed(String str2) {
                    Callback callback2 = callback;
                    if (callback2 != null) {
                        callback2.call(str2);
                    }
                }

                @Override // com.narvii.util.drawables.DrawableLoaderListener
                public void onFinished(String str2, Drawable drawable, boolean z6) {
                    Callback callback2 = callback;
                    if (callback2 != null) {
                        callback2.call(str2);
                    }
                }
            });
        } else if (NVImageView.isWebP(str)) {
            getWebPLoader().request(str, new DrawableLoaderListener() { // from class: com.narvii.livelayer.LiveLayerPreloadHelper.3
                @Override // com.narvii.util.drawables.DrawableLoaderListener
                public void onFailed(String str2) {
                    Callback callback2 = callback;
                    if (callback2 != null) {
                        callback2.call(str2);
                    }
                }

                @Override // com.narvii.util.drawables.DrawableLoaderListener
                public void onFinished(String str2, Drawable drawable, boolean z6) {
                    Callback callback2 = callback;
                    if (callback2 != null) {
                        callback2.call(str2);
                    }
                }
            }, i10, i10);
        } else {
            ((NVImageLoader) this.nvContext.getService("imageLoader")).get(str, new ImageLoader.ImageListener() { // from class: com.narvii.livelayer.LiveLayerPreloadHelper.4
                @Override // com.android.volley.Response.ErrorListener
                public void onErrorResponse(VolleyError volleyError) {
                    Callback callback2 = callback;
                    if (callback2 != null) {
                        callback2.call(str);
                    }
                }

                @Override // com.android.volley.toolbox.ImageLoader.ImageListener
                public void onResponse(ImageLoader.ImageContainer imageContainer, boolean z6) {
                    Callback callback2 = callback;
                    if (callback2 != null) {
                        callback2.call(str);
                    }
                }
            }, i10, i10);
        }
    }

    public void preloadUserIcons(List<User> list, int i10, int i11, int i12, Callback callback) {
        String str;
        if (CollectionUtils.isEmpty(list)) {
            if (callback != null) {
                callback.call(null);
                return;
            }
            return;
        }
        this.allDone = false;
        this.iconHashMap.clear();
        this.canceled = false;
        this.multiLoadCallback = callback;
        int iMin = Math.min(i10, list.size());
        if (iMin > i11) {
            for (int i13 = iMin - 1; i13 >= 0; i13--) {
                User user = list.get(i13);
                if (user != null && (str = user.icon) != null) {
                    this.iconHashMap.put(NVImageView.fitSize(str, null, i12, i12), Boolean.FALSE);
                }
            }
            if (this.iconHashMap.isEmpty()) {
                callback.call(null);
                return;
            }
            Iterator<String> it = this.iconHashMap.keySet().iterator();
            while (it.hasNext()) {
                preloadIcon(it.next(), i12, new Callback<String>() { // from class: com.narvii.livelayer.LiveLayerPreloadHelper.5
                    @Override // com.narvii.util.Callback
                    public void call(String str2) {
                        LiveLayerPreloadHelper.this.onUrlResponse(str2);
                    }
                });
            }
            return;
        }
        if (callback != null) {
            callback.call(null);
        }
    }
}
