package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Canvas;
import android.view.MotionEvent;
import android.webkit.ValueCallback;
import android.webkit.WebViewClient;
import com.google.android.gms.common.util.VisibleForTesting;

@zzard
/* loaded from: classes2.dex */
public class zzbjb extends zzbiy implements zzbje {
    private boolean zzeky;
    private boolean zzelq;
    private final zzbiz zzemr;

    public zzbjb(Context context, zzbiz zzbizVar) {
        super(context);
        com.google.android.gms.ads.internal.zzk.zzlk().zzuz();
        this.zzemr = zzbizVar;
        super.setWebViewClient(zzbizVar);
    }

    @Override // android.webkit.WebView
    public void setWebViewClient(WebViewClient webViewClient) {
    }

    protected void zzaw(boolean z) {
    }

    public final synchronized boolean isDestroyed() {
        return this.zzeky;
    }

    @Override // android.webkit.WebView
    public synchronized void destroy() {
        if (this.zzeky) {
            return;
        }
        this.zzeky = true;
        this.zzemr.zza(this);
        zzaw(false);
        zzawz.zzds("Initiating WebView self destruct sequence in 3...");
        zzawz.zzds("Loading blank page in WebView, 2...");
        try {
            super.loadUrl("about:blank");
        } catch (UnsatisfiedLinkError e) {
            com.google.android.gms.ads.internal.zzk.zzlk().zza(e, "AdWebViewImpl.loadUrlUnsafe");
            zzbad.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbje
    public final synchronized void zza(zzbja zzbjaVar) {
        zzawz.zzds("Blank page loaded, 1...");
        zzaao();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @VisibleForTesting
    public synchronized void zzaao() {
        zzawz.zzds("Destroying WebView!");
        zzva();
        zzbbm.zzeae.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzbjc
            private final zzbjb zzems;

            {
                this.zzems = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zzems.zzacb();
            }
        });
    }

    protected void finalize() throws Throwable {
        try {
            synchronized (this) {
                if (!isDestroyed()) {
                    zzaw(true);
                }
                zzva();
            }
        } finally {
            super.finalize();
        }
    }

    private final synchronized void zzva() {
        if (!this.zzelq) {
            this.zzelq = true;
            com.google.android.gms.ads.internal.zzk.zzlk().zzva();
        }
    }

    @Override // android.webkit.WebView
    @TargetApi(19)
    public synchronized void evaluateJavascript(String str, ValueCallback<String> valueCallback) {
        if (isDestroyed()) {
            zzbad.zzep("#004 The webview is destroyed. Ignoring action.");
            if (valueCallback != null) {
                valueCallback.onReceiveValue(null);
            }
            return;
        }
        super.evaluateJavascript(str, valueCallback);
    }

    @Override // com.google.android.gms.internal.ads.zzbiy, android.webkit.WebView
    public synchronized void loadUrl(String str) {
        if (!isDestroyed()) {
            super.loadUrl(str);
        } else {
            zzbad.zzep("#004 The webview is destroyed. Ignoring action.");
        }
    }

    @Override // android.webkit.WebView
    public synchronized void loadData(String str, String str2, String str3) {
        if (!isDestroyed()) {
            super.loadData(str, str2, str3);
        } else {
            zzbad.zzep("#004 The webview is destroyed. Ignoring action.");
        }
    }

    @Override // android.webkit.WebView
    public synchronized void loadDataWithBaseURL(String str, String str2, String str3, String str4, String str5) {
        if (!isDestroyed()) {
            super.loadDataWithBaseURL(str, str2, str3, str4, str5);
        } else {
            zzbad.zzep("#004 The webview is destroyed. Ignoring action.");
        }
    }

    @Override // android.webkit.WebView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return !isDestroyed() && super.onTouchEvent(motionEvent);
    }

    @Override // android.webkit.WebView, android.view.View
    @TargetApi(21)
    protected void onDraw(Canvas canvas) {
        if (isDestroyed()) {
            return;
        }
        super.onDraw(canvas);
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.zzbgz
    public void onPause() {
        if (isDestroyed()) {
            return;
        }
        super.onPause();
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.zzbgz
    public void onResume() {
        if (isDestroyed()) {
            return;
        }
        super.onResume();
    }

    @Override // android.webkit.WebView
    public void stopLoading() {
        if (isDestroyed()) {
            return;
        }
        super.stopLoading();
    }

    @Override // com.google.android.gms.internal.ads.zzbiy, android.webkit.WebView
    public /* bridge */ /* synthetic */ void addJavascriptInterface(Object obj, String str) {
        super.addJavascriptInterface(obj, str);
    }

    @Override // com.google.android.gms.internal.ads.zzbiy, com.google.android.gms.internal.ads.zzajq, com.google.android.gms.internal.ads.zzakg
    public /* bridge */ /* synthetic */ void zzco(String str) {
        super.zzco(str);
    }

    final /* synthetic */ void zzacb() {
        super.destroy();
    }
}
