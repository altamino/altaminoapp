package androidx.webkit.internal;

import android.webkit.WebView;
import android.webkit.WebViewRenderProcess;
import android.webkit.WebViewRenderProcessClient;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;

/* JADX INFO: loaded from: classes5.dex */
@RequiresApi
public class WebViewRenderProcessClientFrameworkAdapter extends WebViewRenderProcessClient {
    private androidx.webkit.WebViewRenderProcessClient mWebViewRenderProcessClient;

    public void onRenderProcessResponsive(@NonNull WebView webView, @Nullable WebViewRenderProcess webViewRenderProcess) {
        this.mWebViewRenderProcessClient.a(webView, WebViewRenderProcessImpl.a(webViewRenderProcess));
    }

    public void onRenderProcessUnresponsive(@NonNull WebView webView, @Nullable WebViewRenderProcess webViewRenderProcess) {
        this.mWebViewRenderProcessClient.b(webView, WebViewRenderProcessImpl.a(webViewRenderProcess));
    }

    public WebViewRenderProcessClientFrameworkAdapter(@NonNull androidx.webkit.WebViewRenderProcessClient webViewRenderProcessClient) {
        this.mWebViewRenderProcessClient = webViewRenderProcessClient;
    }
}
