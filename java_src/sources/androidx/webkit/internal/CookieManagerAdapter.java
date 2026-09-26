package androidx.webkit.internal;

import androidx.annotation.NonNull;
import org.chromium.support_lib_boundary.WebViewCookieManagerBoundaryInterface;

/* JADX INFO: loaded from: classes6.dex */
public class CookieManagerAdapter {
    private final WebViewCookieManagerBoundaryInterface mBoundaryInterface;

    public CookieManagerAdapter(@NonNull WebViewCookieManagerBoundaryInterface webViewCookieManagerBoundaryInterface) {
        this.mBoundaryInterface = webViewCookieManagerBoundaryInterface;
    }
}
