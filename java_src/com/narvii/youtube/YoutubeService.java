package com.narvii.youtube;

import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.support.v4.util.ArrayMap;
import android.text.TextUtils;
import com.narvii.account.notice.AccountNotice;
import com.narvii.app.NVContext;
import com.narvii.lib.R;
import com.narvii.model.ExternalSourceOrigin;
import com.narvii.util.DateUtils;
import com.narvii.util.Log;
import com.narvii.util.Utils;
import com.narvii.util.logging.LoggingService;
import com.narvii.video.MediaPreloadService;
import dalvik.system.DexClassLoader;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ThreadPoolExecutor;

/* loaded from: classes3.dex */
public class YoutubeService {
    static final int VER = 11;
    NVContext context;
    File dexDir;
    File dexFile;
    Extractor extractor;
    InitTask initTask;
    boolean inited;
    File optDir;
    int preloadIndex;
    long stbt;
    final Handler handler = new Handler(Looper.getMainLooper());
    final ConcurrentHashMap<String, ExtractWorker> runnings = new ConcurrentHashMap<>();
    final ConcurrentHashMap<String, ExtractResult> cache = new ConcurrentHashMap<>();
    final ThreadPoolExecutor executor = Utils.createPriorityThreadPoolExecutor(3, "youtube-dl");

    public YoutubeService(NVContext nVContext) {
        this.context = nVContext;
        this.dexDir = new File(this.context.getContext().getFilesDir(), "dex");
        this.dexFile = new File(this.dexDir, "yt11.apk");
        this.optDir = new File(this.dexDir, "opt");
        try {
            this.stbt = Long.parseLong(nVContext.getContext().getString(R.string.stbt));
        } catch (Exception unused) {
        }
    }

    public void preload(final List<String> list, final ArrayMap<String, YoutubeLoggingStub> arrayMap) {
        Utils.postDelayed(new Runnable() { // from class: com.narvii.youtube.YoutubeService.1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.lang.Runnable
            public void run() {
                int size = list.size();
                for (int i = 0; i < size; i++) {
                    String str = (String) list.get(i);
                    int i2 = YoutubeService.this.preloadIndex + (size - i);
                    ArrayMap arrayMap2 = arrayMap;
                    YoutubeService.this.exec(str, arrayMap2 == null ? null : (YoutubeLoggingStub) arrayMap2.get(str), null, i2);
                }
                YoutubeService.this.preloadIndex += size;
            }
        }, 100L);
    }

    public void exec(String str, YoutubeLoggingStub youtubeLoggingStub, YoutubeVideoCallback youtubeVideoCallback) {
        exec(str, youtubeLoggingStub, youtubeVideoCallback, 0);
    }

    public void exec(final String str, YoutubeLoggingStub youtubeLoggingStub, final YoutubeVideoCallback youtubeVideoCallback, int i) {
        if (TextUtils.isEmpty(str)) {
            if (youtubeVideoCallback != null) {
                Utils.post(new Runnable() { // from class: com.narvii.youtube.YoutubeService.2
                    @Override // java.lang.Runnable
                    public void run() {
                        youtubeVideoCallback.onFail(str, 9, "videoId is null");
                    }
                });
                return;
            }
            return;
        }
        if (this.stbt > 1563086000000L && System.currentTimeMillis() < this.stbt + DateUtils.ONE_DAY) {
            if (youtubeVideoCallback != null) {
                Utils.post(new Runnable() { // from class: com.narvii.youtube.YoutubeService.3
                    @Override // java.lang.Runnable
                    public void run() {
                        youtubeVideoCallback.onFail(str, 8, "stbt");
                    }
                });
                return;
            }
            return;
        }
        if (!this.inited) {
            if (this.initTask == null) {
                this.initTask = new InitTask();
                this.initTask.start();
            }
            this.initTask.add(str, youtubeLoggingStub, youtubeVideoCallback, i);
            return;
        }
        if (this.extractor != null) {
            ExtractResult extractResult = this.cache.get(str);
            if (extractResult != null && extractResult.isValid()) {
                extractResult.callback(str, youtubeVideoCallback);
                if (i > 0) {
                    onPreloadFinished(str, extractResult.result, true);
                    return;
                }
                return;
            }
            ExtractWorker extractWorker = this.runnings.get(str);
            if (extractWorker != null && (extractWorker.callbacks != null || extractWorker.preloadOrder > 0)) {
                if (youtubeVideoCallback != null && !extractWorker.callbacks.contains(youtubeVideoCallback)) {
                    extractWorker.callbacks.add(youtubeVideoCallback);
                }
                extractWorker.preloadOrder = Math.max(extractWorker.preloadOrder, i);
                return;
            }
            ExtractWorker extractWorker2 = new ExtractWorker(str, youtubeLoggingStub);
            if (youtubeVideoCallback != null) {
                extractWorker2.callbacks.add(youtubeVideoCallback);
            }
            extractWorker2.preloadOrder = i;
            this.runnings.put(str, extractWorker2);
            this.executor.execute(extractWorker2);
            return;
        }
        if (youtubeVideoCallback != null) {
            youtubeVideoCallback.onFail(str, 9, "Service not ready");
        }
        LoggingService loggingService = (LoggingService) this.context.getService("logging");
        if (loggingService != null) {
            loggingService.logEvent("YoutubeParseError", "videoId", str, "parserVersion", 11, "code", 9, AccountNotice.LEVEL_MESSAGE, "Service not ready");
        }
    }

    public void abort(String str, YoutubeVideoCallback youtubeVideoCallback) {
        ExtractWorker extractWorker = this.runnings.get(str);
        if (extractWorker != null && extractWorker.callbacks.remove(youtubeVideoCallback) && extractWorker.callbacks.isEmpty() && extractWorker.preloadOrder == 0) {
            this.runnings.remove(str, extractWorker);
        }
    }

    void onPreloadFinished(final String str, YoutubeVideoList youtubeVideoList, boolean z) {
        final MediaPreloadService mediaPreloadService = (MediaPreloadService) this.context.getService("mediapreload");
        if (mediaPreloadService == null || youtubeVideoList == null) {
            return;
        }
        final String url = youtubeVideoList.getUrl();
        if (z) {
            mediaPreloadService.preload(str, url);
        } else {
            Utils.postDelayed(new Runnable() { // from class: com.narvii.youtube.YoutubeService.4
                @Override // java.lang.Runnable
                public void run() {
                    mediaPreloadService.preload(str, url);
                }
            }, 500L);
        }
    }

    class ExtractWorker implements Runnable, Comparable<ExtractWorker> {
        final ArrayList<YoutubeVideoCallback> callbacks = new ArrayList<>(4);
        YoutubeLoggingStub loggingStub;
        private int preloadOrder;
        ExtractResult result;
        final String videoId;

        ExtractWorker(String str, YoutubeLoggingStub youtubeLoggingStub) {
            this.videoId = str;
            this.loggingStub = youtubeLoggingStub;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r1v0 */
        /* JADX WARN: Type inference failed for: r1v1 */
        /* JADX WARN: Type inference failed for: r1v10 */
        /* JADX WARN: Type inference failed for: r1v13, types: [java.lang.String] */
        /* JADX WARN: Type inference failed for: r1v14 */
        /* JADX WARN: Type inference failed for: r1v16, types: [boolean] */
        /* JADX WARN: Type inference failed for: r1v3 */
        /* JADX WARN: Type inference failed for: r1v31 */
        /* JADX WARN: Type inference failed for: r1v4, types: [com.narvii.youtube.ExtractResult] */
        @Override // java.lang.Runnable
        public void run() throws Throwable {
            Throwable th;
            ExtractResult extractResult;
            LoggingService loggingService;
            YoutubeVideoList youtubeVideoList;
            if (this.result != null && Looper.myLooper() == Looper.getMainLooper()) {
                ExtractResult extractResult2 = this.result;
                if (extractResult2.result != null) {
                    YoutubeService.this.cache.put(this.videoId, extractResult2);
                }
                if (YoutubeService.this.runnings.remove(this.videoId, this)) {
                    if (this.result.errorCode >= 10 && !this.callbacks.isEmpty()) {
                        YoutubeService.this.cache.put(this.videoId, this.result);
                    }
                    Iterator<YoutubeVideoCallback> it = this.callbacks.iterator();
                    while (it.hasNext()) {
                        YoutubeVideoCallback next = it.next();
                        if (next != null) {
                            this.result.callback(this.videoId, next);
                        }
                    }
                }
                if (this.preloadOrder > 0 && (youtubeVideoList = this.result.result) != null) {
                    YoutubeService.this.onPreloadFinished(this.videoId, youtubeVideoList, this.callbacks.isEmpty());
                }
                if (this.result.result != null || (loggingService = (LoggingService) YoutubeService.this.context.getService("logging")) == null) {
                    return;
                }
                if (this.loggingStub == null) {
                    this.loggingStub = new YoutubeLoggingStub();
                    this.loggingStub.videoId = this.videoId;
                }
                YoutubeLoggingStub youtubeLoggingStub = this.loggingStub;
                ExtractResult extractResult3 = this.result;
                youtubeLoggingStub.errorCode = extractResult3.errorCode;
                youtubeLoggingStub.message = extractResult3.errorMsg;
                loggingService.logEvent("YoutubeParseError", youtubeLoggingStub.buildYoutubeParseErrorParams());
                NVContext nVContext = YoutubeService.this.context;
                return;
            }
            int i = 0;
            while (true) {
                ?? IsEmpty = 4;
                IsEmpty = 4;
                if (i >= 4) {
                    break;
                }
                try {
                    IsEmpty = this.callbacks.isEmpty();
                    if (IsEmpty != 0 && this.preloadOrder == 0) {
                        return;
                    }
                    Thread.sleep(100L);
                    i++;
                } catch (InterruptedException unused) {
                    if (this.callbacks.isEmpty() && this.preloadOrder == 0) {
                        return;
                    }
                    String str = null;
                    try {
                        try {
                            try {
                                try {
                                    ExtractResult extractResultExtract = YoutubeService.this.extractor.extract(this.videoId);
                                    IsEmpty = ExternalSourceOrigin.EXTERNAL_SOURCE_ORIGIN_YOUTUBE;
                                    Log.i(ExternalSourceOrigin.EXTERNAL_SOURCE_ORIGIN_YOUTUBE, "extract result " + extractResultExtract.result.getUrl());
                                    this.result = extractResultExtract;
                                } catch (Throwable th2) {
                                    th = th2;
                                    this.result = IsEmpty;
                                    YoutubeService.this.handler.post(this);
                                    throw th;
                                }
                            } catch (IOException unused2) {
                                extractResult = new ExtractResult();
                                extractResult.errorCode = 2;
                                str = "Network error";
                                extractResult.errorMsg = "Network error";
                                this.result = extractResult;
                                YoutubeService.this.handler.post(this);
                                return;
                            }
                        } catch (Throwable unused3) {
                            extractResult = new ExtractResult();
                            extractResult.errorCode = 1;
                            str = "Error";
                            extractResult.errorMsg = "Error";
                            this.result = extractResult;
                            YoutubeService.this.handler.post(this);
                            return;
                        }
                        YoutubeService.this.handler.post(this);
                        return;
                    } catch (Throwable th3) {
                        IsEmpty = str;
                        th = th3;
                    }
                }
            }
        }

        @Override // java.lang.Comparable
        public int compareTo(ExtractWorker extractWorker) {
            if (!this.callbacks.isEmpty()) {
                return extractWorker.callbacks.isEmpty() ? -1 : 0;
            }
            if (!extractWorker.callbacks.isEmpty()) {
                return 1;
            }
            int i = this.preloadOrder;
            int i2 = extractWorker.preloadOrder;
            if (i > i2) {
                return -1;
            }
            return i < i2 ? 1 : 0;
        }
    }

    class InitTask extends Thread {
        Extractor extractor;
        Boolean result;
        ArrayList<Task> tasks = new ArrayList<>();

        InitTask() {
        }

        public void add(String str, YoutubeLoggingStub youtubeLoggingStub, YoutubeVideoCallback youtubeVideoCallback, int i) {
            Iterator<Task> it = this.tasks.iterator();
            while (it.hasNext()) {
                Task next = it.next();
                if (str != null && str.equals(next.videoId) && next.callback == youtubeVideoCallback) {
                    next.preloadOrder = Math.max(next.preloadOrder, i);
                    return;
                }
            }
            Task task = new Task();
            task.videoId = str;
            task.callback = youtubeVideoCallback;
            task.loggingStub = youtubeLoggingStub;
            task.preloadOrder = i;
            this.tasks.add(task);
        }

        public void remove(String str, YoutubeVideoCallback youtubeVideoCallback) {
            Iterator<Task> it = this.tasks.iterator();
            while (it.hasNext()) {
                Task next = it.next();
                if (str != null && str.equals(next.videoId) && next.callback == youtubeVideoCallback) {
                    next.callback = null;
                    if (next.preloadOrder == 0) {
                        this.tasks.remove(next);
                        return;
                    }
                    return;
                }
            }
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            if (this.result == null) {
                this.result = false;
                long jCurrentThreadTimeMillis = SystemClock.currentThreadTimeMillis();
                try {
                    YoutubeService.this.dexDir.mkdir();
                    YoutubeService.this.optDir.mkdir();
                    if (YoutubeService.this.dexFile.length() == 0) {
                        InputStream inputStreamOpen = YoutubeService.this.context.getContext().getAssets().open("youtube.srv");
                        FileOutputStream fileOutputStream = new FileOutputStream(YoutubeService.this.dexFile);
                        byte[] bArr = new byte[4096];
                        while (true) {
                            int i = inputStreamOpen.read(bArr);
                            if (i == -1) {
                                break;
                            }
                            for (int i2 = 0; i2 < i / 2; i2++) {
                                byte b = bArr[i2];
                                int i3 = (i - i2) - 1;
                                bArr[i2] = bArr[i3];
                                bArr[i3] = b;
                            }
                            fileOutputStream.write(bArr, 0, i);
                        }
                        fileOutputStream.close();
                        inputStreamOpen.close();
                        for (int i4 = 1; i4 < 11; i4++) {
                            new File(YoutubeService.this.dexDir, "yt" + i4 + ".apk").delete();
                        }
                    }
                    this.extractor = (Extractor) new DexClassLoader(YoutubeService.this.dexFile.getAbsolutePath(), YoutubeService.this.optDir.getAbsolutePath(), null, YoutubeService.this.context.getContext().getClassLoader()).loadClass("com.narvii.youtube.impl.YoutubeExtractor").newInstance();
                    this.result = true;
                    Log.i(ExternalSourceOrigin.EXTERNAL_SOURCE_ORIGIN_YOUTUBE, "youtube extractor loaded in " + (SystemClock.currentThreadTimeMillis() - jCurrentThreadTimeMillis) + "ms");
                } finally {
                    try {
                        return;
                    } finally {
                    }
                }
                return;
            }
            YoutubeService youtubeService = YoutubeService.this;
            youtubeService.inited = true;
            youtubeService.initTask = null;
            Extractor extractor = this.extractor;
            youtubeService.extractor = extractor;
            if (extractor != null) {
                Iterator<Task> it = this.tasks.iterator();
                while (it.hasNext()) {
                    Task next = it.next();
                    YoutubeService.this.exec(next.videoId, next.loggingStub, next.callback, next.preloadOrder);
                }
            }
        }
    }

    static class Task {
        YoutubeVideoCallback callback;
        YoutubeLoggingStub loggingStub;
        int preloadOrder;
        String videoId;

        Task() {
        }
    }
}
