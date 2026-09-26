package androidx.webkit.internal;

import android.net.Uri;
import android.webkit.WebView;
import androidx.annotation.NonNull;
import androidx.webkit.WebMessageCompat;
import androidx.webkit.WebViewCompat;
import androidx.webkit.WebViewFeature;
import java.lang.reflect.InvocationHandler;
import org.chromium.support_lib_boundary.WebMessageBoundaryInterface;
import org.chromium.support_lib_boundary.WebMessageListenerBoundaryInterface;

/* JADX INFO: loaded from: classes9.dex */
public class WebMessageListenerAdapter implements WebMessageListenerBoundaryInterface {
    private WebViewCompat.WebMessageListener mWebMessageListener;

    @Override // org.chromium.support_lib_boundary.FeatureFlagHolderBoundaryInterface
    @NonNull
    public String[] getSupportedFeatures() {
        return new String[]{WebViewFeature.WEB_MESSAGE_LISTENER, WebViewFeature.WEB_MESSAGE_ARRAY_BUFFER};
    }

    @Override // org.chromium.support_lib_boundary.WebMessageListenerBoundaryInterface
    public void onPostMessage(@NonNull WebView webView, @NonNull InvocationHandler invocationHandler, @NonNull Uri uri, boolean z6, @NonNull InvocationHandler invocationHandler2) {
        WebMessageCompat webMessageCompatB = WebMessageAdapter.b((WebMessageBoundaryInterface) org.chromium.support_lib_boundary.util.a.a(WebMessageBoundaryInterface.class, invocationHandler));
        if (webMessageCompatB != null) {
            this.mWebMessageListener.onPostMessage(webView, webMessageCompatB, uri, z6, JavaScriptReplyProxyImpl.a(invocationHandler2));
        }
    }

    public WebMessageListenerAdapter(@NonNull WebViewCompat.WebMessageListener webMessageListener) {
        this.mWebMessageListener = webMessageListener;
    }
}
