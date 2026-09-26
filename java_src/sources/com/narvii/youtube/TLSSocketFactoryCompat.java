package com.narvii.youtube;

import java.io.IOException;
import java.net.InetAddress;
import java.net.Socket;
import java.security.KeyManagementException;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;

/* JADX INFO: loaded from: classes7.dex */
public class TLSSocketFactoryCompat extends SSLSocketFactory {
    private static TLSSocketFactoryCompat instance;
    private final SSLSocketFactory internalSSLSocketFactory;

    public TLSSocketFactoryCompat() throws NoSuchAlgorithmException, KeyManagementException {
        SSLContext sSLContext = SSLContext.getInstance("TLS");
        sSLContext.init(null, null, null);
        this.internalSSLSocketFactory = sSLContext.getSocketFactory();
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket() throws IOException {
        return enableTLSOnSocket(this.internalSSLSocketFactory.createSocket());
    }

    private Socket enableTLSOnSocket(Socket socket) {
        if (socket instanceof SSLSocket) {
            ((SSLSocket) socket).setEnabledProtocols(new String[]{"TLSv1.1", "TLSv1.2"});
        }
        return socket;
    }

    public static TLSSocketFactoryCompat getInstance() throws NoSuchAlgorithmException, KeyManagementException {
        TLSSocketFactoryCompat tLSSocketFactoryCompat = instance;
        if (tLSSocketFactoryCompat != null) {
            return tLSSocketFactoryCompat;
        }
        TLSSocketFactoryCompat tLSSocketFactoryCompat2 = new TLSSocketFactoryCompat();
        instance = tLSSocketFactoryCompat2;
        return tLSSocketFactoryCompat2;
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public Socket createSocket(Socket socket, String str, int i10, boolean z6) throws IOException {
        return enableTLSOnSocket(this.internalSSLSocketFactory.createSocket(socket, str, i10, z6));
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public String[] getDefaultCipherSuites() {
        return this.internalSSLSocketFactory.getDefaultCipherSuites();
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public String[] getSupportedCipherSuites() {
        return this.internalSSLSocketFactory.getSupportedCipherSuites();
    }

    public static void setAsDefault() {
        try {
            HttpsURLConnection.setDefaultSSLSocketFactory(getInstance());
        } catch (KeyManagementException | NoSuchAlgorithmException unused) {
        }
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(String str, int i10) throws IOException {
        return enableTLSOnSocket(this.internalSSLSocketFactory.createSocket(str, i10));
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(String str, int i10, InetAddress inetAddress, int i11) throws IOException {
        return enableTLSOnSocket(this.internalSSLSocketFactory.createSocket(str, i10, inetAddress, i11));
    }

    public TLSSocketFactoryCompat(TrustManager[] trustManagerArr) throws NoSuchAlgorithmException, KeyManagementException {
        SSLContext sSLContext = SSLContext.getInstance("TLS");
        sSLContext.init(null, trustManagerArr, new SecureRandom());
        this.internalSSLSocketFactory = sSLContext.getSocketFactory();
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(InetAddress inetAddress, int i10) throws IOException {
        return enableTLSOnSocket(this.internalSSLSocketFactory.createSocket(inetAddress, i10));
    }

    @Override // javax.net.SocketFactory
    public Socket createSocket(InetAddress inetAddress, int i10, InetAddress inetAddress2, int i11) throws IOException {
        return enableTLSOnSocket(this.internalSSLSocketFactory.createSocket(inetAddress, i10, inetAddress2, i11));
    }
}
