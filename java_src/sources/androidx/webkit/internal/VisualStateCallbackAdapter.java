package androidx.webkit.internal;

import androidx.annotation.NonNull;
import androidx.webkit.WebViewCompat;
import org.chromium.support_lib_boundary.VisualStateCallbackBoundaryInterface;

/* JADX INFO: loaded from: classes10.dex */
public class VisualStateCallbackAdapter implements VisualStateCallbackBoundaryInterface {
    private final WebViewCompat.VisualStateCallback mVisualStateCallback;

    @Override // org.chromium.support_lib_boundary.VisualStateCallbackBoundaryInterface
    public void onComplete(long j6) {
        this.mVisualStateCallback.onComplete(j6);
    }

    public VisualStateCallbackAdapter(@NonNull WebViewCompat.VisualStateCallback visualStateCallback) {
        this.mVisualStateCallback = visualStateCallback;
    }
}
