package com.narvii.monetization.bubble.service;

import android.os.AsyncTask;
import android.os.SystemClock;
import android.text.TextUtils;
import com.google.firebase.sessions.settings.c;
import com.narvii.app.NVContext;
import com.narvii.model.BubbleInfo;
import com.narvii.model.BubbleSlot;
import com.narvii.model.SlotPoint;
import com.narvii.model.api.ApiResponse;
import com.narvii.monetization.bubble.BubbleService;
import com.narvii.monetization.bubble.BubbleUploadResponse;
import com.narvii.util.FileUtils;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.Utils;
import com.narvii.util.ZipUtils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.util.http.ProxyStack;
import com.narvii.volley.util.HurlConnectionHelper;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URI;
import java.net.URL;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import qa.y;

/* JADX INFO: loaded from: classes7.dex */
public class BubbleUploadTask extends AsyncTask<Void, Void, File> {
    BubbleService bubbleService;
    protected int cid;
    protected HttpURLConnection conn;
    private NVContext context;
    protected ApiRequest request;
    protected BubbleUploadListener uploadListener;
    protected BubbleInfo uploadingBubble;
    protected OutputStream os = null;
    protected InputStream ins = null;
    HashMap<String, String> localResources = new HashMap<>();
    HashMap<String, String> remoteResources = new HashMap<>();

    private boolean checkAndConfigElementsResource(BubbleInfo bubbleInfo) {
        if (bubbleInfo == null) {
            return false;
        }
        File bubbleElementDownloadedFile = getBubbleElementDownloadedFile(bubbleInfo, "background", bubbleInfo.backgroundPath);
        if (!bubbleElementDownloadedFile.exists() || bubbleElementDownloadedFile.length() <= 0) {
            return false;
        }
        bubbleInfo.backgroundPath = bubbleElementDownloadedFile.getName();
        List<BubbleSlot> list = bubbleInfo.slots;
        if (list == null) {
            return true;
        }
        for (BubbleSlot bubbleSlot : list) {
            if (bubbleSlot != null && bubbleSlot.path != null) {
                File bubbleElementDownloadedFile2 = getBubbleElementDownloadedFile(bubbleInfo, SlotPoint.getSlotKey(bubbleSlot.align, bubbleSlot.f2486x, bubbleSlot.f2487y), bubbleSlot.path);
                if (!bubbleElementDownloadedFile2.exists() || bubbleElementDownloadedFile2.length() <= 0) {
                    return false;
                }
                bubbleSlot.path = bubbleElementDownloadedFile2.getName();
            }
        }
        return true;
    }

    public void cancelUpload() {
        cancel(true);
        if (this.request != null) {
            ((ApiService) this.context.getService("api")).abort(this.request);
            this.request = null;
        }
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
            Utils.safeClose(outputStream);
            this.os = null;
        }
        InputStream inputStream = this.ins;
        if (inputStream != null) {
            Utils.safeClose(inputStream);
            this.ins = null;
        }
    }

    protected boolean check() {
        return true;
    }

    private File getUploadConfigFile(BubbleInfo bubbleInfo) {
        File file = new File(getUploadDir(bubbleInfo), BubbleService.BUBBLE_CONFIG_FILE_NAME);
        if (!file.exists()) {
            try {
                file.createNewFile();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        return file;
    }

    private File getUploadDir(BubbleInfo bubbleInfo) {
        File file = new File(this.bubbleService.uploadDir.getAbsolutePath() + c.FORWARD_SLASH_STRING + getWorkPath(bubbleInfo));
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }

    private boolean isEditingMode(BubbleInfo bubbleInfo) {
        return (bubbleInfo == null || bubbleInfo.id == null) ? false : true;
    }

    private void prepareElementsResources(BubbleInfo bubbleInfo) throws Throwable {
        String str = bubbleInfo.backgroundPath;
        if (isRemotePath(str)) {
            this.remoteResources.put("background", bubbleInfo.backgroundPath);
        } else if (isAssetPath(str) || isLocalPath(str)) {
            this.localResources.put("background", bubbleInfo.backgroundPath);
        }
        List<BubbleSlot> list = bubbleInfo.slots;
        if (list != null) {
            for (BubbleSlot bubbleSlot : list) {
                String slotKey = SlotPoint.getSlotKey(bubbleSlot.align, bubbleSlot.f2486x, bubbleSlot.f2487y);
                if (isRemotePath(bubbleSlot.path)) {
                    this.remoteResources.put(slotKey, bubbleSlot.path);
                } else {
                    this.localResources.put(slotKey, bubbleSlot.path);
                }
            }
        }
        for (Map.Entry<String, String> entry : this.localResources.entrySet()) {
            String key = entry.getKey();
            String value = entry.getValue();
            File bubbleElementDownloadedFile = getBubbleElementDownloadedFile(bubbleInfo, key, value);
            if (isAssetPath(value)) {
                FileUtils.moveFromAssetsToFile(this.context.getContext(), value, bubbleElementDownloadedFile);
            } else {
                try {
                    Utils.copyFile(new File(URI.create(value)), bubbleElementDownloadedFile);
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
        try {
            try {
                for (Map.Entry<String, String> entry2 : this.remoteResources.entrySet()) {
                    String key2 = entry2.getKey();
                    String value2 = entry2.getValue();
                    File bubbleElementWritingFile = getBubbleElementWritingFile(bubbleInfo, key2, value2);
                    File bubbleElementDownloadedFile2 = getBubbleElementDownloadedFile(bubbleInfo, key2, value2);
                    URL url = new URL(value2);
                    this.conn = getProxyStack().createConnection(url);
                    if (check()) {
                        long length = bubbleElementWritingFile.length();
                        long j6 = 0;
                        if (length > 0) {
                            this.conn.addRequestProperty("Range", "bytes=" + length + "-");
                            if (this.conn.getResponseCode() == 416) {
                                Log.w("gif download range not satisfiable (416)");
                                try {
                                    this.conn.disconnect();
                                } catch (Exception unused) {
                                }
                                this.conn = getProxyStack().createConnection(url);
                            } else {
                                String headerField = this.conn.getHeaderField("Content-Range");
                                if (headerField == null) {
                                    headerField = "";
                                }
                                Matcher matcher = Pattern.compile("bytes (\\d+)-(\\d+)/(\\d+)", 2).matcher(headerField);
                                if (matcher.matches()) {
                                    int i10 = Integer.parseInt(matcher.group(1));
                                    Integer.parseInt(matcher.group(3));
                                    if (i10 == length) {
                                        this.os = new FileOutputStream(bubbleElementWritingFile, true);
                                    }
                                }
                            }
                        }
                        this.ins = HurlConnectionHelper.getInputStream(this.conn);
                        if (check()) {
                            if (this.os == null) {
                                this.conn.getContentLength();
                                this.os = new FileOutputStream(bubbleElementWritingFile);
                            }
                            byte[] bArr = new byte[4096];
                            while (true) {
                                int i11 = this.ins.read(bArr);
                                if (i11 != -1) {
                                    if (this.conn != null) {
                                        long jUptimeMillis = SystemClock.uptimeMillis();
                                        this.os.write(bArr, 0, i11);
                                        if (jUptimeMillis > 20 + j6) {
                                            j6 = jUptimeMillis;
                                        }
                                    }
                                }
                            }
                            this.os.close();
                            this.os = null;
                            this.ins.close();
                            this.ins = null;
                            this.conn.disconnect();
                            this.conn = null;
                            if (!bubbleElementWritingFile.renameTo(bubbleElementDownloadedFile2)) {
                                Log.w("fail to move downloaded bubble Source " + bubbleElementWritingFile);
                            }
                        }
                    } else {
                        BubbleUploadListener bubbleUploadListener = this.uploadListener;
                        if (bubbleUploadListener != null) {
                            bubbleUploadListener.onUploadFail("something wrong happened");
                        }
                    }
                    return;
                }
            } catch (Exception unused2) {
                Log.e("fail to to download remote bubble source");
            }
        } finally {
            Utils.safeClose(this.os);
            Utils.safeClose(this.ins);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public File doInBackground(Void... voidArr) throws Throwable {
        try {
            removeUploadDir(this.uploadingBubble);
            prepareElementsResources(this.uploadingBubble);
            if (!checkAndConfigElementsResource(this.uploadingBubble)) {
                return null;
            }
            JacksonUtils.DEFAULT_MAPPER.writeValue(getUploadConfigFile(this.uploadingBubble), this.uploadingBubble.m1621clone());
            File file = new File(getUploadDir(this.uploadingBubble).getParentFile(), "publish.zip");
            if (!file.exists()) {
                file.createNewFile();
            }
            ZipUtils.compressedFile(getUploadDir(this.uploadingBubble), file);
            return file;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    protected ProxyStack getProxyStack() {
        return this.bubbleService.getStack();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public void onPostExecute(File file) {
        String str;
        if (file == null) {
            this.uploadListener.onZipFail();
            return;
        }
        ApiService apiService = (ApiService) this.context.getService("api");
        if (isEditingMode(this.uploadingBubble)) {
            str = "/chat/chat-bubble/" + this.uploadingBubble.id;
        } else {
            str = "/chat/chat-bubble/templates/" + this.uploadingBubble.templateId + "/generate";
        }
        ApiRequest apiRequestBuild = ApiRequest.builder().communityId(this.cid).post().path(str).body(file).build();
        this.request = apiRequestBuild;
        apiService.exec(apiRequestBuild, new ApiResponseListener<BubbleUploadResponse>(BubbleUploadResponse.class) { // from class: com.narvii.monetization.bubble.service.BubbleUploadTask.1
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i10, List<NameValuePair> list, String str2, ApiResponse apiResponse, Throwable th) {
                BubbleUploadTask.this.uploadListener.onUploadFail(str2);
                super.onFail(apiRequest, i10, list, str2, apiResponse, th);
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, BubbleUploadResponse bubbleUploadResponse) throws Exception {
                super.onFinish(apiRequest, bubbleUploadResponse);
                BubbleUploadTask.this.uploadListener.onUploadSuccess(bubbleUploadResponse.chatBubble);
            }
        });
    }

    public BubbleUploadTask(NVContext nVContext, int i10, BubbleInfo bubbleInfo, BubbleUploadListener bubbleUploadListener) {
        this.context = nVContext;
        this.bubbleService = (BubbleService) nVContext.getService("bubble");
        this.cid = i10;
        this.uploadingBubble = bubbleInfo;
        this.uploadListener = bubbleUploadListener;
    }

    private File getBubbleElementDownloadedFile(BubbleInfo bubbleInfo, String str, String str2) {
        String suffix = Utils.getSuffix(str2);
        return new File(getUploadDir(bubbleInfo), str + suffix);
    }

    private File getBubbleElementWritingFile(BubbleInfo bubbleInfo, String str, String str2) {
        String suffix = Utils.getSuffix(str2);
        return new File(getUploadDir(bubbleInfo), str + suffix + ".w");
    }

    private String getWorkPath(BubbleInfo bubbleInfo) {
        StringBuilder sb;
        String str;
        if (isEditingMode(bubbleInfo)) {
            sb = new StringBuilder();
            sb.append("e_");
            str = bubbleInfo.id;
        } else {
            sb = new StringBuilder();
            sb.append("t_");
            str = bubbleInfo.templateId;
        }
        sb.append(str);
        return sb.toString();
    }

    private boolean isAssetPath(String str) {
        if (TextUtils.isEmpty(str)) {
            return true;
        }
        return str.toLowerCase(Locale.US).startsWith("assets://");
    }

    private boolean isLocalPath(String str) {
        if (TextUtils.isEmpty(str)) {
            return true;
        }
        return str.toLowerCase(Locale.US).startsWith("file://");
    }

    private boolean isRemotePath(String str) {
        if (TextUtils.isEmpty(str)) {
            return true;
        }
        Locale locale = Locale.US;
        if (str.toLowerCase(locale).startsWith(y.HTTP) || str.toLowerCase(locale).startsWith(y.HTTPS)) {
            return true;
        }
        return false;
    }

    public void removeUploadDir(BubbleInfo bubbleInfo) {
        Utils.deleteDir(getUploadDir(bubbleInfo));
    }
}
