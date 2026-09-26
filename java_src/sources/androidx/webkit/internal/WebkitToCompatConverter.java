package androidx.webkit.internal;

import android.webkit.SafeBrowsingResponse;
import android.webkit.WebMessagePort;
import android.webkit.WebResourceError;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import java.lang.reflect.InvocationHandler;
import org.chromium.support_lib_boundary.WebkitToCompatConverterBoundaryInterface;

/* JADX INFO: loaded from: classes8.dex */
public class WebkitToCompatConverter {
    private final WebkitToCompatConverterBoundaryInterface mImpl;

    @NonNull
    @RequiresApi
    public SafeBrowsingResponse a(@NonNull InvocationHandler invocationHandler) {
        return u0.a(this.mImpl.convertSafeBrowsingResponse(invocationHandler));
    }

    @NonNull
    public InvocationHandler b(@NonNull SafeBrowsingResponse safeBrowsingResponse) {
        return this.mImpl.convertSafeBrowsingResponse(safeBrowsingResponse);
    }

    @NonNull
    @RequiresApi
    public WebMessagePort c(@NonNull InvocationHandler invocationHandler) {
        return (WebMessagePort) this.mImpl.convertWebMessagePort(invocationHandler);
    }

    @NonNull
    public InvocationHandler d(@NonNull WebMessagePort webMessagePort) {
        return this.mImpl.convertWebMessagePort(webMessagePort);
    }

    @NonNull
    @RequiresApi
    public WebResourceError e(@NonNull InvocationHandler invocationHandler) {
        return (WebResourceError) this.mImpl.convertWebResourceError(invocationHandler);
    }

    @NonNull
    public InvocationHandler f(@NonNull WebResourceError webResourceError) {
        return this.mImpl.convertWebResourceError(webResourceError);
    }

    public WebkitToCompatConverter(@NonNull WebkitToCompatConverterBoundaryInterface webkitToCompatConverterBoundaryInterface) {
        this.mImpl = webkitToCompatConverterBoundaryInterface;
    }
}
