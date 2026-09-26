package okhttp3.internal.connection;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.ProtocolException;
import java.net.UnknownServiceException;
import java.security.cert.CertificateException;
import java.util.Arrays;
import java.util.List;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSocket;
import kotlin.jvm.internal.t;
import okhttp3.ConnectionSpec;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
public final class ConnectionSpecSelector {

    @NotNull
    private final List<ConnectionSpec> connectionSpecs;
    private boolean isFallback;
    private boolean isFallbackPossible;
    private int nextModeIndex;

    public ConnectionSpecSelector(@NotNull List<ConnectionSpec> connectionSpecs) {
        t.j(connectionSpecs, "connectionSpecs");
        this.connectionSpecs = connectionSpecs;
    }

    private final boolean isFallbackPossible(SSLSocket sSLSocket) {
        int i10 = this.nextModeIndex;
        int size = this.connectionSpecs.size();
        while (i10 < size) {
            int i11 = i10 + 1;
            if (this.connectionSpecs.get(i10).isCompatible(sSLSocket)) {
                return true;
            }
            i10 = i11;
        }
        return false;
    }

    @NotNull
    public final ConnectionSpec configureSecureSocket(@NotNull SSLSocket sslSocket) throws IOException {
        ConnectionSpec connectionSpec;
        t.j(sslSocket, "sslSocket");
        int i10 = this.nextModeIndex;
        int size = this.connectionSpecs.size();
        while (true) {
            if (i10 >= size) {
                connectionSpec = null;
                break;
            }
            int i11 = i10 + 1;
            connectionSpec = this.connectionSpecs.get(i10);
            if (connectionSpec.isCompatible(sslSocket)) {
                this.nextModeIndex = i11;
                break;
            }
            i10 = i11;
        }
        if (connectionSpec != null) {
            this.isFallbackPossible = isFallbackPossible(sslSocket);
            connectionSpec.apply$okhttp(sslSocket, this.isFallback);
            return connectionSpec;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Unable to find acceptable protocols. isFallback=");
        sb.append(this.isFallback);
        sb.append(", modes=");
        sb.append(this.connectionSpecs);
        sb.append(", supported protocols=");
        String[] enabledProtocols = sslSocket.getEnabledProtocols();
        t.g(enabledProtocols);
        String string = Arrays.toString(enabledProtocols);
        t.i(string, "toString(this)");
        sb.append(string);
        throw new UnknownServiceException(sb.toString());
    }

    public final boolean connectionFailed(@NotNull IOException e) {
        t.j(e, "e");
        this.isFallback = true;
        return (!this.isFallbackPossible || (e instanceof ProtocolException) || (e instanceof InterruptedIOException) || ((e instanceof SSLHandshakeException) && (e.getCause() instanceof CertificateException)) || (e instanceof SSLPeerUnverifiedException) || !(e instanceof SSLException)) ? false : true;
    }
}
