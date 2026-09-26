package okhttp3.internal.tls;

import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.Arrays;
import java.util.List;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.X509TrustManager;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import okhttp3.internal.platform.Platform;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
public abstract class CertificateChainCleaner {

    @NotNull
    public static final Companion Companion = new Companion(null);

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        @NotNull
        public final CertificateChainCleaner get(@NotNull X509TrustManager trustManager) {
            t.j(trustManager, "trustManager");
            return Platform.Companion.get().buildCertificateChainCleaner(trustManager);
        }

        private Companion() {
        }

        @NotNull
        public final CertificateChainCleaner get(@NotNull X509Certificate... caCerts) {
            t.j(caCerts, "caCerts");
            return new BasicCertificateChainCleaner(new BasicTrustRootIndex((X509Certificate[]) Arrays.copyOf(caCerts, caCerts.length)));
        }
    }

    @NotNull
    public abstract List<Certificate> clean(@NotNull List<? extends Certificate> list, @NotNull String str) throws SSLPeerUnverifiedException;
}
