package androidx.webkit.internal;

import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewRenderProcess;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.webkit.WebViewRenderProcessClient;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes10.dex */
@RequiresApi
public class ApiHelperForQ {
    @DoNotInline
    public static void e(@NonNull WebView webView, @Nullable WebViewRenderProcessClient webViewRenderProcessClient) {
        webView.setWebViewRenderProcessClient(webViewRenderProcessClient != null ? new WebViewRenderProcessClientFrameworkAdapter(webViewRenderProcessClient) : null);
    }

    @DoNotInline
    public static void f(@NonNull WebView webView, @NonNull Executor executor, @Nullable WebViewRenderProcessClient webViewRenderProcessClient) {
        webView.setWebViewRenderProcessClient(executor, webViewRenderProcessClient != null ? new WebViewRenderProcessClientFrameworkAdapter(webViewRenderProcessClient) : null);
    }

    private ApiHelperForQ() {
    }

    @DoNotInline
    @Deprecated
    public static int a(@NonNull WebSettings webSettings) {
        return webSettings.getForceDark();
    }

    @Nullable
    @DoNotInline
    public static WebViewRenderProcess b(@NonNull WebView webView) {
        return webView.getWebViewRenderProcess();
    }

    @Nullable
    @DoNotInline
    public static android.webkit.WebViewRenderProcessClient c(@NonNull WebView webView) {
        return webView.getWebViewRenderProcessClient();
    }

    @DoNotInline
    @Deprecated
    public static void d(@NonNull WebSettings webSettings, int i10) {
        webSettings.setForceDark(i10);
    }

    @DoNotInline
    public static boolean g(@NonNull WebViewRenderProcess webViewRenderProcess) {
        return webViewRenderProcess.terminate();
    }
}
