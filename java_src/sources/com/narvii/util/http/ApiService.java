package com.narvii.util.http;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Build;
import android.os.SystemClock;
import android.support.v4.media.session.PlaybackStateCompat;
import android.text.TextUtils;
import android.util.Base64;
import androidx.annotation.NonNull;
import androidx.browser.trusted.sharing.ShareTarget;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.app.NotificationCompat;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import androidx.media3.exoplayer.upstream.CmcdConfiguration;
import c.f.b.e.q5;
import com.android.volley.AuthFailureError;
import com.android.volley.DefaultRetryPolicy;
import com.android.volley.NetworkError;
import com.android.volley.NetworkResponse;
import com.android.volley.NoConnectionError;
import com.android.volley.Request;
import com.android.volley.RequestQueue;
import com.android.volley.Response;
import com.android.volley.TimeoutError;
import com.android.volley.VolleyError;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.google.android.gms.common.internal.ImagesContract;
import com.google.common.base.c;
import com.narvii.account.AccountKeychain;
import com.narvii.account.AccountResponseListener;
import com.narvii.account.AccountService;
import com.narvii.account.AuidService;
import com.narvii.account.liveramp.LiveRampHelper;
import com.narvii.app.NVActivity;
import com.narvii.app.NVApplication;
import com.narvii.app.NVContext;
import com.narvii.config.ConfigService;
import com.narvii.language.ContentLanguageService;
import com.narvii.lib.R;
import com.narvii.logging.ActType;
import com.narvii.logging.LogEvent;
import com.narvii.logging.LogUtils;
import com.narvii.model.api.AccountResponse;
import com.narvii.model.api.ApiResponse;
import com.narvii.util.Callback;
import com.narvii.util.FileUtils;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.NVToast;
import com.narvii.util.PackageUtils;
import com.narvii.util.Tag;
import com.narvii.util.Utils;
import com.narvii.util.crashlytics.OomHelper;
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
import java.security.KeyFactory;
import java.security.PublicKey;
import java.security.Signature;
import java.security.spec.RSAPublicKeySpec;
import java.util.ArrayList;
import java.util.Arrays;
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
import org.apache.http.entity.mime.MIME;
import org.json.JSONObject;
import org.jsoup.Jsoup;
import y.e;

/* JADX INFO: loaded from: classes6.dex */
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
    private final String lang;
    LocalBroadcastManager lbm;
    protected RequestQueue queue;
    protected final LinkedList<WrappedRequest> resending105;
    protected final LinkedList<WrappedRequest> resendingPublicKey;
    private final String rsc;
    private final int rsv;
    private boolean sessionMonitorsDirty;
    private List<ApiSessionMonitor> sessionMonitorsItr;
    private List<ApiSessionMonitor> sessionMonitorsList;
    protected final ConcurrentHashMap<ApiRequest, WrappedRequest> sessions;
    private static final byte[] CRLF = {c.CR, 10};
    private static final byte[] DASHDASH = {45, 45};
    private static final Integer[] VERIFY_RESEND_PK_CODES = {11101, 11102, 11103, 11104};
    private static final Integer[] PUBLIC_KEY_LOGOUT_CODES = {11000, 11001, 11002, 11003, 11005, 11006};
    public static Object DISABLE_RELOGIN_TAG = new Tag("disableRelogin");
    public static Object DISABLE_RESEND_PUBLIC_KEY_TAG = new Tag("disableResendPublicKey");
    public static Object ASYNC_CALL_TAG = new Tag("asyncCallTag");
    public static boolean sendingPublicKeyInProgress = false;

    static class CallPostProgress implements Runnable {
        volatile int current;
        PostProgressListener listener;
        volatile boolean scheduled;
        int total;

        void cancel() {
            Utils.handler.removeCallbacks(this);
        }

        @Override // java.lang.Runnable
        public void run() {
            this.listener.onPostProgress(this.current, this.total);
            this.scheduled = false;
        }

        void step(int i10, boolean z6) {
            this.current = i10;
            if (this.scheduled) {
                return;
            }
            if (z6) {
                Utils.post(this);
            } else {
                Utils.postDelayed(this, 40L);
            }
            this.scheduled = true;
        }

        CallPostProgress(PostProgressListener postProgressListener, int i10) {
            this.listener = postProgressListener;
            this.total = i10;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    class WrappedRequest extends Request<ApiResponse> implements HurlExtRequest {
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
        ApiResponse resend105Response;
        ApiResponse resendPublicKeyResponse;
        int statusCode;

        public int countMultiPartBytes() throws IOException {
            return writeOrCountMultiPartBytes(null, true);
        }

        @Override // com.android.volley.Request
        protected Response<ApiResponse> parseNetworkResponse(NetworkResponse networkResponse) {
            ApiResponse response;
            Map<String, String> map;
            try {
                if (this.request.verify > 0) {
                    String str = networkResponse.headers.get(a0.a.f29j);
                    if (!verifySig(networkResponse.data, str)) {
                        StringBuilder sb = new StringBuilder();
                        sb.append(ApiService.this.context.getContext().getString(R.string.api_request_process_fail));
                        sb.append(str);
                        throw new Exception(sb.toString() == null ? " (NO-SIG)" : " (VERIFY)");
                    }
                }
                long jElapsedRealtime = SystemClock.elapsedRealtime();
                long j6 = this.elapse;
                if (j6 < 0) {
                    this.elapse = j6 + jElapsedRealtime;
                }
                if (networkResponse != null && (map = networkResponse.headers) != null) {
                    this.reqId = map.get("X-Request-Id");
                }
                this.statusCode = networkResponse.statusCode;
                this.headers = convertHeaders(networkResponse.headers);
                byte[] bArr = networkResponse.data;
                this.dataLen = bArr == null ? 0 : bArr.length;
                response = this.listener.parseResponse(this.request, networkResponse.statusCode, convertHeaders(networkResponse.headers), networkResponse.data);
                try {
                    this.networkResponse = networkResponse;
                    this.parseElapse = SystemClock.elapsedRealtime() - jElapsedRealtime;
                } catch (Exception e) {
                    e = e;
                    if (e instanceof RuntimeException) {
                        this.error = new Exception(ApiService.this.context.getContext().getString(R.string.api_request_process_fail));
                    } else {
                        Exception htmlTitle = parseHtmlTitle(networkResponse);
                        if (htmlTitle != null) {
                            e = htmlTitle;
                        }
                        this.error = e;
                    }
                }
            } catch (Exception e2) {
                e = e2;
                response = null;
            }
            return Response.success(response, null);
        }

        public void writeMultiPartBytes(OutputStream outputStream) throws IOException {
            writeOrCountMultiPartBytes(outputStream, false);
        }

        public WrappedRequest(ApiRequest apiRequest, ApiResponseListener apiResponseListener) {
            super(apiRequest.method(), ApiService.this.convertUrl(apiRequest.url()), null);
            this.request = apiRequest;
            this.listener = apiResponseListener;
            this.elapse = -SystemClock.elapsedRealtime();
            boolean z6 = apiRequest.method() == 0;
            int iTimeout = apiRequest.timeout();
            setRetryPolicy(new DefaultRetryPolicy(iTimeout <= 0 ? z6 ? 6000 : 15000 : iTimeout, apiRequest.retry() != null ? apiRequest.retry().intValue() : 0, 0.5f));
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

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$deliverResponse$0(WrappedRequest wrappedRequest) {
            ApiService.this.queue.add(wrappedRequest);
        }

        private Exception parseHtmlTitle(NetworkResponse networkResponse) {
            try {
                if (!networkResponse.headers.get(MIME.CONTENT_TYPE).startsWith("text/html") || networkResponse.data[0] != 60) {
                    return null;
                }
                return new Exception(ApiService.this.context.getContext().getString(R.string.api_request_process_fail) + " (" + networkResponse.statusCode + " " + Jsoup.parse(new ByteArrayInputStream(networkResponse.data), "utf-8", getUrl()).title() + ")");
            } catch (Throwable th) {
                OomHelper.test(th);
                return null;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Unreachable blocks removed: 14, instructions: 24 */
        private <T> void updateJsonBodyAndSignatureHeaders(T t5, HashMap<String, String> map, String str, boolean z6) {
            try {
                if (t5 instanceof ObjectNode) {
                    ((ObjectNode) t5).put("timestamp", ApiService.timestamp());
                    if (z6) {
                        FileUtils.writeJsonObjectToFile((ObjectNode) t5, (File) this.request.body);
                    }
                } else {
                    ((JSONObject) t5).put("timestamp", ApiService.timestamp());
                }
                AccountService accountService = ApiService.this.account;
                if (accountService != null) {
                    String userId = accountService.getUserId();
                    if (!TextUtils.isEmpty(userId)) {
                        if (t5 instanceof ObjectNode) {
                            ((ObjectNode) t5).put("uid", userId);
                            if (z6) {
                                FileUtils.writeJsonObjectToFile((ObjectNode) t5, (File) this.request.body);
                            }
                        } else {
                            ((JSONObject) t5).put("uid", userId);
                        }
                        com.google.firebase.remoteconfig.a.k();
                    }
                }
                String str2 = a0.a.f29j;
                if (map.containsKey(str2) || z6) {
                    return;
                }
                map.put(str2, q5.f(getBody(), ApiService.this.rsc, ApiService.this.rsv));
            } catch (Exception e) {
                Log.e("api", "fail to calc signature", e);
            }
        }

        private boolean verifySig(byte[] bArr, String str) {
            if (NVApplication.FPR != null) {
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

        private int writeOrCountMultiPartBytes(OutputStream outputStream, boolean z6) throws IOException {
            if (z6) {
                outputStream = new DataOutputStream(new ByteArrayOutputStream());
            }
            int length = 0;
            int i10 = 0;
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
                        if (z6) {
                            length = (int) (((long) length) + file.length());
                        } else {
                            byte[] bArr = new byte[4096];
                            FileInputStream fileInputStream = new FileInputStream(file);
                            while (true) {
                                try {
                                    int i11 = fileInputStream.read(bArr);
                                    if (i11 == -1 || isCanceled()) {
                                        break;
                                        break;
                                    }
                                    outputStream.write(bArr, 0, i11);
                                    i10 += i11;
                                    CallPostProgress callPostProgress = this.callPostProgress;
                                    if (callPostProgress != null) {
                                        callPostProgress.step(i10, true);
                                    }
                                } catch (Throwable th) {
                                    fileInputStream.close();
                                    throw th;
                                }
                            }
                            CallPostProgress callPostProgress2 = this.callPostProgress;
                            if (callPostProgress2 != null) {
                                callPostProgress2.step(i10, true);
                            }
                            fileInputStream.close();
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
            if (z6) {
                outputStream.close();
            }
            if (z6 && (outputStream instanceof DataOutputStream)) {
                return ((DataOutputStream) outputStream).size() + length;
            }
            return 0;
        }

        @Override // com.android.volley.Request
        public void deliverError(VolleyError volleyError) {
            byte[] bArr;
            byte[] bArr2;
            NetworkResponse networkResponse;
            Map<String, String> map;
            long j6 = this.elapse;
            if (j6 < 0) {
                this.elapse = j6 + SystemClock.elapsedRealtime();
            }
            if (volleyError != null && (networkResponse = volleyError.networkResponse) != null && (map = networkResponse.headers) != null) {
                this.reqId = map.get("X-Request-Id");
            }
            NetworkResponse networkResponse2 = volleyError.networkResponse;
            int length = 0;
            this.statusCode = networkResponse2 == null ? 0 : networkResponse2.statusCode;
            ApiResponse errorResponse = null;
            this.headers = networkResponse2 == null ? null : convertHeaders(networkResponse2.headers);
            NetworkResponse networkResponse3 = volleyError.networkResponse;
            if (networkResponse3 != null && (bArr2 = networkResponse3.data) != null) {
                length = bArr2.length;
            }
            this.dataLen = length;
            int i10 = this.statusCode;
            if (i10 == 502) {
                this.error = new Exception(ApiService.this.context.getContext().getString(R.string.api_request_502));
            } else if (i10 == 511) {
                this.error = new NetworkError();
            } else {
                this.error = volleyError;
                if (networkResponse3 != null && (bArr = networkResponse3.data) != null) {
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
        /* JADX WARN: Code duplicated, block: B:100:0x01d3 A[Catch: Exception -> 0x01c9, TryCatch #1 {Exception -> 0x01c9, blocks: (B:86:0x019e, B:88:0x01a4, B:90:0x01aa, B:92:0x01b1, B:94:0x01c0, B:98:0x01cd, B:100:0x01d3, B:102:0x01e5, B:104:0x020a, B:106:0x0210, B:108:0x0214, B:110:0x021e, B:112:0x0224, B:114:0x0228, B:116:0x022c, B:118:0x0232, B:120:0x023c, B:122:0x024e, B:123:0x0253, B:125:0x0257, B:126:0x025b, B:128:0x025f, B:131:0x0266, B:130:0x0263), top: B:240:0x019e }] */
        /* JADX WARN: Code duplicated, block: B:102:0x01e5 A[Catch: Exception -> 0x01c9, TryCatch #1 {Exception -> 0x01c9, blocks: (B:86:0x019e, B:88:0x01a4, B:90:0x01aa, B:92:0x01b1, B:94:0x01c0, B:98:0x01cd, B:100:0x01d3, B:102:0x01e5, B:104:0x020a, B:106:0x0210, B:108:0x0214, B:110:0x021e, B:112:0x0224, B:114:0x0228, B:116:0x022c, B:118:0x0232, B:120:0x023c, B:122:0x024e, B:123:0x0253, B:125:0x0257, B:126:0x025b, B:128:0x025f, B:131:0x0266, B:130:0x0263), top: B:240:0x019e }] */
        /* JADX WARN: Code duplicated, block: B:118:0x0232 A[Catch: Exception -> 0x01c9, TryCatch #1 {Exception -> 0x01c9, blocks: (B:86:0x019e, B:88:0x01a4, B:90:0x01aa, B:92:0x01b1, B:94:0x01c0, B:98:0x01cd, B:100:0x01d3, B:102:0x01e5, B:104:0x020a, B:106:0x0210, B:108:0x0214, B:110:0x021e, B:112:0x0224, B:114:0x0228, B:116:0x022c, B:118:0x0232, B:120:0x023c, B:122:0x024e, B:123:0x0253, B:125:0x0257, B:126:0x025b, B:128:0x025f, B:131:0x0266, B:130:0x0263), top: B:240:0x019e }] */
        /* JADX WARN: Code duplicated, block: B:120:0x023c A[Catch: Exception -> 0x01c9, TryCatch #1 {Exception -> 0x01c9, blocks: (B:86:0x019e, B:88:0x01a4, B:90:0x01aa, B:92:0x01b1, B:94:0x01c0, B:98:0x01cd, B:100:0x01d3, B:102:0x01e5, B:104:0x020a, B:106:0x0210, B:108:0x0214, B:110:0x021e, B:112:0x0224, B:114:0x0228, B:116:0x022c, B:118:0x0232, B:120:0x023c, B:122:0x024e, B:123:0x0253, B:125:0x0257, B:126:0x025b, B:128:0x025f, B:131:0x0266, B:130:0x0263), top: B:240:0x019e }] */
        /* JADX WARN: Code duplicated, block: B:122:0x024e A[Catch: Exception -> 0x01c9, TryCatch #1 {Exception -> 0x01c9, blocks: (B:86:0x019e, B:88:0x01a4, B:90:0x01aa, B:92:0x01b1, B:94:0x01c0, B:98:0x01cd, B:100:0x01d3, B:102:0x01e5, B:104:0x020a, B:106:0x0210, B:108:0x0214, B:110:0x021e, B:112:0x0224, B:114:0x0228, B:116:0x022c, B:118:0x0232, B:120:0x023c, B:122:0x024e, B:123:0x0253, B:125:0x0257, B:126:0x025b, B:128:0x025f, B:131:0x0266, B:130:0x0263), top: B:240:0x019e }] */
        /* JADX WARN: Code duplicated, block: B:125:0x0257 A[Catch: Exception -> 0x01c9, TryCatch #1 {Exception -> 0x01c9, blocks: (B:86:0x019e, B:88:0x01a4, B:90:0x01aa, B:92:0x01b1, B:94:0x01c0, B:98:0x01cd, B:100:0x01d3, B:102:0x01e5, B:104:0x020a, B:106:0x0210, B:108:0x0214, B:110:0x021e, B:112:0x0224, B:114:0x0228, B:116:0x022c, B:118:0x0232, B:120:0x023c, B:122:0x024e, B:123:0x0253, B:125:0x0257, B:126:0x025b, B:128:0x025f, B:131:0x0266, B:130:0x0263), top: B:240:0x019e }] */
        /* JADX WARN: Code duplicated, block: B:128:0x025f A[Catch: Exception -> 0x01c9, TryCatch #1 {Exception -> 0x01c9, blocks: (B:86:0x019e, B:88:0x01a4, B:90:0x01aa, B:92:0x01b1, B:94:0x01c0, B:98:0x01cd, B:100:0x01d3, B:102:0x01e5, B:104:0x020a, B:106:0x0210, B:108:0x0214, B:110:0x021e, B:112:0x0224, B:114:0x0228, B:116:0x022c, B:118:0x0232, B:120:0x023c, B:122:0x024e, B:123:0x0253, B:125:0x0257, B:126:0x025b, B:128:0x025f, B:131:0x0266, B:130:0x0263), top: B:240:0x019e }] */
        /* JADX WARN: Code duplicated, block: B:130:0x0263 A[Catch: Exception -> 0x01c9, TryCatch #1 {Exception -> 0x01c9, blocks: (B:86:0x019e, B:88:0x01a4, B:90:0x01aa, B:92:0x01b1, B:94:0x01c0, B:98:0x01cd, B:100:0x01d3, B:102:0x01e5, B:104:0x020a, B:106:0x0210, B:108:0x0214, B:110:0x021e, B:112:0x0224, B:114:0x0228, B:116:0x022c, B:118:0x0232, B:120:0x023c, B:122:0x024e, B:123:0x0253, B:125:0x0257, B:126:0x025b, B:128:0x025f, B:131:0x0266, B:130:0x0263), top: B:240:0x019e }] */
        /* JADX WARN: Code duplicated, block: B:140:0x02b6  */
        /* JADX WARN: Code duplicated, block: B:143:0x02c0  */
        /* JADX WARN: Code duplicated, block: B:145:0x02ca  */
        /* JADX WARN: Code duplicated, block: B:146:0x02cd  */
        /* JADX WARN: Code duplicated, block: B:150:0x02f0  */
        /* JADX WARN: Code duplicated, block: B:151:0x02f6  */
        /* JADX WARN: Code duplicated, block: B:153:0x02fa  */
        /* JADX WARN: Code duplicated, block: B:154:0x0303  */
        /* JADX WARN: Code duplicated, block: B:156:0x0309  */
        /* JADX WARN: Code duplicated, block: B:157:0x0318  */
        /* JADX WARN: Code duplicated, block: B:160:0x0329  */
        /* JADX WARN: Code duplicated, block: B:161:0x0332  */
        /* JADX WARN: Code duplicated, block: B:169:0x0361 A[LOOP:2: B:167:0x0359->B:169:0x0361, LOOP_END] */
        /* JADX WARN: Code duplicated, block: B:172:0x0382  */
        /* JADX WARN: Code duplicated, block: B:173:0x038a  */
        /* JADX WARN: Code duplicated, block: B:200:0x0429  */
        /* JADX WARN: Code duplicated, block: B:202:0x042d  */
        /* JADX WARN: Code duplicated, block: B:206:0x0439  */
        /* JADX WARN: Code duplicated, block: B:207:0x0440  */
        /* JADX WARN: Code duplicated, block: B:211:0x045d A[DONT_INVERT] */
        /* JADX WARN: Code duplicated, block: B:212:0x045f A[DONT_INVERT] */
        /* JADX WARN: Code duplicated, block: B:214:0x0462  */
        /* JADX WARN: Code duplicated, block: B:215:0x0465  */
        /* JADX WARN: Code duplicated, block: B:216:0x0468  */
        /* JADX WARN: Code duplicated, block: B:219:0x0481  */
        /* JADX WARN: Code duplicated, block: B:220:0x0483  */
        /* JADX WARN: Code duplicated, block: B:222:0x0487  */
        /* JADX WARN: Code duplicated, block: B:224:0x048b  */
        /* JADX WARN: Code duplicated, block: B:225:0x048d  */
        /* JADX WARN: Code duplicated, block: B:227:0x0491  */
        /* JADX WARN: Code duplicated, block: B:228:0x0493  */
        /* JADX WARN: Code duplicated, block: B:230:0x0497  */
        /* JADX WARN: Code duplicated, block: B:233:0x04c2  */
        /* JADX WARN: Code duplicated, block: B:235:0x04c8  */
        /* JADX WARN: Code duplicated, block: B:240:0x019e A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:250:? A[RETURN, SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:251:? A[RETURN, SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:56:0x010a  */
        /* JADX WARN: Code duplicated, block: B:83:0x0189  */
        /* JADX WARN: Code duplicated, block: B:88:0x01a4 A[Catch: Exception -> 0x01c9, TryCatch #1 {Exception -> 0x01c9, blocks: (B:86:0x019e, B:88:0x01a4, B:90:0x01aa, B:92:0x01b1, B:94:0x01c0, B:98:0x01cd, B:100:0x01d3, B:102:0x01e5, B:104:0x020a, B:106:0x0210, B:108:0x0214, B:110:0x021e, B:112:0x0224, B:114:0x0228, B:116:0x022c, B:118:0x0232, B:120:0x023c, B:122:0x024e, B:123:0x0253, B:125:0x0257, B:126:0x025b, B:128:0x025f, B:131:0x0266, B:130:0x0263), top: B:240:0x019e }] */
        /* JADX WARN: Code duplicated, block: B:94:0x01c0 A[Catch: Exception -> 0x01c9, TryCatch #1 {Exception -> 0x01c9, blocks: (B:86:0x019e, B:88:0x01a4, B:90:0x01aa, B:92:0x01b1, B:94:0x01c0, B:98:0x01cd, B:100:0x01d3, B:102:0x01e5, B:104:0x020a, B:106:0x0210, B:108:0x0214, B:110:0x021e, B:112:0x0224, B:114:0x0228, B:116:0x022c, B:118:0x0232, B:120:0x023c, B:122:0x024e, B:123:0x0253, B:125:0x0257, B:126:0x025b, B:128:0x025f, B:131:0x0266, B:130:0x0263), top: B:240:0x019e }] */
        /* JADX WARN: Code duplicated, block: B:97:0x01cc  */
        @Override // com.android.volley.Request
        public void deliverResponse(ApiResponse apiResponse) {
            String string;
            boolean z6;
            int i10;
            StringBuilder sb;
            int i11;
            Throwable th;
            String message;
            int i12;
            int i13;
            Throwable th2;
            ApiRequest apiRequest;
            Object obj;
            ArrayList<StackTraceElement> arrayList;
            String str;
            Throwable th3;
            Map<String, String> map;
            byte[] bArr;
            String str2;
            Activity topActivity;
            List<ApiSessionMonitor> listSessionMonitors;
            int i14;
            ApiRequest apiRequest2;
            int i15;
            ApiRequest apiRequest3;
            ApiRequest apiRequest4;
            int cid;
            Activity topActivity2;
            Throwable th4;
            CallPostProgress callPostProgress = this.callPostProgress;
            String str3 = null;
            if (callPostProgress != null) {
                callPostProgress.cancel();
                this.callPostProgress = null;
            }
            if (this.resend105Response == null && apiResponse != null) {
                if (apiResponse.statusCode != 105 || this.request.tag == ApiService.DISABLE_RELOGIN_TAG) {
                    ApiService.this.sessions.remove(this.request, this);
                } else {
                    AccountKeychain keychain = ApiService.this.account.getKeychain();
                    if (keychain != null) {
                        this.resend105Response = apiResponse;
                        if (ApiService.this.resending105.isEmpty()) {
                            ApiService apiService = ApiService.this;
                            apiService.queue.add(apiService.createReloginRequest(keychain));
                        }
                        ApiService.this.resending105.add(this);
                        return;
                    }
                }
            }
            if (this.resendPublicKeyResponse == null && apiResponse != null && shouldSendNewKeys(apiResponse)) {
                this.resendPublicKeyResponse = apiResponse;
                if (ApiService.this.resendingPublicKey.isEmpty()) {
                    ApiService.this.createResendPublicKeyRequest(new Callback() { // from class: com.narvii.util.http.b
                        @Override // com.narvii.util.Callback
                        public final void call(Object obj2) {
                            this.f2850a.lambda$deliverResponse$0((ApiService.WrappedRequest) obj2);
                        }
                    });
                }
                ApiService.this.resendingPublicKey.add(this);
                return;
            }
            if (apiResponse != null && apiResponse.statusCode == 0) {
                try {
                    ApiRequest apiRequest5 = this.request;
                    if (apiRequest5 != null) {
                        LogUtils.nextPageRefererInfo = apiRequest5.nextPageRefererInfo;
                    }
                    this.listener.onFinish(apiRequest5, apiResponse);
                    List<ApiSessionMonitor> listSessionMonitors2 = ApiService.this.sessionMonitors();
                    if (listSessionMonitors2 != null) {
                        Iterator<ApiSessionMonitor> it = listSessionMonitors2.iterator();
                        while (it.hasNext()) {
                            it.next().onRequestFinish(this.request, apiResponse);
                        }
                    }
                    string = null;
                    z6 = true;
                } catch (Exception e) {
                    Log.e("api", "onFinish() throws " + e.getClass().getSimpleName() + " in context " + ApiService.this.context, e);
                    if (e instanceof RuntimeException) {
                        this.error = new Exception(ApiService.this.context.getContext().getString(R.string.api_request_process_fail));
                    } else {
                        this.error = e;
                    }
                    string = this.error.getMessage();
                    z6 = false;
                }
                i10 = -1;
                if (!z6) {
                    if (string == null && apiResponse != null) {
                        string = apiResponse.message;
                    }
                    if (string == null && (this.error instanceof TimeoutError)) {
                        string = ApiService.this.context.getContext().getString(R.string.api_request_timeout);
                    }
                    if (string == null && (this.error instanceof NoConnectionError)) {
                        string = ApiService.this.context.getContext().getString(R.string.api_request_no_connection);
                    }
                    if (string == null && (this.error instanceof NetworkError)) {
                        string = ApiService.this.context.getContext().getString(R.string.api_request_network);
                    }
                    if (NVApplication.DEBUG && string != null && apiResponse == null && this.error != null) {
                        string = string + "\n\n(" + this.error.getMessage() + ")";
                    }
                    if (string == null && (th4 = this.error) != null) {
                        string = th4.getMessage();
                    }
                    if (string == null) {
                        string = ApiService.this.context.getContext().getString(R.string.api_request_fail);
                    }
                    str = string;
                    if (apiResponse != null) {
                        try {
                            if (apiResponse.statusCode == 270) {
                                th3 = this.error;
                                if ((th3 instanceof VolleyError) && ((VolleyError) th3).networkResponse != null) {
                                    map = ((VolleyError) th3).networkResponse.headers;
                                    bArr = ((VolleyError) th3).networkResponse.data;
                                    if (map != null) {
                                        str2 = map.get(a0.a.f29j);
                                    } else {
                                        str2 = null;
                                    }
                                    if (verifySig(bArr, str2)) {
                                        topActivity = ((TopActivityService) ApiService.this.context.getService("topActivity")).getTopActivity();
                                        if (topActivity instanceof NVActivity) {
                                            ((NVActivity) topActivity).handleATO(apiResponse.url, apiResponse.deeplink, apiResponse.title, apiResponse.message, apiResponse.okButtonText, apiResponse.cancelButtonText, apiResponse.noCancelButton);
                                        }
                                    }
                                }
                            }
                        } catch (Exception e2) {
                            Log.e("api", "onFail() throws " + e2.getClass().getSimpleName() + " in context " + ApiService.this.context, e2);
                        }
                    }
                    if (apiResponse != null && apiResponse.statusCode == 230 && (apiRequest3 = this.request) != null && apiRequest3.tag("_error_230") != Boolean.TRUE) {
                        apiRequest4 = this.request;
                        if (!apiRequest4.silent && (apiRequest4.method == 1 || apiRequest4.userInteraction)) {
                            cid = apiRequest4.getCid();
                            if (cid == -1) {
                                cid = ApiService.this.config.getCommunityId();
                            }
                            if (cid > 0) {
                                topActivity2 = ((TopActivityService) ApiService.this.context.getService("topActivity")).getTopActivity();
                                if (topActivity2 instanceof NVActivity) {
                                    ((NVActivity) topActivity2).handleCommunityNotJoined(cid);
                                }
                            }
                        }
                    }
                    apiRequest2 = this.request;
                    if (apiRequest2 != null) {
                        LogUtils.nextPageRefererInfo = apiRequest2.nextPageRefererInfo;
                    }
                    ApiResponseListener apiResponseListener = this.listener;
                    if (apiResponse == null) {
                        i15 = this.statusCode;
                    } else {
                        i15 = apiResponse.statusCode;
                    }
                    apiResponseListener.onFail(apiRequest2, i15, this.headers, str, apiResponse, this.error);
                    if (apiResponse != null && apiResponse.statusCode == 4200) {
                        ApiService.this.lbm.d(new Intent(ApiService.ACTION_ERROR_MEMBERSHIP_ISSUE));
                    }
                    listSessionMonitors = ApiService.this.sessionMonitors();
                    if (listSessionMonitors != null) {
                        for (ApiSessionMonitor apiSessionMonitor : listSessionMonitors) {
                            ApiRequest apiRequest6 = this.request;
                            if (apiResponse == null) {
                                i14 = this.statusCode;
                            } else {
                                i14 = apiResponse.statusCode;
                            }
                            apiSessionMonitor.onRequestFail(apiRequest6, i14, this.headers, str, apiResponse, this.error);
                        }
                    }
                }
                sb = new StringBuilder();
                sb.append(this.statusCode);
                sb.append(" (");
                if (this.error != null) {
                    sb.append("error in ");
                } else {
                    i11 = this.dataLen;
                    if (i11 < 100) {
                        sb.append(i11);
                        sb.append(" bytes in ");
                    } else if (i11 < 1000) {
                        sb.append("0.");
                        sb.append(this.dataLen / 100);
                        sb.append("kb in ");
                    } else {
                        sb.append(i11 / 1000);
                        sb.append("kb in ");
                    }
                }
                if (this.parseElapse < 10) {
                    sb.append(this.elapse);
                    sb.append("ms");
                } else {
                    sb.append(this.elapse);
                    sb.append('+');
                    sb.append(this.parseElapse);
                    sb.append("ms");
                }
                if (apiResponse != null && apiResponse.statusCode > 0) {
                    sb.append(", code=");
                    sb.append(apiResponse.statusCode);
                }
                sb.append(") ");
                while (sb.length() < 26) {
                    sb.append(' ');
                }
                sb.append(String.valueOf(this.request).replace(this.request.url, getUrl()));
                if (this.request.verbose) {
                    Log.v("api", sb.toString());
                } else {
                    Log.d("api", sb.toString());
                }
                if (NVApplication.DEBUG && this.networkResponse != null) {
                    try {
                        SharedPreferences sharedPreferences = ApiService.this.context.getContext().getSharedPreferences("__debug", 0);
                        if (this.networkResponse.data != null && sharedPreferences.getBoolean("verboseLog", false)) {
                            Log.println(3, "api", new JSONObject(new String(this.networkResponse.data)).toString(4));
                        }
                    } catch (Exception unused) {
                    }
                }
                if (apiResponse != null || this.request.verbose) {
                    th = this.error;
                    if (th != null && !this.request.verbose) {
                        if (th.getMessage() == null) {
                            message = this.error.toString();
                        } else {
                            message = this.error.getMessage();
                        }
                        Log.d("api", message);
                    }
                } else {
                    if (apiResponse.statusCode > 0) {
                        Log.d("api", "msg=" + apiResponse.message);
                    }
                    if (apiResponse.debugInfo != null) {
                        Log.d("api", "debuginfo=" + apiResponse.debugInfo);
                    }
                    if (apiResponse.statusCode == 100 && (arrayList = this.execStackTrace) != null) {
                        Iterator<StackTraceElement> it2 = arrayList.iterator();
                        while (it2.hasNext()) {
                            Log.w("api", String.valueOf(it2.next()));
                        }
                    }
                }
                ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
                objectNodeCreateObjectNode.put(ImagesContract.URL, getUrl());
                i12 = this.request.method;
                if (i12 != 0) {
                    str3 = ShareTarget.METHOD_GET;
                } else if (i12 != 1) {
                    str3 = "POST";
                } else if (i12 == 3) {
                    str3 = "DELETE";
                }
                objectNodeCreateObjectNode.put("v", 2);
                objectNodeCreateObjectNode.put("method", str3);
                objectNodeCreateObjectNode.put(TypedValues.TransitionType.S_DURATION, this.elapse);
                i13 = this.statusCode;
                if (i13 > 0) {
                    i10 = i13;
                } else {
                    th2 = this.error;
                    if (th2 != null) {
                        if (th2 instanceof TimeoutError) {
                            i10 = -2;
                        } else if (th2 instanceof NoConnectionError) {
                            i10 = -3;
                        } else if (th2 instanceof NetworkError) {
                            i10 = -4;
                        }
                    }
                }
                objectNodeCreateObjectNode.put(NotificationCompat.CATEGORY_STATUS, i10);
                LogEvent.builder(ApiService.this.context).appEvent().actType(ActType.APIRequest).extraInfo(objectNodeCreateObjectNode).reqId(this.reqId).send();
                apiRequest = this.request;
                if (apiRequest.deleteBodyAfterDone) {
                    obj = apiRequest.body;
                    if (obj instanceof File) {
                        ((File) obj).delete();
                    }
                }
            }
            string = null;
            z6 = false;
            i10 = -1;
            if (!z6) {
                if (string == null) {
                    string = apiResponse.message;
                }
                if (string == null) {
                    string = ApiService.this.context.getContext().getString(R.string.api_request_timeout);
                }
                if (string == null) {
                    string = ApiService.this.context.getContext().getString(R.string.api_request_no_connection);
                }
                if (string == null) {
                    string = ApiService.this.context.getContext().getString(R.string.api_request_network);
                }
                if (NVApplication.DEBUG) {
                    string = string + "\n\n(" + this.error.getMessage() + ")";
                }
                if (string == null) {
                    string = th4.getMessage();
                }
                if (string == null) {
                    string = ApiService.this.context.getContext().getString(R.string.api_request_fail);
                }
                str = string;
                if (apiResponse != null) {
                    if (apiResponse.statusCode == 270) {
                        th3 = this.error;
                        if (th3 instanceof VolleyError) {
                            map = ((VolleyError) th3).networkResponse.headers;
                            bArr = ((VolleyError) th3).networkResponse.data;
                            if (map != null) {
                                str2 = map.get(a0.a.f29j);
                            } else {
                                str2 = null;
                            }
                            if (verifySig(bArr, str2)) {
                                topActivity = ((TopActivityService) ApiService.this.context.getService("topActivity")).getTopActivity();
                                if (topActivity instanceof NVActivity) {
                                    ((NVActivity) topActivity).handleATO(apiResponse.url, apiResponse.deeplink, apiResponse.title, apiResponse.message, apiResponse.okButtonText, apiResponse.cancelButtonText, apiResponse.noCancelButton);
                                }
                            }
                        }
                    }
                }
                if (apiResponse != null) {
                    apiRequest4 = this.request;
                    if (!apiRequest4.silent) {
                        cid = apiRequest4.getCid();
                        if (cid == -1) {
                            cid = ApiService.this.config.getCommunityId();
                        }
                        if (cid > 0) {
                            topActivity2 = ((TopActivityService) ApiService.this.context.getService("topActivity")).getTopActivity();
                            if (topActivity2 instanceof NVActivity) {
                                ((NVActivity) topActivity2).handleCommunityNotJoined(cid);
                            }
                        }
                    }
                }
                apiRequest2 = this.request;
                if (apiRequest2 != null) {
                    LogUtils.nextPageRefererInfo = apiRequest2.nextPageRefererInfo;
                }
                ApiResponseListener apiResponseListener2 = this.listener;
                if (apiResponse == null) {
                    i15 = this.statusCode;
                } else {
                    i15 = apiResponse.statusCode;
                }
                apiResponseListener2.onFail(apiRequest2, i15, this.headers, str, apiResponse, this.error);
                if (apiResponse != null) {
                    ApiService.this.lbm.d(new Intent(ApiService.ACTION_ERROR_MEMBERSHIP_ISSUE));
                }
                listSessionMonitors = ApiService.this.sessionMonitors();
                if (listSessionMonitors != null) {
                    while (r0.hasNext()) {
                        ApiRequest apiRequest7 = this.request;
                        if (apiResponse == null) {
                            i14 = this.statusCode;
                        } else {
                            i14 = apiResponse.statusCode;
                        }
                        apiSessionMonitor.onRequestFail(apiRequest7, i14, this.headers, str, apiResponse, this.error);
                    }
                }
            }
            sb = new StringBuilder();
            sb.append(this.statusCode);
            sb.append(" (");
            if (this.error != null) {
                sb.append("error in ");
            } else {
                i11 = this.dataLen;
                if (i11 < 100) {
                    sb.append(i11);
                    sb.append(" bytes in ");
                } else if (i11 < 1000) {
                    sb.append("0.");
                    sb.append(this.dataLen / 100);
                    sb.append("kb in ");
                } else {
                    sb.append(i11 / 1000);
                    sb.append("kb in ");
                }
            }
            if (this.parseElapse < 10) {
                sb.append(this.elapse);
                sb.append("ms");
            } else {
                sb.append(this.elapse);
                sb.append('+');
                sb.append(this.parseElapse);
                sb.append("ms");
            }
            if (apiResponse != null) {
                sb.append(", code=");
                sb.append(apiResponse.statusCode);
            }
            sb.append(") ");
            while (sb.length() < 26) {
                sb.append(' ');
            }
            sb.append(String.valueOf(this.request).replace(this.request.url, getUrl()));
            if (this.request.verbose) {
                Log.v("api", sb.toString());
            } else {
                Log.d("api", sb.toString());
            }
            if (NVApplication.DEBUG) {
                SharedPreferences sharedPreferences2 = ApiService.this.context.getContext().getSharedPreferences("__debug", 0);
                if (this.networkResponse.data != null) {
                    Log.println(3, "api", new JSONObject(new String(this.networkResponse.data)).toString(4));
                }
            }
            if (apiResponse != null) {
                th = this.error;
                if (th != null) {
                    if (th.getMessage() == null) {
                        message = this.error.toString();
                    } else {
                        message = this.error.getMessage();
                    }
                    Log.d("api", message);
                }
            } else {
                th = this.error;
                if (th != null) {
                    if (th.getMessage() == null) {
                        message = this.error.toString();
                    } else {
                        message = this.error.getMessage();
                    }
                    Log.d("api", message);
                }
            }
            ObjectNode objectNodeCreateObjectNode2 = JacksonUtils.createObjectNode();
            objectNodeCreateObjectNode2.put(ImagesContract.URL, getUrl());
            i12 = this.request.method;
            if (i12 != 0) {
                str3 = ShareTarget.METHOD_GET;
            } else if (i12 != 1) {
                str3 = "POST";
            } else if (i12 == 3) {
                str3 = "DELETE";
            }
            objectNodeCreateObjectNode2.put("v", 2);
            objectNodeCreateObjectNode2.put("method", str3);
            objectNodeCreateObjectNode2.put(TypedValues.TransitionType.S_DURATION, this.elapse);
            i13 = this.statusCode;
            if (i13 > 0) {
                i10 = i13;
            } else {
                th2 = this.error;
                if (th2 != null) {
                    if (th2 instanceof TimeoutError) {
                        i10 = -2;
                    } else if (th2 instanceof NoConnectionError) {
                        i10 = -3;
                    } else if (th2 instanceof NetworkError) {
                        i10 = -4;
                    }
                }
            }
            objectNodeCreateObjectNode2.put(NotificationCompat.CATEGORY_STATUS, i10);
            LogEvent.builder(ApiService.this.context).appEvent().actType(ActType.APIRequest).extraInfo(objectNodeCreateObjectNode2).reqId(this.reqId).send();
            apiRequest = this.request;
            if (apiRequest.deleteBodyAfterDone) {
                obj = apiRequest.body;
                if (obj instanceof File) {
                    ((File) obj).delete();
                }
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r2v0 */
        /* JADX WARN: Type inference failed for: r2v2 */
        /* JADX WARN: Type inference failed for: r2v3, types: [java.io.InputStream] */
        /* JADX WARN: Type inference failed for: r2v4 */
        @Override // com.android.volley.Request
        public byte[] getBody() throws Throwable {
            InputStream inputStream;
            InputStream inputStream2;
            InputStream fileInputStream;
            long jAvailable;
            ApiRequest apiRequest = this.request;
            Object obj = apiRequest.body;
            ?? r5 = 0;
            if (obj == null) {
                return null;
            }
            if ((obj instanceof String) || (obj instanceof JSONObject) || (obj instanceof JsonNode)) {
                return obj.toString().replace(a0.b.n(), a0.b.k()).getBytes(Utils.UTF_8);
            }
            if (obj instanceof byte[]) {
                return (byte[]) obj;
            }
            if ((obj instanceof File) || (obj instanceof InputStream)) {
                try {
                    try {
                        if (obj instanceof File) {
                            File file = (File) obj;
                            jAvailable = file.length();
                            if (jAvailable > 2147483647L) {
                                Utils.safeClose((InputStream) null);
                                return null;
                            }
                            fileInputStream = new FileInputStream(file);
                        } else {
                            fileInputStream = (InputStream) obj;
                            try {
                                jAvailable = fileInputStream.available();
                            } catch (Exception e) {
                                inputStream2 = fileInputStream;
                                e = e;
                                Log.e("api", "fail to read content from " + this.request.body, e);
                                Utils.safeClose(inputStream2);
                                return null;
                            } catch (OutOfMemoryError e2) {
                                inputStream = fileInputStream;
                                e = e2;
                                Log.e("api", "file too large to process", e);
                                Utils.safeClose(inputStream);
                                Log.e("api", "unsupported request body " + this.request.body);
                                return null;
                            } catch (Throwable th) {
                                r5 = fileInputStream;
                                th = th;
                                Utils.safeClose((InputStream) r5);
                                throw th;
                            }
                        }
                        if (jAvailable <= 0) {
                            jAvailable = PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM;
                        }
                        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream((int) jAvailable);
                        byte[] bArr = new byte[4096];
                        while (true) {
                            int i10 = fileInputStream.read(bArr);
                            if (i10 == -1) {
                                byte[] byteArray = byteArrayOutputStream.toByteArray();
                                Utils.safeClose(fileInputStream);
                                return byteArray;
                            }
                            byteArrayOutputStream.write(bArr, 0, i10);
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        r5 = obj;
                    }
                } catch (Exception e6) {
                    e = e6;
                    inputStream2 = null;
                } catch (OutOfMemoryError e7) {
                    e = e7;
                    inputStream = null;
                } catch (Throwable th3) {
                    th = th3;
                }
            } else if (apiRequest.contentMultiPart()) {
                ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
                DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream2);
                try {
                    writeMultiPartBytes(dataOutputStream);
                    return byteArrayOutputStream2.toByteArray();
                } catch (IOException e10) {
                    Log.e("api", "multi part exception", e10);
                    return null;
                } finally {
                    Utils.safeClose(dataOutputStream);
                }
            }
            Log.e("api", "unsupported request body " + this.request.body);
            return null;
        }

        @Override // com.android.volley.Request
        public String getBodyContentType() {
            ApiRequest apiRequest = this.request;
            String str = apiRequest.contentType;
            if (str != null) {
                return str;
            }
            Object obj = apiRequest.body;
            if ((obj instanceof JSONObject) || (obj instanceof JsonNode)) {
                return ApiRequest.CONTENT_TYPE_JSON;
            }
            if (obj instanceof String) {
                return ApiRequest.CONTENT_TYPE_TEXT;
            }
            return ((obj instanceof byte[]) || (obj instanceof File) || (obj instanceof InputStream)) ? ApiRequest.CONTENT_TYPE_BINARY : super.getBodyContentType();
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
            if (!(obj instanceof InputStream)) {
                return 0;
            }
            InputStream inputStream = (InputStream) obj;
            try {
                int iAvailable = inputStream.markSupported() ? inputStream.available() : 0;
                if (iAvailable > 4096) {
                    return iAvailable;
                }
                return 0;
            } catch (Exception unused2) {
                return 0;
            }
        }

        @Override // com.android.volley.Request
        public Map<String, String> getHeaders() throws AuthFailureError {
            List<NameValuePair> list = this.request.headers;
            int size = list == null ? 0 : list.size();
            String string = ApiService.this.account.getPrefs().getString(CmcdConfiguration.KEY_SESSION_ID, null);
            HashMap<String, String> map = new HashMap<>(size);
            if (string != null) {
                map.put("NDCAUTH", "sid=" + string);
            }
            map.put(a0.a.l, a0.b.k());
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
            ApiRequest apiRequest = this.request;
            if (apiRequest.method == 1) {
                Object obj = apiRequest.body;
                if ((obj instanceof ObjectNode) || (obj instanceof JSONObject)) {
                    updateJsonBodyAndSignatureHeaders(obj, map, apiRequest.url(), false);
                } else if (obj instanceof File) {
                    try {
                        ObjectNode objectNode = (ObjectNode) new ObjectMapper().readValue((File) obj, ObjectNode.class);
                        if (objectNode != null) {
                            updateJsonBodyAndSignatureHeaders(objectNode, map, this.request.url(), true);
                        }
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
            }
            IAntiFraud iAntiFraud = (IAntiFraud) ApiService.this.context.getService("antiFraud");
            if (iAntiFraud != null) {
                map.put(a0.a.m, iAntiFraud.getDeviceId());
            }
            return map;
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
                int i10 = 0;
                while (true) {
                    try {
                        int i11 = fileInputStream.read(bArr);
                        if (i11 == -1 || isCanceled()) {
                            break;
                            break;
                        }
                        outputStream.write(bArr, 0, i11);
                        i10 += i11;
                        CallPostProgress callPostProgress = this.callPostProgress;
                        if (callPostProgress != null) {
                            callPostProgress.step(i10, false);
                        }
                    } catch (Throwable th) {
                        fileInputStream.close();
                        throw th;
                    }
                }
                CallPostProgress callPostProgress2 = this.callPostProgress;
                if (callPostProgress2 != null) {
                    callPostProgress2.step(i10, true);
                }
                fileInputStream.close();
                return;
            }
            if (!(obj2 instanceof InputStream)) {
                throw new IOException("unsupported body type " + this.request.body);
            }
            InputStream inputStream = (InputStream) obj2;
            int iAvailable = inputStream.available();
            Object obj4 = this.listener;
            if (obj4 instanceof PostProgressListener) {
                this.callPostProgress = new CallPostProgress((PostProgressListener) obj4, iAvailable);
            }
            byte[] bArr2 = new byte[4096];
            inputStream.mark(iAvailable);
            int i12 = 0;
            while (true) {
                try {
                    int i13 = inputStream.read(bArr2);
                    if (i13 == -1 || isCanceled()) {
                        break;
                        break;
                    }
                    outputStream.write(bArr2, 0, i13);
                    i12 += i13;
                    CallPostProgress callPostProgress3 = this.callPostProgress;
                    if (callPostProgress3 != null) {
                        callPostProgress3.step(i12, false);
                    }
                } catch (Throwable th2) {
                    inputStream.reset();
                    throw th2;
                }
            }
            CallPostProgress callPostProgress4 = this.callPostProgress;
            if (callPostProgress4 != null) {
                callPostProgress4.step(i12, true);
            }
            inputStream.reset();
        }

        private boolean shouldSendNewKeys(ApiResponse apiResponse) {
            if ((Arrays.asList(ApiService.VERIFY_RESEND_PK_CODES).contains(Integer.valueOf(apiResponse.statusCode)) && this.request.tag != ApiService.DISABLE_RESEND_PUBLIC_KEY_TAG) || e.o()) {
                return true;
            }
            return false;
        }

        @Override // com.android.volley.Request
        public String getUrl() {
            return super.getUrl().replace(a0.b.n(), a0.b.k());
        }
    }

    public static boolean isTimeSynced() {
        return syncTime != 0;
    }

    private static boolean validHeader(String str) {
        int length = str == null ? 0 : str.length();
        for (int i10 = 0; i10 < length; i10++) {
            char cCharAt = str.charAt(i10);
            if ((cCharAt <= 31 && cCharAt != '\t') || cCharAt >= 127) {
                return false;
            }
        }
        return true;
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
                ApiRequest apiRequest2 = wrappedRequest.request;
                ApiRequest apiRequest3 = apiRequest;
                if (apiRequest2 != apiRequest3 || ((apiResponseListener2 = apiResponseListener) != null && wrappedRequest.listener != apiResponseListener2)) {
                    return false;
                }
                ApiService.this.sessions.remove(apiRequest3);
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
        if (!this.resending105.isEmpty()) {
            Iterator<WrappedRequest> it = this.resending105.iterator();
            while (it.hasNext()) {
                WrappedRequest next = it.next();
                if (next.request == apiRequest && (apiResponseListener == null || next.listener == apiResponseListener)) {
                    it.remove();
                    Log.d("api", "abort " + apiRequest + " (in 105-relogin queue)");
                }
            }
        }
        if (this.resendingPublicKey.isEmpty()) {
            return;
        }
        Iterator<WrappedRequest> it2 = this.resendingPublicKey.iterator();
        while (it2.hasNext()) {
            WrappedRequest next2 = it2.next();
            if (next2.request == apiRequest && (apiResponseListener == null || next2.listener == apiResponseListener)) {
                it2.remove();
                Log.d("api", "abort " + apiRequest + " (in resend public key queue)");
            }
        }
    }

    public void exec(ApiRequest apiRequest, @NonNull ApiResponseListener<? extends ApiResponse> apiResponseListener) {
        exec(apiRequest, apiResponseListener, this.queue);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearPendingRequests() {
        ApiResponse apiResponse = new ApiResponse();
        while (true) {
            WrappedRequest wrappedRequestPoll = this.resendingPublicKey.poll();
            if (wrappedRequestPoll == null) {
                return;
            }
            ApiResponse apiResponse2 = wrappedRequestPoll.resendPublicKeyResponse;
            wrappedRequestPoll.resendPublicKeyResponse = apiResponse;
            wrappedRequestPoll.deliverResponse(apiResponse2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public WrappedRequest createReloginRequest(final AccountKeychain accountKeychain) {
        final String userId = this.account.getUserId();
        ApiRequest.Builder builder = ApiRequest.builder();
        builder.https().post().global().path("/auth/login");
        builder.param(a0.a.o, a0.b.k());
        builder.param("email", accountKeychain.email);
        builder.param("secret", accountKeychain.secret);
        builder.param("clientType", Integer.valueOf(NVApplication.CLIENT_TYPE));
        builder.tag(DISABLE_RELOGIN_TAG);
        WrappedRequest wrappedRequest = new WrappedRequest(builder.build(), new AccountResponseListener(this.context) { // from class: com.narvii.util.http.ApiService.3
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i10, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                if (Utils.isEqualsNotNull(userId, ApiService.this.account.getUserId())) {
                    if (i10 / 100 == 2) {
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
                    ApiResponse apiResponse3 = wrappedRequestPoll.resend105Response;
                    wrappedRequestPoll.resend105Response = apiResponse2;
                    wrappedRequestPoll.deliverResponse(apiResponse3);
                }
            }

            @Override // com.narvii.account.AccountResponseListener, com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, AccountResponse accountResponse) throws Exception {
                accountResponse.sid.charAt(0);
                if (Utils.isEqualsNotNull(ApiService.this.account.getUserId(), accountResponse.account.uid)) {
                    Log.i("api", "105 re-login succeed, updating..");
                    LiveRampHelper.setLRUserEmail(accountKeychain.email);
                    super.onFinish(apiRequest, accountResponse);
                } else {
                    Log.w("api", "105 re-login succeed, but not same account, just ignore");
                }
                long j6 = -SystemClock.elapsedRealtime();
                while (true) {
                    WrappedRequest wrappedRequestPoll = ApiService.this.resending105.poll();
                    if (wrappedRequestPoll == null) {
                        break;
                    }
                    wrappedRequestPoll.elapse = j6;
                    wrappedRequestPoll.parseElapse = 0L;
                    wrappedRequestPoll.statusCode = 0;
                    wrappedRequestPoll.error = null;
                    ApiService.this.queue.add(wrappedRequestPoll);
                }
                if (NVApplication.DEBUG) {
                    NVToast.makeText(ApiService.this.context.getContext(), "105 re-login succeed, renew sid..", 0).show();
                }
            }
        });
        wrappedRequest.resend105Response = new ApiResponse();
        return wrappedRequest;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void createResendPublicKeyRequest(final Callback<WrappedRequest> callback) {
        new Callback() { // from class: com.narvii.util.http.a
            @Override // com.narvii.util.Callback
            public final void call(Object obj) {
                this.f2848a.lambda$createResendPublicKeyRequest$0(callback, (ApiRequest) obj);
            }
        };
    }

    private WrappedRequest createWrappedRequest(ApiRequest apiRequest, ApiResponseListener apiResponseListener) {
        return new WrappedRequest(apiRequest, apiResponseListener);
    }

    public static void initUserAgent(NVContext nVContext) {
        if (uaInited) {
            return;
        }
        uaInited = true;
        System.setProperty("http.agent", userAgent(nVContext));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createResendPublicKeyRequest$0(Callback callback, ApiRequest apiRequest) {
        if (apiRequest == null) {
            showPublicKeyFailed();
            this.account.logout(false);
        } else {
            WrappedRequest wrappedRequest = new WrappedRequest(apiRequest, new AccountResponseListener(this.context) { // from class: com.narvii.util.http.ApiService.4
                @Override // com.narvii.util.http.ApiResponseListener
                public void onFail(ApiRequest apiRequest2, int i10, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                    ApiService.this.showPublicKeyFailed();
                    boolean zContains = Arrays.asList(ApiService.PUBLIC_KEY_LOGOUT_CODES).contains(Integer.valueOf(apiResponse.statusCode));
                    if (apiResponse.statusCode == 11004 || zContains) {
                        NVToast.makeText(ApiService.this.context.getContext(), str, 1).show();
                    }
                    if (zContains) {
                        ApiService.this.account.logout(false);
                    }
                    ApiService.this.clearPendingRequests();
                }

                @Override // com.narvii.account.AccountResponseListener, com.narvii.util.http.ApiResponseListener
                public void onFinish(ApiRequest apiRequest2, AccountResponse accountResponse) throws Exception {
                    long j6 = -SystemClock.elapsedRealtime();
                    while (true) {
                        WrappedRequest wrappedRequestPoll = ApiService.this.resendingPublicKey.poll();
                        if (wrappedRequestPoll == null) {
                            break;
                        }
                        wrappedRequestPoll.elapse = j6;
                        wrappedRequestPoll.parseElapse = 0L;
                        wrappedRequestPoll.statusCode = 0;
                        wrappedRequestPoll.error = null;
                        ApiService.this.queue.add(wrappedRequestPoll);
                    }
                    if (NVApplication.DEBUG) {
                        NVToast.makeText(ApiService.this.context.getContext(), "resend public key succeed", 0).show();
                    }
                }
            });
            wrappedRequest.resendPublicKeyResponse = new ApiResponse();
            callback.call(wrappedRequest);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showPublicKeyFailed() {
        Log.i("api", "Resend public key failed");
        if (NVApplication.DEBUG) {
            NVToast.makeText(this.context.getContext(), "Resend public key failed", 0).show();
        }
    }

    public static long timestamp() {
        return syncTime > 0 ? (SystemClock.elapsedRealtime() - syncTime) + syncAdd : System.currentTimeMillis();
    }

    public static String userAgent(NVContext nVContext) {
        if (userAgent == null) {
            StringBuilder sb = new StringBuilder();
            sb.append("Dalvik/");
            sb.append(System.getProperty("java.vm.version"));
            sb.append(" (Linux; U; Android ");
            sb.append(safeHeaderStr(Build.VERSION.RELEASE));
            sb.append("; ");
            sb.append(safeHeaderStr(Build.MODEL));
            sb.append(" Build/");
            sb.append(safeHeaderStr(Build.DISPLAY));
            PackageUtils packageUtils = new PackageUtils(nVContext.getContext());
            sb.append("; ");
            sb.append(nVContext.getContext().getPackageName());
            sb.append(com.google.firebase.sessions.settings.c.FORWARD_SLASH_STRING);
            sb.append(packageUtils.getVersionName());
            sb.append(")");
            userAgent = sb.toString();
        }
        return userAgent;
    }

    public void abortAll(final boolean z6) {
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
                if (!z6 && wrappedRequest.request.tag() == ApiService.ASYNC_CALL_TAG) {
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
        this.resendingPublicKey.clear();
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
        if ("service".equals(matcher.group(2))) {
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

    public void exec(ApiRequest apiRequest, @NonNull ApiResponseListener<? extends ApiResponse> apiResponseListener, RequestQueue requestQueue) {
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

    void syncTime(String str, String str2) {
        if (str == null || str2 == null) {
            return;
        }
        boolean z6 = syncTime == 0;
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        if (jElapsedRealtime > syncTime + 15000) {
            try {
                if (this.config.getServiceHost().equals(Uri.parse(str).getHost())) {
                    syncAdd = DateUtils.parseDate(str2).getTime();
                    syncTime = jElapsedRealtime;
                    if (z6) {
                        Log.i("time sync finish, diff=" + (((jElapsedRealtime - syncTime) + syncAdd) - System.currentTimeMillis()) + "ms");
                    }
                }
            } catch (Exception e) {
                Log.w("time sync fail", e);
            }
        }
    }

    public ApiService(NVContext nVContext) {
        this.context = nVContext;
        initUserAgent(nVContext);
        this.queue = (RequestQueue) nVContext.getService("apiRequestQueue");
        this.config = (ConfigService) nVContext.getService("config");
        this.account = (AccountService) nVContext.getService("account");
        this.auidService = (AuidService) nVContext.getService("auid");
        this.contentLanguageService = (ContentLanguageService) nVContext.getService("content_language");
        this.sessions = new ConcurrentHashMap<>();
        this.resending105 = new LinkedList<>();
        this.resendingPublicKey = new LinkedList<>();
        this.rsv = Integer.parseInt(nVContext.getContext().getString(R.string.rsv));
        this.rsc = nVContext.getContext().getString(R.string.rsc);
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
        this.apiUrlPattern = Pattern.compile("^(https?)://([a-zA-Z\\d-_]*)" + NVApplication.mainHost + "(/.*)$");
        this.lbm = LocalBroadcastManager.b(nVContext.getContext());
    }

    private static String safeHeaderStr(String str) {
        int length;
        if (validHeader(str)) {
            if (str == null) {
                length = 0;
            } else {
                length = str.length();
            }
            int iMin = Math.min(length, 20);
            if (str == null) {
                return null;
            }
            return str.substring(0, iMin);
        }
        return "?";
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
        if (!nVActivity.isHandlingATO() && !nVActivity.isHandlingJoinCommunity()) {
            return true;
        }
        return false;
    }

    public void abort(ApiRequest apiRequest) {
        abort(apiRequest, null);
    }
}
