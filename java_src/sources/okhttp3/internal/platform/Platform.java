package okhttp3.internal.platform;

import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.security.GeneralSecurityException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.Security;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;
import kotlin.collections.w;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import okhttp3.OkHttpClient;
import okhttp3.Protocol;
import okhttp3.internal.Util;
import okhttp3.internal.platform.android.AndroidLog;
import okhttp3.internal.tls.BasicCertificateChainCleaner;
import okhttp3.internal.tls.BasicTrustRootIndex;
import okhttp3.internal.tls.CertificateChainCleaner;
import okhttp3.internal.tls.TrustRootIndex;
import okio.Buffer;
import org.bouncycastle.jce.provider.a;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
public class Platform {

    @NotNull
    public static final Companion Companion;
    public static final int INFO = 4;
    public static final int WARN = 5;
    private static final Logger logger;

    @NotNull
    private static volatile Platform platform;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        private final Platform findAndroidPlatform() {
            AndroidLog.INSTANCE.enable();
            Platform platformBuildIfSupported = Android10Platform.Companion.buildIfSupported();
            if (platformBuildIfSupported != null) {
                return platformBuildIfSupported;
            }
            Platform platformBuildIfSupported2 = AndroidPlatform.Companion.buildIfSupported();
            t.g(platformBuildIfSupported2);
            return platformBuildIfSupported2;
        }

        public static /* synthetic */ void resetForTests$default(Companion companion, Platform platform, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                platform = companion.findPlatform();
            }
            companion.resetForTests(platform);
        }

        @NotNull
        public final List<String> alpnProtocolNames(@NotNull List<? extends Protocol> protocols) {
            t.j(protocols, "protocols");
            ArrayList arrayList = new ArrayList();
            for (Object obj : protocols) {
                if (((Protocol) obj) != Protocol.HTTP_1_0) {
                    arrayList.add(obj);
                }
            }
            ArrayList arrayList2 = new ArrayList(w.x(arrayList, 10));
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                arrayList2.add(((Protocol) it.next()).toString());
            }
            return arrayList2;
        }

        @NotNull
        public final byte[] concatLengthPrefixed(@NotNull List<? extends Protocol> protocols) {
            t.j(protocols, "protocols");
            Buffer buffer = new Buffer();
            for (String str : alpnProtocolNames(protocols)) {
                buffer.writeByte(str.length());
                buffer.writeUtf8(str);
            }
            return buffer.readByteArray();
        }

        public final boolean isAndroid() {
            return t.e("Dalvik", System.getProperty("java.vm.name"));
        }

        public final void resetForTests(@NotNull Platform platform) {
            t.j(platform, "platform");
            Platform.platform = platform;
        }

        private final Platform findJvmPlatform() {
            OpenJSSEPlatform openJSSEPlatformBuildIfSupported;
            BouncyCastlePlatform bouncyCastlePlatformBuildIfSupported;
            ConscryptPlatform conscryptPlatformBuildIfSupported;
            if (isConscryptPreferred() && (conscryptPlatformBuildIfSupported = ConscryptPlatform.Companion.buildIfSupported()) != null) {
                return conscryptPlatformBuildIfSupported;
            }
            if (isBouncyCastlePreferred() && (bouncyCastlePlatformBuildIfSupported = BouncyCastlePlatform.Companion.buildIfSupported()) != null) {
                return bouncyCastlePlatformBuildIfSupported;
            }
            if (isOpenJSSEPreferred() && (openJSSEPlatformBuildIfSupported = OpenJSSEPlatform.Companion.buildIfSupported()) != null) {
                return openJSSEPlatformBuildIfSupported;
            }
            Jdk9Platform jdk9PlatformBuildIfSupported = Jdk9Platform.Companion.buildIfSupported();
            if (jdk9PlatformBuildIfSupported != null) {
                return jdk9PlatformBuildIfSupported;
            }
            Platform platformBuildIfSupported = Jdk8WithJettyBootPlatform.Companion.buildIfSupported();
            if (platformBuildIfSupported != null) {
                return platformBuildIfSupported;
            }
            return new Platform();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final Platform findPlatform() {
            if (isAndroid()) {
                return findAndroidPlatform();
            }
            return findJvmPlatform();
        }

        private final boolean isBouncyCastlePreferred() {
            return t.e(a.PROVIDER_NAME, Security.getProviders()[0].getName());
        }

        private final boolean isConscryptPreferred() {
            return t.e("Conscrypt", Security.getProviders()[0].getName());
        }

        private final boolean isOpenJSSEPreferred() {
            return t.e("OpenJSSE", Security.getProviders()[0].getName());
        }

        @NotNull
        public final Platform get() {
            return Platform.platform;
        }
    }

    @NotNull
    public static final Platform get() {
        return Companion.get();
    }

    public void afterHandshake(@NotNull SSLSocket sslSocket) {
        t.j(sslSocket, "sslSocket");
    }

    public void configureTlsExtensions(@NotNull SSLSocket sslSocket, @Nullable String str, @NotNull List<Protocol> protocols) {
        t.j(sslSocket, "sslSocket");
        t.j(protocols, "protocols");
    }

    @NotNull
    public final String getPrefix() {
        return "OkHttp";
    }

    @Nullable
    public String getSelectedProtocol(@NotNull SSLSocket sslSocket) {
        t.j(sslSocket, "sslSocket");
        return null;
    }

    public boolean isCleartextTrafficPermitted(@NotNull String hostname) {
        t.j(hostname, "hostname");
        return true;
    }

    static {
        Companion companion = new Companion(null);
        Companion = companion;
        platform = companion.findPlatform();
        logger = Logger.getLogger(OkHttpClient.class.getName());
    }

    public static /* synthetic */ void log$default(Platform platform2, String str, int i10, Throwable th, int i11, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: log");
        }
        if ((i11 & 2) != 0) {
            i10 = 4;
        }
        if ((i11 & 4) != 0) {
            th = null;
        }
        platform2.log(str, i10, th);
    }

    @NotNull
    public CertificateChainCleaner buildCertificateChainCleaner(@NotNull X509TrustManager trustManager) {
        t.j(trustManager, "trustManager");
        return new BasicCertificateChainCleaner(buildTrustRootIndex(trustManager));
    }

    @NotNull
    public TrustRootIndex buildTrustRootIndex(@NotNull X509TrustManager trustManager) {
        t.j(trustManager, "trustManager");
        X509Certificate[] acceptedIssuers = trustManager.getAcceptedIssuers();
        t.i(acceptedIssuers, "trustManager.acceptedIssuers");
        return new BasicTrustRootIndex((X509Certificate[]) Arrays.copyOf(acceptedIssuers, acceptedIssuers.length));
    }

    public void connectSocket(@NotNull Socket socket, @NotNull InetSocketAddress address, int i10) throws IOException {
        t.j(socket, "socket");
        t.j(address, "address");
        socket.connect(address, i10);
    }

    @Nullable
    public Object getStackTraceForCloseable(@NotNull String closer) {
        t.j(closer, "closer");
        if (logger.isLoggable(Level.FINE)) {
            return new Throwable(closer);
        }
        return null;
    }

    public void log(@NotNull String message, int i10, @Nullable Throwable th) {
        t.j(message, "message");
        logger.log(i10 == 5 ? Level.WARNING : Level.INFO, message, th);
    }

    public void logCloseableLeak(@NotNull String message, @Nullable Object obj) {
        t.j(message, "message");
        if (obj == null) {
            message = t.s(message, " To see where this was allocated, set the OkHttpClient logger level to FINE: Logger.getLogger(OkHttpClient.class.getName()).setLevel(Level.FINE);");
        }
        log(message, 5, (Throwable) obj);
    }

    @NotNull
    public SSLContext newSSLContext() throws NoSuchAlgorithmException {
        SSLContext sSLContext = SSLContext.getInstance("TLS");
        t.i(sSLContext, "getInstance(\"TLS\")");
        return sSLContext;
    }

    @NotNull
    public SSLSocketFactory newSslSocketFactory(@NotNull X509TrustManager trustManager) {
        t.j(trustManager, "trustManager");
        try {
            SSLContext sSLContextNewSSLContext = newSSLContext();
            sSLContextNewSSLContext.init(null, new TrustManager[]{trustManager}, null);
            SSLSocketFactory socketFactory = sSLContextNewSSLContext.getSocketFactory();
            t.i(socketFactory, "newSSLContext().apply {\n…ll)\n      }.socketFactory");
            return socketFactory;
        } catch (GeneralSecurityException e) {
            throw new AssertionError(t.s("No System TLS: ", e), e);
        }
    }

    @Nullable
    public X509TrustManager trustManager(@NotNull SSLSocketFactory sslSocketFactory) throws IllegalAccessException {
        t.j(sslSocketFactory, "sslSocketFactory");
        try {
            Class<?> sslContextClass = Class.forName("sun.security.ssl.SSLContextImpl");
            t.i(sslContextClass, "sslContextClass");
            Object fieldOrNull = Util.readFieldOrNull(sslSocketFactory, sslContextClass, "context");
            if (fieldOrNull == null) {
                return null;
            }
            return (X509TrustManager) Util.readFieldOrNull(fieldOrNull, X509TrustManager.class, "trustManager");
        } catch (ClassNotFoundException unused) {
            return null;
        } catch (RuntimeException e) {
            if (t.e(e.getClass().getName(), "java.lang.reflect.InaccessibleObjectException")) {
                return null;
            }
            throw e;
        }
    }

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
                    return (X509TrustManager) trustManager;
                }
                throw new NullPointerException("null cannot be cast to non-null type javax.net.ssl.X509TrustManager");
            }
        }
        String string = Arrays.toString(trustManagers);
        t.i(string, "toString(this)");
        throw new IllegalStateException(t.s("Unexpected default trust managers: ", string).toString());
    }

    @NotNull
    public String toString() {
        String simpleName = getClass().getSimpleName();
        t.i(simpleName, "javaClass.simpleName");
        return simpleName;
    }
}
