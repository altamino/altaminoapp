package androidx.webkit.internal;

import android.webkit.ServiceWorkerController;
import androidx.annotation.RequiresApi;
import androidx.webkit.ServiceWorkerControllerCompat;
import androidx.webkit.ServiceWorkerWebSettingsCompat;
import org.chromium.support_lib_boundary.ServiceWorkerControllerBoundaryInterface;

/* JADX INFO: loaded from: classes4.dex */
public class ServiceWorkerControllerImpl extends ServiceWorkerControllerCompat {
    private ServiceWorkerControllerBoundaryInterface mBoundaryInterface;
    private ServiceWorkerController mFrameworksImpl;
    private final ServiceWorkerWebSettingsCompat mWebSettings;

    @RequiresApi
    private ServiceWorkerController a() {
        if (this.mFrameworksImpl == null) {
            this.mFrameworksImpl = ApiHelperForN.g();
        }
        return this.mFrameworksImpl;
    }

    public ServiceWorkerControllerImpl() {
        ApiFeature.N n = WebViewFeatureInternal.SERVICE_WORKER_BASIC_USAGE;
        if (n.b()) {
            this.mFrameworksImpl = ApiHelperForN.g();
            this.mBoundaryInterface = null;
            this.mWebSettings = ApiHelperForN.i(a());
        } else {
            if (n.c()) {
                this.mFrameworksImpl = null;
                ServiceWorkerControllerBoundaryInterface serviceWorkerController = WebViewGlueCommunicator.d().getServiceWorkerController();
                this.mBoundaryInterface = serviceWorkerController;
                this.mWebSettings = new ServiceWorkerWebSettingsImpl(serviceWorkerController.getServiceWorkerWebSettings());
                return;
            }
            throw WebViewFeatureInternal.a();
        }
    }
}
