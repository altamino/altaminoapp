package okhttp3.internal.platform.android;

import java.util.List;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.X509TrustManager;
import kotlin.jvm.internal.t;
import okhttp3.Protocol;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public interface SocketAdapter {

    public static final class DefaultImpls {
        public static boolean matchesSocketFactory(@NotNull SocketAdapter socketAdapter, @NotNull SSLSocketFactory sslSocketFactory) {
            t.j(socketAdapter, "this");
            t.j(sslSocketFactory, "sslSocketFactory");
            return false;
        }

        @Nullable
        public static X509TrustManager trustManager(@NotNull SocketAdapter socketAdapter, @NotNull SSLSocketFactory sslSocketFactory) {
            t.j(socketAdapter, "this");
            t.j(sslSocketFactory, "sslSocketFactory");
            return null;
        }
    }

    void configureTlsExtensions(@NotNull SSLSocket sSLSocket, @Nullable String str, @NotNull List<? extends Protocol> list);

    @Nullable
    String getSelectedProtocol(@NotNull SSLSocket sSLSocket);

    boolean isSupported();

    boolean matchesSocket(@NotNull SSLSocket sSLSocket);

    boolean matchesSocketFactory(@NotNull SSLSocketFactory sSLSocketFactory);

    @Nullable
    X509TrustManager trustManager(@NotNull SSLSocketFactory sSLSocketFactory);
}
