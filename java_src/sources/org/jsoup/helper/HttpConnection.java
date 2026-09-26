package org.jsoup.helper;

import androidx.webkit.ProxyConfig;
import com.google.firebase.perf.network.FirebasePerfUrlConnection;
import java.io.BufferedInputStream;
import java.io.BufferedWriter;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.InetSocketAddress;
import java.net.MalformedURLException;
import java.net.Proxy;
import java.net.URI;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.nio.charset.IllegalCharsetNameException;
import java.security.KeyManagementException;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;
import java.util.zip.GZIPInputStream;
import java.util.zip.Inflater;
import java.util.zip.InflaterInputStream;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;
import org.apache.commons.compress.compressors.CompressorStreamFactory;
import org.jsoup.Connection;
import org.jsoup.HttpStatusException;
import org.jsoup.UncheckedIOException;
import org.jsoup.UnsupportedMimeTypeException;
import org.jsoup.internal.ConstrainableInputStream;
import org.jsoup.internal.Normalizer;
import org.jsoup.nodes.Document;
import org.jsoup.parser.Parser;
import org.jsoup.parser.TokenQueue;

/* JADX INFO: loaded from: classes5.dex */
public class HttpConnection implements Connection {
    public static final String CONTENT_ENCODING = "Content-Encoding";
    private static final String CONTENT_TYPE = "Content-Type";
    public static final String DEFAULT_UA = "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/53.0.2785.143 Safari/537.36";
    private static final String DefaultUploadType = "application/octet-stream";
    private static final String FORM_URL_ENCODED = "application/x-www-form-urlencoded";
    private static final int HTTP_TEMP_REDIR = 307;
    private static final String MULTIPART_FORM_DATA = "multipart/form-data";
    private static final String USER_AGENT = "User-Agent";
    private Connection.Request req = new Request();
    private Connection.Response res = new Response();

    private static abstract class Base<T extends Connection.Base> implements Connection.Base<T> {
        Map<String, String> cookies;
        Map<String, List<String>> headers;
        Connection.Method method;
        URL url;

        /* JADX WARN: Code duplicated, block: B:17:0x0029  */
        private static boolean looksLikeUtf8(byte[] bArr) {
            int i10;
            int i11;
            if (bArr.length >= 3 && (bArr[0] & 255) == 239) {
                i10 = (((bArr[1] & 255) == 187) && ((bArr[2] & 255) == 191)) ? 3 : 0;
            }
            int length = bArr.length;
            while (i10 < length) {
                byte b7 = bArr[i10];
                if ((b7 & 128) != 0) {
                    if ((b7 & 224) == 192) {
                        i11 = i10 + 1;
                    } else if ((b7 & 240) == 224) {
                        i11 = i10 + 2;
                    } else {
                        if ((b7 & 248) != 240) {
                            return false;
                        }
                        i11 = i10 + 3;
                    }
                    while (i10 < i11) {
                        i10++;
                        if ((bArr[i10] & 192) != 128) {
                            return false;
                        }
                    }
                }
                i10++;
            }
            return true;
        }

        @Override // org.jsoup.Connection.Base
        public String cookie(String str) {
            Validate.notEmpty(str, "Cookie name must not be empty");
            return this.cookies.get(str);
        }

        @Override // org.jsoup.Connection.Base
        public Map<String, String> cookies() {
            return this.cookies;
        }

        @Override // org.jsoup.Connection.Base
        public String header(String str) {
            Validate.notNull(str, "Header name must not be null");
            List<String> headersCaseInsensitive = getHeadersCaseInsensitive(str);
            if (headersCaseInsensitive.size() > 0) {
                return StringUtil.join(headersCaseInsensitive, ", ");
            }
            return null;
        }

        @Override // org.jsoup.Connection.Base
        public List<String> headers(String str) {
            Validate.notEmpty(str);
            return getHeadersCaseInsensitive(str);
        }

        @Override // org.jsoup.Connection.Base
        public Connection.Method method() {
            return this.method;
        }

        @Override // org.jsoup.Connection.Base
        public Map<String, List<String>> multiHeaders() {
            return this.headers;
        }

        @Override // org.jsoup.Connection.Base
        public URL url() {
            return this.url;
        }

        private Base() {
            this.headers = new LinkedHashMap();
            this.cookies = new LinkedHashMap();
        }

        private static String fixHeaderEncoding(String str) {
            try {
                byte[] bytes = str.getBytes("ISO-8859-1");
                return !looksLikeUtf8(bytes) ? str : new String(bytes, "UTF-8");
            } catch (UnsupportedEncodingException unused) {
                return str;
            }
        }

        @Override // org.jsoup.Connection.Base
        public boolean hasCookie(String str) {
            Validate.notEmpty(str, "Cookie name must not be empty");
            return this.cookies.containsKey(str);
        }

        @Override // org.jsoup.Connection.Base
        public boolean hasHeader(String str) {
            Validate.notEmpty(str, "Header name must not be empty");
            return getHeadersCaseInsensitive(str).size() != 0;
        }

        @Override // org.jsoup.Connection.Base
        public T method(Connection.Method method) {
            Validate.notNull(method, "Method must not be null");
            this.method = method;
            return this;
        }

        @Override // org.jsoup.Connection.Base
        public T removeCookie(String str) {
            Validate.notEmpty(str, "Cookie name must not be empty");
            this.cookies.remove(str);
            return this;
        }

        @Override // org.jsoup.Connection.Base
        public T removeHeader(String str) {
            Validate.notEmpty(str, "Header name must not be empty");
            Map.Entry<String, List<String>> entryScanHeaders = scanHeaders(str);
            if (entryScanHeaders != null) {
                this.headers.remove(entryScanHeaders.getKey());
            }
            return this;
        }

        @Override // org.jsoup.Connection.Base
        public T url(URL url) {
            Validate.notNull(url, "URL must not be null");
            this.url = url;
            return this;
        }

        private List<String> getHeadersCaseInsensitive(String str) {
            Validate.notNull(str);
            for (Map.Entry<String, List<String>> entry : this.headers.entrySet()) {
                if (str.equalsIgnoreCase(entry.getKey())) {
                    return entry.getValue();
                }
            }
            return Collections.emptyList();
        }

        private Map.Entry<String, List<String>> scanHeaders(String str) {
            String strLowerCase = Normalizer.lowerCase(str);
            for (Map.Entry<String, List<String>> entry : this.headers.entrySet()) {
                if (Normalizer.lowerCase(entry.getKey()).equals(strLowerCase)) {
                    return entry;
                }
            }
            return null;
        }

        @Override // org.jsoup.Connection.Base
        public T addHeader(String str, String str2) {
            Validate.notEmpty(str);
            if (str2 == null) {
                str2 = "";
            }
            List<String> listHeaders = headers(str);
            if (listHeaders.isEmpty()) {
                listHeaders = new ArrayList<>();
                this.headers.put(str, listHeaders);
            }
            listHeaders.add(fixHeaderEncoding(str2));
            return this;
        }

        @Override // org.jsoup.Connection.Base
        public T cookie(String str, String str2) {
            Validate.notEmpty(str, "Cookie name must not be empty");
            Validate.notNull(str2, "Cookie value must not be null");
            this.cookies.put(str, str2);
            return this;
        }

        @Override // org.jsoup.Connection.Base
        public boolean hasHeaderWithValue(String str, String str2) {
            Validate.notEmpty(str);
            Validate.notEmpty(str2);
            Iterator<String> it = headers(str).iterator();
            while (it.hasNext()) {
                if (str2.equalsIgnoreCase(it.next())) {
                    return true;
                }
            }
            return false;
        }

        @Override // org.jsoup.Connection.Base
        public Map<String, String> headers() {
            LinkedHashMap linkedHashMap = new LinkedHashMap(this.headers.size());
            for (Map.Entry<String, List<String>> entry : this.headers.entrySet()) {
                String key = entry.getKey();
                List<String> value = entry.getValue();
                if (value.size() > 0) {
                    linkedHashMap.put(key, value.get(0));
                }
            }
            return linkedHashMap;
        }

        @Override // org.jsoup.Connection.Base
        public T header(String str, String str2) {
            Validate.notEmpty(str, "Header name must not be empty");
            removeHeader(str);
            addHeader(str, str2);
            return this;
        }
    }

    public static class KeyVal implements Connection.KeyVal {
        private String contentType;
        private String key;
        private InputStream stream;
        private String value;

        public static KeyVal create(String str, String str2) {
            return new KeyVal().key(str).value(str2);
        }

        @Override // org.jsoup.Connection.KeyVal
        public String contentType() {
            return this.contentType;
        }

        @Override // org.jsoup.Connection.KeyVal
        public boolean hasInputStream() {
            return this.stream != null;
        }

        @Override // org.jsoup.Connection.KeyVal
        public InputStream inputStream() {
            return this.stream;
        }

        @Override // org.jsoup.Connection.KeyVal
        public String key() {
            return this.key;
        }

        @Override // org.jsoup.Connection.KeyVal
        public String value() {
            return this.value;
        }

        public static KeyVal create(String str, String str2, InputStream inputStream) {
            return new KeyVal().key(str).value(str2).inputStream(inputStream);
        }

        @Override // org.jsoup.Connection.KeyVal
        public Connection.KeyVal contentType(String str) {
            Validate.notEmpty(str);
            this.contentType = str;
            return this;
        }

        public String toString() {
            return this.key + "=" + this.value;
        }

        private KeyVal() {
        }

        @Override // org.jsoup.Connection.KeyVal
        public KeyVal inputStream(InputStream inputStream) {
            Validate.notNull(this.value, "Data input stream must not be null");
            this.stream = inputStream;
            return this;
        }

        @Override // org.jsoup.Connection.KeyVal
        public KeyVal key(String str) {
            Validate.notEmpty(str, "Data key must not be empty");
            this.key = str;
            return this;
        }

        @Override // org.jsoup.Connection.KeyVal
        public KeyVal value(String str) {
            Validate.notNull(str, "Data value must not be null");
            this.value = str;
            return this;
        }
    }

    public static class Request extends Base<Connection.Request> implements Connection.Request {
        private String body;
        private Collection<Connection.KeyVal> data;
        private boolean followRedirects;
        private boolean ignoreContentType;
        private boolean ignoreHttpErrors;
        private int maxBodySizeBytes;
        private Parser parser;
        private boolean parserDefined;
        private String postDataCharset;
        private Proxy proxy;
        private SSLSocketFactory sslSocketFactory;
        private int timeoutMilliseconds;
        private boolean validateTSLCertificates;

        Request() {
            super();
            this.body = null;
            this.ignoreHttpErrors = false;
            this.ignoreContentType = false;
            this.parserDefined = false;
            this.validateTSLCertificates = true;
            this.postDataCharset = "UTF-8";
            this.timeoutMilliseconds = 30000;
            this.maxBodySizeBytes = 1048576;
            this.followRedirects = true;
            this.data = new ArrayList();
            this.method = Connection.Method.GET;
            addHeader("Accept-Encoding", "gzip");
            addHeader(HttpConnection.USER_AGENT, HttpConnection.DEFAULT_UA);
            this.parser = Parser.htmlParser();
        }

        @Override // org.jsoup.Connection.Request
        public Collection<Connection.KeyVal> data() {
            return this.data;
        }

        @Override // org.jsoup.Connection.Request
        public Connection.Request followRedirects(boolean z6) {
            this.followRedirects = z6;
            return this;
        }

        @Override // org.jsoup.helper.HttpConnection.Base, org.jsoup.Connection.Base
        public /* bridge */ /* synthetic */ List headers(String str) {
            return super.headers(str);
        }

        @Override // org.jsoup.Connection.Request
        public Connection.Request ignoreContentType(boolean z6) {
            this.ignoreContentType = z6;
            return this;
        }

        @Override // org.jsoup.Connection.Request
        public Connection.Request ignoreHttpErrors(boolean z6) {
            this.ignoreHttpErrors = z6;
            return this;
        }

        @Override // org.jsoup.Connection.Request
        public int maxBodySize() {
            return this.maxBodySizeBytes;
        }

        @Override // org.jsoup.Connection.Request
        public Request parser(Parser parser) {
            this.parser = parser;
            this.parserDefined = true;
            return this;
        }

        @Override // org.jsoup.Connection.Request
        public String postDataCharset() {
            return this.postDataCharset;
        }

        @Override // org.jsoup.Connection.Request
        public Proxy proxy() {
            return this.proxy;
        }

        @Override // org.jsoup.Connection.Request
        public String requestBody() {
            return this.body;
        }

        @Override // org.jsoup.Connection.Request
        public SSLSocketFactory sslSocketFactory() {
            return this.sslSocketFactory;
        }

        @Override // org.jsoup.Connection.Request
        public int timeout() {
            return this.timeoutMilliseconds;
        }

        @Override // org.jsoup.Connection.Request
        public void validateTLSCertificates(boolean z6) {
            this.validateTSLCertificates = z6;
        }

        @Override // org.jsoup.Connection.Request
        public boolean followRedirects() {
            return this.followRedirects;
        }

        @Override // org.jsoup.helper.HttpConnection.Base, org.jsoup.Connection.Base
        public /* bridge */ /* synthetic */ Map headers() {
            return super.headers();
        }

        @Override // org.jsoup.Connection.Request
        public boolean ignoreContentType() {
            return this.ignoreContentType;
        }

        @Override // org.jsoup.Connection.Request
        public boolean ignoreHttpErrors() {
            return this.ignoreHttpErrors;
        }

        @Override // org.jsoup.Connection.Request
        public Connection.Request maxBodySize(int i10) {
            Validate.isTrue(i10 >= 0, "maxSize must be 0 (unlimited) or larger");
            this.maxBodySizeBytes = i10;
            return this;
        }

        @Override // org.jsoup.Connection.Request
        public Parser parser() {
            return this.parser;
        }

        @Override // org.jsoup.Connection.Request
        public Connection.Request postDataCharset(String str) {
            Validate.notNull(str, "Charset must not be null");
            if (!Charset.isSupported(str)) {
                throw new IllegalCharsetNameException(str);
            }
            this.postDataCharset = str;
            return this;
        }

        @Override // org.jsoup.Connection.Request
        public Request proxy(Proxy proxy) {
            this.proxy = proxy;
            return this;
        }

        @Override // org.jsoup.Connection.Request
        public Connection.Request requestBody(String str) {
            this.body = str;
            return this;
        }

        @Override // org.jsoup.Connection.Request
        public void sslSocketFactory(SSLSocketFactory sSLSocketFactory) {
            this.sslSocketFactory = sSLSocketFactory;
        }

        @Override // org.jsoup.Connection.Request
        public boolean validateTLSCertificates() {
            return this.validateTSLCertificates;
        }

        @Override // org.jsoup.helper.HttpConnection.Base, org.jsoup.Connection.Base
        public /* bridge */ /* synthetic */ String cookie(String str) {
            return super.cookie(str);
        }

        @Override // org.jsoup.helper.HttpConnection.Base, org.jsoup.Connection.Base
        public /* bridge */ /* synthetic */ Map cookies() {
            return super.cookies();
        }

        @Override // org.jsoup.Connection.Request
        public Request data(Connection.KeyVal keyVal) {
            Validate.notNull(keyVal, "Key val must not be null");
            this.data.add(keyVal);
            return this;
        }

        @Override // org.jsoup.helper.HttpConnection.Base, org.jsoup.Connection.Base
        public /* bridge */ /* synthetic */ boolean hasCookie(String str) {
            return super.hasCookie(str);
        }

        @Override // org.jsoup.helper.HttpConnection.Base, org.jsoup.Connection.Base
        public /* bridge */ /* synthetic */ boolean hasHeader(String str) {
            return super.hasHeader(str);
        }

        @Override // org.jsoup.helper.HttpConnection.Base, org.jsoup.Connection.Base
        public /* bridge */ /* synthetic */ boolean hasHeaderWithValue(String str, String str2) {
            return super.hasHeaderWithValue(str, str2);
        }

        @Override // org.jsoup.helper.HttpConnection.Base, org.jsoup.Connection.Base
        public /* bridge */ /* synthetic */ String header(String str) {
            return super.header(str);
        }

        @Override // org.jsoup.helper.HttpConnection.Base, org.jsoup.Connection.Base
        public /* bridge */ /* synthetic */ Connection.Method method() {
            return super.method();
        }

        @Override // org.jsoup.helper.HttpConnection.Base, org.jsoup.Connection.Base
        public /* bridge */ /* synthetic */ Map multiHeaders() {
            return super.multiHeaders();
        }

        @Override // org.jsoup.Connection.Request
        public Request timeout(int i10) {
            Validate.isTrue(i10 >= 0, "Timeout milliseconds must be 0 (infinite) or greater");
            this.timeoutMilliseconds = i10;
            return this;
        }

        @Override // org.jsoup.helper.HttpConnection.Base, org.jsoup.Connection.Base
        public /* bridge */ /* synthetic */ URL url() {
            return super.url();
        }

        @Override // org.jsoup.Connection.Request
        public Request proxy(String str, int i10) {
            this.proxy = new Proxy(Proxy.Type.HTTP, InetSocketAddress.createUnresolved(str, i10));
            return this;
        }
    }

    public static class Response extends Base<Connection.Response> implements Connection.Response {
        private static final String LOCATION = "Location";
        private static final int MAX_REDIRECTS = 20;
        private static SSLSocketFactory sslSocketFactory;
        private static final Pattern xmlContentTypeRxp = Pattern.compile("(application|text)/\\w*\\+?xml.*");
        private InputStream bodyStream;
        private ByteBuffer byteData;
        private String charset;
        private String contentType;
        private boolean executed;
        private boolean inputStreamRead;
        private int numRedirects;
        private Connection.Request req;
        private int statusCode;
        private String statusMessage;

        Response() {
            super();
            this.executed = false;
            this.inputStreamRead = false;
            this.numRedirects = 0;
        }

        static Response execute(Connection.Request request) throws IOException {
            return execute(request, null);
        }

        @Override // org.jsoup.Connection.Response
        public String charset() {
            return this.charset;
        }

        @Override // org.jsoup.Connection.Response
        public String contentType() {
            return this.contentType;
        }

        @Override // org.jsoup.helper.HttpConnection.Base, org.jsoup.Connection.Base
        public /* bridge */ /* synthetic */ List headers(String str) {
            return super.headers(str);
        }

        @Override // org.jsoup.Connection.Response
        public int statusCode() {
            return this.statusCode;
        }

        @Override // org.jsoup.Connection.Response
        public String statusMessage() {
            return this.statusMessage;
        }

        private Response(Response response) throws IOException {
            super();
            this.executed = false;
            this.inputStreamRead = false;
            this.numRedirects = 0;
            if (response != null) {
                int i10 = response.numRedirects + 1;
                this.numRedirects = i10;
                if (i10 >= 20) {
                    throw new IOException(String.format("Too many redirects occurred trying to load URL %s", response.url()));
                }
            }
        }

        private static LinkedHashMap<String, List<String>> createHeaderMap(HttpURLConnection httpURLConnection) {
            LinkedHashMap<String, List<String>> linkedHashMap = new LinkedHashMap<>();
            int i10 = 0;
            while (true) {
                String headerFieldKey = httpURLConnection.getHeaderFieldKey(i10);
                String headerField = httpURLConnection.getHeaderField(i10);
                if (headerFieldKey == null && headerField == null) {
                    return linkedHashMap;
                }
                i10++;
                if (headerFieldKey != null && headerField != null) {
                    if (linkedHashMap.containsKey(headerFieldKey)) {
                        linkedHashMap.get(headerFieldKey).add(headerField);
                    } else {
                        ArrayList arrayList = new ArrayList();
                        arrayList.add(headerField);
                        linkedHashMap.put(headerFieldKey, arrayList);
                    }
                }
            }
        }

        /* JADX WARN: Code duplicated, block: B:26:0x0082 A[Catch: IOException -> 0x008a, TryCatch #0 {IOException -> 0x008a, blocks: (B:24:0x0079, B:26:0x0082, B:29:0x008d, B:31:0x00a1, B:35:0x00ab, B:36:0x00bf, B:38:0x00c5, B:40:0x00cd, B:42:0x00d6, B:43:0x00da, B:44:0x00f3, B:46:0x00f9, B:47:0x010f, B:55:0x0122, B:57:0x0128, B:59:0x012e, B:61:0x0136, B:64:0x0143, B:65:0x0152, B:67:0x0155, B:69:0x0161, B:71:0x0165, B:73:0x016e, B:74:0x0175, B:76:0x0183, B:78:0x018b, B:80:0x0193, B:82:0x019c, B:84:0x01a6, B:88:0x01c6, B:85:0x01b0, B:87:0x01b8, B:81:0x0198, B:89:0x01df, B:53:0x011c, B:92:0x01e8, B:93:0x01f7), top: B:96:0x0079 }] */
        /* JADX WARN: Code duplicated, block: B:89:0x01df A[Catch: IOException -> 0x008a, TRY_LEAVE, TryCatch #0 {IOException -> 0x008a, blocks: (B:24:0x0079, B:26:0x0082, B:29:0x008d, B:31:0x00a1, B:35:0x00ab, B:36:0x00bf, B:38:0x00c5, B:40:0x00cd, B:42:0x00d6, B:43:0x00da, B:44:0x00f3, B:46:0x00f9, B:47:0x010f, B:55:0x0122, B:57:0x0128, B:59:0x012e, B:61:0x0136, B:64:0x0143, B:65:0x0152, B:67:0x0155, B:69:0x0161, B:71:0x0165, B:73:0x016e, B:74:0x0175, B:76:0x0183, B:78:0x018b, B:80:0x0193, B:82:0x019c, B:84:0x01a6, B:88:0x01c6, B:85:0x01b0, B:87:0x01b8, B:81:0x0198, B:89:0x01df, B:53:0x011c, B:92:0x01e8, B:93:0x01f7), top: B:96:0x0079 }] */
        static Response execute(Connection.Request request, Response response) throws IOException {
            String outputContentType;
            HttpURLConnection httpURLConnectionCreateConnection;
            int responseCode;
            Response response2;
            String strContentType;
            Validate.notNull(request, "Request must not be null");
            String protocol = request.url().getProtocol();
            if (!protocol.equals(ProxyConfig.MATCH_HTTP) && !protocol.equals(ProxyConfig.MATCH_HTTPS)) {
                throw new MalformedURLException("Only http & https protocols supported");
            }
            boolean zHasBody = request.method().hasBody();
            boolean z6 = request.requestBody() != null;
            if (!zHasBody) {
                Validate.isFalse(z6, "Cannot set a request body for HTTP method " + request.method());
            }
            try {
                if (request.data().size() <= 0 || (zHasBody && !z6)) {
                    outputContentType = zHasBody ? setOutputContentType(request) : null;
                    long jNanoTime = System.nanoTime();
                    httpURLConnectionCreateConnection = createConnection(request);
                    httpURLConnectionCreateConnection.connect();
                    if (httpURLConnectionCreateConnection.getDoOutput()) {
                        writePost(request, httpURLConnectionCreateConnection.getOutputStream(), outputContentType);
                    }
                    responseCode = httpURLConnectionCreateConnection.getResponseCode();
                    response2 = new Response(response);
                    response2.setupFromConnection(httpURLConnectionCreateConnection, response);
                    response2.req = request;
                    if (!response2.hasHeader(LOCATION) && request.followRedirects()) {
                        if (responseCode != 307) {
                            request.method(Connection.Method.GET);
                            request.data().clear();
                            request.requestBody(null);
                            request.removeHeader("Content-Type");
                        }
                        String strHeader = response2.header(LOCATION);
                        if (strHeader != null && strHeader.startsWith("http:/") && strHeader.charAt(6) != '/') {
                            strHeader = strHeader.substring(6);
                        }
                        request.url(HttpConnection.encodeUrl(StringUtil.resolve(request.url(), strHeader)));
                        for (Map.Entry<String, String> entry : response2.cookies.entrySet()) {
                            request.cookie(entry.getKey(), entry.getValue());
                        }
                        return execute(request, response2);
                    }
                    if ((responseCode >= 200 || responseCode >= 400) && !request.ignoreHttpErrors()) {
                        throw new HttpStatusException("HTTP error fetching URL", responseCode, request.url().toString());
                    }
                    strContentType = response2.contentType();
                    if (strContentType != null && !request.ignoreContentType() && !strContentType.startsWith("text/") && !xmlContentTypeRxp.matcher(strContentType).matches()) {
                        throw new UnsupportedMimeTypeException("Unhandled content type. Must be text/*, application/xml, or application/xhtml+xml", strContentType, request.url().toString());
                    }
                    if (strContentType != null && xmlContentTypeRxp.matcher(strContentType).matches() && (request instanceof Request) && !((Request) request).parserDefined) {
                        request.parser(Parser.xmlParser());
                    }
                    response2.charset = DataUtil.getCharsetFromContentType(response2.contentType);
                    if (httpURLConnectionCreateConnection.getContentLength() != 0 || request.method() == Connection.Method.HEAD) {
                        response2.byteData = DataUtil.emptyByteBuffer();
                    } else {
                        response2.bodyStream = null;
                        response2.bodyStream = httpURLConnectionCreateConnection.getErrorStream() != null ? httpURLConnectionCreateConnection.getErrorStream() : httpURLConnectionCreateConnection.getInputStream();
                        if (response2.hasHeaderWithValue(HttpConnection.CONTENT_ENCODING, "gzip")) {
                            response2.bodyStream = new GZIPInputStream(response2.bodyStream);
                        } else if (response2.hasHeaderWithValue(HttpConnection.CONTENT_ENCODING, CompressorStreamFactory.DEFLATE)) {
                            response2.bodyStream = new InflaterInputStream(response2.bodyStream, new Inflater(true));
                        }
                        response2.bodyStream = ConstrainableInputStream.wrap(response2.bodyStream, 32768, request.maxBodySize()).timeout(jNanoTime, request.timeout());
                    }
                    response2.executed = true;
                    return response2;
                }
                serialiseRequestUrl(request);
                httpURLConnectionCreateConnection.connect();
                if (httpURLConnectionCreateConnection.getDoOutput()) {
                    writePost(request, httpURLConnectionCreateConnection.getOutputStream(), outputContentType);
                }
                responseCode = httpURLConnectionCreateConnection.getResponseCode();
                response2 = new Response(response);
                response2.setupFromConnection(httpURLConnectionCreateConnection, response);
                response2.req = request;
                if (!response2.hasHeader(LOCATION)) {
                }
                if (responseCode >= 200) {
                    throw new HttpStatusException("HTTP error fetching URL", responseCode, request.url().toString());
                }
                throw new HttpStatusException("HTTP error fetching URL", responseCode, request.url().toString());
                strContentType = response2.contentType();
                if (strContentType != null) {
                    throw new UnsupportedMimeTypeException("Unhandled content type. Must be text/*, application/xml, or application/xhtml+xml", strContentType, request.url().toString());
                }
                if (strContentType != null) {
                    request.parser(Parser.xmlParser());
                }
                response2.charset = DataUtil.getCharsetFromContentType(response2.contentType);
                if (httpURLConnectionCreateConnection.getContentLength() != 0) {
                    response2.byteData = DataUtil.emptyByteBuffer();
                } else {
                    response2.byteData = DataUtil.emptyByteBuffer();
                }
                response2.executed = true;
                return response2;
            } catch (IOException e) {
                httpURLConnectionCreateConnection.disconnect();
                throw e;
            }
            long jNanoTime2 = System.nanoTime();
            httpURLConnectionCreateConnection = createConnection(request);
        }

        private static HostnameVerifier getInsecureVerifier() {
            return new HostnameVerifier() { // from class: org.jsoup.helper.HttpConnection.Response.1
                @Override // javax.net.ssl.HostnameVerifier
                public boolean verify(String str, SSLSession sSLSession) {
                    return true;
                }
            };
        }

        private static synchronized void initUnSecureTSL() throws IOException {
            if (sslSocketFactory == null) {
                TrustManager[] trustManagerArr = {new X509TrustManager() { // from class: org.jsoup.helper.HttpConnection.Response.2
                    @Override // javax.net.ssl.X509TrustManager
                    public void checkClientTrusted(X509Certificate[] x509CertificateArr, String str) {
                    }

                    @Override // javax.net.ssl.X509TrustManager
                    public void checkServerTrusted(X509Certificate[] x509CertificateArr, String str) {
                    }

                    @Override // javax.net.ssl.X509TrustManager
                    public X509Certificate[] getAcceptedIssuers() {
                        return null;
                    }
                }};
                try {
                    SSLContext sSLContext = SSLContext.getInstance("SSL");
                    sSLContext.init(null, trustManagerArr, new SecureRandom());
                    sslSocketFactory = sSLContext.getSocketFactory();
                } catch (KeyManagementException | NoSuchAlgorithmException unused) {
                    throw new IOException("Can't create unsecure trust manager");
                }
            }
        }

        /* JADX WARN: Bottom block not found for handler: all -> 0x0027 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        private void prepareByteData() {
            Validate.isTrue(this.executed, "Request must be executed (with .execute(), .get(), or .post() before getting response body");
            if (this.byteData == null) {
                Validate.isFalse(this.inputStreamRead, "Request has already been read (with .parse())");
                try {
                    this.byteData = DataUtil.readToByteBuffer(this.bodyStream, this.req.maxBodySize());
                    this.inputStreamRead = true;
                    safeClose();
                } catch (IOException e) {
                    throw new UncheckedIOException(e);
                }
            }
        }

        private void safeClose() {
            InputStream inputStream = this.bodyStream;
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException unused) {
                } finally {
                    this.bodyStream = null;
                }
            }
        }

        private static String setOutputContentType(Connection.Request request) {
            if (!request.hasHeader("Content-Type")) {
                if (HttpConnection.needsMultipart(request)) {
                    String strMimeBoundary = DataUtil.mimeBoundary();
                    request.header("Content-Type", "multipart/form-data; boundary=" + strMimeBoundary);
                    return strMimeBoundary;
                }
                request.header("Content-Type", "application/x-www-form-urlencoded; charset=" + request.postDataCharset());
            }
            return null;
        }

        @Override // org.jsoup.Connection.Response
        public BufferedInputStream bodyStream() {
            Validate.isTrue(this.executed, "Request must be executed (with .execute(), .get(), or .post() before getting response body");
            Validate.isFalse(this.inputStreamRead, "Request has already been read");
            this.inputStreamRead = true;
            return ConstrainableInputStream.wrap(this.bodyStream, 32768, this.req.maxBodySize());
        }

        @Override // org.jsoup.Connection.Response
        public Response charset(String str) {
            this.charset = str;
            return this;
        }

        @Override // org.jsoup.helper.HttpConnection.Base, org.jsoup.Connection.Base
        public /* bridge */ /* synthetic */ Map headers() {
            return super.headers();
        }

        @Override // org.jsoup.Connection.Response
        public Document parse() throws IOException {
            Validate.isTrue(this.executed, "Request must be executed (with .execute(), .get(), or .post() before parsing response");
            if (this.byteData != null) {
                this.bodyStream = new ByteArrayInputStream(this.byteData.array());
                this.inputStreamRead = false;
            }
            Validate.isFalse(this.inputStreamRead, "Input stream already read and parsed, cannot re-read.");
            Document inputStream = DataUtil.parseInputStream(this.bodyStream, this.charset, this.url.toExternalForm(), this.req.parser());
            this.charset = inputStream.outputSettings().charset().name();
            this.inputStreamRead = true;
            safeClose();
            return inputStream;
        }

        private static HttpURLConnection createConnection(Connection.Request request) throws IOException {
            URLConnection uRLConnection;
            if (request.proxy() == null) {
                uRLConnection = (URLConnection) FirebasePerfUrlConnection.instrument(request.url().openConnection());
            } else {
                uRLConnection = (URLConnection) FirebasePerfUrlConnection.instrument(request.url().openConnection(request.proxy()));
            }
            HttpURLConnection httpURLConnection = (HttpURLConnection) uRLConnection;
            httpURLConnection.setRequestMethod(request.method().name());
            httpURLConnection.setInstanceFollowRedirects(false);
            httpURLConnection.setConnectTimeout(request.timeout());
            httpURLConnection.setReadTimeout(request.timeout() / 2);
            if (httpURLConnection instanceof HttpsURLConnection) {
                SSLSocketFactory sslSocketFactory2 = request.sslSocketFactory();
                if (sslSocketFactory2 != null) {
                    ((HttpsURLConnection) httpURLConnection).setSSLSocketFactory(sslSocketFactory2);
                } else if (!request.validateTLSCertificates()) {
                    initUnSecureTSL();
                    HttpsURLConnection httpsURLConnection = (HttpsURLConnection) httpURLConnection;
                    httpsURLConnection.setSSLSocketFactory(sslSocketFactory);
                    httpsURLConnection.setHostnameVerifier(getInsecureVerifier());
                }
            }
            if (request.method().hasBody()) {
                httpURLConnection.setDoOutput(true);
            }
            if (request.cookies().size() > 0) {
                httpURLConnection.addRequestProperty("Cookie", getRequestCookieString(request));
            }
            for (Map.Entry<String, List<String>> entry : request.multiHeaders().entrySet()) {
                Iterator<String> it = entry.getValue().iterator();
                while (it.hasNext()) {
                    httpURLConnection.addRequestProperty(entry.getKey(), it.next());
                }
            }
            return httpURLConnection;
        }

        private static String getRequestCookieString(Connection.Request request) {
            StringBuilder sbStringBuilder = StringUtil.stringBuilder();
            boolean z6 = true;
            for (Map.Entry<String, String> entry : request.cookies().entrySet()) {
                if (!z6) {
                    sbStringBuilder.append("; ");
                } else {
                    z6 = false;
                }
                sbStringBuilder.append(entry.getKey());
                sbStringBuilder.append('=');
                sbStringBuilder.append(entry.getValue());
            }
            return sbStringBuilder.toString();
        }

        private static void serialiseRequestUrl(Connection.Request request) throws IOException {
            boolean z6;
            URL url = request.url();
            StringBuilder sbStringBuilder = StringUtil.stringBuilder();
            sbStringBuilder.append(url.getProtocol());
            sbStringBuilder.append("://");
            sbStringBuilder.append(url.getAuthority());
            sbStringBuilder.append(url.getPath());
            sbStringBuilder.append("?");
            if (url.getQuery() != null) {
                sbStringBuilder.append(url.getQuery());
                z6 = false;
            } else {
                z6 = true;
            }
            for (Connection.KeyVal keyVal : request.data()) {
                Validate.isFalse(keyVal.hasInputStream(), "InputStream data not supported in URL query string.");
                if (!z6) {
                    sbStringBuilder.append('&');
                } else {
                    z6 = false;
                }
                sbStringBuilder.append(URLEncoder.encode(keyVal.key(), "UTF-8"));
                sbStringBuilder.append('=');
                sbStringBuilder.append(URLEncoder.encode(keyVal.value(), "UTF-8"));
            }
            request.url(new URL(sbStringBuilder.toString()));
            request.data().clear();
        }

        private void setupFromConnection(HttpURLConnection httpURLConnection, Connection.Response response) throws IOException {
            this.method = Connection.Method.valueOf(httpURLConnection.getRequestMethod());
            this.url = httpURLConnection.getURL();
            this.statusCode = httpURLConnection.getResponseCode();
            this.statusMessage = httpURLConnection.getResponseMessage();
            this.contentType = httpURLConnection.getContentType();
            processResponseHeaders(createHeaderMap(httpURLConnection));
            if (response != null) {
                for (Map.Entry<String, String> entry : response.cookies().entrySet()) {
                    if (!hasCookie(entry.getKey())) {
                        cookie(entry.getKey(), entry.getValue());
                    }
                }
            }
        }

        private static void writePost(Connection.Request request, OutputStream outputStream, String str) throws IOException {
            String strContentType;
            Collection<Connection.KeyVal> collectionData = request.data();
            BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(outputStream, request.postDataCharset()));
            if (str != null) {
                for (Connection.KeyVal keyVal : collectionData) {
                    bufferedWriter.write("--");
                    bufferedWriter.write(str);
                    bufferedWriter.write("\r\n");
                    bufferedWriter.write("Content-Disposition: form-data; name=\"");
                    bufferedWriter.write(HttpConnection.encodeMimeName(keyVal.key()));
                    bufferedWriter.write("\"");
                    if (keyVal.hasInputStream()) {
                        bufferedWriter.write("; filename=\"");
                        bufferedWriter.write(HttpConnection.encodeMimeName(keyVal.value()));
                        bufferedWriter.write("\"\r\nContent-Type: ");
                        if (keyVal.contentType() != null) {
                            strContentType = keyVal.contentType();
                        } else {
                            strContentType = "application/octet-stream";
                        }
                        bufferedWriter.write(strContentType);
                        bufferedWriter.write("\r\n\r\n");
                        bufferedWriter.flush();
                        DataUtil.crossStreams(keyVal.inputStream(), outputStream);
                        outputStream.flush();
                    } else {
                        bufferedWriter.write("\r\n\r\n");
                        bufferedWriter.write(keyVal.value());
                    }
                    bufferedWriter.write("\r\n");
                }
                bufferedWriter.write("--");
                bufferedWriter.write(str);
                bufferedWriter.write("--");
            } else if (request.requestBody() != null) {
                bufferedWriter.write(request.requestBody());
            } else {
                boolean z6 = true;
                for (Connection.KeyVal keyVal2 : collectionData) {
                    if (!z6) {
                        bufferedWriter.append('&');
                    } else {
                        z6 = false;
                    }
                    bufferedWriter.write(URLEncoder.encode(keyVal2.key(), request.postDataCharset()));
                    bufferedWriter.write(61);
                    bufferedWriter.write(URLEncoder.encode(keyVal2.value(), request.postDataCharset()));
                }
            }
            bufferedWriter.close();
        }

        @Override // org.jsoup.Connection.Response
        public String body() {
            String string;
            prepareByteData();
            String str = this.charset;
            if (str == null) {
                string = Charset.forName("UTF-8").decode(this.byteData).toString();
            } else {
                string = Charset.forName(str).decode(this.byteData).toString();
            }
            this.byteData.rewind();
            return string;
        }

        @Override // org.jsoup.Connection.Response
        public byte[] bodyAsBytes() {
            prepareByteData();
            return this.byteData.array();
        }

        @Override // org.jsoup.Connection.Response
        public Connection.Response bufferUp() {
            prepareByteData();
            return this;
        }

        @Override // org.jsoup.helper.HttpConnection.Base, org.jsoup.Connection.Base
        public /* bridge */ /* synthetic */ String cookie(String str) {
            return super.cookie(str);
        }

        @Override // org.jsoup.helper.HttpConnection.Base, org.jsoup.Connection.Base
        public /* bridge */ /* synthetic */ Map cookies() {
            return super.cookies();
        }

        @Override // org.jsoup.helper.HttpConnection.Base, org.jsoup.Connection.Base
        public /* bridge */ /* synthetic */ boolean hasCookie(String str) {
            return super.hasCookie(str);
        }

        @Override // org.jsoup.helper.HttpConnection.Base, org.jsoup.Connection.Base
        public /* bridge */ /* synthetic */ boolean hasHeader(String str) {
            return super.hasHeader(str);
        }

        @Override // org.jsoup.helper.HttpConnection.Base, org.jsoup.Connection.Base
        public /* bridge */ /* synthetic */ boolean hasHeaderWithValue(String str, String str2) {
            return super.hasHeaderWithValue(str, str2);
        }

        @Override // org.jsoup.helper.HttpConnection.Base, org.jsoup.Connection.Base
        public /* bridge */ /* synthetic */ String header(String str) {
            return super.header(str);
        }

        @Override // org.jsoup.helper.HttpConnection.Base, org.jsoup.Connection.Base
        public /* bridge */ /* synthetic */ Connection.Method method() {
            return super.method();
        }

        @Override // org.jsoup.helper.HttpConnection.Base, org.jsoup.Connection.Base
        public /* bridge */ /* synthetic */ Map multiHeaders() {
            return super.multiHeaders();
        }

        void processResponseHeaders(Map<String, List<String>> map) {
            for (Map.Entry<String, List<String>> entry : map.entrySet()) {
                String key = entry.getKey();
                if (key != null) {
                    List<String> value = entry.getValue();
                    if (key.equalsIgnoreCase("Set-Cookie")) {
                        for (String str : value) {
                            if (str != null) {
                                TokenQueue tokenQueue = new TokenQueue(str);
                                String strTrim = tokenQueue.chompTo("=").trim();
                                String strTrim2 = tokenQueue.consumeTo(";").trim();
                                if (strTrim.length() > 0) {
                                    cookie(strTrim, strTrim2);
                                }
                            }
                        }
                    }
                    Iterator<String> it = value.iterator();
                    while (it.hasNext()) {
                        addHeader(key, it.next());
                    }
                }
            }
        }

        @Override // org.jsoup.helper.HttpConnection.Base, org.jsoup.Connection.Base
        public /* bridge */ /* synthetic */ URL url() {
            return super.url();
        }
    }

    public static Connection connect(String str) {
        HttpConnection httpConnection = new HttpConnection();
        httpConnection.url(str);
        return httpConnection;
    }

    private static String encodeUrl(String str) {
        try {
            return encodeUrl(new URL(str)).toExternalForm();
        } catch (Exception unused) {
            return str;
        }
    }

    @Override // org.jsoup.Connection
    public Connection data(String str, String str2) {
        this.req.data(KeyVal.create(str, str2));
        return this;
    }

    @Override // org.jsoup.Connection
    public Connection proxy(Proxy proxy) {
        this.req.proxy(proxy);
        return this;
    }

    @Override // org.jsoup.Connection
    public Connection.Request request() {
        return this.req;
    }

    @Override // org.jsoup.Connection
    public Connection.Response response() {
        return this.res;
    }

    @Override // org.jsoup.Connection
    public Connection url(URL url) {
        this.req.url(url);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String encodeMimeName(String str) {
        if (str == null) {
            return null;
        }
        return str.replaceAll("\"", "%22");
    }

    @Override // org.jsoup.Connection
    public Connection cookie(String str, String str2) {
        this.req.cookie(str, str2);
        return this;
    }

    @Override // org.jsoup.Connection
    public Connection cookies(Map<String, String> map) {
        Validate.notNull(map, "Cookie map must not be null");
        for (Map.Entry<String, String> entry : map.entrySet()) {
            this.req.cookie(entry.getKey(), entry.getValue());
        }
        return this;
    }

    @Override // org.jsoup.Connection
    public Connection data(String str, String str2, InputStream inputStream) {
        this.req.data(KeyVal.create(str, str2, inputStream));
        return this;
    }

    @Override // org.jsoup.Connection
    public Connection.Response execute() throws IOException {
        Response responseExecute = Response.execute(this.req);
        this.res = responseExecute;
        return responseExecute;
    }

    @Override // org.jsoup.Connection
    public Connection followRedirects(boolean z6) {
        this.req.followRedirects(z6);
        return this;
    }

    @Override // org.jsoup.Connection
    public Document get() throws IOException {
        this.req.method(Connection.Method.GET);
        execute();
        return this.res.parse();
    }

    @Override // org.jsoup.Connection
    public Connection header(String str, String str2) {
        this.req.header(str, str2);
        return this;
    }

    @Override // org.jsoup.Connection
    public Connection headers(Map<String, String> map) {
        Validate.notNull(map, "Header map must not be null");
        for (Map.Entry<String, String> entry : map.entrySet()) {
            this.req.header(entry.getKey(), entry.getValue());
        }
        return this;
    }

    @Override // org.jsoup.Connection
    public Connection ignoreContentType(boolean z6) {
        this.req.ignoreContentType(z6);
        return this;
    }

    @Override // org.jsoup.Connection
    public Connection ignoreHttpErrors(boolean z6) {
        this.req.ignoreHttpErrors(z6);
        return this;
    }

    @Override // org.jsoup.Connection
    public Connection maxBodySize(int i10) {
        this.req.maxBodySize(i10);
        return this;
    }

    @Override // org.jsoup.Connection
    public Connection method(Connection.Method method) {
        this.req.method(method);
        return this;
    }

    @Override // org.jsoup.Connection
    public Connection parser(Parser parser) {
        this.req.parser(parser);
        return this;
    }

    @Override // org.jsoup.Connection
    public Document post() throws IOException {
        this.req.method(Connection.Method.POST);
        execute();
        return this.res.parse();
    }

    @Override // org.jsoup.Connection
    public Connection postDataCharset(String str) {
        this.req.postDataCharset(str);
        return this;
    }

    @Override // org.jsoup.Connection
    public Connection proxy(String str, int i10) {
        this.req.proxy(str, i10);
        return this;
    }

    @Override // org.jsoup.Connection
    public Connection referrer(String str) {
        Validate.notNull(str, "Referrer must not be null");
        this.req.header("Referer", str);
        return this;
    }

    @Override // org.jsoup.Connection
    public Connection request(Connection.Request request) {
        this.req = request;
        return this;
    }

    @Override // org.jsoup.Connection
    public Connection requestBody(String str) {
        this.req.requestBody(str);
        return this;
    }

    @Override // org.jsoup.Connection
    public Connection response(Connection.Response response) {
        this.res = response;
        return this;
    }

    @Override // org.jsoup.Connection
    public Connection sslSocketFactory(SSLSocketFactory sSLSocketFactory) {
        this.req.sslSocketFactory(sSLSocketFactory);
        return this;
    }

    @Override // org.jsoup.Connection
    public Connection timeout(int i10) {
        this.req.timeout(i10);
        return this;
    }

    @Override // org.jsoup.Connection
    public Connection url(String str) {
        Validate.notEmpty(str, "Must supply a valid URL");
        try {
            this.req.url(new URL(encodeUrl(str)));
            return this;
        } catch (MalformedURLException e) {
            throw new IllegalArgumentException("Malformed URL: " + str, e);
        }
    }

    @Override // org.jsoup.Connection
    public Connection userAgent(String str) {
        Validate.notNull(str, "User agent must not be null");
        this.req.header(USER_AGENT, str);
        return this;
    }

    @Override // org.jsoup.Connection
    public Connection validateTLSCertificates(boolean z6) {
        this.req.validateTLSCertificates(z6);
        return this;
    }

    private HttpConnection() {
    }

    public static Connection connect(URL url) {
        HttpConnection httpConnection = new HttpConnection();
        httpConnection.url(url);
        return httpConnection;
    }

    static URL encodeUrl(URL url) {
        try {
            return new URL(new URI(url.toExternalForm().replaceAll(" ", "%20")).toASCIIString());
        } catch (Exception unused) {
            return url;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean needsMultipart(Connection.Request request) {
        Iterator<Connection.KeyVal> it = request.data().iterator();
        while (it.hasNext()) {
            if (it.next().hasInputStream()) {
                return true;
            }
        }
        return false;
    }

    @Override // org.jsoup.Connection
    public Connection data(String str, String str2, InputStream inputStream, String str3) {
        this.req.data(KeyVal.create(str, str2, inputStream).contentType(str3));
        return this;
    }

    @Override // org.jsoup.Connection
    public Connection data(Map<String, String> map) {
        Validate.notNull(map, "Data map must not be null");
        for (Map.Entry<String, String> entry : map.entrySet()) {
            this.req.data(KeyVal.create(entry.getKey(), entry.getValue()));
        }
        return this;
    }

    @Override // org.jsoup.Connection
    public Connection data(String... strArr) {
        Validate.notNull(strArr, "Data key value pairs must not be null");
        Validate.isTrue(strArr.length % 2 == 0, "Must supply an even number of key value pairs");
        for (int i10 = 0; i10 < strArr.length; i10 += 2) {
            String str = strArr[i10];
            String str2 = strArr[i10 + 1];
            Validate.notEmpty(str, "Data key must not be empty");
            Validate.notNull(str2, "Data value must not be null");
            this.req.data(KeyVal.create(str, str2));
        }
        return this;
    }

    @Override // org.jsoup.Connection
    public Connection data(Collection<Connection.KeyVal> collection) {
        Validate.notNull(collection, "Data collection must not be null");
        Iterator<Connection.KeyVal> it = collection.iterator();
        while (it.hasNext()) {
            this.req.data(it.next());
        }
        return this;
    }

    @Override // org.jsoup.Connection
    public Connection.KeyVal data(String str) {
        Validate.notEmpty(str, "Data key must not be empty");
        for (Connection.KeyVal keyVal : request().data()) {
            if (keyVal.key().equals(str)) {
                return keyVal;
            }
        }
        return null;
    }
}
