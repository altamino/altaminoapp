package com.narvii.util.http;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.os.SystemClock;
import android.support.v4.app.NotificationCompat;
import android.support.v4.content.LocalBroadcastManager;
import android.text.TextUtils;
import android.util.Base64;
import com.android.volley.AuthFailureError;
import com.android.volley.DefaultRetryPolicy;
import com.android.volley.NetworkError;
import com.android.volley.NetworkResponse;
import com.android.volley.Request;
import com.android.volley.RequestQueue;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.account.AccountKeychain;
import com.narvii.account.AccountResponseListener;
import com.narvii.account.AccountService;
import com.narvii.account.AuidService;
import com.narvii.app.NVActivity;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.config.ConfigService;
import com.narvii.language.ContentLanguageService;
import com.narvii.lib.R;
import com.narvii.logging.LogUtils;
import com.narvii.model.api.AccountResponse;
import com.narvii.model.api.ApiResponse;
import com.narvii.util.Log;
import com.narvii.util.NVToast;
import com.narvii.util.NativeHelper;
import com.narvii.util.Tag;
import com.narvii.util.Utils;
import com.narvii.util.crashlytics.OomHelper;
import com.narvii.util.deviceid.DeviceIDService;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.services.TopActivityService;
import com.narvii.volley.HurlExtRequest;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.math.BigInteger;
import java.security.InvalidKeyException;
import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.Signature;
import java.security.SignatureException;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.RSAPublicKeySpec;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONException;
import org.json.JSONObject;
import org.jsoup.Jsoup;

/* loaded from: classes.dex */
public class ApiService {
    public static final String ACTION_ERROR_MEMBERSHIP_ISSUE = "com.narvii.action.ERROR_MEMBERSHIP_ISSUE";
    public static final int API_ERR_USER_NOT_IN_COMMUNITY = 230;
    public static final float DEFAULT_BACKOFF_MULT = 0.5f;
    public static final int DEFAULT_GET_RETRY = 0;
    public static final int DEFAULT_GET_TIMEOUT_MS = 6000;
    public static final int DEFAULT_POST_TIMEOUT_MS = 15000;
    public static final int ERROR_ATO = 270;
    public static final int ERROR_MEMBERSHIP_ISSUE = 4200;
    public static String FORCE_SCHEME = "https";
    private static final long SYNC_INTERVAL = 15000;
    private static long syncAdd;
    private static long syncTime;
    private static boolean uaInited;
    private static String userAgent;
    protected AccountService account;
    protected final Pattern apiUrlPattern;
    private AuidService auidService;
    protected ConfigService config;
    private final ContentLanguageService contentLanguageService;
    protected final NVContext context;
    private DeviceIDService deviceId;
    private final String lang;
    LocalBroadcastManager lbm;
    protected RequestQueue queue;
    private final String reqssec;
    private final int reqsver;
    protected final LinkedList<WrappedRequest> resending105;
    private boolean sessionMonitorsDirty;
    private List<ApiSessionMonitor> sessionMonitorsItr;
    private List<ApiSessionMonitor> sessionMonitorsList;
    protected final ConcurrentHashMap<ApiRequest, WrappedRequest> sessions;
    private static final byte[] CRLF = {13, 10};
    private static final byte[] DASHDASH = {45, 45};
    public static Object DISABLE_RELOGIN_TAG = new Tag("disableRelogin");
    public static Object ASYNC_CALL_TAG = new Tag("asyncCallTag");

    public static String userAgent(NVContext nVContext) {
        return "Apple iPhone13,1 iOS v16.5 Main/3.20.0";
    }

    public ApiService(NVContext nVContext) {
        this.context = nVContext;
        initUserAgent(nVContext);
        this.queue = (RequestQueue) nVContext.getService("apiRequestQueue");
        this.config = (ConfigService) nVContext.getService("config");
        this.account = (AccountService) nVContext.getService("account");
        this.auidService = (AuidService) nVContext.getService("auid");
        this.deviceId = (DeviceIDService) nVContext.getService("deviceid");
        this.contentLanguageService = (ContentLanguageService) nVContext.getService("content_language");
        this.sessions = new ConcurrentHashMap<>();
        this.resending105 = new LinkedList<>();
        this.reqsver = Integer.parseInt(nVContext.getContext().getString(R.string.reqsver));
        this.reqssec = nVContext.getContext().getString(R.string.reqssec);
        Locale locale = Locale.getDefault();
        String language = locale.getLanguage();
        if (!TextUtils.isEmpty(language)) {
            String country = locale.getCountry();
            if (!TextUtils.isEmpty(country)) {
                language = language + "-" + country;
            }
            this.lang = language;
        } else {
            this.lang = null;
        }
        this.apiUrlPattern = Pattern.compile("^(https?)://([a-zA-Z\\d-_]*).altamino.top(/.*)$");
        this.lbm = LocalBroadcastManager.getInstance(nVContext.getContext());
    }

    public void exec(ApiRequest apiRequest, ApiResponseListener<? extends ApiResponse> apiResponseListener) {
        exec(apiRequest, apiResponseListener, this.queue);
    }

    public void exec(ApiRequest apiRequest, ApiResponseListener<? extends ApiResponse> apiResponseListener, RequestQueue requestQueue) {
        apiRequest.nextPageRefererInfo = LogUtils.nextPageRefererInfo;
        WrappedRequest wrappedRequest = this.sessions.get(apiRequest);
        if (wrappedRequest != null) {
            if (wrappedRequest.listener == apiResponseListener) {
                return;
            }
            Log.w("api", "duplicated request " + apiRequest + " in context " + this.context);
            return;
        }
        WrappedRequest wrappedRequestCreateWrappedRequest = createWrappedRequest(apiRequest, apiResponseListener);
        this.sessions.put(apiRequest, wrappedRequestCreateWrappedRequest);
        if (requestQueue != null) {
            requestQueue.add(wrappedRequestCreateWrappedRequest);
        } else {
            this.queue.add(wrappedRequestCreateWrappedRequest);
        }
        List<ApiSessionMonitor> listSessionMonitors = sessionMonitors();
        if (listSessionMonitors != null) {
            Iterator<ApiSessionMonitor> it = listSessionMonitors.iterator();
            while (it.hasNext()) {
                it.next().onNewRequest(apiRequest);
            }
        }
    }

    public void abort(final ApiRequest apiRequest, final ApiResponseListener<? extends ApiResponse> apiResponseListener) {
        this.queue.cancelAll(new RequestQueue.RequestFilter() { // from class: com.narvii.util.http.ApiService.1
            @Override // com.android.volley.RequestQueue.RequestFilter
            public boolean apply(Request<?> request) {
                ApiResponseListener apiResponseListener2;
                if (!(request instanceof WrappedRequest)) {
                    return false;
                }
                WrappedRequest wrappedRequest = (WrappedRequest) request;
                if (wrappedRequest.request != apiRequest || ((apiResponseListener2 = apiResponseListener) != null && wrappedRequest.listener != apiResponseListener2)) {
                    return false;
                }
                ApiService.this.sessions.remove(apiRequest);
                List<ApiSessionMonitor> listSessionMonitors = ApiService.this.sessionMonitors();
                if (listSessionMonitors != null) {
                    Iterator<ApiSessionMonitor> it = listSessionMonitors.iterator();
                    while (it.hasNext()) {
                        it.next().onAbortRequest(apiRequest);
                    }
                }
                Log.d("api", "abort " + apiRequest);
                return true;
            }
        });
        if (this.resending105.isEmpty()) {
            return;
        }
        Iterator<WrappedRequest> it = this.resending105.iterator();
        while (it.hasNext()) {
            WrappedRequest next = it.next();
            if (next.request == apiRequest && (apiResponseListener == null || next.listener == apiResponseListener)) {
                it.remove();
                Log.d("api", "abort " + apiRequest + " (in 105-relogin queue)");
            }
        }
    }

    public void abort(ApiRequest apiRequest) {
        abort(apiRequest, null);
    }

    public void abortAll(final boolean z) {
        this.queue.cancelAll(new RequestQueue.RequestFilter() { // from class: com.narvii.util.http.ApiService.2
            @Override // com.android.volley.RequestQueue.RequestFilter
            public boolean apply(Request<?> request) {
                if (!(request instanceof WrappedRequest)) {
                    return false;
                }
                WrappedRequest wrappedRequest = (WrappedRequest) request;
                if (!ApiService.this.sessions.containsKey(wrappedRequest.request)) {
                    return false;
                }
                if (!z && wrappedRequest.request.tag() == ApiService.ASYNC_CALL_TAG) {
                    return false;
                }
                List<ApiSessionMonitor> listSessionMonitors = ApiService.this.sessionMonitors();
                if (listSessionMonitors != null) {
                    Iterator<ApiSessionMonitor> it = listSessionMonitors.iterator();
                    while (it.hasNext()) {
                        it.next().onAbortRequest(wrappedRequest.request);
                    }
                }
                Log.d("api", "recycle " + wrappedRequest.request);
                return true;
            }
        });
        this.sessions.clear();
        this.resending105.clear();
    }

    List<ApiSessionMonitor> sessionMonitors() {
        if (this.sessionMonitorsList == null) {
            this.sessionMonitorsItr = null;
            return null;
        }
        if (this.sessionMonitorsDirty || this.sessionMonitorsItr == null) {
            this.sessionMonitorsItr = new ArrayList(this.sessionMonitorsList);
            this.sessionMonitorsDirty = false;
        }
        return this.sessionMonitorsItr;
    }

    public void addSessionMonitor(ApiSessionMonitor apiSessionMonitor) {
        List<ApiSessionMonitor> list = this.sessionMonitorsList;
        if (list == null) {
            this.sessionMonitorsList = new ArrayList();
        } else if (list.contains(apiSessionMonitor)) {
            return;
        }
        this.sessionMonitorsList.add(apiSessionMonitor);
        this.sessionMonitorsDirty = true;
    }

    public void removeSessionMonitor(ApiSessionMonitor apiSessionMonitor) {
        List<ApiSessionMonitor> list = this.sessionMonitorsList;
        if (list == null || !list.remove(apiSessionMonitor)) {
            return;
        }
        if (this.sessionMonitorsList.isEmpty()) {
            this.sessionMonitorsList = null;
        }
        this.sessionMonitorsDirty = true;
    }

    String convertUrl(String str) {
        if (this.config == null) {
            return str;
        }
        Matcher matcher = this.apiUrlPattern.matcher(str);
        if (!matcher.matches()) {
            return str;
        }
        StringBuilder sb = new StringBuilder();
        String str2 = FORCE_SCHEME;
        if (str2 != null) {
            sb.append(str2);
        } else {
            sb.append(matcher.group(1));
        }
        if (NotificationCompat.CATEGORY_SERVICE.equals(matcher.group(2))) {
            sb.append("://");
            sb.append(this.config.getServiceHost());
        } else {
            sb.append("://");
            sb.append(matcher.group(2));
            sb.append(this.config.getHost());
        }
        String strGroup = matcher.group(3);
        if (strGroup.length() == 0) {
            sb.append('/');
        } else {
            int iIndexOf = strGroup.indexOf("/xx/");
            if (iIndexOf < 0) {
                sb.append(strGroup);
            } else {
                sb.append(strGroup.substring(0, iIndexOf + 1));
                int communityId = this.config.getCommunityId();
                if (communityId == 0) {
                    sb.append('g');
                } else {
                    sb.append('x');
                    sb.append(communityId);
                }
                sb.append(strGroup.substring(iIndexOf + 3));
            }
        }
        return sb.toString();
    }

    private WrappedRequest createWrappedRequest(ApiRequest apiRequest, ApiResponseListener apiResponseListener) {
        return new WrappedRequest(apiRequest, apiResponseListener);
    }

    /* loaded from: classes3.dex */
    private class WrappedRequest extends Request<ApiResponse> implements HurlExtRequest {
        CallPostProgress callPostProgress;
        int dataLen;
        long elapse;
        Throwable error;
        ArrayList<StackTraceElement> execStackTrace;
        List<NameValuePair> headers;
        ApiResponseListener listener;
        private int multiPartContentLength;
        NetworkResponse networkResponse;
        long parseElapse;
        String reqId;
        ApiRequest request;
        ApiResponse resend;
        int statusCode;

        public WrappedRequest(ApiRequest apiRequest, ApiResponseListener apiResponseListener) {
            super(apiRequest.method(), ApiService.this.convertUrl(apiRequest.url()), null);
            this.request = apiRequest;
            this.listener = apiResponseListener;
            this.elapse = -SystemClock.elapsedRealtime();
            boolean z = apiRequest.method() == 0;
            int iTimeout = apiRequest.timeout();
            setRetryPolicy(new DefaultRetryPolicy(iTimeout <= 0 ? z ? ApiService.DEFAULT_GET_TIMEOUT_MS : 15000 : iTimeout, apiRequest.retry() != null ? apiRequest.retry().intValue() : 0, 0.5f));
            if (NVApplication.DEBUG) {
                StackTraceElement[] stackTrace = new Exception().getStackTrace();
                this.execStackTrace = new ArrayList<>();
                for (StackTraceElement stackTraceElement : stackTrace) {
                    if (!stackTraceElement.getClassName().startsWith("com.narvii.util.http.ApiService")) {
                        this.execStackTrace.add(stackTraceElement);
                    }
                }
            }
        }

        @Override // com.android.volley.Request
        public String getUrl() {
            String url = super.getUrl();
            String str = DeviceIDService.pendingDeviceIdPlaceholder;
            return str != null ? url.replace(str, ApiService.this.deviceId.getDeviceId()) : url;
        }

        @Override // com.android.volley.Request
        public Map<String, String> getHeaders() throws JSONException, AuthFailureError {
            List<NameValuePair> list = this.request.headers;
            int size = list == null ? 0 : list.size();
            String string = ApiService.this.account.getPrefs().getString("sid", null);
            HashMap map = new HashMap(size);
            if (string != null) {
                map.put("NDCAUTH", "sid=" + string);
            }
            map.put("NDCDEVICEID", ApiService.this.deviceId.getDeviceId());
            if (ApiService.this.auidService != null) {
                String auid = ApiService.this.auidService.getAuid();
                if (!TextUtils.isEmpty(auid)) {
                    map.put("AUID", auid);
                }
            }
            if (ApiService.this.contentLanguageService != null) {
                map.put("NDCLANG", ApiService.this.contentLanguageService.getRequestPrefLanguageWithLocalAsDefault());
            }
            if (ApiService.this.lang != null) {
                map.put("Accept-Language", ApiService.this.lang);
            }
            List<NameValuePair> list2 = this.request.headers;
            if (list2 != null) {
                for (NameValuePair nameValuePair : list2) {
                    map.put(nameValuePair.getName(), nameValuePair.getValue());
                }
            }
            if (!map.containsKey("NDC-MSG-SIG")) {
                ApiRequest apiRequest = this.request;
                if (apiRequest.method == 1) {
                    Object obj = apiRequest.body;
                    if ((obj instanceof ObjectNode) || (obj instanceof JSONObject)) {
                        try {
                            if (this.request.body instanceof ObjectNode) {
                                ((ObjectNode) this.request.body).put("timestamp", ApiService.timestamp());
                            } else {
                                ((JSONObject) this.request.body).put("timestamp", ApiService.timestamp());
                            }
                            map.put("NDC-MSG-SIG", NativeHelper.S(getBody(), ApiService.this.reqssec, ApiService.this.reqsver));
                        } catch (Exception e) {
                            Log.e("api", "fail to calc signature", e);
                        }
                    }
                }
            }
            return map;
        }

        @Override // com.android.volley.Request
        public String getBodyContentType() {
            ApiRequest apiRequest = this.request;
            String str = apiRequest.contentType;
            if (str != null) {
                return str;
            }
            Object obj = apiRequest.body;
            return ((obj instanceof JSONObject) || (obj instanceof JsonNode)) ? ApiRequest.CONTENT_TYPE_JSON : obj instanceof String ? ApiRequest.CONTENT_TYPE_TEXT : ((obj instanceof byte[]) || (obj instanceof File) || (obj instanceof InputStream)) ? ApiRequest.CONTENT_TYPE_BINARY : super.getBodyContentType();
        }

        public void writeMultiPartBytes(OutputStream outputStream) throws IOException {
            writeOrCountMultiPartBytes(outputStream, false);
        }

        public int countMultiPartBytes() throws IOException {
            return writeOrCountMultiPartBytes(null, true);
        }

        private int writeOrCountMultiPartBytes(OutputStream outputStream, boolean z) throws IOException {
            if (z) {
                outputStream = new DataOutputStream(new ByteArrayOutputStream());
            }
            int length = 0;
            int i = 0;
            for (ApiRequest.MultiPart multiPart : this.request.parts) {
                outputStream.write(ApiService.DASHDASH);
                outputStream.write(this.request.boundary.getBytes());
                outputStream.write(ApiService.CRLF);
                if (multiPart instanceof ApiRequest.FormPart) {
                    outputStream.write(("Content-Disposition: form-data; name=\"" + multiPart.getName() + "\"").getBytes());
                    outputStream.write(ApiService.CRLF);
                    outputStream.write(ApiService.CRLF);
                    outputStream.write(((ApiRequest.FormPart) multiPart).getData());
                    outputStream.write(ApiService.CRLF);
                } else if (multiPart instanceof ApiRequest.FilePart) {
                    ApiRequest.FilePart filePart = (ApiRequest.FilePart) multiPart;
                    outputStream.write(("Content-Disposition: form-data; name=\"" + multiPart.getName() + "\"; filename=\"" + filePart.getFile().getName() + "\"").getBytes());
                    outputStream.write(ApiService.CRLF);
                    outputStream.write(ApiService.CRLF);
                    File file = filePart.getFile();
                    if (file != null && file.exists()) {
                        if (z) {
                            length = (int) (length + file.length());
                        } else {
                            byte[] bArr = new byte[4096];
                            FileInputStream fileInputStream = new FileInputStream(file);
                            while (true) {
                                try {
                                    int i2 = fileInputStream.read(bArr);
                                    if (i2 == -1 || isCanceled()) {
                                        break;
                                    }
                                    outputStream.write(bArr, 0, i2);
                                    i += i2;
                                    if (this.callPostProgress != null) {
                                        this.callPostProgress.step(i, true);
                                    }
                                } finally {
                                    fileInputStream.close();
                                }
                            }
                            if (this.callPostProgress != null) {
                                this.callPostProgress.step(i, true);
                            }
                        }
                        outputStream.write(ApiService.CRLF);
                    }
                } else {
                    continue;
                }
            }
            outputStream.write(ApiService.DASHDASH);
            outputStream.write(this.request.boundary.getBytes());
            outputStream.write(ApiService.DASHDASH);
            outputStream.write(ApiService.CRLF);
            if (z) {
                outputStream.close();
            }
            if (z && (outputStream instanceof DataOutputStream)) {
                return ((DataOutputStream) outputStream).size() + length;
            }
            return 0;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:86:0x0053 A[EXC_TOP_SPLITTER, PHI: r1
  0x0053: PHI (r1v3 java.lang.Object) = (r1v24 java.lang.Object), (r1v25 java.lang.Object) binds: [B:17:0x0021, B:19:0x0025] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
        @Override // com.android.volley.Request
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public byte[] getBody() throws java.lang.Throwable {
            /*
                Method dump skipped, instructions count: 289
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.narvii.util.http.ApiService.WrappedRequest.getBody():byte[]");
        }

        @Override // com.narvii.volley.HurlExtRequest
        public int getFixedLengthStreaming() {
            if (this.request.contentMultiPart()) {
                try {
                    int iCountMultiPartBytes = countMultiPartBytes();
                    this.multiPartContentLength = iCountMultiPartBytes;
                    return iCountMultiPartBytes;
                } catch (IOException unused) {
                    return 0;
                }
            }
            Object obj = this.request.body;
            if (obj instanceof File) {
                int length = (int) ((File) obj).length();
                if (length > 4096) {
                    return length;
                }
                return 0;
            }
            if (obj instanceof InputStream) {
                InputStream inputStream = (InputStream) obj;
                try {
                    int iAvailable = inputStream.markSupported() ? inputStream.available() : 0;
                    if (iAvailable > 4096) {
                        return iAvailable;
                    }
                    return 0;
                } catch (Exception unused2) {
                }
            }
            return 0;
        }

        @Override // com.narvii.volley.HurlExtRequest
        public void writeOutputStream(OutputStream outputStream) throws IOException {
            if (this.request.contentMultiPart()) {
                Object obj = this.listener;
                if (obj instanceof PostProgressListener) {
                    this.callPostProgress = new CallPostProgress((PostProgressListener) obj, this.multiPartContentLength);
                }
                writeMultiPartBytes(outputStream);
                return;
            }
            Object obj2 = this.request.body;
            if (obj2 instanceof File) {
                Object obj3 = this.listener;
                if (obj3 instanceof PostProgressListener) {
                    this.callPostProgress = new CallPostProgress((PostProgressListener) obj3, (int) ((File) obj2).length());
                }
                byte[] bArr = new byte[4096];
                FileInputStream fileInputStream = new FileInputStream((File) this.request.body);
                int i = 0;
                while (true) {
                    try {
                        int i2 = fileInputStream.read(bArr);
                        if (i2 == -1 || isCanceled()) {
                            break;
                        }
                        outputStream.write(bArr, 0, i2);
                        i += i2;
                        if (this.callPostProgress != null) {
                            this.callPostProgress.step(i, false);
                        }
                    } finally {
                        fileInputStream.close();
                    }
                }
                if (this.callPostProgress != null) {
                    this.callPostProgress.step(i, true);
                }
                return;
            }
            if (obj2 instanceof InputStream) {
                InputStream inputStream = (InputStream) obj2;
                int iAvailable = inputStream.available();
                Object obj4 = this.listener;
                if (obj4 instanceof PostProgressListener) {
                    this.callPostProgress = new CallPostProgress((PostProgressListener) obj4, iAvailable);
                }
                byte[] bArr2 = new byte[4096];
                inputStream.mark(iAvailable);
                int i3 = 0;
                while (true) {
                    try {
                        int i4 = inputStream.read(bArr2);
                        if (i4 == -1 || isCanceled()) {
                            break;
                        }
                        outputStream.write(bArr2, 0, i4);
                        i3 += i4;
                        if (this.callPostProgress != null) {
                            this.callPostProgress.step(i3, false);
                        }
                    } finally {
                        inputStream.reset();
                    }
                }
                if (this.callPostProgress != null) {
                    this.callPostProgress.step(i3, true);
                }
                return;
            }
            throw new IOException("unsupported body type " + this.request.body);
        }

        private Exception parseHtmlTitle(NetworkResponse networkResponse) {
            try {
                if (!networkResponse.headers.get("Content-Type").startsWith("text/html") || networkResponse.data[0] != 60) {
                    return null;
                }
                return new Exception(ApiService.this.context.getContext().getString(R.string.api_request_process_fail) + " (" + networkResponse.statusCode + " " + Jsoup.parse(new ByteArrayInputStream(networkResponse.data), "utf-8", getUrl()).title() + ")");
            } catch (Throwable th) {
                OomHelper.test(th);
                return null;
            }
        }

        private List<NameValuePair> convertHeaders(Map<String, String> map) {
            if (map == null || map.isEmpty()) {
                return Collections.emptyList();
            }
            ApiService.this.syncTime(getUrl(), map.get("Date"));
            ArrayList arrayList = new ArrayList(map.size());
            for (Map.Entry<String, String> entry : map.entrySet()) {
                arrayList.add(new NameValuePair(entry.getKey(), entry.getValue()));
            }
            return arrayList;
        }

        private boolean verifySig(byte[] bArr, String str) throws InvalidKeySpecException, NoSuchAlgorithmException, SignatureException, InvalidKeyException {
            if (NVApplication.FAKE_PRODUCTION != null) {
                return true;
            }
            try {
                PublicKey publicKeyGeneratePublic = KeyFactory.getInstance("RSA").generatePublic(new RSAPublicKeySpec(new BigInteger(ApiService.this.context.getContext().getString(R.string.srmod)), new BigInteger(ApiService.this.context.getContext().getString(R.string.srexp))));
                byte[] bArrDecode = Base64.decode(str, 0);
                Signature signature = Signature.getInstance("SHA1WithRSA");
                signature.initVerify(publicKeyGeneratePublic);
                signature.update(bArr);
                return signature.verify(bArrDecode);
            } catch (Exception unused) {
                Log.e("signature not valid");
                return false;
            }
        }

        @Override // com.android.volley.Request
        protected Response<ApiResponse> parseNetworkResponse(NetworkResponse networkResponse) throws Exception {
            ApiResponse response;
            long jElapsedRealtime;
            try {
                if (this.request.verify > 0) {
                    String str = networkResponse.headers.get("NDC-MSG-SIG");
                    if (!verifySig(networkResponse.data, str)) {
                        StringBuilder sb = new StringBuilder();
                        sb.append(ApiService.this.context.getContext().getString(R.string.api_request_process_fail));
                        sb.append(str);
                        throw new Exception(sb.toString() == null ? " (NO-SIG)" : " (VERIFY)");
                    }
                }
                jElapsedRealtime = SystemClock.elapsedRealtime();
                if (this.elapse < 0) {
                    this.elapse += jElapsedRealtime;
                }
                if (networkResponse != null && networkResponse.headers != null) {
                    this.reqId = networkResponse.headers.get("X-Request-Id");
                }
                this.statusCode = networkResponse.statusCode;
                this.headers = convertHeaders(networkResponse.headers);
                this.dataLen = networkResponse.data == null ? 0 : networkResponse.data.length;
                response = this.listener.parseResponse(this.request, networkResponse.statusCode, convertHeaders(networkResponse.headers), networkResponse.data);
            } catch (Exception e) {
                e = e;
                response = null;
            }
            try {
                this.networkResponse = networkResponse;
                this.parseElapse = SystemClock.elapsedRealtime() - jElapsedRealtime;
            } catch (Exception e2) {
                e = e2;
                if (e instanceof RuntimeException) {
                    this.error = new Exception(ApiService.this.context.getContext().getString(R.string.api_request_process_fail));
                } else {
                    Exception htmlTitle = parseHtmlTitle(networkResponse);
                    if (htmlTitle == null) {
                        htmlTitle = e;
                    }
                    this.error = htmlTitle;
                }
                return Response.success(response, null);
            }
            return Response.success(response, null);
        }

        @Override // com.android.volley.Request
        public void deliverError(VolleyError volleyError) {
            byte[] bArr;
            byte[] bArr2;
            NetworkResponse networkResponse;
            Map<String, String> map;
            long j = this.elapse;
            if (j < 0) {
                this.elapse = j + SystemClock.elapsedRealtime();
            }
            if (volleyError != null && (networkResponse = volleyError.networkResponse) != null && (map = networkResponse.headers) != null) {
                this.reqId = map.get("X-Request-Id");
            }
            NetworkResponse networkResponse2 = volleyError.networkResponse;
            int length = 0;
            this.statusCode = networkResponse2 == null ? 0 : networkResponse2.statusCode;
            NetworkResponse networkResponse3 = volleyError.networkResponse;
            ApiResponse errorResponse = null;
            this.headers = networkResponse3 == null ? null : convertHeaders(networkResponse3.headers);
            NetworkResponse networkResponse4 = volleyError.networkResponse;
            if (networkResponse4 != null && (bArr2 = networkResponse4.data) != null) {
                length = bArr2.length;
            }
            this.dataLen = length;
            int i = this.statusCode;
            if (i == 502) {
                this.error = new Exception(ApiService.this.context.getContext().getString(R.string.api_request_502));
            } else if (i == 511) {
                this.error = new NetworkError();
            } else {
                this.error = volleyError;
                NetworkResponse networkResponse5 = volleyError.networkResponse;
                if (networkResponse5 != null && (bArr = networkResponse5.data) != null) {
                    try {
                        errorResponse = this.listener.parseErrorResponse(bArr);
                    } catch (Exception unused) {
                        this.error = parseHtmlTitle(volleyError.networkResponse);
                    }
                }
            }
            deliverResponse(errorResponse);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Removed duplicated region for block: B:138:0x02da  */
        /* JADX WARN: Removed duplicated region for block: B:139:0x02e0  */
        /* JADX WARN: Removed duplicated region for block: B:148:0x0313  */
        /* JADX WARN: Removed duplicated region for block: B:149:0x031c  */
        /* JADX WARN: Removed duplicated region for block: B:157:0x034b A[LOOP:2: B:155:0x0343->B:157:0x034b, LOOP_END] */
        /* JADX WARN: Removed duplicated region for block: B:160:0x036c  */
        /* JADX WARN: Removed duplicated region for block: B:161:0x0374  */
        /* JADX WARN: Removed duplicated region for block: B:190:0x0414  */
        /* JADX WARN: Removed duplicated region for block: B:196:0x0424  */
        /* JADX WARN: Removed duplicated region for block: B:197:0x042b  */
        /* JADX WARN: Removed duplicated region for block: B:201:0x0447  */
        /* JADX WARN: Removed duplicated region for block: B:206:0x0452  */
        /* JADX WARN: Removed duplicated region for block: B:209:0x046a  */
        /* JADX WARN: Removed duplicated region for block: B:210:0x046c  */
        /* JADX WARN: Removed duplicated region for block: B:223:0x04ab  */
        /* JADX WARN: Removed duplicated region for block: B:239:? A[RETURN, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:44:0x00e2  */
        @Override // com.android.volley.Request
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void deliverResponse(com.narvii.model.api.ApiResponse r26) {
            /*
                Method dump skipped, instructions count: 1207
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.narvii.util.http.ApiService.WrappedRequest.deliverResponse(com.narvii.model.api.ApiResponse):void");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public WrappedRequest createReloginRequest(AccountKeychain accountKeychain) {
        final String userId = this.account.getUserId();
        ApiRequest.Builder builder = ApiRequest.builder();
        builder.https().post().global().path("/auth/login");
        builder.param("deviceID", this.deviceId.getDeviceId());
        builder.param("email", accountKeychain.email);
        builder.param("secret", accountKeychain.secret);
        builder.param("clientType", Integer.valueOf(NVApplication.CLIENT_TYPE));
        builder.tag(DISABLE_RELOGIN_TAG);
        WrappedRequest wrappedRequest = new WrappedRequest(builder.build(), new AccountResponseListener(this.context) { // from class: com.narvii.util.http.ApiService.3
            @Override // com.narvii.account.AccountResponseListener, com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, AccountResponse accountResponse) throws Exception {
                accountResponse.sid.charAt(0);
                if (Utils.isEqualsNotNull(ApiService.this.account.getUserId(), accountResponse.account.uid)) {
                    Log.i("api", "105 re-login succeed, updating..");
                    super.onFinish(apiRequest, accountResponse);
                } else {
                    Log.w("api", "105 re-login succeed, but not same account, just ignore");
                }
                long j = -SystemClock.elapsedRealtime();
                while (true) {
                    WrappedRequest wrappedRequestPoll = ApiService.this.resending105.poll();
                    if (wrappedRequestPoll == null) {
                        break;
                    }
                    wrappedRequestPoll.elapse = j;
                    wrappedRequestPoll.parseElapse = 0L;
                    wrappedRequestPoll.statusCode = 0;
                    wrappedRequestPoll.error = null;
                    ApiService.this.queue.add(wrappedRequestPoll);
                }
                if (NVApplication.DEBUG) {
                    NVToast.makeText(ApiService.this.context.getContext(), "105 re-login succeed, renew sid..", 0).show();
                }
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                if (Utils.isEqualsNotNull(userId, ApiService.this.account.getUserId())) {
                    if (i / 100 == 2) {
                        Log.i("api", "105 re-login failed, logout...");
                        if (NVApplication.DEBUG) {
                            NVToast.makeText(ApiService.this.context.getContext(), "105 re-login fail, logout...", 0).show();
                        }
                        ApiService.this.account.logout(false);
                    } else {
                        Log.i("api", "105 re-login network failed");
                        if (NVApplication.DEBUG) {
                            NVToast.makeText(ApiService.this.context.getContext(), "105 re-login network fail", 0).show();
                        }
                    }
                }
                ApiResponse apiResponse2 = new ApiResponse();
                while (true) {
                    WrappedRequest wrappedRequestPoll = ApiService.this.resending105.poll();
                    if (wrappedRequestPoll == null) {
                        return;
                    }
                    ApiResponse apiResponse3 = wrappedRequestPoll.resend;
                    wrappedRequestPoll.resend = apiResponse2;
                    wrappedRequestPoll.deliverResponse(apiResponse3);
                }
            }
        });
        wrappedRequest.resend = new ApiResponse();
        return wrappedRequest;
    }

    /* loaded from: classes3.dex */
    static class CallPostProgress implements Runnable {
        volatile int current;
        PostProgressListener listener;
        volatile boolean scheduled;
        int total;

        CallPostProgress(PostProgressListener postProgressListener, int i) {
            this.listener = postProgressListener;
            this.total = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.listener.onPostProgress(this.current, this.total);
            this.scheduled = false;
        }

        void step(int i, boolean z) {
            this.current = i;
            if (this.scheduled) {
                return;
            }
            if (z) {
                Utils.post(this);
            } else {
                Utils.postDelayed(this, 40L);
            }
            this.scheduled = true;
        }

        void cancel() {
            Utils.handler.removeCallbacks(this);
        }
    }

    private static String safeHeaderStr(String str) {
        if (!validHeader(str)) {
            return "?";
        }
        int iMin = Math.min(str == null ? 0 : str.length(), 20);
        if (str == null) {
            return null;
        }
        return str.substring(0, iMin);
    }

    private static boolean validHeader(String str) {
        int length = str == null ? 0 : str.length();
        for (int i = 0; i < length; i++) {
            char cCharAt = str.charAt(i);
            if ((cCharAt <= 31 && cCharAt != '\t') || cCharAt >= 127) {
                return false;
            }
        }
        return true;
    }

    public static void initUserAgent(NVContext nVContext) {
        if (uaInited) {
            return;
        }
        uaInited = true;
        System.setProperty("http.agent", userAgent(nVContext));
    }

    public static long timestamp() {
        if (syncTime > 0) {
            return (SystemClock.elapsedRealtime() - syncTime) + syncAdd;
        }
        return System.currentTimeMillis();
    }

    public static boolean isTimeSynced() {
        return syncTime != 0;
    }

    public static boolean shouldShowErrMessage(Context context) {
        NVContext nVContext = Utils.getNVContext(context);
        if (nVContext == null) {
            return true;
        }
        Activity topActivity = ((TopActivityService) nVContext.getService("topActivity")).getTopActivity();
        if (!(topActivity instanceof NVActivity)) {
            return true;
        }
        NVActivity nVActivity = (NVActivity) topActivity;
        return (nVActivity.isHandlingATO() || nVActivity.isHandlingJoinCommunity()) ? false : true;
    }

    void syncTime(String str, String str2) {
        if (str == null || str2 == null) {
            return;
        }
        boolean z = syncTime == 0;
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        if (jElapsedRealtime > syncTime + 15000) {
            try {
                if (this.config.getServiceHost().equals(Uri.parse(str).getHost())) {
                    syncAdd = DateUtils.parseDate(str2).getTime();
                    syncTime = jElapsedRealtime;
                    if (z) {
                        Log.i("time sync finish, diff=" + (((jElapsedRealtime - syncTime) + syncAdd) - System.currentTimeMillis()) + "ms");
                    }
                }
            } catch (Exception e) {
                Log.w("time sync fail", e);
            }
        }
    }
}
