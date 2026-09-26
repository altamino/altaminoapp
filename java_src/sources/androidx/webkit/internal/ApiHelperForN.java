package androidx.webkit.internal;

import android.content.Context;
import android.webkit.ServiceWorkerClient;
import android.webkit.ServiceWorkerController;
import android.webkit.ServiceWorkerWebSettings;
import android.webkit.WebResourceRequest;
import android.webkit.WebSettings;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.webkit.ServiceWorkerClientCompat;
import java.io.File;

/* JADX INFO: loaded from: classes10.dex */
@RequiresApi
public class ApiHelperForN {
    @NonNull
    @DoNotInline
    public static ServiceWorkerWebSettingsImpl i(@NonNull ServiceWorkerController serviceWorkerController) {
        return new ServiceWorkerWebSettingsImpl(h(serviceWorkerController));
    }

    @DoNotInline
    public static void q(@NonNull ServiceWorkerController serviceWorkerController, @NonNull ServiceWorkerClientCompat serviceWorkerClientCompat) {
        serviceWorkerController.setServiceWorkerClient(new FrameworkServiceWorkerClient(serviceWorkerClientCompat));
    }

    private ApiHelperForN() {
    }

    @DoNotInline
    public static boolean a(@NonNull ServiceWorkerWebSettings serviceWorkerWebSettings) {
        return serviceWorkerWebSettings.getAllowContentAccess();
    }

    @DoNotInline
    public static boolean b(@NonNull ServiceWorkerWebSettings serviceWorkerWebSettings) {
        return serviceWorkerWebSettings.getAllowFileAccess();
    }

    @DoNotInline
    public static boolean c(@NonNull ServiceWorkerWebSettings serviceWorkerWebSettings) {
        return serviceWorkerWebSettings.getBlockNetworkLoads();
    }

    @DoNotInline
    public static int d(@NonNull ServiceWorkerWebSettings serviceWorkerWebSettings) {
        return serviceWorkerWebSettings.getCacheMode();
    }

    @NonNull
    @DoNotInline
    public static File e(@NonNull Context context) {
        return context.getDataDir();
    }

    @DoNotInline
    public static int f(@NonNull WebSettings webSettings) {
        return webSettings.getDisabledActionModeMenuItems();
    }

    @NonNull
    @DoNotInline
    public static ServiceWorkerController g() {
        return ServiceWorkerController.getInstance();
    }

    @NonNull
    @DoNotInline
    public static ServiceWorkerWebSettings h(@NonNull ServiceWorkerController serviceWorkerController) {
        return serviceWorkerController.getServiceWorkerWebSettings();
    }

    @DoNotInline
    public static boolean j(@NonNull WebResourceRequest webResourceRequest) {
        return webResourceRequest.isRedirect();
    }

    @DoNotInline
    public static void k(@NonNull ServiceWorkerWebSettings serviceWorkerWebSettings, boolean z6) {
        serviceWorkerWebSettings.setAllowContentAccess(z6);
    }

    @DoNotInline
    public static void l(@NonNull ServiceWorkerWebSettings serviceWorkerWebSettings, boolean z6) {
        serviceWorkerWebSettings.setAllowFileAccess(z6);
    }

    @DoNotInline
    public static void m(@NonNull ServiceWorkerWebSettings serviceWorkerWebSettings, boolean z6) {
        serviceWorkerWebSettings.setBlockNetworkLoads(z6);
    }

    @DoNotInline
    public static void n(@NonNull ServiceWorkerWebSettings serviceWorkerWebSettings, int i10) {
        serviceWorkerWebSettings.setCacheMode(i10);
    }

    @DoNotInline
    public static void o(@NonNull WebSettings webSettings, int i10) {
        webSettings.setDisabledActionModeMenuItems(i10);
    }

    @DoNotInline
    public static void p(@NonNull ServiceWorkerController serviceWorkerController, @Nullable ServiceWorkerClient serviceWorkerClient) {
        serviceWorkerController.setServiceWorkerClient(serviceWorkerClient);
    }
}
