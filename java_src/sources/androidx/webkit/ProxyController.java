package androidx.webkit;

import androidx.annotation.RestrictTo;
import androidx.webkit.internal.ProxyControllerImpl;

/* JADX INFO: loaded from: classes8.dex */
public abstract class ProxyController {

    private static class LAZY_HOLDER {
        static final ProxyController INSTANCE = new ProxyControllerImpl();

        private LAZY_HOLDER() {
        }
    }

    @RestrictTo
    public ProxyController() {
    }
}
