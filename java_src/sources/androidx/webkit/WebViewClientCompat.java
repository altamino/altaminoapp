package androidx.webkit;

import android.app.PendingIntent;
import android.webkit.SafeBrowsingResponse;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.UiThread;
import androidx.webkit.internal.ApiHelperForLollipop;
import androidx.webkit.internal.SafeBrowsingResponseImpl;
import androidx.webkit.internal.WebResourceErrorImpl;
import androidx.webkit.internal.WebViewFeatureInternal;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.reflect.InvocationHandler;
import org.chromium.support_lib_boundary.WebViewClientBoundaryInterface;

/* JADX INFO: loaded from: classes8.dex */
public class WebViewClientCompat extends WebViewClient implements WebViewClientBoundaryInterface {
    private static final String[] sSupportedFeatures = {WebViewFeature.VISUAL_STATE_CALLBACK, WebViewFeature.RECEIVE_WEB_RESOURCE_ERROR, WebViewFeature.RECEIVE_HTTP_ERROR, WebViewFeature.SHOULD_OVERRIDE_WITH_REDIRECTS, WebViewFeature.SAFE_BROWSING_HIT};

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    public @interface SafeBrowsingThreat {
    }

    @Override // org.chromium.support_lib_boundary.FeatureFlagHolderBoundaryInterface
    @NonNull
    @RestrictTo
    public final String[] getSupportedFeatures() {
        return sSupportedFeatures;
    }

    @Override // android.webkit.WebViewClient, org.chromium.support_lib_boundary.WebViewClientBoundaryInterface
    @UiThread
    public void onPageCommitVisible(@NonNull WebView webView, @NonNull String str) {
    }

    @Override // org.chromium.support_lib_boundary.WebViewClientBoundaryInterface
    @RequiresApi
    @RestrictTo
    public final void onReceivedError(@NonNull WebView webView, @NonNull WebResourceRequest webResourceRequest, @NonNull InvocationHandler invocationHandler) {
        onReceivedError(webView, webResourceRequest, new WebResourceErrorImpl(invocationHandler));
    }

    @Override // android.webkit.WebViewClient, org.chromium.support_lib_boundary.WebViewClientBoundaryInterface
    @UiThread
    public void onReceivedHttpError(@NonNull WebView webView, @NonNull WebResourceRequest webResourceRequest, @NonNull WebResourceResponse webResourceResponse) {
    }

    @Override // org.chromium.support_lib_boundary.WebViewClientBoundaryInterface
    @RestrictTo
    public final void onSafeBrowsingHit(@NonNull WebView webView, @NonNull WebResourceRequest webResourceRequest, int i10, @NonNull InvocationHandler invocationHandler) {
        onSafeBrowsingHit(webView, webResourceRequest, i10, new SafeBrowsingResponseImpl(invocationHandler));
    }

    @Override // org.chromium.support_lib_boundary.WebViewClientBoundaryInterface
    @RestrictTo
    public boolean onWebAuthnIntent(@NonNull WebView webView, @NonNull PendingIntent pendingIntent, @NonNull InvocationHandler invocationHandler) {
        return false;
    }

    @Override // android.webkit.WebViewClient
    @RequiresApi
    public final void onReceivedError(@NonNull WebView webView, @NonNull WebResourceRequest webResourceRequest, @NonNull WebResourceError webResourceError) {
        onReceivedError(webView, webResourceRequest, new WebResourceErrorImpl(webResourceError));
    }

    @Override // android.webkit.WebViewClient
    @RequiresApi
    public final void onSafeBrowsingHit(@NonNull WebView webView, @NonNull WebResourceRequest webResourceRequest, int i10, @NonNull SafeBrowsingResponse safeBrowsingResponse) {
        onSafeBrowsingHit(webView, webResourceRequest, i10, new SafeBrowsingResponseImpl(safeBrowsingResponse));
    }

    @RequiresApi
    @UiThread
    public void onReceivedError(@NonNull WebView webView, @NonNull WebResourceRequest webResourceRequest, @NonNull WebResourceErrorCompat webResourceErrorCompat) {
        if (WebViewFeature.a(WebViewFeature.WEB_RESOURCE_ERROR_GET_CODE) && WebViewFeature.a(WebViewFeature.WEB_RESOURCE_ERROR_GET_DESCRIPTION) && ApiHelperForLollipop.b(webResourceRequest)) {
            onReceivedError(webView, webResourceErrorCompat.b(), webResourceErrorCompat.a().toString(), ApiHelperForLollipop.a(webResourceRequest).toString());
        }
    }

    @UiThread
    public void onSafeBrowsingHit(@NonNull WebView webView, @NonNull WebResourceRequest webResourceRequest, int i10, @NonNull SafeBrowsingResponseCompat safeBrowsingResponseCompat) {
        if (WebViewFeature.a(WebViewFeature.SAFE_BROWSING_RESPONSE_SHOW_INTERSTITIAL)) {
            safeBrowsingResponseCompat.a(true);
            return;
        }
        throw WebViewFeatureInternal.a();
    }

    @Override // android.webkit.WebViewClient, org.chromium.support_lib_boundary.WebViewClientBoundaryInterface
    @RequiresApi
    @UiThread
    public boolean shouldOverrideUrlLoading(@NonNull WebView webView, @NonNull WebResourceRequest webResourceRequest) {
        return shouldOverrideUrlLoading(webView, ApiHelperForLollipop.a(webResourceRequest).toString());
    }
}
