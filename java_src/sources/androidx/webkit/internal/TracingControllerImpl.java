package androidx.webkit.internal;

import androidx.webkit.TracingController;
import org.chromium.support_lib_boundary.TracingControllerBoundaryInterface;

/* JADX INFO: loaded from: classes9.dex */
public class TracingControllerImpl extends TracingController {
    private TracingControllerBoundaryInterface mBoundaryInterface;
    private android.webkit.TracingController mFrameworksImpl;

    public TracingControllerImpl() {
        ApiFeature.P p = WebViewFeatureInternal.TRACING_CONTROLLER_BASIC_USAGE;
        if (p.b()) {
            this.mFrameworksImpl = ApiHelperForP.a();
            this.mBoundaryInterface = null;
        } else {
            if (p.c()) {
                this.mFrameworksImpl = null;
                this.mBoundaryInterface = WebViewGlueCommunicator.d().getTracingController();
                return;
            }
            throw WebViewFeatureInternal.a();
        }
    }
}
