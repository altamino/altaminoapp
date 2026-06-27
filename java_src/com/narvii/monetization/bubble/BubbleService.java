package com.narvii.monetization.bubble;

import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.support.v4.app.NotificationCompat;
import android.support.v4.content.LocalBroadcastManager;
import android.text.TextUtils;
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
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes3.dex */
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

    public BubbleService(NVContext nVContext) {
        this.context = nVContext;
        this.dir = new File(this.context.getContext().getCacheDir(), "bubble");
        this.dir.mkdir();
        this.discardedDir = new File(this.context.getContext().getFilesDir(), "bubble");
        this.discardedDir.mkdir();
        this.uploadDir = new File(this.dir, "upload");
        this.uploadDir.mkdir();
        this.editBubbleDir = new File(this.dir, "edit");
        this.editBubbleDir.mkdirs();
        this.cacheDir = new File(nVContext.getContext().getCacheDir(), "bubble");
        this.cacheDir.mkdir();
        this.lbm = LocalBroadcastManager.getInstance(this.context.getContext());
        this.curDensity = this.context.getContext().getResources().getDisplayMetrics().densityDpi;
        this.scaleXY = this.curDensity / 320.0f;
    }

    public Drawable getSlotDrawable(String str, int i, String str2) {
        return getBubbleDrawable(str, i, str2, false);
    }

    public Drawable getBackgroundDrawable(String str, int i, boolean z) {
        return getBubbleDrawable(str, i, "background", z);
    }

    public Drawable getBubbleDrawable(String str, int i, String str2, boolean z) throws Throwable {
        BubbleInfo bubbleInfo;
        String path;
        Object objDecodeFile;
        String bubbleQueryKey = getBubbleQueryKey(str, i);
        ConcurrentHashMap<String, ChatBubble> concurrentHashMap = this.bubbles;
        if ((concurrentHashMap != null && concurrentHashMap.get(bubbleQueryKey) != null && this.bubbles.get(bubbleQueryKey).status == 9) || (bubbleInfo = getBubbleInfo(str)) == null || (path = bubbleInfo.getPath(str2)) == null) {
            return null;
        }
        Hashtable<String, Integer> hashtable = this.revs;
        if (hashtable != null && hashtable.contains(str) && this.revs.get(str).intValue() > i) {
            i = this.revs.get(str).intValue();
        }
        boolean zEquals = "background".equals(str2);
        StringBuilder sb = new StringBuilder();
        sb.append("b_");
        sb.append(str);
        sb.append("_r");
        sb.append(i);
        sb.append("_");
        sb.append(path);
        sb.append(zEquals ? z ? "_mine" : "_other" : "");
        String string = sb.toString();
        Object obj = this.rawObjects.get(string);
        if (obj == null) {
            if (getStatus(str, i) != 5) {
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
                    options.inDensity = 320;
                    options.inTargetDensity = this.curDensity;
                    objDecodeFile = BitmapFactory.decodeFile(file.getAbsolutePath(), options);
                }
                if (zEquals && !z && (objDecodeFile instanceof Bitmap)) {
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
                    for (int i2 = 0; i2 < bubbleInfo.zoomPoint.size(); i2++) {
                        int iIntValue = (int) (bubbleInfo.zoomPoint.get(i2).intValue() * this.scaleXY);
                        if (i2 % 2 == 0 && !z) {
                            iIntValue = width - iIntValue;
                        }
                        iArr[i2] = iIntValue;
                    }
                }
                int[] iArr2 = new int[4];
                if (bubbleInfo.contentInsets != null) {
                    for (int i3 = 0; i3 < bubbleInfo.contentInsets.size(); i3++) {
                        int iIntValue2 = bubbleInfo.contentInsets.get(i3).intValue();
                        if (100 < iIntValue2) {
                            iIntValue2 = 30;
                        }
                        iArr2[i3] = (int) (iIntValue2 * this.scaleXY);
                    }
                }
                if (!Utils.isRtl() && !z) {
                    int i4 = iArr2[3];
                    iArr2[3] = iArr2[1];
                    iArr2[1] = i4;
                }
                return NinePathDrawableWrapper.getNinePathDrawable(this.context.getContext().getResources(), bitmap, iArr, iArr2);
            }
            return new BitmapDrawable(this.context.getContext().getResources(), (Bitmap) obj);
        }
        if (obj instanceof NVGifDrawable) {
            return new WrapGifDrawable((NVGifDrawable) obj);
        }
        if (obj instanceof NVWebPDrawable) {
            return new WrapWebPDrawable((NVWebPDrawable) obj);
        }
        return null;
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

    public int getBubbleTextColor(String str, int i) {
        BubbleInfo bubbleInfo = getBubbleInfo(str);
        return bubbleInfo == null ? i : bubbleInfo.getTextColor();
    }

    public int getBubbleLinkColor(String str, int i) {
        BubbleInfo bubbleInfo = getBubbleInfo(str);
        return bubbleInfo == null ? i : bubbleInfo.getLinkColor();
    }

    public ChatBubble getBubble(String str, int i) {
        ConcurrentHashMap<String, ChatBubble> concurrentHashMap = this.bubbles;
        if (concurrentHashMap == null) {
            return null;
        }
        return concurrentHashMap.get(getBubbleQueryKey(str, i));
    }

    public String getBubbleQueryKey(String str, int i) {
        return str + "-" + i;
    }

    public void requireBubble(int i, String str, int i2) throws IOException {
        if (str == null) {
            return;
        }
        final String bubbleQueryKey = getBubbleQueryKey(str, i2);
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
        ApiRequest apiRequestBuild = new ApiRequest.Builder().path("/chat/chat-bubble/" + str).communityId(i).retry(1).build();
        ApiService apiService = (ApiService) this.context.getService("api");
        this.bubbleInfoRequest.put(bubbleQueryKey, apiRequestBuild);
        apiService.exec(apiRequestBuild, new ApiResponseListener<ChatBubbleResponse>(ChatBubbleResponse.class) { // from class: com.narvii.monetization.bubble.BubbleService.1
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, ChatBubbleResponse chatBubbleResponse) throws Exception {
                super.onFinish(apiRequest, (ApiRequest) chatBubbleResponse);
                ChatBubble chatBubble2 = chatBubbleResponse.chatBubble;
                if (chatBubble2 != null) {
                    BubbleService.this.bubbles.put(bubbleQueryKey, chatBubble2);
                    BubbleService.this.bubbleInfoRequest.remove(bubbleQueryKey);
                    BubbleService.this.requireBubble(chatBubble2.id(), chatBubble2.version, chatBubble2.resourceUrl);
                }
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i3, List<NameValuePair> list, String str2, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i3, list, str2, apiResponse, th);
                BubbleService.this.bubbleInfoRequest.remove(bubbleQueryKey);
            }
        });
    }

    public void requireBubble(String str, int i, String str2) throws IOException {
        requireBubble(str, i, str2, false);
    }

    public void requireBubble(String str, int i, String str2, boolean z) throws IOException {
        int status = getStatus(str, i);
        if (status == 5) {
            sendStatusChangeBroadCast(str, i);
            return;
        }
        if (status > 0 && !z) {
            Worker worker = this.runningSessions.get(str);
            if (worker != null) {
                worker.downloadOnly = false;
                return;
            }
            return;
        }
        Log.d(TAG, "require bubble resource: " + str + " ver: " + i + " path: " + str2);
        cancel(str);
        if (extract(str, i, str2)) {
            Log.d(TAG, "extract bubble resource for " + str + " " + str2);
            return;
        }
        if (str2 != null) {
            if (str2.startsWith("https://") || str2.startsWith("http://")) {
                Worker worker2 = new Worker(str, i, str2);
                worker2.downloadOnly = z;
                worker2.setDaemon(true);
                this.runningSessions.put(str, worker2);
                worker2.start();
                sendStatusChangeBroadCast(str, i);
            }
        }
    }

    public float getProgress(String str) {
        int i;
        Worker worker = this.runningSessions.get(str);
        if (worker != null && (i = worker.total) > 0) {
            return (worker.current * 1.0f) / i;
        }
        return 0.0f;
    }

    public int getStatus(String str, int i) {
        int iIntValue;
        File revFile;
        Worker worker = this.runningSessions.get(str);
        if (worker != null) {
            return (i == 0 || worker.rev == i) ? 1 : 0;
        }
        Integer num = this.revs.get(str);
        if (num == null || num.intValue() < i) {
            try {
                revFile = getRevFile(str);
            } catch (Exception unused) {
            }
            iIntValue = revFile.length() > 0 ? Integer.parseInt(Utils.readStringFromFile(revFile)) : 0;
            this.revs.put(str, Integer.valueOf(iIntValue));
        } else {
            iIntValue = num.intValue();
        }
        Log.d(TAG, "cur rev-" + iIntValue + " target-v " + i);
        if (i == 0 && iIntValue != 0) {
            return 5;
        }
        if (i == 0 || iIntValue < i) {
            return this.errors.get(str) == null ? 0 : -1;
        }
        return 5;
    }

    public void cancel(String str) throws IOException {
        this.errors.remove(str);
        Worker workerRemove = this.runningSessions.remove(str);
        if (workerRemove != null) {
            workerRemove.cancel();
            sendStatusChangeBroadCast(str, workerRemove.rev);
        }
    }

    public void cancelAll() throws IOException {
        this.errors.clear();
        if (this.runningSessions.isEmpty()) {
            return;
        }
        Iterator<Worker> it = this.runningSessions.values().iterator();
        while (it.hasNext()) {
            it.next().cancel();
        }
        this.runningSessions.clear();
        this.lbm.sendBroadcast(new Intent(ACTION_STATUS_CHANGED));
    }

    public long size() {
        return Utils.getFolderSize(this.dir);
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

    public void cleanDiscardedBubbleCache() {
        File[] fileArrListFiles = this.discardedDir.listFiles();
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
            this.lbm.sendBroadcast(new Intent(ACTION_STATUS_CHANGED));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x010c  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0112  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean extract(java.lang.String r10, int r11, java.lang.String r12) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 280
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.monetization.bubble.BubbleService.extract(java.lang.String, int, java.lang.String):boolean");
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

    /* JADX INFO: Access modifiers changed from: private */
    public File getDownloadedFile(String str, int i) {
        return new File(this.cacheDir, "b" + str + "-r" + i + ".d");
    }

    private File getDir(String str) {
        return new File(this.dir, "b" + str);
    }

    File getRevFile(String str) {
        return new File(getDir(str), ".rev");
    }

    File getWritingFile(String str, int i) {
        return new File(this.cacheDir, "b" + str + "-r" + i + ".w");
    }

    public ProxyStack getStack() {
        if (this.stack == null) {
            this.stack = new ProxyStack(this.context);
        }
        return this.stack;
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

        Worker(String str, int i, String str2) {
            this.bubblId = str;
            this.rev = i;
            this.url = str2;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void cancel() throws IOException {
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

        /* JADX WARN: Code restructure failed: missing block: B:50:0x0183, code lost:
        
            r19.os.close();
            r19.os = null;
            r8.close();
         */
        /* JADX WARN: Code restructure failed: missing block: B:51:0x018d, code lost:
        
            r19.conn.disconnect();
            r19.conn = null;
            r8 = r19.this$0;
            r9 = r19.bubblId;
            r10 = r19.rev;
         */
        /* JADX WARN: Code restructure failed: missing block: B:52:0x019c, code lost:
        
            if (r19.total > 0) goto L54;
         */
        /* JADX WARN: Code restructure failed: missing block: B:54:0x019f, code lost:
        
            r14 = (r19.current * 1.0f) / r19.total;
         */
        /* JADX WARN: Code restructure failed: missing block: B:55:0x01a9, code lost:
        
            r8.sendProgressChangeBroadCast(r9, r10, r14);
         */
        /* JADX WARN: Code restructure failed: missing block: B:56:0x01b0, code lost:
        
            if (r0.renameTo(r4) != false) goto L59;
         */
        /* JADX WARN: Code restructure failed: missing block: B:57:0x01b2, code lost:
        
            r8 = "Fail to move downloaded file";
            com.narvii.util.Log.w("fail to move downloaded themepack " + r0);
         */
        /* JADX WARN: Code restructure failed: missing block: B:59:0x01c9, code lost:
        
            r8 = null;
         */
        /* JADX WARN: Code restructure failed: missing block: B:60:0x01ca, code lost:
        
            com.narvii.util.Utils.safeClose(r19.os);
            com.narvii.util.Utils.safeClose((java.io.InputStream) null);
            r0 = r19.conn;
         */
        /* JADX WARN: Code restructure failed: missing block: B:61:0x01d4, code lost:
        
            if (r0 == null) goto L100;
         */
        @Override // java.lang.Thread, java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void run() throws java.lang.Throwable {
            /*
                Method dump skipped, instructions count: 719
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.narvii.monetization.bubble.BubbleService.Worker.run():void");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendStatusChangeBroadCast(String str, int i) {
        Intent intent = new Intent(ACTION_STATUS_CHANGED);
        intent.putExtra("bid", str);
        intent.putExtra("rev", i);
        this.lbm.sendBroadcast(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendProgressChangeBroadCast(String str, int i, float f) {
        Intent intent = new Intent(ACTION_PROGRESS_CHANGED);
        intent.putExtra("bid", str);
        intent.putExtra("rev", i);
        intent.putExtra(NotificationCompat.CATEGORY_PROGRESS, f);
        this.lbm.sendBroadcast(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendBubbleReadyBroadcast(String str, int i) {
        Intent intent = new Intent(ACTION_BUBBLE_READY);
        intent.putExtra("bid", str);
        intent.putExtra("rev", i);
        this.lbm.sendBroadcast(intent);
    }

    public void downloadEditChatBubble(ChatBubble chatBubble, BubbleDownloadListener bubbleDownloadListener) throws IOException {
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

    public void cancelEditDownload(ChatBubble chatBubble) throws IOException {
        DownloadEditBubbleTask downloadEditBubbleTask;
        if (chatBubble == null || chatBubble.id() == null || this.downloadBubbleSessions.size() == 0 || (downloadEditBubbleTask = this.downloadBubbleSessions.get(chatBubble.id())) == null) {
            return;
        }
        downloadEditBubbleTask.cancelDownload();
    }

    private class DownloadEditBubbleTask extends BubbleDownloadTask {
        public DownloadEditBubbleTask(NVContext nVContext, ChatBubble chatBubble, BubbleDownloadListener bubbleDownloadListener) {
            super(nVContext, chatBubble, bubbleDownloadListener);
        }

        @Override // com.narvii.monetization.bubble.service.BubbleDownloadTask
        protected boolean check() {
            return this.conn != null && BubbleService.this.downloadBubbleSessions.get(this.downloadingBubble.id()) == this;
        }
    }

    public void removeUploadDir() {
        Utils.deleteDir(this.uploadDir);
    }

    public void cancelUpload(String str) throws IOException {
        UploadTask uploadTaskRemove;
        if (str == null || (uploadTaskRemove = this.uploadSessions.remove(str)) == null) {
            return;
        }
        uploadTaskRemove.cancelUpload();
    }

    public void uploadBubble(int i, BubbleInfo bubbleInfo, BubbleUploadListener bubbleUploadListener) throws IOException {
        cancelUpload(bubbleInfo.getBubbleUploadId());
        UploadTask uploadTask = new UploadTask(this.context, i, bubbleInfo, bubbleUploadListener);
        this.uploadSessions.put(bubbleInfo.getBubbleUploadId(), uploadTask);
        uploadTask.execute(new Void[0]);
    }

    private class UploadTask extends BubbleUploadTask {
        public UploadTask(NVContext nVContext, int i, BubbleInfo bubbleInfo, BubbleUploadListener bubbleUploadListener) {
            super(nVContext, i, bubbleInfo, bubbleUploadListener);
        }

        @Override // com.narvii.monetization.bubble.service.BubbleUploadTask
        protected boolean check() {
            return this.conn != null && BubbleService.this.uploadSessions.get(this.uploadingBubble.getBubbleUploadId()) == this;
        }
    }
}
