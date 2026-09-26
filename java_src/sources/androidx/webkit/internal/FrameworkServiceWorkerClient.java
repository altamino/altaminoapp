package androidx.webkit.internal;

import android.webkit.ServiceWorkerClient;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.webkit.ServiceWorkerClientCompat;

/* JADX INFO: loaded from: classes8.dex */
@RequiresApi
public class FrameworkServiceWorkerClient extends ServiceWorkerClient {
    private final ServiceWorkerClientCompat mImpl;

    @Nullable
    public WebResourceResponse shouldInterceptRequest(@NonNull WebResourceRequest webResourceRequest) {
        return this.mImpl.a(webResourceRequest);
    }

    public FrameworkServiceWorkerClient(@NonNull ServiceWorkerClientCompat serviceWorkerClientCompat) {
        this.mImpl = serviceWorkerClientCompat;
    }
}
