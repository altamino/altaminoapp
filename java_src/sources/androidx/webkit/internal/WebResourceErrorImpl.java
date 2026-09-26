package androidx.webkit.internal;

import android.webkit.WebResourceError;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.webkit.WebResourceErrorCompat;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Proxy;
import org.chromium.support_lib_boundary.WebResourceErrorBoundaryInterface;

/* JADX INFO: loaded from: classes11.dex */
public class WebResourceErrorImpl extends WebResourceErrorCompat {
    private WebResourceErrorBoundaryInterface mBoundaryInterface;
    private WebResourceError mFrameworksImpl;

    public WebResourceErrorImpl(@NonNull InvocationHandler invocationHandler) {
        this.mBoundaryInterface = (WebResourceErrorBoundaryInterface) org.chromium.support_lib_boundary.util.a.a(WebResourceErrorBoundaryInterface.class, invocationHandler);
    }

    private WebResourceErrorBoundaryInterface c() {
        if (this.mBoundaryInterface == null) {
            this.mBoundaryInterface = (WebResourceErrorBoundaryInterface) org.chromium.support_lib_boundary.util.a.a(WebResourceErrorBoundaryInterface.class, WebViewGlueCommunicator.c().f(this.mFrameworksImpl));
        }
        return this.mBoundaryInterface;
    }

    @RequiresApi
    private WebResourceError d() {
        if (this.mFrameworksImpl == null) {
            this.mFrameworksImpl = WebViewGlueCommunicator.c().e(Proxy.getInvocationHandler(this.mBoundaryInterface));
        }
        return this.mFrameworksImpl;
    }

    @Override // androidx.webkit.WebResourceErrorCompat
    @NonNull
    public CharSequence a() {
        ApiFeature.M m = WebViewFeatureInternal.WEB_RESOURCE_ERROR_GET_DESCRIPTION;
        if (m.b()) {
            return ApiHelperForM.e(d());
        }
        if (m.c()) {
            return c().getDescription();
        }
        throw WebViewFeatureInternal.a();
    }

    @Override // androidx.webkit.WebResourceErrorCompat
    public int b() {
        ApiFeature.M m = WebViewFeatureInternal.WEB_RESOURCE_ERROR_GET_CODE;
        if (m.b()) {
            return ApiHelperForM.f(d());
        }
        if (m.c()) {
            return c().getErrorCode();
        }
        throw WebViewFeatureInternal.a();
    }

    public WebResourceErrorImpl(@NonNull WebResourceError webResourceError) {
        this.mFrameworksImpl = webResourceError;
    }
}
