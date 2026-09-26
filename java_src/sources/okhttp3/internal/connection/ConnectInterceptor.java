package okhttp3.internal.connection;

import java.io.IOException;
import kotlin.jvm.internal.t;
import okhttp3.Interceptor;
import okhttp3.Response;
import okhttp3.internal.http.RealInterceptorChain;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
public final class ConnectInterceptor implements Interceptor {

    @NotNull
    public static final ConnectInterceptor INSTANCE = new ConnectInterceptor();

    @Override // okhttp3.Interceptor
    @NotNull
    public Response intercept(@NotNull Interceptor.Chain chain) throws IOException {
        t.j(chain, "chain");
        RealInterceptorChain realInterceptorChain = (RealInterceptorChain) chain;
        return RealInterceptorChain.copy$okhttp$default(realInterceptorChain, 0, realInterceptorChain.getCall$okhttp().initExchange$okhttp(realInterceptorChain), null, 0, 0, 0, 61, null).proceed(realInterceptorChain.getRequest$okhttp());
    }

    private ConnectInterceptor() {
    }
}
