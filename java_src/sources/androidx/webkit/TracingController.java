package androidx.webkit;

import androidx.annotation.RestrictTo;
import androidx.webkit.internal.TracingControllerImpl;

/* JADX INFO: loaded from: classes10.dex */
public abstract class TracingController {

    private static class LAZY_HOLDER {
        static final TracingController INSTANCE = new TracingControllerImpl();

        private LAZY_HOLDER() {
        }
    }

    @RestrictTo
    public TracingController() {
    }
}
