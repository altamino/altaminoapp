package androidx.webkit.internal;

import android.webkit.WebView;
import androidx.annotation.NonNull;
import org.chromium.support_lib_boundary.DropDataContentProviderBoundaryInterface;
import org.chromium.support_lib_boundary.ServiceWorkerControllerBoundaryInterface;
import org.chromium.support_lib_boundary.StaticsBoundaryInterface;
import org.chromium.support_lib_boundary.TracingControllerBoundaryInterface;
import org.chromium.support_lib_boundary.WebViewProviderBoundaryInterface;
import org.chromium.support_lib_boundary.WebViewProviderFactoryBoundaryInterface;
import org.chromium.support_lib_boundary.WebkitToCompatConverterBoundaryInterface;

/* JADX INFO: loaded from: classes9.dex */
public class WebViewProviderFactoryAdapter implements WebViewProviderFactory {
    final WebViewProviderFactoryBoundaryInterface mImpl;

    @Override // androidx.webkit.internal.WebViewProviderFactory
    @NonNull
    public String[] a() {
        return this.mImpl.getSupportedFeatures();
    }

    @Override // androidx.webkit.internal.WebViewProviderFactory
    @NonNull
    public WebViewProviderBoundaryInterface createWebView(@NonNull WebView webView) {
        return (WebViewProviderBoundaryInterface) org.chromium.support_lib_boundary.util.a.a(WebViewProviderBoundaryInterface.class, this.mImpl.createWebView(webView));
    }

    @Override // androidx.webkit.internal.WebViewProviderFactory
    @NonNull
    public DropDataContentProviderBoundaryInterface getDropDataProvider() {
        return (DropDataContentProviderBoundaryInterface) org.chromium.support_lib_boundary.util.a.a(DropDataContentProviderBoundaryInterface.class, this.mImpl.getDropDataProvider());
    }

    @Override // androidx.webkit.internal.WebViewProviderFactory
    @NonNull
    public ServiceWorkerControllerBoundaryInterface getServiceWorkerController() {
        return (ServiceWorkerControllerBoundaryInterface) org.chromium.support_lib_boundary.util.a.a(ServiceWorkerControllerBoundaryInterface.class, this.mImpl.getServiceWorkerController());
    }

    @Override // androidx.webkit.internal.WebViewProviderFactory
    @NonNull
    public StaticsBoundaryInterface getStatics() {
        return (StaticsBoundaryInterface) org.chromium.support_lib_boundary.util.a.a(StaticsBoundaryInterface.class, this.mImpl.getStatics());
    }

    @Override // androidx.webkit.internal.WebViewProviderFactory
    @NonNull
    public TracingControllerBoundaryInterface getTracingController() {
        return (TracingControllerBoundaryInterface) org.chromium.support_lib_boundary.util.a.a(TracingControllerBoundaryInterface.class, this.mImpl.getTracingController());
    }

    @Override // androidx.webkit.internal.WebViewProviderFactory
    @NonNull
    public WebkitToCompatConverterBoundaryInterface getWebkitToCompatConverter() {
        return (WebkitToCompatConverterBoundaryInterface) org.chromium.support_lib_boundary.util.a.a(WebkitToCompatConverterBoundaryInterface.class, this.mImpl.getWebkitToCompatConverter());
    }

    public WebViewProviderFactoryAdapter(@NonNull WebViewProviderFactoryBoundaryInterface webViewProviderFactoryBoundaryInterface) {
        this.mImpl = webViewProviderFactoryBoundaryInterface;
    }
}
