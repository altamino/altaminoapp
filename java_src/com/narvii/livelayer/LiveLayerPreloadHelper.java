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

/* loaded from: classes3.dex */
public class LiveLayerPreloadHelper {
    boolean allDone;
    boolean canceled;
    private GifLoader gifLoader;
    HashMap<String, Boolean> iconHashMap = new HashMap<>();
    Callback multiLoadCallback;
    NVContext nvContext;
    private WebPLoader webpLoader;

    public LiveLayerPreloadHelper(NVContext nVContext) {
        this.nvContext = nVContext;
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

    /* JADX INFO: Access modifiers changed from: private */
    public void onUrlResponse(String str) {
        if (this.allDone || this.canceled) {
            return;
        }
        this.iconHashMap.put(str, true);
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

    public void discard() {
        this.canceled = true;
    }

    public void preloadIcon(final String str, int i, final Callback<String> callback) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        if (NVImageView.isGif(str)) {
            getGifLoader().request(str, new DrawableLoaderListener() { // from class: com.narvii.livelayer.LiveLayerPreloadHelper.2
                @Override // com.narvii.util.drawables.DrawableLoaderListener
                public void onFinished(String str2, Drawable drawable, boolean z) {
                    Callback callback2 = callback;
                    if (callback2 != null) {
                        callback2.call(str2);
                    }
                }

                @Override // com.narvii.util.drawables.DrawableLoaderListener
                public void onFailed(String str2) {
                    Callback callback2 = callback;
                    if (callback2 != null) {
                        callback2.call(str2);
                    }
                }
            });
        } else if (NVImageView.isWebP(str)) {
            getWebPLoader().request(str, new DrawableLoaderListener() { // from class: com.narvii.livelayer.LiveLayerPreloadHelper.3
                @Override // com.narvii.util.drawables.DrawableLoaderListener
                public void onFinished(String str2, Drawable drawable, boolean z) {
                    Callback callback2 = callback;
                    if (callback2 != null) {
                        callback2.call(str2);
                    }
                }

                @Override // com.narvii.util.drawables.DrawableLoaderListener
                public void onFailed(String str2) {
                    Callback callback2 = callback;
                    if (callback2 != null) {
                        callback2.call(str2);
                    }
                }
            }, i, i);
        } else {
            ((NVImageLoader) this.nvContext.getService("imageLoader")).get(str, new ImageLoader.ImageListener() { // from class: com.narvii.livelayer.LiveLayerPreloadHelper.4
                @Override // com.android.volley.toolbox.ImageLoader.ImageListener
                public void onResponse(ImageLoader.ImageContainer imageContainer, boolean z) {
                    Callback callback2 = callback;
                    if (callback2 != null) {
                        callback2.call(str);
                    }
                }

                @Override // com.android.volley.Response.ErrorListener
                public void onErrorResponse(VolleyError volleyError) {
                    Callback callback2 = callback;
                    if (callback2 != null) {
                        callback2.call(str);
                    }
                }
            }, i, i);
        }
    }

    public void preloadUserIcons(List<User> list, int i, int i2, int i3, Callback callback) {
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
        int iMin = Math.min(i, list.size());
        if (iMin <= i2) {
            if (callback != null) {
                callback.call(null);
                return;
            }
            return;
        }
        for (int i4 = iMin - 1; i4 >= 0; i4--) {
            User user = list.get(i4);
            if (user != null && (str = user.icon) != null) {
                this.iconHashMap.put(NVImageView.fitSize(str, null, i3, i3), false);
            }
        }
        if (this.iconHashMap.isEmpty()) {
            callback.call(null);
            return;
        }
        Iterator<String> it = this.iconHashMap.keySet().iterator();
        while (it.hasNext()) {
            preloadIcon(it.next(), i3, new Callback<String>() { // from class: com.narvii.livelayer.LiveLayerPreloadHelper.5
                @Override // com.narvii.util.Callback
                public void call(String str2) {
                    LiveLayerPreloadHelper.this.onUrlResponse(str2);
                }
            });
        }
    }
}
