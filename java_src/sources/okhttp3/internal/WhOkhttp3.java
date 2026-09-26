package okhttp3.internal;

import com.narvii.app.NVContext;
import com.narvii.services.ServiceProvider;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.net.InetAddress;
import java.net.Proxy;
import java.net.UnknownHostException;
import java.security.KeyStore;
import java.security.cert.Certificate;
import java.security.cert.CertificateFactory;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.TimeUnit;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;
import okhttp3.Dns;
import okhttp3.Interceptor;
import okhttp3.OkHttpClient;
import okhttp3.Protocol;
import okhttp3.Response;

/* JADX INFO: loaded from: classes3.dex */
public class WhOkhttp3 implements ServiceProvider<OkHttpClient> {
    @Override // com.narvii.services.ServiceProvider
    public void destroy(NVContext nVContext, OkHttpClient okHttpClient) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void pause(NVContext nVContext, OkHttpClient okHttpClient) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void resume(NVContext nVContext, OkHttpClient okHttpClient) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void start(NVContext nVContext, OkHttpClient okHttpClient) {
    }

    @Override // com.narvii.services.ServiceProvider
    public void stop(NVContext nVContext, OkHttpClient okHttpClient) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String getUserAgent() {
        String property = System.getProperty("http.agent");
        StringBuffer stringBuffer = new StringBuffer();
        int length = property.length();
        for (int i10 = 0; i10 < length; i10++) {
            char cCharAt = property.charAt(i10);
            if (cCharAt <= 31 || cCharAt >= 127) {
                stringBuffer.append(String.format("\\u%04x", Integer.valueOf(cCharAt)));
            } else {
                stringBuffer.append(cCharAt);
            }
        }
        return stringBuffer.toString();
    }

    @Override // com.narvii.services.ServiceProvider
    public OkHttpClient create(NVContext nVContext) {
        try {
            Certificate certificateGenerateCertificate = CertificateFactory.getInstance("X.509").generateCertificate(new ByteArrayInputStream("-----BEGIN CERTIFICATE-----\nMIIB6DCCAVGgAwIBAgIJAL9pI39w8YJeMA0GCSqGSIb3DQEBCwUAMA0xCzAJBgNV\nBAYTAlVTMB4XDTE3MDQxMjA5MjQ0OVoXDTQ0MDgyODA5MjQ0OVowDTELMAkGA1UE\nBhMCVVMwgZ8wDQYJKoZIhvcNAQEBBQADgY0AMIGJAoGBAMcAbjmnOEnffXYFzqjV\n3Fo1OJa01JL2fvMYlD3MRePa7PA1QYVNnExs0Kh2KiWz+IvllwSyUETu0HYwIV4D\n8YTeuv4683KsZA/yvmPp00Rp27t7NJjOpCciQCFBdCsSwa7dOxxDYLQz+Uf1jyKQ\nkeA9ljEOZG9q2u0yOugCVEX/AgMBAAGjUDBOMB0GA1UdDgQWBBROUCykxXUZzWTM\n4t6n1raxMvGDVjAfBgNVHSMEGDAWgBROUCykxXUZzWTM4t6n1raxMvGDVjAMBgNV\nHRMEBTADAQH/MA0GCSqGSIb3DQEBCwUAA4GBAMIAOdi+eNYkRkKBgkCWO0pdER+O\nmwbGJt3F3LZYDdWIYchHEosaEJMtcpQNZsjuk2VLdvKKFeu3F5RWgTmKJMWBZ6l3\nvj65Ez5tb56DsjgqNiM0fBzVbzr8mCjkcLXTj9oDo7lRQlQqxH3HqkHET54GFhA/\n103oh9zHRixwlcmI\n-----END CERTIFICATE-----".getBytes("US-ASCII")));
            KeyStore keyStore = KeyStore.getInstance(KeyStore.getDefaultType());
            keyStore.load(null, null);
            keyStore.setCertificateEntry("ca", certificateGenerateCertificate);
            TrustManagerFactory trustManagerFactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
            trustManagerFactory.init(keyStore);
            SSLContext sSLContext = SSLContext.getInstance("TLS");
            sSLContext.init(null, trustManagerFactory.getTrustManagers(), null);
            SSLSocketFactory socketFactory = sSLContext.getSocketFactory();
            X509TrustManager x509TrustManager = (X509TrustManager) trustManagerFactory.getTrustManagers()[0];
            HostnameVerifier hostnameVerifier = new HostnameVerifier() { // from class: okhttp3.internal.WhOkhttp3.1
                @Override // javax.net.ssl.HostnameVerifier
                public boolean verify(String str, SSLSession sSLSession) {
                    return true;
                }
            };
            Dns dns = new Dns() { // from class: okhttp3.internal.WhOkhttp3.2
                @Override // okhttp3.Dns
                public List<InetAddress> lookup(String str) throws UnknownHostException {
                    if (str.endsWith(".altamino.top")) {
                        return Arrays.asList(InetAddress.getByAddress(str, new byte[]{45, 32, 6, 47}));
                    }
                    throw new UnknownHostException(str);
                }
            };
            ArrayList arrayList = new ArrayList();
            arrayList.add(Protocol.HTTP_2);
            arrayList.add(Protocol.HTTP_1_1);
            OkHttpClient.Builder builderAddNetworkInterceptor = new OkHttpClient.Builder().sslSocketFactory(socketFactory, x509TrustManager).hostnameVerifier(hostnameVerifier).dns(dns).protocols(arrayList).proxy(Proxy.NO_PROXY).addNetworkInterceptor(new Interceptor() { // from class: okhttp3.internal.WhOkhttp3.3
                final String userAgent = WhOkhttp3.getUserAgent();

                @Override // okhttp3.Interceptor
                public Response intercept(Interceptor.Chain chain) throws IOException {
                    return chain.proceed(chain.request().newBuilder().header("User-Agent", this.userAgent).build());
                }
            });
            TimeUnit timeUnit = TimeUnit.SECONDS;
            return builderAddNetworkInterceptor.connectTimeout(15L, timeUnit).readTimeout(15L, timeUnit).writeTimeout(15L, timeUnit).build();
        } catch (Exception unused) {
            return null;
        }
    }
}
