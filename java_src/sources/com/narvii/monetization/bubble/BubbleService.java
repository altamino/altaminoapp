package com.narvii.monetization.bubble;

import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.text.TextUtils;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import com.android.volley.NetworkError;
import com.android.volley.NoConnectionError;
import com.android.volley.TimeoutError;
import com.narvii.app.NVContext;
import com.narvii.model.BubbleInfo;
import com.narvii.model.ChatBubble;
import com.narvii.model.api.ApiResponse;
import com.narvii.monetization.bubble.service.BubbleDownloadListener;
import com.narvii.monetization.bubble.service.BubbleDownloadTask;
import com.narvii.monetization.bubble.service.BubbleUploadListener;
import com.narvii.monetization.bubble.service.BubbleUploadTask;
import com.narvii.util.FileUtils;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.Utils;
import com.narvii.util.WeakLruCache;
import com.narvii.util.ZipUtils;
import com.narvii.util.crashlytics.OomHelper;
import com.narvii.util.drawables.gif.NVGifDrawable;
import com.narvii.util.drawables.gif.WrapGifDrawable;
import com.narvii.util.drawables.webp.NVWebPDrawable;
import com.narvii.util.drawables.webp.WrapWebPDrawable;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.util.http.ProxyStack;
import com.narvii.volley.util.HurlConnectionHelper;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.UnknownHostException;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import qa.y;

/* JADX INFO: loaded from: classes2.dex */
public class BubbleService {
    public static final String ACTION_BUBBLE_READY = "com.narvii.action.BUBBLE_PACKAGE_READY";
    public static final String ACTION_PROGRESS_CHANGED = "com.narvii.action.BUBBLE_PACKAGE_PROGRESS";
    public static final String ACTION_STATUS_CHANGED = "com.narvii.action.BUBBLE_PACKAGE_CHANGE";
    public static final String BUBBLE_CONFIG_FILE_NAME = "config.json";
    public static final int BUBBLE_SLOT_SIZE = 44;
    public static final int CONTENT_INSET_COUNT = 4;
    public static final int DEFAULT_DENSITY = 320;
    public static final int DEFAULT_SCALE = 2;
    public static final int STATUS_DOWNLOADING = 1;
    public static final int STATUS_FAIL = -1;
    public static final int STATUS_IDLE = 0;
    public static final int STATUS_READY = 5;
    private static final String TAG = "BubbleService";
    public File cacheDir;
    private NVContext context;
    public int curDensity;
    public File dir;
    public File discardedDir;
    public File editBubbleDir;
    private final LocalBroadcastManager lbm;
    public float scaleXY;
    private ProxyStack stack;
    public File uploadDir;
    private final WeakLruCache<String, Object> rawObjects = new WeakLruCache<>(100);
    private final ConcurrentHashMap<String, Worker> runningSessions = new ConcurrentHashMap<>();
    private final ConcurrentHashMap<String, UploadTask> uploadSessions = new ConcurrentHashMap<>();
    private final ConcurrentHashMap<String, DownloadEditBubbleTask> downloadBubbleSessions = new ConcurrentHashMap<>();
    private final ConcurrentHashMap<String, ChatBubble> bubbles = new ConcurrentHashMap<>();
    private final ConcurrentHashMap<String, ApiRequest> bubbleInfoRequest = new ConcurrentHashMap<>();
    private final ConcurrentHashMap<String, String> errors = new ConcurrentHashMap<>();
    private final Hashtable<String, Integer> revs = new Hashtable<>();
    private final Hashtable<String, BubbleInfo> bubbleInfos = new Hashtable<>();

    private class DownloadEditBubbleTask extends BubbleDownloadTask {
        public DownloadEditBubbleTask(NVContext nVContext, ChatBubble chatBubble, BubbleDownloadListener bubbleDownloadListener) {
            super(nVContext, chatBubble, bubbleDownloadListener);
        }

        @Override // com.narvii.monetization.bubble.service.BubbleDownloadTask
        protected boolean check() {
            return this.conn != null && BubbleService.this.downloadBubbleSessions.get(this.downloadingBubble.id()) == this;
        }
    }

    private class UploadTask extends BubbleUploadTask {
        public UploadTask(NVContext nVContext, int i10, BubbleInfo bubbleInfo, BubbleUploadListener bubbleUploadListener) {
            super(nVContext, i10, bubbleInfo, bubbleUploadListener);
        }

        @Override // com.narvii.monetization.bubble.service.BubbleUploadTask
        protected boolean check() {
            return this.conn != null && BubbleService.this.uploadSessions.get(this.uploadingBubble.getBubbleUploadId()) == this;
        }
    }

    private class Worker extends Thread {
        String bubblId;
        private HttpURLConnection conn;
        int current;
        boolean downloadOnly;
        private OutputStream os;
        int rev;
        int total;
        String url;

        Worker(String str, int i10, String str2) {
            this.bubblId = str;
            this.rev = i10;
            this.url = str2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void cancel() {
            HttpURLConnection httpURLConnection = this.conn;
            if (httpURLConnection != null) {
                try {
                    httpURLConnection.disconnect();
                } catch (Exception unused) {
                }
                this.conn = null;
            }
            OutputStream outputStream = this.os;
            if (outputStream != null) {
                try {
                    outputStream.close();
                } catch (Exception unused2) {
                }
                this.os = null;
            }
        }

        private boolean check() {
            return this.conn != null && BubbleService.this.runningSessions.get(this.bubblId) == this;
        }

        /* JADX WARN: Code duplicated, block: B:104:0x0247  */
        /* JADX WARN: Code duplicated, block: B:109:0x0267  */
        /* JADX WARN: Code duplicated, block: B:112:0x027e A[DONT_INVERT] */
        /* JADX WARN: Code duplicated, block: B:113:0x0280  */
        /* JADX WARN: Code duplicated, block: B:114:0x028c  */
        /* JADX WARN: Code duplicated, block: B:133:0x01de A[EXC_TOP_SPLITTER, PHI: r0 r6
          0x01de: PHI (r0v11 java.net.HttpURLConnection) = (r0v10 java.net.HttpURLConnection), (r0v28 java.net.HttpURLConnection) binds: [B:100:0x0240, B:71:0x01dc] A[DONT_GENERATE, DONT_INLINE]
          0x01de: PHI (r6v14 java.lang.String) = (r6v6 java.lang.String), (r6v22 java.lang.String) binds: [B:100:0x0240, B:71:0x01dc] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:154:? A[RETURN, SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:76:0x01e6  */
        /* JADX WARN: Code duplicated, block: B:77:0x01e7 A[Catch: all -> 0x00ac, IOException -> 0x01ec, TRY_LEAVE, TryCatch #5 {all -> 0x00ac, blocks: (B:3:0x0049, B:9:0x0072, B:11:0x007a, B:13:0x00a1, B:14:0x00a6, B:18:0x00af, B:21:0x00c6, B:24:0x00d2, B:26:0x00e3, B:28:0x00fa, B:29:0x0105, B:61:0x0198, B:65:0x01b1, B:67:0x01ba, B:64:0x01aa, B:74:0x01e2, B:81:0x01ef, B:91:0x0200, B:95:0x0218, B:98:0x0220, B:94:0x0207, B:84:0x01f4, B:87:0x01f9, B:90:0x01fe, B:77:0x01e7), top: B:132:0x0049 }] */
        /* JADX WARN: Code duplicated, block: B:93:0x0206  */
        /* JADX WARN: Code duplicated, block: B:94:0x0207 A[Catch: all -> 0x00ac, TryCatch #5 {all -> 0x00ac, blocks: (B:3:0x0049, B:9:0x0072, B:11:0x007a, B:13:0x00a1, B:14:0x00a6, B:18:0x00af, B:21:0x00c6, B:24:0x00d2, B:26:0x00e3, B:28:0x00fa, B:29:0x0105, B:61:0x0198, B:65:0x01b1, B:67:0x01ba, B:64:0x01aa, B:74:0x01e2, B:81:0x01ef, B:91:0x0200, B:95:0x0218, B:98:0x0220, B:94:0x0207, B:84:0x01f4, B:87:0x01f9, B:90:0x01fe, B:77:0x01e7), top: B:132:0x0049 }] */
        /* JADX WARN: Code duplicated, block: B:97:0x021e  */
        @Override // java.lang.Thread, java.lang.Runnable
        public void run() throws Throwable {
            int responseCode;
            String message;
            HttpURLConnection httpURLConnection;
            HttpURLConnection httpURLConnection2;
            InputStream inputStream = null;
            this.os = null;
            this.conn = null;
            BubbleService.this.cacheDir.mkdir();
            Log.d(BubbleService.TAG, "begin download " + this.bubblId + " version " + this.rev);
            File writingFile = BubbleService.this.getWritingFile(this.bubblId, this.rev);
            File downloadedFile = BubbleService.this.getDownloadedFile(this.bubblId, this.rev);
            int i10 = 0;
            try {
                try {
                    this.conn = BubbleService.this.getStack().createConnection(new URL(this.url));
                    try {
                        if (!check()) {
                            Utils.safeClose(this.os);
                            Utils.safeClose((InputStream) null);
                            HttpURLConnection httpURLConnection3 = this.conn;
                            if (httpURLConnection3 != null) {
                                try {
                                    httpURLConnection3.disconnect();
                                    return;
                                } catch (Exception unused) {
                                    return;
                                }
                            }
                            return;
                        }
                        long length = writingFile.length();
                        if (length > 0) {
                            this.conn.addRequestProperty("Range", "bytes=" + length + "-");
                            if (this.conn.getResponseCode() == 416) {
                                Log.w("gif download range not satisfiable (416)");
                                try {
                                    this.conn.disconnect();
                                } catch (Exception unused2) {
                                }
                                this.conn = BubbleService.this.getStack().createConnection(new URL(this.url));
                            } else {
                                String headerField = this.conn.getHeaderField("Content-Range");
                                if (headerField == null) {
                                    headerField = "";
                                }
                                Matcher matcher = Pattern.compile("bytes (\\d+)-(\\d+)/(\\d+)", 2).matcher(headerField);
                                if (matcher.matches()) {
                                    int i11 = Integer.parseInt(matcher.group(1));
                                    int i12 = Integer.parseInt(matcher.group(3));
                                    if (i11 == length) {
                                        this.total = i12;
                                        this.current = i11;
                                        this.os = new FileOutputStream(writingFile, true);
                                    }
                                }
                            }
                        }
                        InputStream inputStream2 = HurlConnectionHelper.getInputStream(this.conn);
                        try {
                            if (!check()) {
                                Utils.safeClose(this.os);
                                Utils.safeClose(inputStream2);
                                HttpURLConnection httpURLConnection4 = this.conn;
                                if (httpURLConnection4 != null) {
                                    try {
                                        httpURLConnection4.disconnect();
                                        return;
                                    } catch (Exception unused3) {
                                        return;
                                    }
                                }
                                return;
                            }
                            if (this.os == null) {
                                this.total = this.conn.getContentLength();
                                this.current = 0;
                                this.os = new FileOutputStream(writingFile);
                            }
                            byte[] bArr = new byte[4096];
                            long j6 = 0;
                            while (true) {
                                int i13 = inputStream2.read(bArr);
                                float f = 0.0f;
                                if (i13 == -1) {
                                    this.os.close();
                                    this.os = null;
                                    inputStream2.close();
                                    this.conn.disconnect();
                                    this.conn = null;
                                    BubbleService bubbleService = BubbleService.this;
                                    String str = this.bubblId;
                                    int i14 = this.rev;
                                    int i15 = this.total;
                                    if (i15 > 0) {
                                        f = (this.current * 1.0f) / i15;
                                    }
                                    bubbleService.sendProgressChangeBroadCast(str, i14, f);
                                    if (writingFile.renameTo(downloadedFile)) {
                                        message = null;
                                    } else {
                                        message = "Fail to move downloaded file";
                                        Log.w("fail to move downloaded themepack " + writingFile);
                                    }
                                    Utils.safeClose(this.os);
                                    Utils.safeClose((InputStream) null);
                                    httpURLConnection = this.conn;
                                    if (httpURLConnection != null) {
                                        try {
                                            httpURLConnection.disconnect();
                                        } catch (Exception unused4) {
                                        }
                                    }
                                    if (this.downloadOnly && downloadedFile.length() > 0 && BubbleService.this.extract(this.bubblId, this.rev, this.url)) {
                                        BubbleService.this.sendBubbleReadyBroadcast(this.bubblId, this.rev);
                                    } else {
                                        BubbleService.this.sendStatusChangeBroadCast(this.bubblId, this.rev);
                                    }
                                    if (BubbleService.this.runningSessions.remove(this.bubblId, this)) {
                                        if (message == null) {
                                            BubbleService.this.errors.remove(this.bubblId);
                                        } else {
                                            BubbleService.this.errors.put(this.bubblId, message);
                                        }
                                    }
                                }
                                if (this.conn == null) {
                                    Utils.safeClose(this.os);
                                    Utils.safeClose(inputStream2);
                                    HttpURLConnection httpURLConnection5 = this.conn;
                                    if (httpURLConnection5 != null) {
                                        try {
                                            httpURLConnection5.disconnect();
                                            return;
                                        } catch (Exception unused5) {
                                            return;
                                        }
                                    }
                                    return;
                                }
                                long jUptimeMillis = SystemClock.uptimeMillis();
                                this.os.write(bArr, i10, i13);
                                int i16 = this.current + i13;
                                this.current = i16;
                                if (jUptimeMillis > j6 + 20) {
                                    BubbleService bubbleService2 = BubbleService.this;
                                    String str2 = this.bubblId;
                                    int i17 = this.rev;
                                    int i18 = this.total;
                                    if (i18 > 0) {
                                        f = (i16 * 1.0f) / i18;
                                    }
                                    bubbleService2.sendProgressChangeBroadCast(str2, i17, f);
                                    j6 = jUptimeMillis;
                                }
                                i10 = 0;
                            }
                        } catch (Exception e) {
                            e = e;
                            inputStream = inputStream2;
                            httpURLConnection2 = this.conn;
                            if (httpURLConnection2 == null) {
                                responseCode = httpURLConnection2.getResponseCode();
                                if (responseCode == 0) {
                                }
                                if (e.getMessage() == null) {
                                    StringBuilder sb = new StringBuilder();
                                    sb.append(": ");
                                    sb.append(e.getMessage());
                                }
                                message = e.getMessage();
                                if (message == null) {
                                    message = "Fail to download theme pack ";
                                }
                                Log.w("fail to download theme pack " + this.url, e);
                                Utils.safeClose(this.os);
                                Utils.safeClose(inputStream);
                                httpURLConnection = this.conn;
                                if (httpURLConnection != null) {
                                    httpURLConnection.disconnect();
                                }
                            }
                            if (!(e instanceof TimeoutError)) {
                                boolean z6 = e instanceof UnknownHostException;
                            }
                            if (e.getMessage() == null) {
                                StringBuilder sb2 = new StringBuilder();
                                sb2.append(": ");
                                sb2.append(e.getMessage());
                            }
                            message = e.getMessage();
                            if (message == null) {
                                message = "Fail to download theme pack ";
                            }
                            Log.w("fail to download theme pack " + this.url, e);
                            Utils.safeClose(this.os);
                            Utils.safeClose(inputStream);
                            httpURLConnection = this.conn;
                            if (httpURLConnection != null) {
                                httpURLConnection.disconnect();
                            }
                        } catch (Throwable th) {
                            th = th;
                            inputStream = inputStream2;
                            Utils.safeClose(this.os);
                            Utils.safeClose(inputStream);
                            HttpURLConnection httpURLConnection6 = this.conn;
                            if (httpURLConnection6 != null) {
                                try {
                                    httpURLConnection6.disconnect();
                                } catch (Exception unused6) {
                                }
                            }
                            throw th;
                        }
                        httpURLConnection2 = this.conn;
                        if (httpURLConnection2 == null) {
                            responseCode = httpURLConnection2.getResponseCode();
                            if (responseCode == 0) {
                            }
                            if (e.getMessage() == null) {
                                StringBuilder sb3 = new StringBuilder();
                                sb3.append(": ");
                                sb3.append(e.getMessage());
                            }
                            message = e.getMessage();
                            if (message == null) {
                                message = "Fail to download theme pack ";
                            }
                            Log.w("fail to download theme pack " + this.url, e);
                            Utils.safeClose(this.os);
                            Utils.safeClose(inputStream);
                            httpURLConnection = this.conn;
                            if (httpURLConnection != null) {
                                httpURLConnection.disconnect();
                            }
                            if (this.downloadOnly) {
                                BubbleService.this.sendStatusChangeBroadCast(this.bubblId, this.rev);
                            } else {
                                BubbleService.this.sendStatusChangeBroadCast(this.bubblId, this.rev);
                            }
                            if (BubbleService.this.runningSessions.remove(this.bubblId, this)) {
                                if (message == null) {
                                    BubbleService.this.errors.remove(this.bubblId);
                                } else {
                                    BubbleService.this.errors.put(this.bubblId, message);
                                }
                            }
                        }
                    } catch (IOException unused7) {
                        responseCode = 0;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (Exception e2) {
                e = e2;
            }
            if (!(e instanceof TimeoutError) && !(e instanceof NoConnectionError) && !(e instanceof NetworkError)) {
                boolean z10 = e instanceof UnknownHostException;
            }
            if (e.getMessage() == null) {
                StringBuilder sb4 = new StringBuilder();
                sb4.append(": ");
                sb4.append(e.getMessage());
            }
            message = e.getMessage();
            if (message == null) {
                message = "Fail to download theme pack ";
            }
            Log.w("fail to download theme pack " + this.url, e);
            Utils.safeClose(this.os);
            Utils.safeClose(inputStream);
            httpURLConnection = this.conn;
            if (httpURLConnection != null) {
                httpURLConnection.disconnect();
            }
            if (this.downloadOnly) {
                BubbleService.this.sendStatusChangeBroadCast(this.bubblId, this.rev);
            } else {
                BubbleService.this.sendStatusChangeBroadCast(this.bubblId, this.rev);
            }
            if (BubbleService.this.runningSessions.remove(this.bubblId, this)) {
                if (message == null) {
                    BubbleService.this.errors.remove(this.bubblId);
                } else {
                    BubbleService.this.errors.put(this.bubblId, message);
                }
            }
        }
    }

    public Drawable getSlotDrawable(String str, int i10, String str2) {
        return getBubbleDrawable(str, i10, str2, false);
    }

    public void requireBubble(int i10, String str, int i11) {
        if (str == null) {
            return;
        }
        final String bubbleQueryKey = getBubbleQueryKey(str, i11);
        ChatBubble chatBubble = this.bubbles.get(bubbleQueryKey);
        if (chatBubble != null) {
            requireBubble(chatBubble.id(), chatBubble.version, chatBubble.resourceUrl);
            return;
        }
        if (this.bubbleInfoRequest.get(bubbleQueryKey) != null) {
            Log.d(TAG, "request already in queue " + bubbleQueryKey);
            return;
        }
        Log.d(TAG, "query bubble info :" + bubbleQueryKey);
        ApiRequest apiRequestBuild = new ApiRequest.Builder().path("/chat/chat-bubble/" + str).communityId(i10).retry(1).build();
        ApiService apiService = (ApiService) this.context.getService("api");
        this.bubbleInfoRequest.put(bubbleQueryKey, apiRequestBuild);
        apiService.exec(apiRequestBuild, new ApiResponseListener<ChatBubbleResponse>(ChatBubbleResponse.class) { // from class: com.narvii.monetization.bubble.BubbleService.1
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, ChatBubbleResponse chatBubbleResponse) throws Exception {
                super.onFinish(apiRequest, chatBubbleResponse);
                ChatBubble chatBubble2 = chatBubbleResponse.chatBubble;
                if (chatBubble2 != null) {
                    BubbleService.this.bubbles.put(bubbleQueryKey, chatBubble2);
                    BubbleService.this.bubbleInfoRequest.remove(bubbleQueryKey);
                    BubbleService.this.requireBubble(chatBubble2.id(), chatBubble2.version, chatBubble2.resourceUrl);
                }
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i12, List<NameValuePair> list, String str2, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i12, list, str2, apiResponse, th);
                BubbleService.this.bubbleInfoRequest.remove(bubbleQueryKey);
            }
        });
    }

    private File getDir(String str) {
        return new File(this.dir, "b" + str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public File getDownloadedFile(String str, int i10) {
        return new File(this.cacheDir, "b" + str + "-r" + i10 + ".d");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendBubbleReadyBroadcast(String str, int i10) {
        Intent intent = new Intent(ACTION_BUBBLE_READY);
        intent.putExtra("bid", str);
        intent.putExtra("rev", i10);
        this.lbm.d(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendProgressChangeBroadCast(String str, int i10, float f) {
        Intent intent = new Intent(ACTION_PROGRESS_CHANGED);
        intent.putExtra("bid", str);
        intent.putExtra("rev", i10);
        intent.putExtra("progress", f);
        this.lbm.d(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendStatusChangeBroadCast(String str, int i10) {
        Intent intent = new Intent(ACTION_STATUS_CHANGED);
        intent.putExtra("bid", str);
        intent.putExtra("rev", i10);
        this.lbm.d(intent);
    }

    public void cancel(String str) {
        this.errors.remove(str);
        Worker workerRemove = this.runningSessions.remove(str);
        if (workerRemove != null) {
            workerRemove.cancel();
            sendStatusChangeBroadCast(str, workerRemove.rev);
        }
    }

    public void cancelAll() {
        this.errors.clear();
        if (this.runningSessions.isEmpty()) {
            return;
        }
        Iterator<Worker> it = this.runningSessions.values().iterator();
        while (it.hasNext()) {
            it.next().cancel();
        }
        this.runningSessions.clear();
        this.lbm.d(new Intent(ACTION_STATUS_CHANGED));
    }

    public void cancelEditDownload(ChatBubble chatBubble) {
        DownloadEditBubbleTask downloadEditBubbleTask;
        if (chatBubble == null || chatBubble.id() == null || this.downloadBubbleSessions.size() == 0 || (downloadEditBubbleTask = this.downloadBubbleSessions.get(chatBubble.id())) == null) {
            return;
        }
        downloadEditBubbleTask.cancelDownload();
    }

    public void cancelUpload(String str) {
        UploadTask uploadTaskRemove;
        if (str == null || (uploadTaskRemove = this.uploadSessions.remove(str)) == null) {
            return;
        }
        uploadTaskRemove.cancelUpload();
    }

    public void cleanDiscardedBubbleCache() {
        File[] fileArrListFiles = this.discardedDir.listFiles();
        if (fileArrListFiles == null) {
            return;
        }
        for (File file : fileArrListFiles) {
            FileUtils.deleteFile(file);
        }
    }

    public void clear() {
        File[] fileArrListFiles = this.dir.listFiles();
        if (fileArrListFiles == null) {
            return;
        }
        for (File file : fileArrListFiles) {
            FileUtils.deleteFile(file);
        }
    }

    public void clearErrors() {
        if (this.errors.size() > 0) {
            this.errors.clear();
            this.lbm.d(new Intent(ACTION_STATUS_CHANGED));
        }
    }

    public void downloadEditChatBubble(ChatBubble chatBubble, BubbleDownloadListener bubbleDownloadListener) {
        if (chatBubble == null) {
            if (bubbleDownloadListener != null) {
                bubbleDownloadListener.onDownloadFail(null);
            }
        } else {
            cancelEditDownload(chatBubble);
            DownloadEditBubbleTask downloadEditBubbleTask = new DownloadEditBubbleTask(this.context, chatBubble, bubbleDownloadListener);
            this.downloadBubbleSessions.put(chatBubble.id(), downloadEditBubbleTask);
            downloadEditBubbleTask.execute(new Void[0]);
        }
    }

    public Drawable getBackgroundDrawable(String str, int i10, boolean z6) {
        return getBubbleDrawable(str, i10, "background", z6);
    }

    public ChatBubble getBubble(String str, int i10) {
        ConcurrentHashMap<String, ChatBubble> concurrentHashMap = this.bubbles;
        if (concurrentHashMap == null) {
            return null;
        }
        return concurrentHashMap.get(getBubbleQueryKey(str, i10));
    }

    public String getBubbleQueryKey(String str, int i10) {
        return str + "-" + i10;
    }

    public Bitmap getFlipBitmap(Bitmap bitmap) {
        Canvas canvas = new Canvas();
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Bitmap.Config.ARGB_8888);
        canvas.setBitmap(bitmapCreateBitmap);
        Matrix matrix = new Matrix();
        matrix.postScale(-1.0f, 1.0f);
        matrix.postTranslate(bitmap.getWidth(), 0.0f);
        canvas.drawBitmap(bitmap, matrix, null);
        return bitmapCreateBitmap;
    }

    public float getProgress(String str) {
        int i10;
        Worker worker = this.runningSessions.get(str);
        if (worker != null && (i10 = worker.total) > 0) {
            return (worker.current * 1.0f) / i10;
        }
        return 0.0f;
    }

    File getRevFile(String str) {
        return new File(getDir(str), ".rev");
    }

    public ProxyStack getStack() {
        if (this.stack == null) {
            this.stack = new ProxyStack(this.context);
        }
        return this.stack;
    }

    public int getStatus(String str, int i10) {
        int iIntValue;
        Worker worker = this.runningSessions.get(str);
        if (worker != null) {
            return (i10 == 0 || worker.rev == i10) ? 1 : 0;
        }
        Integer num = this.revs.get(str);
        if (num == null || num.intValue() < i10) {
            try {
                File revFile = getRevFile(str);
                iIntValue = revFile.length() > 0 ? Integer.parseInt(Utils.readStringFromFile(revFile)) : 0;
            } catch (Exception unused) {
            }
            this.revs.put(str, Integer.valueOf(iIntValue));
        } else {
            iIntValue = num.intValue();
        }
        Log.d(TAG, "cur rev-" + iIntValue + " target-v " + i10);
        if (i10 == 0 && iIntValue != 0) {
            return 5;
        }
        if (i10 == 0 || iIntValue < i10) {
            return this.errors.get(str) == null ? 0 : -1;
        }
        return 5;
    }

    File getWritingFile(String str, int i10) {
        return new File(this.cacheDir, "b" + str + "-r" + i10 + ".w");
    }

    public void removeUploadDir() {
        Utils.deleteDir(this.uploadDir);
    }

    public long size() {
        return Utils.getFolderSize(this.dir);
    }

    public BubbleService(NVContext nVContext) {
        this.context = nVContext;
        File file = new File(this.context.getContext().getCacheDir(), "bubble");
        this.dir = file;
        file.mkdir();
        File file2 = new File(this.context.getContext().getFilesDir(), "bubble");
        this.discardedDir = file2;
        file2.mkdir();
        File file3 = new File(this.dir, "upload");
        this.uploadDir = file3;
        file3.mkdir();
        File file4 = new File(this.dir, "edit");
        this.editBubbleDir = file4;
        file4.mkdirs();
        File file5 = new File(nVContext.getContext().getCacheDir(), "bubble");
        this.cacheDir = file5;
        file5.mkdir();
        this.lbm = LocalBroadcastManager.b(this.context.getContext());
        int i10 = this.context.getContext().getResources().getDisplayMetrics().densityDpi;
        this.curDensity = i10;
        this.scaleXY = i10 / 320.0f;
    }

    /* JADX WARN: Code duplicated, block: B:45:0x010f  */
    /* JADX WARN: Code duplicated, block: B:46:0x0115  */
    public boolean extract(String str, int i10, String str2) throws Throwable {
        File downloadedFile = getDownloadedFile(str, i10);
        FileInputStream fileInputStream = null;
        String message = null;
        String str3 = null;
        fileInputStream = null;
        try {
            if (downloadedFile.length() > 0) {
                FileInputStream fileInputStream2 = new FileInputStream(downloadedFile);
                try {
                    File dir = getDir(str);
                    File file = new File(dir.getParentFile(), dir.getName() + ".tmp");
                    FileUtils.deleteFile(file);
                    if (ZipUtils.extract(fileInputStream2, file)) {
                        FileUtils.deleteFile(dir);
                        this.revs.remove(str);
                        this.bubbleInfos.remove(str);
                        if (((BubbleInfo) JacksonUtils.DEFAULT_MAPPER.readValue(new File(file, BUBBLE_CONFIG_FILE_NAME), BubbleInfo.class)).version != i10) {
                            str3 = "version not match need re-Download";
                            Log.d(TAG, "version not match need re-Download");
                        }
                        if (file.renameTo(dir)) {
                            Utils.writeToFile(getRevFile(str), String.valueOf(i10));
                            sendStatusChangeBroadCast(str, i10);
                            Utils.safeClose(fileInputStream2);
                            downloadedFile.delete();
                            if (str3 == null) {
                                this.errors.remove(str);
                                return true;
                            }
                            this.errors.put(str, str3);
                            return true;
                        }
                        FileUtils.deleteFile(file);
                        FileUtils.deleteFile(dir);
                        Log.d(TAG, "unable to move bubble file");
                        sendStatusChangeBroadCast(str, i10);
                        Utils.safeClose(fileInputStream2);
                        downloadedFile.delete();
                        this.errors.put(str, "unable to move bubble file");
                        return false;
                    }
                    FileUtils.deleteFile(file);
                    Log.d(TAG, "unable to unzip file");
                    Utils.safeClose(fileInputStream2);
                    downloadedFile.delete();
                    this.errors.put(str, "unable to unzip file");
                    return false;
                } catch (Exception e) {
                    e = e;
                    fileInputStream = fileInputStream2;
                } catch (Throwable th) {
                    th = th;
                    message = null;
                    fileInputStream = fileInputStream2;
                    Utils.safeClose(fileInputStream);
                    downloadedFile.delete();
                    if (message == null) {
                        this.errors.remove(str);
                    } else {
                        this.errors.put(str, message);
                    }
                    throw th;
                }
            } else {
                Utils.safeClose((InputStream) null);
                downloadedFile.delete();
                this.errors.remove(str);
                return false;
            }
        } catch (Exception e2) {
            e = e2;
        } catch (Throwable th2) {
            th = th2;
            message = null;
        }
        try {
            e.printStackTrace();
            message = e.getMessage();
            Log.e(TAG, e.getMessage());
            Utils.safeClose(fileInputStream);
            downloadedFile.delete();
            if (message == null) {
                this.errors.remove(str);
            } else {
                this.errors.put(str, message);
            }
            return false;
        } catch (Throwable th3) {
            th = th3;
            Utils.safeClose(fileInputStream);
            downloadedFile.delete();
            if (message == null) {
                this.errors.remove(str);
            } else {
                this.errors.put(str, message);
            }
            throw th;
        }
    }

    public Drawable getBubbleDrawable(String str, int i10, String str2, boolean z6) throws Throwable {
        BubbleInfo bubbleInfo;
        String path;
        String str3;
        Object objDecodeFile;
        String bubbleQueryKey = getBubbleQueryKey(str, i10);
        ConcurrentHashMap<String, ChatBubble> concurrentHashMap = this.bubbles;
        if ((concurrentHashMap != null && concurrentHashMap.get(bubbleQueryKey) != null && this.bubbles.get(bubbleQueryKey).status == 9) || (bubbleInfo = getBubbleInfo(str)) == null || (path = bubbleInfo.getPath(str2)) == null) {
            return null;
        }
        Hashtable<String, Integer> hashtable = this.revs;
        if (hashtable != null && hashtable.contains(str) && this.revs.get(str).intValue() > i10) {
            i10 = this.revs.get(str).intValue();
        }
        boolean zEquals = "background".equals(str2);
        StringBuilder sb = new StringBuilder();
        sb.append("b_");
        sb.append(str);
        sb.append("_r");
        sb.append(i10);
        sb.append("_");
        sb.append(path);
        if (zEquals) {
            if (z6) {
                str3 = "_mine";
            } else {
                str3 = "_other";
            }
        } else {
            str3 = "";
        }
        sb.append(str3);
        String string = sb.toString();
        Object obj = this.rawObjects.get(string);
        if (obj == null) {
            if (getStatus(str, i10) != 5) {
                return null;
            }
            File file = new File(getDir(str), path);
            try {
                if (Utils.isGifInData(file.getPath())) {
                    objDecodeFile = new NVGifDrawable(file);
                } else if (Utils.isWebPInData(file.getPath())) {
                    objDecodeFile = NVWebPDrawable.getFromFile(file);
                } else {
                    BitmapFactory.Options options = new BitmapFactory.Options();
                    options.inDensity = DEFAULT_DENSITY;
                    options.inTargetDensity = this.curDensity;
                    objDecodeFile = BitmapFactory.decodeFile(file.getAbsolutePath(), options);
                }
                if (zEquals && !z6 && (objDecodeFile instanceof Bitmap)) {
                    objDecodeFile = getFlipBitmap((Bitmap) objDecodeFile);
                }
                obj = objDecodeFile;
                if (obj != null) {
                    this.rawObjects.put(string, obj);
                }
            } catch (Exception e) {
                Log.e("fail to read bubble resource " + string, e);
                return null;
            } catch (OutOfMemoryError e2) {
                Log.w("OutOfMemory when read theme resource " + string);
                OomHelper.test(e2);
                return null;
            }
        }
        if (obj instanceof Bitmap) {
            if ("background".equals(str2)) {
                Bitmap bitmap = (Bitmap) obj;
                int width = bitmap.getWidth();
                int[] iArr = new int[0];
                List<Integer> list = bubbleInfo.zoomPoint;
                if (list != null) {
                    iArr = new int[list.size()];
                    for (int i11 = 0; i11 < bubbleInfo.zoomPoint.size(); i11++) {
                        int iIntValue = (int) (bubbleInfo.zoomPoint.get(i11).intValue() * this.scaleXY);
                        if (i11 % 2 == 0 && !z6) {
                            iIntValue = width - iIntValue;
                        }
                        iArr[i11] = iIntValue;
                    }
                }
                int[] iArr2 = new int[4];
                if (bubbleInfo.contentInsets != null) {
                    for (int i12 = 0; i12 < bubbleInfo.contentInsets.size() && i12 < 4; i12++) {
                        iArr2[i12] = (int) (bubbleInfo.contentInsets.get(i12).intValue() * this.scaleXY);
                    }
                }
                if (!Utils.isRtl() && !z6) {
                    int i13 = iArr2[3];
                    iArr2[3] = iArr2[1];
                    iArr2[1] = i13;
                }
                return NinePathDrawableWrapper.getNinePathDrawable(this.context.getContext().getResources(), bitmap, iArr, iArr2);
            }
            return new BitmapDrawable(this.context.getContext().getResources(), (Bitmap) obj);
        }
        if (obj instanceof NVGifDrawable) {
            return new WrapGifDrawable((NVGifDrawable) obj);
        }
        if (!(obj instanceof NVWebPDrawable)) {
            return null;
        }
        return new WrapWebPDrawable((NVWebPDrawable) obj);
    }

    public BubbleInfo getBubbleInfo(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        BubbleInfo bubbleInfo = this.bubbleInfos.get(str);
        if (bubbleInfo != null) {
            return bubbleInfo;
        }
        try {
            File file = new File(getDir(str), BUBBLE_CONFIG_FILE_NAME);
            if (file.length() > 0) {
                bubbleInfo = (BubbleInfo) JacksonUtils.DEFAULT_MAPPER.readValue(file, BubbleInfo.class);
            }
        } catch (Exception e) {
            Log.e("fail to open bubble package", e);
        }
        if (bubbleInfo != null) {
            this.bubbleInfos.put(str, bubbleInfo);
        }
        return bubbleInfo;
    }

    public int getBubbleLinkColor(String str, int i10) {
        BubbleInfo bubbleInfo = getBubbleInfo(str);
        if (bubbleInfo == null) {
            return i10;
        }
        return bubbleInfo.getLinkColor();
    }

    public int getBubbleTextColor(String str, int i10) {
        BubbleInfo bubbleInfo = getBubbleInfo(str);
        if (bubbleInfo == null) {
            return i10;
        }
        return bubbleInfo.getTextColor();
    }

    public void uploadBubble(int i10, BubbleInfo bubbleInfo, BubbleUploadListener bubbleUploadListener) {
        cancelUpload(bubbleInfo.getBubbleUploadId());
        UploadTask uploadTask = new UploadTask(this.context, i10, bubbleInfo, bubbleUploadListener);
        this.uploadSessions.put(bubbleInfo.getBubbleUploadId(), uploadTask);
        uploadTask.execute(new Void[0]);
    }

    public void requireBubble(String str, int i10, String str2) {
        requireBubble(str, i10, str2, false);
    }

    public void requireBubble(String str, int i10, String str2, boolean z6) {
        int status = getStatus(str, i10);
        if (status == 5) {
            sendStatusChangeBroadCast(str, i10);
            return;
        }
        if (status > 0 && !z6) {
            Worker worker = this.runningSessions.get(str);
            if (worker != null) {
                worker.downloadOnly = false;
                return;
            }
            return;
        }
        String str3 = TAG;
        Log.d(str3, "require bubble resource: " + str + " ver: " + i10 + " path: " + str2);
        cancel(str);
        if (extract(str, i10, str2)) {
            Log.d(str3, "extract bubble resource for " + str + " " + str2);
            return;
        }
        if (str2 != null) {
            if (str2.startsWith(y.HTTPS) || str2.startsWith(y.HTTP)) {
                Worker worker2 = new Worker(str, i10, str2);
                worker2.downloadOnly = z6;
                worker2.setDaemon(true);
                this.runningSessions.put(str, worker2);
                worker2.start();
                sendStatusChangeBroadCast(str, i10);
            }
        }
    }
}
