package androidx.webkit.internal;

import android.webkit.WebMessage;
import android.webkit.WebMessagePort;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.webkit.WebMessageCompat;
import androidx.webkit.WebMessagePortCompat;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Proxy;
import org.chromium.support_lib_boundary.WebMessagePortBoundaryInterface;

/* JADX INFO: loaded from: classes.dex */
public class WebMessagePortImpl extends WebMessagePortCompat {
    private WebMessagePortBoundaryInterface mBoundaryInterface;
    private WebMessagePort mFrameworksImpl;

    public WebMessagePortImpl(@NonNull WebMessagePort webMessagePort) {
        this.mFrameworksImpl = webMessagePort;
    }

    public WebMessagePortImpl(@NonNull InvocationHandler invocationHandler) {
        this.mBoundaryInterface = (WebMessagePortBoundaryInterface) org.chromium.support_lib_boundary.util.a.a(WebMessagePortBoundaryInterface.class, invocationHandler);
    }

    @Nullable
    @RequiresApi
    public static WebMessagePort[] c(@Nullable WebMessagePortCompat[] webMessagePortCompatArr) {
        if (webMessagePortCompatArr == null) {
            return null;
        }
        int length = webMessagePortCompatArr.length;
        WebMessagePort[] webMessagePortArr = new WebMessagePort[length];
        for (int i10 = 0; i10 < length; i10++) {
            webMessagePortArr[i10] = webMessagePortCompatArr[i10].a();
        }
        return webMessagePortArr;
    }

    private WebMessagePortBoundaryInterface e() {
        if (this.mBoundaryInterface == null) {
            this.mBoundaryInterface = (WebMessagePortBoundaryInterface) org.chromium.support_lib_boundary.util.a.a(WebMessagePortBoundaryInterface.class, WebViewGlueCommunicator.c().d(this.mFrameworksImpl));
        }
        return this.mBoundaryInterface;
    }

    @RequiresApi
    private WebMessagePort f() {
        if (this.mFrameworksImpl == null) {
            this.mFrameworksImpl = WebViewGlueCommunicator.c().c(Proxy.getInvocationHandler(this.mBoundaryInterface));
        }
        return this.mFrameworksImpl;
    }

    @Nullable
    public static WebMessagePortCompat[] g(@Nullable WebMessagePort[] webMessagePortArr) {
        if (webMessagePortArr == null) {
            return null;
        }
        WebMessagePortCompat[] webMessagePortCompatArr = new WebMessagePortCompat[webMessagePortArr.length];
        for (int i10 = 0; i10 < webMessagePortArr.length; i10++) {
            webMessagePortCompatArr[i10] = new WebMessagePortImpl(webMessagePortArr[i10]);
        }
        return webMessagePortCompatArr;
    }

    @NonNull
    @RequiresApi
    public static WebMessageCompat d(@NonNull WebMessage webMessage) {
        return ApiHelperForM.d(webMessage);
    }

    @Override // androidx.webkit.WebMessagePortCompat
    @NonNull
    @RequiresApi
    public WebMessagePort a() {
        return f();
    }

    @Override // androidx.webkit.WebMessagePortCompat
    @NonNull
    public InvocationHandler b() {
        return Proxy.getInvocationHandler(e());
    }
}
