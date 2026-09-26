package okhttp3.internal.platform;

import java.util.List;
import javax.net.ssl.SSLParameters;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.X509TrustManager;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import kotlin.text.s;
import okhttp3.Protocol;
import okhttp3.internal.SuppressSignatureCheck;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
public class Jdk9Platform extends Platform {

    @NotNull
    public static final Companion Companion = new Companion(0 == true ? 1 : 0);
    private static final boolean isAvailable;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        @Nullable
        public final Jdk9Platform buildIfSupported() {
            if (isAvailable()) {
                return new Jdk9Platform();
            }
            return null;
        }

        public final boolean isAvailable() {
            return Jdk9Platform.isAvailable;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    static {
        String property = System.getProperty("java.specification.version");
        Integer numM = property != null ? s.m(property) : null;
        boolean z6 = true;
        if (numM == null) {
            try {
                SSLSocket.class.getMethod("getApplicationProtocol", new Class[0]);
            } catch (NoSuchMethodException unused) {
                z6 = false;
            }
        } else if (numM.intValue() < 9) {
            z6 = false;
        }
        isAvailable = z6;
    }

    @Override // okhttp3.internal.platform.Platform
    @SuppressSignatureCheck
    public void configureTlsExtensions(@NotNull SSLSocket sslSocket, @Nullable String str, @NotNull List<Protocol> protocols) {
        t.j(sslSocket, "sslSocket");
        t.j(protocols, "protocols");
        SSLParameters sSLParameters = sslSocket.getSSLParameters();
        Object[] array = Platform.Companion.alpnProtocolNames(protocols).toArray(new String[0]);
        if (array == null) {
            throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        }
        sSLParameters.setApplicationProtocols((String[]) array);
        sslSocket.setSSLParameters(sSLParameters);
    }

    @Override // okhttp3.internal.platform.Platform
    @SuppressSignatureCheck
    @Nullable
    public String getSelectedProtocol(@NotNull SSLSocket sslSocket) {
        t.j(sslSocket, "sslSocket");
        try {
            String applicationProtocol = sslSocket.getApplicationProtocol();
            if (applicationProtocol == null || t.e(applicationProtocol, "")) {
                return null;
            }
            return applicationProtocol;
        } catch (UnsupportedOperationException unused) {
            return null;
        }
    }

    @Override // okhttp3.internal.platform.Platform
    @Nullable
    public X509TrustManager trustManager(@NotNull SSLSocketFactory sslSocketFactory) {
        t.j(sslSocketFactory, "sslSocketFactory");
        throw new UnsupportedOperationException("clientBuilder.sslSocketFactory(SSLSocketFactory) not supported on JDK 9+");
    }
}
