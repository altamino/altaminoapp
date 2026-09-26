package okhttp3.internal.platform.android;

import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.X509TrustManager;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import okhttp3.internal.Util;
import okhttp3.internal.platform.Platform;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
public final class StandardAndroidSocketAdapter extends AndroidSocketAdapter {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    private final Class<?> paramClass;

    @NotNull
    private final Class<? super SSLSocketFactory> sslSocketFactoryClass;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        public static /* synthetic */ SocketAdapter buildIfSupported$default(Companion companion, String str, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                str = "com.android.org.conscrypt";
            }
            return companion.buildIfSupported(str);
        }

        @Nullable
        public final SocketAdapter buildIfSupported(@NotNull String packageName) {
            t.j(packageName, "packageName");
            try {
                Class<?> cls = Class.forName(t.s(packageName, ".OpenSSLSocketImpl"));
                Class<?> cls2 = Class.forName(t.s(packageName, ".OpenSSLSocketFactoryImpl"));
                Class<?> paramsClass = Class.forName(t.s(packageName, ".SSLParametersImpl"));
                t.i(paramsClass, "paramsClass");
                return new StandardAndroidSocketAdapter(cls, cls2, paramsClass);
            } catch (Exception e) {
                Platform.Companion.get().log("unable to load android socket classes", 5, e);
                return null;
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StandardAndroidSocketAdapter(@NotNull Class<? super SSLSocket> sslSocketClass, @NotNull Class<? super SSLSocketFactory> sslSocketFactoryClass, @NotNull Class<?> paramClass) {
        super(sslSocketClass);
        t.j(sslSocketClass, "sslSocketClass");
        t.j(sslSocketFactoryClass, "sslSocketFactoryClass");
        t.j(paramClass, "paramClass");
        this.sslSocketFactoryClass = sslSocketFactoryClass;
        this.paramClass = paramClass;
    }

    @Override // okhttp3.internal.platform.android.AndroidSocketAdapter, okhttp3.internal.platform.android.SocketAdapter
    public boolean matchesSocketFactory(@NotNull SSLSocketFactory sslSocketFactory) {
        t.j(sslSocketFactory, "sslSocketFactory");
        return this.sslSocketFactoryClass.isInstance(sslSocketFactory);
    }

    @Override // okhttp3.internal.platform.android.AndroidSocketAdapter, okhttp3.internal.platform.android.SocketAdapter
    @Nullable
    public X509TrustManager trustManager(@NotNull SSLSocketFactory sslSocketFactory) throws IllegalAccessException {
        t.j(sslSocketFactory, "sslSocketFactory");
        Object fieldOrNull = Util.readFieldOrNull(sslSocketFactory, this.paramClass, "sslParameters");
        t.g(fieldOrNull);
        X509TrustManager x509TrustManager = (X509TrustManager) Util.readFieldOrNull(fieldOrNull, X509TrustManager.class, "x509TrustManager");
        return x509TrustManager == null ? (X509TrustManager) Util.readFieldOrNull(fieldOrNull, X509TrustManager.class, "trustManager") : x509TrustManager;
    }
}
