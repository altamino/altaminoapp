package com.narvii.util;

import android.annotation.TargetApi;
import android.content.Context;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Locale;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
public abstract class WebMediaExtractor implements Runnable {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    private static final Handler handler = new Handler(Looper.getMainLooper());

    @NotNull
    private final View attachView;
    private final int height;

    @NotNull
    private final ArrayList<String> images;
    private int scrollCount;
    private int scrollY;

    @NotNull
    private final ArrayList<String> videos;

    @NotNull
    private final WebView webView;
    private final int width;

    @NotNull
    private final WebMediaExtractor$wvClient$1 wvClient;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        @NotNull
        public final Handler getHandler() {
            return WebMediaExtractor.handler;
        }
    }

    @NotNull
    public final View getAttachView() {
        return this.attachView;
    }

    @NotNull
    public final WebView getWebView() {
        return this.webView;
    }

    public abstract void onFailed(int i10, @Nullable String str);

    public abstract void onFinished(@NotNull Collection<String> collection, @NotNull Collection<String> collection2);

    protected void onImageFound(@NotNull String url) {
        t.j(url, "url");
    }

    protected void onVideoFound(@NotNull String url) {
        t.j(url, "url");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [android.webkit.WebViewClient, com.narvii.util.WebMediaExtractor$wvClient$1] */
    public WebMediaExtractor(@NotNull Context context) {
        t.j(context, "context");
        this.images = new ArrayList<>();
        this.videos = new ArrayList<>();
        ?? r1 = new WebViewClient() { // from class: com.narvii.util.WebMediaExtractor$wvClient$1
            @Override // android.webkit.WebViewClient
            public void onReceivedError(@NotNull WebView view, int i10, @Nullable String str, @Nullable String str2) {
                t.j(view, "view");
                if (kotlin.text.t.x(str2, view.getUrl(), false, 2, null)) {
                    this.this$0.onFailed(i10, str);
                    this.this$0.abort();
                }
            }

            @Override // android.webkit.WebViewClient
            @Nullable
            public WebResourceResponse shouldInterceptRequest(@Nullable WebView webView, @Nullable String str) {
                Uri uri = Uri.parse(str);
                t.i(uri, "parse(...)");
                request(uri, null);
                return null;
            }

            @Override // android.webkit.WebViewClient
            @TargetApi(21)
            @Nullable
            public WebResourceResponse shouldInterceptRequest(@Nullable WebView webView, @Nullable WebResourceRequest webResourceRequest) {
                t.g(webResourceRequest);
                Uri url = webResourceRequest.getUrl();
                t.i(url, "getUrl(...)");
                request(url, webResourceRequest);
                return null;
            }

            @Override // android.webkit.WebViewClient
            public void onPageFinished(@NotNull WebView view, @Nullable String str) {
                t.j(view, "view");
                WebMediaExtractor.Companion.getHandler().post(this.this$0);
            }

            @TargetApi(21)
            public final void request(@NotNull Uri uri, @Nullable WebResourceRequest webResourceRequest) {
                t.j(uri, "uri");
                if (webResourceRequest != null) {
                    try {
                        if (kotlin.text.t.w(webResourceRequest.getMethod(), "get", true)) {
                            String str = webResourceRequest.getRequestHeaders().get("Accept");
                            if (str != null && kotlin.text.t.K(str, "image/", false, 2, null)) {
                                WebMediaExtractor webMediaExtractor = this.this$0;
                                String string = webResourceRequest.getUrl().toString();
                                t.i(string, "toString(...)");
                                webMediaExtractor.imageFound(string);
                                return;
                            }
                            if (str != null && kotlin.text.t.K(str, "video/", false, 2, null)) {
                                WebMediaExtractor webMediaExtractor2 = this.this$0;
                                String string2 = webResourceRequest.getUrl().toString();
                                t.i(string2, "toString(...)");
                                webMediaExtractor2.videoFound(string2);
                                return;
                            }
                        }
                    } catch (Exception unused) {
                        return;
                    }
                }
                String lastPathSegment = uri.getLastPathSegment();
                t.g(lastPathSegment);
                Locale US = Locale.US;
                t.i(US, "US");
                String lowerCase = lastPathSegment.toLowerCase(US);
                t.i(lowerCase, "toLowerCase(...)");
                if (!kotlin.text.t.v(lowerCase, ".jpg", false, 2, null) && !kotlin.text.t.v(lowerCase, ".jpeg", false, 2, null) && !kotlin.text.t.v(lowerCase, ".png", false, 2, null) && !kotlin.text.t.v(lowerCase, ".webp", false, 2, null) && !kotlin.text.t.v(lowerCase, ".gif", false, 2, null)) {
                    if (kotlin.text.t.v(lowerCase, ".mp4", false, 2, null) || kotlin.text.t.v(lowerCase, ".mov", false, 2, null)) {
                        WebMediaExtractor webMediaExtractor3 = this.this$0;
                        String string3 = uri.toString();
                        t.i(string3, "toString(...)");
                        webMediaExtractor3.videoFound(string3);
                        return;
                    }
                    return;
                }
                WebMediaExtractor webMediaExtractor4 = this.this$0;
                String string4 = uri.toString();
                t.i(string4, "toString(...)");
                webMediaExtractor4.imageFound(string4);
            }

            @Override // android.webkit.WebViewClient
            @TargetApi(23)
            public void onReceivedError(@NotNull WebView view, @NotNull WebResourceRequest request, @NotNull WebResourceError error) {
                t.j(view, "view");
                t.j(request, "request");
                t.j(error, "error");
                if (request.getUrl().toString().equals(view.getUrl())) {
                    this.this$0.onFailed(error.getErrorCode(), error.getDescription().toString());
                    this.this$0.abort();
                }
            }
        };
        this.wvClient = r1;
        WebView webView = new WebView(context);
        this.webView = webView;
        this.attachView = new WMEAttachView(context, webView);
        webView.setAlpha(0.01f);
        initWebViewSettings(webView);
        webView.setWebViewClient(r1);
        int i10 = context.getResources().getDisplayMetrics().widthPixels;
        this.width = i10;
        int i11 = context.getResources().getDisplayMetrics().heightPixels;
        this.height = i11;
        webView.layout(0, 0, i10, i11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean imageFound(final String str) {
        synchronized (this.images) {
            if (this.images.contains(str)) {
                return false;
            }
            this.images.add(str);
            handler.post(new Runnable() { // from class: com.narvii.util.h
                @Override // java.lang.Runnable
                public final void run() {
                    WebMediaExtractor.imageFound$lambda$1$lambda$0(this.f2846a, str);
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
            handler.post(new Runnable() { // from class: com.narvii.util.g
                @Override // java.lang.Runnable
                public final void run() {
                    WebMediaExtractor.videoFound$lambda$3$lambda$2(this.f2844a, str);
                }
            });
            return true;
        }
    }

    public final void abort() {
        this.webView.destroy();
        handler.removeCallbacks(this);
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

    /* JADX INFO: Access modifiers changed from: private */
    public static final void imageFound$lambda$1$lambda$0(WebMediaExtractor this$0, String url) {
        t.j(this$0, "this$0");
        t.j(url, "$url");
        this$0.onImageFound(url);
    }

    private final void initWebViewSettings(WebView webView) {
        webView.getSettings().setJavaScriptEnabled(true);
        webView.getSettings().setCacheMode(2);
        webView.getSettings().setDomStorageEnabled(true);
        webView.getSettings().setDatabaseEnabled(true);
        webView.getSettings().setDatabaseEnabled(true);
        webView.getSettings().setUseWideViewPort(true);
        webView.getSettings().setLoadWithOverviewMode(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void videoFound$lambda$3$lambda$2(WebMediaExtractor this$0, String url) {
        t.j(this$0, "this$0");
        t.j(url, "$url");
        this$0.onVideoFound(url);
    }

    public final void extract(@NotNull String url) {
        t.j(url, "url");
        this.webView.loadUrl(url);
    }
}
