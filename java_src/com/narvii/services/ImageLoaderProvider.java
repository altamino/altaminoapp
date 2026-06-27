package com.narvii.services;

import android.app.ActivityManager;
import com.android.volley.Cache;
import com.android.volley.RequestQueue;
import com.android.volley.toolbox.BasicNetwork;
import com.google.android.exoplayer2.DefaultRenderersFactory;
import com.narvii.app.NVContext;
import com.narvii.util.Utils;
import com.narvii.util.http.ProxyStack;
import com.narvii.util.image.BitmapLruCache;
import com.narvii.util.image.NVImageLoader;
import com.narvii.util.ws.WsService;

/* loaded from: classes.dex */
public class ImageLoaderProvider implements ServiceProvider<NVImageLoader> {
    private Runnable stopping;

    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, NVImageLoader nVImageLoader) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, NVImageLoader nVImageLoader) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, NVImageLoader nVImageLoader) {
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.narvii.services.ServiceProvider
    public NVImageLoader create(NVContext nVContext) {
        return new NVImageLoader(nVContext, new RequestQueue((Cache) nVContext.getService("imageDiskCache"), new BasicNetwork(new ProxyStack(nVContext)), 4), new BitmapLruCache((((ActivityManager) nVContext.getContext().getSystemService("activity")).getMemoryClass() * 1048576) / 8));
    }

    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, NVImageLoader nVImageLoader) {
        Runnable runnable = this.stopping;
        if (runnable != null) {
            Utils.handler.removeCallbacks(runnable);
            this.stopping = null;
        }
        nVImageLoader.getRequestQueue().start();
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, final NVImageLoader nVImageLoader) {
        Runnable runnable = this.stopping;
        if (runnable != null) {
            Utils.handler.removeCallbacks(runnable);
        }
        final WsService wsService = (WsService) nVContext.getService("ws");
        this.stopping = new Runnable() { // from class: com.narvii.services.ImageLoaderProvider.1
            @Override // java.lang.Runnable
            public void run() {
                WsService wsService2 = wsService;
                if (wsService2 == null || !wsService2.isKeepAlive()) {
                    nVImageLoader.getRequestQueue().stop();
                    ((BitmapLruCache) nVImageLoader.getImageCache()).evictAll();
                }
                ImageLoaderProvider.this.stopping = null;
            }
        };
        Utils.postDelayed(this.stopping, DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS);
    }
}
