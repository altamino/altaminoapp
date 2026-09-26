package androidx.webkit.internal;

import android.webkit.WebViewClient;
import androidx.annotation.NonNull;
import androidx.webkit.WebViewCompat;
import org.chromium.support_lib_boundary.WebViewProviderBoundaryInterface;

/* JADX INFO: loaded from: classes8.dex */
public class WebViewProviderAdapter {
    WebViewProviderBoundaryInterface mImpl;

    public void a(@NonNull String str, @NonNull String[] strArr, @NonNull WebViewCompat.WebMessageListener webMessageListener) {
        this.mImpl.addWebMessageListener(str, strArr, org.chromium.support_lib_boundary.util.a.c(new WebMessageListenerAdapter(webMessageListener)));
    }

    @NonNull
    public WebViewClient b() {
        return this.mImpl.getWebViewClient();
    }

    public void c(@NonNull String str) {
        this.mImpl.removeWebMessageListener(str);
    }

    public void d(boolean z6) {
        this.mImpl.setAudioMuted(z6);
    }

    public WebViewProviderAdapter(@NonNull WebViewProviderBoundaryInterface webViewProviderBoundaryInterface) {
        this.mImpl = webViewProviderBoundaryInterface;
    }
}
