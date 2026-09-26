package androidx.webkit.internal;

import androidx.annotation.NonNull;
import androidx.webkit.JavaScriptReplyProxy;
import java.lang.reflect.InvocationHandler;
import java.util.concurrent.Callable;
import org.chromium.support_lib_boundary.JsReplyProxyBoundaryInterface;

/* JADX INFO: loaded from: classes8.dex */
public class JavaScriptReplyProxyImpl extends JavaScriptReplyProxy {
    private JsReplyProxyBoundaryInterface mBoundaryInterface;

    @NonNull
    public static JavaScriptReplyProxyImpl a(@NonNull InvocationHandler invocationHandler) {
        final JsReplyProxyBoundaryInterface jsReplyProxyBoundaryInterface = (JsReplyProxyBoundaryInterface) org.chromium.support_lib_boundary.util.a.a(JsReplyProxyBoundaryInterface.class, invocationHandler);
        return (JavaScriptReplyProxyImpl) jsReplyProxyBoundaryInterface.getOrCreatePeer(new Callable<Object>() { // from class: androidx.webkit.internal.JavaScriptReplyProxyImpl.1
            @Override // java.util.concurrent.Callable
            public Object call() {
                return new JavaScriptReplyProxyImpl(jsReplyProxyBoundaryInterface);
            }
        });
    }

    public JavaScriptReplyProxyImpl(@NonNull JsReplyProxyBoundaryInterface jsReplyProxyBoundaryInterface) {
        this.mBoundaryInterface = jsReplyProxyBoundaryInterface;
    }
}
