package okhttp3.internal.platform;

import java.security.KeyManagementException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.Provider;
import java.security.cert.X509Certificate;
import java.util.Arrays;
import java.util.List;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import okhttp3.Protocol;
import org.conscrypt.Conscrypt;
import org.conscrypt.ConscryptHostnameVerifier;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
public final class ConscryptPlatform extends Platform {

    @NotNull
    public static final Companion Companion;
    private static final boolean isSupported;

    @NotNull
    private final Provider provider;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        public static /* synthetic */ boolean atLeastVersion$default(Companion companion, int i10, int i11, int i12, int i13, Object obj) {
            if ((i13 & 2) != 0) {
                i11 = 0;
            }
            if ((i13 & 4) != 0) {
                i12 = 0;
            }
            return companion.atLeastVersion(i10, i11, i12);
        }

        public final boolean atLeastVersion(int i10, int i11, int i12) {
            Conscrypt.Version version = Conscrypt.version();
            if (version.major() != i10) {
                if (version.major() <= i10) {
                    return false;
                }
                return true;
            }
            if (version.minor() != i11) {
                if (version.minor() <= i11) {
                    return false;
                }
                return true;
            }
            if (version.patch() < i12) {
                return false;
            }
            return true;
        }

        @Nullable
        public final ConscryptPlatform buildIfSupported() {
            k kVar = null;
            if (!isSupported()) {
                return null;
            }
            return new ConscryptPlatform(kVar);
        }

        public final boolean isSupported() {
            return ConscryptPlatform.isSupported;
        }
    }

    public static final class DisabledHostnameVerifier implements ConscryptHostnameVerifier {

        @NotNull
        public static final DisabledHostnameVerifier INSTANCE = new DisabledHostnameVerifier();

        public final boolean verify(@Nullable String str, @Nullable SSLSession sSLSession) {
            return true;
        }

        public boolean verify(@Nullable X509Certificate[] x509CertificateArr, @Nullable String str, @Nullable SSLSession sSLSession) {
            return true;
        }

        private DisabledHostnameVerifier() {
        }
    }

    public /* synthetic */ ConscryptPlatform(k kVar) {
        this();
    }

    @Override // okhttp3.internal.platform.Platform
    @Nullable
    public X509TrustManager trustManager(@NotNull SSLSocketFactory sslSocketFactory) {
        t.j(sslSocketFactory, "sslSocketFactory");
        return null;
    }

    static {
        Companion companion = new Companion(null);
        Companion = companion;
        boolean z6 = false;
        try {
            Class.forName("org.conscrypt.Conscrypt$Version", false, companion.getClass().getClassLoader());
            if (Conscrypt.isAvailable() && companion.atLeastVersion(2, 1, 0)) {
                z6 = true;
            }
        } catch (ClassNotFoundException | NoClassDefFoundError unused) {
        }
        isSupported = z6;
    }

    private ConscryptPlatform() {
        Provider providerNewProvider = Conscrypt.newProvider();
        t.i(providerNewProvider, "newProvider()");
        this.provider = providerNewProvider;
    }

    @Override // okhttp3.internal.platform.Platform
    public void configureTlsExtensions(@NotNull SSLSocket sslSocket, @Nullable String str, @NotNull List<Protocol> protocols) {
        t.j(sslSocket, "sslSocket");
        t.j(protocols, "protocols");
        if (!Conscrypt.isConscrypt(sslSocket)) {
            super.configureTlsExtensions(sslSocket, str, protocols);
            return;
        }
        Conscrypt.setUseSessionTickets(sslSocket, true);
        Object[] array = Platform.Companion.alpnProtocolNames(protocols).toArray(new String[0]);
        if (array == null) {
            throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        }
        Conscrypt.setApplicationProtocols(sslSocket, (String[]) array);
    }

    @Override // okhttp3.internal.platform.Platform
    @Nullable
    public String getSelectedProtocol(@NotNull SSLSocket sslSocket) {
        t.j(sslSocket, "sslSocket");
        return Conscrypt.isConscrypt(sslSocket) ? Conscrypt.getApplicationProtocol(sslSocket) : super.getSelectedProtocol(sslSocket);
    }

    @Override // okhttp3.internal.platform.Platform
    @NotNull
    public SSLContext newSSLContext() throws NoSuchAlgorithmException {
        SSLContext sSLContext = SSLContext.getInstance("TLS", this.provider);
        t.i(sSLContext, "getInstance(\"TLS\", provider)");
        return sSLContext;
    }

    @Override // okhttp3.internal.platform.Platform
    @NotNull
    public SSLSocketFactory newSslSocketFactory(@NotNull X509TrustManager trustManager) throws NoSuchAlgorithmException, KeyManagementException {
        t.j(trustManager, "trustManager");
        SSLContext sSLContextNewSSLContext = newSSLContext();
        sSLContextNewSSLContext.init(null, new TrustManager[]{trustManager}, null);
        SSLSocketFactory socketFactory = sSLContextNewSSLContext.getSocketFactory();
        t.i(socketFactory, "newSSLContext().apply {\n…null)\n    }.socketFactory");
        return socketFactory;
    }

    @Override // okhttp3.internal.platform.Platform
    @NotNull
    public X509TrustManager platformTrustManager() throws NoSuchAlgorithmException, KeyStoreException {
        TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
        trustManagerFactory.init((KeyStore) null);
        TrustManager[] trustManagers = trustManagerFactory.getTrustManagers();
        t.g(trustManagers);
        if (trustManagers.length == 1) {
            TrustManager trustManager = trustManagers[0];
            if (trustManager instanceof X509TrustManager) {
                if (trustManager != null) {
                    X509TrustManager x509TrustManager = (X509TrustManager) trustManager;
                    Conscrypt.setHostnameVerifier(x509TrustManager, DisabledHostnameVerifier.INSTANCE);
                    return x509TrustManager;
                }
                throw new NullPointerException("null cannot be cast to non-null type javax.net.ssl.X509TrustManager");
            }
        }
        String string = Arrays.toString(trustManagers);
        t.i(string, "toString(this)");
        throw new IllegalStateException(t.s("Unexpected default trust managers: ", string).toString());
    }
}
