package androidx.webkit;

import androidx.annotation.RestrictTo;
import androidx.webkit.internal.ServiceWorkerControllerImpl;

/* JADX INFO: loaded from: classes9.dex */
public abstract class ServiceWorkerControllerCompat {

    private static class LAZY_HOLDER {
        static final ServiceWorkerControllerCompat INSTANCE = new ServiceWorkerControllerImpl();

        private LAZY_HOLDER() {
        }
    }

    @RestrictTo
    public ServiceWorkerControllerCompat() {
    }
}
