package androidx.webkit.internal;

import android.net.Uri;
import android.os.Handler;
import android.webkit.WebMessage;
import android.webkit.WebMessagePort;
import android.webkit.WebResourceError;
import android.webkit.WebSettings;
import android.webkit.WebView;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.webkit.WebMessageCompat;
import androidx.webkit.WebMessagePortCompat;
import androidx.webkit.WebViewCompat;

/* JADX INFO: loaded from: classes8.dex */
@RequiresApi
public class ApiHelperForM {
    @NonNull
    @DoNotInline
    public static WebMessage b(@NonNull WebMessageCompat webMessageCompat) {
        return new WebMessage(webMessageCompat.c(), WebMessagePortImpl.c(webMessageCompat.d()));
    }

    @NonNull
    @DoNotInline
    public static WebMessageCompat d(@NonNull WebMessage webMessage) {
        return new WebMessageCompat(webMessage.getData(), WebMessagePortImpl.g(webMessage.getPorts()));
    }

    @DoNotInline
    public static void i(@NonNull WebView webView, long j6, @NonNull final WebViewCompat.VisualStateCallback visualStateCallback) {
        webView.postVisualStateCallback(j6, new WebView.VisualStateCallback() { // from class: androidx.webkit.internal.ApiHelperForM.3
            @Override // android.webkit.WebView.VisualStateCallback
            public void onComplete(long j10) {
                visualStateCallback.onComplete(j10);
            }
        });
    }

    @DoNotInline
    public static void l(@NonNull WebMessagePort webMessagePort, @NonNull final WebMessagePortCompat.WebMessageCallbackCompat webMessageCallbackCompat) {
        webMessagePort.setWebMessageCallback(new WebMessagePort.WebMessageCallback() { // from class: androidx.webkit.internal.ApiHelperForM.1
            @Override // android.webkit.WebMessagePort.WebMessageCallback
            public void onMessage(WebMessagePort webMessagePort2, WebMessage webMessage) {
                webMessageCallbackCompat.a(new WebMessagePortImpl(webMessagePort2), WebMessagePortImpl.d(webMessage));
            }
        });
    }

    @DoNotInline
    public static void m(@NonNull WebMessagePort webMessagePort, @NonNull final WebMessagePortCompat.WebMessageCallbackCompat webMessageCallbackCompat, @Nullable Handler handler) {
        webMessagePort.setWebMessageCallback(new WebMessagePort.WebMessageCallback() { // from class: androidx.webkit.internal.ApiHelperForM.2
            @Override // android.webkit.WebMessagePort.WebMessageCallback
            public void onMessage(WebMessagePort webMessagePort2, WebMessage webMessage) {
                webMessageCallbackCompat.a(new WebMessagePortImpl(webMessagePort2), WebMessagePortImpl.d(webMessage));
            }
        }, handler);
    }

    private ApiHelperForM() {
    }

    @DoNotInline
    public static void a(@NonNull WebMessagePort webMessagePort) {
        webMessagePort.close();
    }

    @NonNull
    @DoNotInline
    public static WebMessagePort[] c(@NonNull WebView webView) {
        return webView.createWebMessageChannel();
    }

    @NonNull
    @DoNotInline
    public static CharSequence e(@NonNull WebResourceError webResourceError) {
        return webResourceError.getDescription();
    }

    @DoNotInline
    public static int f(@NonNull WebResourceError webResourceError) {
        return webResourceError.getErrorCode();
    }

    @DoNotInline
    public static boolean g(@NonNull WebSettings webSettings) {
        return webSettings.getOffscreenPreRaster();
    }

    @DoNotInline
    public static void h(@NonNull WebMessagePort webMessagePort, @NonNull WebMessage webMessage) {
        webMessagePort.postMessage(webMessage);
    }

    @DoNotInline
    public static void j(@NonNull WebView webView, @NonNull WebMessage webMessage, @NonNull Uri uri) {
        webView.postWebMessage(webMessage, uri);
    }

    @DoNotInline
    public static void k(@NonNull WebSettings webSettings, boolean z6) {
        webSettings.setOffscreenPreRaster(z6);
    }
}
