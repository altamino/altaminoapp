package androidx.webkit.internal;

import android.webkit.WebView;
import androidx.annotation.NonNull;
import org.chromium.support_lib_boundary.DropDataContentProviderBoundaryInterface;
import org.chromium.support_lib_boundary.ServiceWorkerControllerBoundaryInterface;
import org.chromium.support_lib_boundary.StaticsBoundaryInterface;
import org.chromium.support_lib_boundary.TracingControllerBoundaryInterface;
import org.chromium.support_lib_boundary.WebViewProviderBoundaryInterface;
import org.chromium.support_lib_boundary.WebkitToCompatConverterBoundaryInterface;

/* JADX INFO: loaded from: classes5.dex */
public interface WebViewProviderFactory {
    @NonNull
    String[] a();

    @NonNull
    WebViewProviderBoundaryInterface createWebView(@NonNull WebView webView);

    @NonNull
    DropDataContentProviderBoundaryInterface getDropDataProvider();

    @NonNull
    ServiceWorkerControllerBoundaryInterface getServiceWorkerController();

    @NonNull
    StaticsBoundaryInterface getStatics();

    @NonNull
    TracingControllerBoundaryInterface getTracingController();

    @NonNull
    WebkitToCompatConverterBoundaryInterface getWebkitToCompatConverter();
}
