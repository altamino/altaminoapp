package com.narvii.monetization.bubble.service;

import android.os.AsyncTask;
import android.text.TextUtils;
import com.narvii.app.NVContext;
import com.narvii.model.BubbleInfo;
import com.narvii.model.BubbleSlot;
import com.narvii.model.SlotPoint;
import com.narvii.model.api.ApiResponse;
import com.narvii.monetization.bubble.BubbleService;
import com.narvii.monetization.bubble.BubbleUploadResponse;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Utils;
import com.narvii.util.ZipUtils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.util.http.ProxyStack;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;

/* loaded from: classes3.dex */
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

    protected boolean check() {
        return true;
    }

    public BubbleUploadTask(NVContext nVContext, int i, BubbleInfo bubbleInfo, BubbleUploadListener bubbleUploadListener) {
        this.context = nVContext;
        this.bubbleService = (BubbleService) nVContext.getService("bubble");
        this.cid = i;
        this.uploadingBubble = bubbleInfo;
        this.uploadListener = bubbleUploadListener;
    }

    public void cancelUpload() throws IOException {
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

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public File doInBackground(Void... voidArr) throws Throwable {
        try {
            removeUploadDir(this.uploadingBubble);
            prepareElementsResources(this.uploadingBubble);
            if (!checkAndConfigElementsResource(this.uploadingBubble)) {
                return null;
            }
            JacksonUtils.DEFAULT_MAPPER.writeValue(getUploadConfigFile(this.uploadingBubble), this.uploadingBubble.m45clone());
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
        this.request = ApiRequest.builder().communityId(this.cid).post().path(str).body(file).build();
        apiService.exec(this.request, new ApiResponseListener<BubbleUploadResponse>(BubbleUploadResponse.class) { // from class: com.narvii.monetization.bubble.service.BubbleUploadTask.1
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, BubbleUploadResponse bubbleUploadResponse) throws Exception {
                super.onFinish(apiRequest, (ApiRequest) bubbleUploadResponse);
                BubbleUploadTask.this.uploadListener.onUploadSuccess(bubbleUploadResponse.chatBubble);
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str2, ApiResponse apiResponse, Throwable th) {
                BubbleUploadTask.this.uploadListener.onUploadFail(str2);
                super.onFail(apiRequest, i, list, str2, apiResponse, th);
            }
        });
    }

    /* JADX WARN: Code restructure failed: missing block: B:70:0x01be, code lost:
    
        r12.os.close();
        r12.os = null;
        r12.ins.close();
        r12.ins = null;
        r12.conn.disconnect();
        r12.conn = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x01d8, code lost:
    
        if (r3.renameTo(r2) != false) goto L108;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x01da, code lost:
    
        com.narvii.util.Log.w("fail to move downloaded bubble Source " + r3);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void prepareElementsResources(com.narvii.model.BubbleInfo r13) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 527
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.monetization.bubble.service.BubbleUploadTask.prepareElementsResources(com.narvii.model.BubbleInfo):void");
    }

    protected ProxyStack getProxyStack() {
        return this.bubbleService.getStack();
    }

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
                File bubbleElementDownloadedFile2 = getBubbleElementDownloadedFile(bubbleInfo, SlotPoint.getSlotKey(bubbleSlot.align, bubbleSlot.x, bubbleSlot.y), bubbleSlot.path);
                if (!bubbleElementDownloadedFile2.exists() || bubbleElementDownloadedFile2.length() <= 0) {
                    return false;
                }
                bubbleSlot.path = bubbleElementDownloadedFile2.getName();
            }
        }
        return true;
    }

    private File getUploadConfigFile(BubbleInfo bubbleInfo) throws IOException {
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

    private File getBubbleElementWritingFile(BubbleInfo bubbleInfo, String str, String str2) {
        String suffix = Utils.getSuffix(str2);
        return new File(getUploadDir(bubbleInfo), str + suffix + ".w");
    }

    private File getBubbleElementDownloadedFile(BubbleInfo bubbleInfo, String str, String str2) {
        String suffix = Utils.getSuffix(str2);
        return new File(getUploadDir(bubbleInfo), str + suffix);
    }

    private File getUploadDir(BubbleInfo bubbleInfo) {
        File file = new File(this.bubbleService.uploadDir.getAbsolutePath() + "/" + getWorkPath(bubbleInfo));
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }

    public void removeUploadDir(BubbleInfo bubbleInfo) {
        Utils.deleteDir(getUploadDir(bubbleInfo));
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

    private boolean isEditingMode(BubbleInfo bubbleInfo) {
        return (bubbleInfo == null || bubbleInfo.id == null) ? false : true;
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
        return TextUtils.isEmpty(str) || str.toLowerCase(Locale.US).startsWith("http://") || str.toLowerCase(Locale.US).startsWith("https://");
    }
}
