package com.narvii.util;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Locale;
import kotlin.TypeCastException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;

/* compiled from: WebMediaExtractor.kt */
/* loaded from: classes3.dex */
public abstract class WebMediaExtractor implements Runnable {
    public static final Companion Companion = new Companion(null);
    private static final Handler handler = new Handler(Looper.getMainLooper());
    private final View attachView;
    private final int height;
    private final ArrayList<String> images;
    private int scrollCount;
    private int scrollY;
    private final ArrayList<String> videos;
    private final WebView webView;
    private final int width;
    private final WebMediaExtractor$wvClient$1 wvClient;

    public abstract void onFailed(int i, String str);

    public abstract void onFinished(Collection<String> collection, Collection<String> collection2);

    protected void onImageFound(String url) {
        Intrinsics.checkParameterIsNotNull(url, "url");
    }

    protected void onVideoFound(String url) {
        Intrinsics.checkParameterIsNotNull(url, "url");
    }

    public final WebView getWebView() {
        return this.webView;
    }

    public final View getAttachView() {
        return this.attachView;
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [com.narvii.util.WebMediaExtractor$wvClient$1] */
    public WebMediaExtractor(Context context) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        this.images = new ArrayList<>();
        this.videos = new ArrayList<>();
        this.wvClient = new WebViewClient() { // from class: com.narvii.util.WebMediaExtractor$wvClient$1
            @Override // android.webkit.WebViewClient
            public void onPageFinished(WebView view, String str) {
                Intrinsics.checkParameterIsNotNull(view, "view");
                WebMediaExtractor.Companion.getHandler().post(this.this$0);
            }

            @Override // android.webkit.WebViewClient
            public void onReceivedError(WebView view, int i, String str, String str2) {
                Intrinsics.checkParameterIsNotNull(view, "view");
                if (StringsKt__StringsJVMKt.equals$default(str2, view.getUrl(), false, 2, null)) {
                    this.this$0.onFailed(i, str);
                    this.this$0.abort();
                }
            }

            @Override // android.webkit.WebViewClient
            @TargetApi(23)
            public void onReceivedError(WebView view, WebResourceRequest request, WebResourceError error) {
                Intrinsics.checkParameterIsNotNull(view, "view");
                Intrinsics.checkParameterIsNotNull(request, "request");
                Intrinsics.checkParameterIsNotNull(error, "error");
                if (request.getUrl().toString().equals(view.getUrl())) {
                    this.this$0.onFailed(error.getErrorCode(), error.getDescription().toString());
                    this.this$0.abort();
                }
            }

            @Override // android.webkit.WebViewClient
            public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
                Uri uri = Uri.parse(str);
                Intrinsics.checkExpressionValueIsNotNull(uri, "Uri.parse(url)");
                request(uri, null);
                return null;
            }

            @Override // android.webkit.WebViewClient
            @TargetApi(21)
            public WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
                if (webResourceRequest == null) {
                    Intrinsics.throwNpe();
                    throw null;
                }
                Uri url = webResourceRequest.getUrl();
                Intrinsics.checkExpressionValueIsNotNull(url, "request!!.url");
                request(url, webResourceRequest);
                return null;
            }

            @TargetApi(21)
            public final void request(Uri uri, WebResourceRequest webResourceRequest) {
                Intrinsics.checkParameterIsNotNull(uri, "uri");
                if (webResourceRequest != null) {
                    try {
                        if (StringsKt__StringsJVMKt.equals(webResourceRequest.getMethod(), "get", true)) {
                            String str = webResourceRequest.getRequestHeaders().get("Accept");
                            if (str != null && StringsKt__StringsJVMKt.startsWith$default(str, "image/", false, 2, null)) {
                                WebMediaExtractor webMediaExtractor = this.this$0;
                                String string = webResourceRequest.getUrl().toString();
                                Intrinsics.checkExpressionValueIsNotNull(string, "request.url.toString()");
                                webMediaExtractor.imageFound(string);
                                return;
                            }
                            if (str != null && StringsKt__StringsJVMKt.startsWith$default(str, "video/", false, 2, null)) {
                                WebMediaExtractor webMediaExtractor2 = this.this$0;
                                String string2 = webResourceRequest.getUrl().toString();
                                Intrinsics.checkExpressionValueIsNotNull(string2, "request.url.toString()");
                                webMediaExtractor2.videoFound(string2);
                                return;
                            }
                        }
                    } catch (Exception unused) {
                        return;
                    }
                }
                String lastPathSegment = uri.getLastPathSegment();
                if (lastPathSegment == null) {
                    Intrinsics.throwNpe();
                    throw null;
                }
                Locale locale = Locale.US;
                Intrinsics.checkExpressionValueIsNotNull(locale, "Locale.US");
                if (lastPathSegment == null) {
                    throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
                }
                String lowerCase = lastPathSegment.toLowerCase(locale);
                Intrinsics.checkExpressionValueIsNotNull(lowerCase, "(this as java.lang.String).toLowerCase(locale)");
                if (!StringsKt__StringsJVMKt.endsWith$default(lowerCase, ".jpg", false, 2, null) && !StringsKt__StringsJVMKt.endsWith$default(lowerCase, ".jpeg", false, 2, null) && !StringsKt__StringsJVMKt.endsWith$default(lowerCase, ".png", false, 2, null) && !StringsKt__StringsJVMKt.endsWith$default(lowerCase, ".webp", false, 2, null) && !StringsKt__StringsJVMKt.endsWith$default(lowerCase, ".gif", false, 2, null)) {
                    if (StringsKt__StringsJVMKt.endsWith$default(lowerCase, ".mp4", false, 2, null) || StringsKt__StringsJVMKt.endsWith$default(lowerCase, ".mov", false, 2, null)) {
                        WebMediaExtractor webMediaExtractor3 = this.this$0;
                        String string3 = uri.toString();
                        Intrinsics.checkExpressionValueIsNotNull(string3, "uri.toString()");
                        webMediaExtractor3.videoFound(string3);
                        return;
                    }
                    return;
                }
                WebMediaExtractor webMediaExtractor4 = this.this$0;
                String string4 = uri.toString();
                Intrinsics.checkExpressionValueIsNotNull(string4, "uri.toString()");
                webMediaExtractor4.imageFound(string4);
            }
        };
        this.webView = new WebView(context);
        this.attachView = new WMEAttachView(context, this.webView);
        this.webView.setAlpha(0.01f);
        initWebViewSettings(this.webView);
        this.webView.setWebViewClient(this.wvClient);
        Resources resources = context.getResources();
        Intrinsics.checkExpressionValueIsNotNull(resources, "context.resources");
        this.width = resources.getDisplayMetrics().widthPixels;
        Resources resources2 = context.getResources();
        Intrinsics.checkExpressionValueIsNotNull(resources2, "context.resources");
        this.height = resources2.getDisplayMetrics().heightPixels;
        this.webView.layout(0, 0, this.width, this.height);
    }

    private final void initWebViewSettings(WebView webView) {
        WebSettings settings = webView.getSettings();
        Intrinsics.checkExpressionValueIsNotNull(settings, "webview.settings");
        settings.setJavaScriptEnabled(true);
        WebSettings settings2 = webView.getSettings();
        Intrinsics.checkExpressionValueIsNotNull(settings2, "webview.settings");
        settings2.setCacheMode(2);
        WebSettings settings3 = webView.getSettings();
        Intrinsics.checkExpressionValueIsNotNull(settings3, "webview.settings");
        settings3.setDomStorageEnabled(true);
        WebSettings settings4 = webView.getSettings();
        Intrinsics.checkExpressionValueIsNotNull(settings4, "webview.settings");
        settings4.setDatabaseEnabled(true);
        webView.getSettings().setAppCacheEnabled(true);
        WebSettings settings5 = webView.getSettings();
        Intrinsics.checkExpressionValueIsNotNull(settings5, "webview.settings");
        settings5.setDatabaseEnabled(true);
        WebSettings settings6 = webView.getSettings();
        Intrinsics.checkExpressionValueIsNotNull(settings6, "webview.settings");
        settings6.setUseWideViewPort(true);
        WebSettings settings7 = webView.getSettings();
        Intrinsics.checkExpressionValueIsNotNull(settings7, "webview.settings");
        settings7.setLoadWithOverviewMode(true);
    }

    public final void abort() {
        this.webView.destroy();
        handler.removeCallbacks(this);
    }

    public final void extract(String url) {
        Intrinsics.checkParameterIsNotNull(url, "url");
        this.webView.loadUrl(url);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean imageFound(final String str) {
        synchronized (this.images) {
            if (this.images.contains(str)) {
                return false;
            }
            this.images.add(str);
            handler.post(new Runnable() { // from class: com.narvii.util.WebMediaExtractor$imageFound$$inlined$synchronized$lambda$1
                @Override // java.lang.Runnable
                public final void run() {
                    this.this$0.onImageFound(str);
                }
            });
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean videoFound(final String str) {
        synchronized (this.videos) {
            if (this.videos.contains(str)) {
                return false;
            }
            this.videos.add(str);
            handler.post(new Runnable() { // from class: com.narvii.util.WebMediaExtractor$videoFound$$inlined$synchronized$lambda$1
                @Override // java.lang.Runnable
                public final void run() {
                    this.this$0.onVideoFound(str);
                }
            });
            return true;
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        this.webView.scrollBy(0, this.height);
        if ((this.scrollCount > 8 && this.webView.getScrollY() == this.scrollY) || this.scrollCount > 60) {
            onFinished(this.images, this.videos);
            abort();
        } else {
            handler.postDelayed(this, 200L);
            this.scrollY = this.webView.getScrollY();
            this.scrollCount++;
        }
    }

    /* compiled from: WebMediaExtractor.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final Handler getHandler() {
            return WebMediaExtractor.handler;
        }
    }
}
