package com.narvii.youtube;

import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.collection.ArrayMap;
import com.narvii.account.notice.AccountNotice;
import com.narvii.app.NVContext;
import com.narvii.lib.R;
import com.narvii.model.ExternalSourceOrigin;
import com.narvii.util.DateUtils;
import com.narvii.util.Log;
import com.narvii.util.Utils;
import com.narvii.util.logging.LoggingService;
import com.narvii.util.statistics.StatisticsService;
import com.narvii.video.MediaPreloadService;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ThreadPoolExecutor;
import org.schabi.newpipe.extractor.services.youtube.r0;

/* JADX INFO: loaded from: classes5.dex */
public class YoutubeService {
    static final int VER = 11;
    NVContext context;
    Extractor extractor;
    InitTask initTask;
    boolean inited;
    int preloadIndex;
    long stbt;
    final Handler handler = new Handler(Looper.getMainLooper());
    final ConcurrentHashMap<String, ExtractWorker> runnings = new ConcurrentHashMap<>();
    final ConcurrentHashMap<String, ExtractResult> cache = new ConcurrentHashMap<>();
    final ThreadPoolExecutor executor = Utils.createPriorityThreadPoolExecutor(3, "youtube-dl");

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

        @Override // java.lang.Comparable
        public int compareTo(@NonNull ExtractWorker extractWorker) {
            if (!this.callbacks.isEmpty()) {
                return extractWorker.callbacks.isEmpty() ? -1 : 0;
            }
            if (!extractWorker.callbacks.isEmpty()) {
                return 1;
            }
            int i10 = this.preloadOrder;
            int i11 = extractWorker.preloadOrder;
            if (i10 > i11) {
                return -1;
            }
            return i10 < i11 ? 1 : 0;
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
            ?? IsEmpty;
            Throwable th;
            ExtractResult extractResult;
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
                    for (YoutubeVideoCallback youtubeVideoCallback : this.callbacks) {
                        if (youtubeVideoCallback != null) {
                            this.result.callback(this.videoId, youtubeVideoCallback);
                        }
                    }
                }
                if (this.preloadOrder > 0 && (youtubeVideoList = this.result.result) != null) {
                    YoutubeService.this.onPreloadFinished(this.videoId, youtubeVideoList, this.callbacks.isEmpty());
                }
                if (this.result.result != null) {
                    StatisticsService statisticsService = (StatisticsService) YoutubeService.this.context.getService("statistics");
                    if (statisticsService != null) {
                        statisticsService.event("YoutubeResult").param("Result", "0: Success");
                        return;
                    }
                    return;
                }
                LoggingService loggingService = (LoggingService) YoutubeService.this.context.getService("logging");
                if (loggingService != null) {
                    if (this.loggingStub == null) {
                        YoutubeLoggingStub youtubeLoggingStub = new YoutubeLoggingStub();
                        this.loggingStub = youtubeLoggingStub;
                        youtubeLoggingStub.videoId = this.videoId;
                    }
                    YoutubeLoggingStub youtubeLoggingStub2 = this.loggingStub;
                    ExtractResult extractResult3 = this.result;
                    youtubeLoggingStub2.errorCode = extractResult3.errorCode;
                    youtubeLoggingStub2.message = extractResult3.errorMsg;
                    loggingService.logEvent("YoutubeParseError", youtubeLoggingStub2.buildYoutubeParseErrorParams());
                    StatisticsService statisticsService2 = (StatisticsService) YoutubeService.this.context.getService("statistics");
                    if (statisticsService2 != null) {
                        statisticsService2.event("YoutubeResult").param("Result", this.result.errorCode + ": " + this.result.errorMsg);
                        return;
                    }
                    return;
                }
                return;
            }
            int i10 = 0;
            while (true) {
                IsEmpty = 4;
                IsEmpty = 4;
                if (i10 >= 4) {
                    break;
                }
                try {
                    IsEmpty = this.callbacks.isEmpty();
                    if (IsEmpty != 0 && this.preloadOrder == 0) {
                        return;
                    }
                    Thread.sleep(100L);
                    i10++;
                } catch (InterruptedException unused) {
                }
            }
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
                        } catch (Throwable unused2) {
                            extractResult = new ExtractResult();
                            extractResult.errorCode = 1;
                            str = "Error";
                            extractResult.errorMsg = "Error";
                            this.result = extractResult;
                        }
                    } catch (IOException unused3) {
                        extractResult = new ExtractResult();
                        extractResult.errorCode = 2;
                        str = "Network error";
                        extractResult.errorMsg = "Network error";
                        this.result = extractResult;
                    }
                    YoutubeService.this.handler.post(this);
                } catch (Throwable th2) {
                    th = th2;
                    this.result = IsEmpty;
                    YoutubeService.this.handler.post(this);
                    throw th;
                }
            } catch (Throwable th3) {
                IsEmpty = str;
                th = th3;
            }
        }
    }

    class InitTask extends Thread {
        Extractor extractor;
        Boolean result;
        ArrayList<Task> tasks = new ArrayList<>();

        InitTask() {
        }

        public void add(String str, YoutubeLoggingStub youtubeLoggingStub, YoutubeVideoCallback youtubeVideoCallback, int i10) {
            for (Task task : this.tasks) {
                if (str != null && str.equals(task.videoId) && task.callback == youtubeVideoCallback) {
                    task.preloadOrder = Math.max(task.preloadOrder, i10);
                    return;
                }
            }
            Task task2 = new Task();
            task2.videoId = str;
            task2.callback = youtubeVideoCallback;
            task2.loggingStub = youtubeLoggingStub;
            task2.preloadOrder = i10;
            this.tasks.add(task2);
        }

        public void remove(String str, YoutubeVideoCallback youtubeVideoCallback) {
            for (Task task : this.tasks) {
                if (str != null && str.equals(task.videoId) && task.callback == youtubeVideoCallback) {
                    task.callback = null;
                    if (task.preloadOrder == 0) {
                        this.tasks.remove(task);
                        return;
                    }
                    return;
                }
            }
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            if (this.result == null) {
                this.extractor = new Extractor();
                this.result = Boolean.TRUE;
                Utils.post(this);
                return;
            }
            YoutubeService youtubeService = YoutubeService.this;
            youtubeService.inited = true;
            youtubeService.initTask = null;
            Extractor extractor = this.extractor;
            youtubeService.extractor = extractor;
            if (extractor != null) {
                for (Task task : this.tasks) {
                    YoutubeService.this.exec(task.videoId, task.loggingStub, task.callback, task.preloadOrder);
                }
            }
        }
    }

    public void exec(String str, YoutubeLoggingStub youtubeLoggingStub, YoutubeVideoCallback youtubeVideoCallback) {
        exec(str, youtubeLoggingStub, youtubeVideoCallback, 0);
    }

    static class Task {
        YoutubeVideoCallback callback;
        YoutubeLoggingStub loggingStub;
        int preloadOrder;
        String videoId;

        Task() {
        }
    }

    public void abort(String str, YoutubeVideoCallback youtubeVideoCallback) {
        ExtractWorker extractWorker = this.runnings.get(str);
        if (extractWorker != null && extractWorker.callbacks.remove(youtubeVideoCallback) && extractWorker.callbacks.isEmpty() && extractWorker.preloadOrder == 0) {
            this.runnings.remove(str, extractWorker);
        }
    }

    public void exec(final String str, YoutubeLoggingStub youtubeLoggingStub, final YoutubeVideoCallback youtubeVideoCallback, int i10) {
        if (TextUtils.isEmpty(str)) {
            if (youtubeVideoCallback != null) {
                Utils.post(new Runnable() { // from class: com.narvii.youtube.b
                    @Override // java.lang.Runnable
                    public final void run() {
                        youtubeVideoCallback.onFail(str, 9, "videoId is null");
                    }
                });
                return;
            }
            return;
        }
        if (this.stbt > 1563086000000L && System.currentTimeMillis() < this.stbt + DateUtils.ONE_DAY) {
            if (youtubeVideoCallback != null) {
                Utils.post(new Runnable() { // from class: com.narvii.youtube.YoutubeService.1
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
                InitTask initTask = new InitTask();
                this.initTask = initTask;
                initTask.start();
            }
            this.initTask.add(str, youtubeLoggingStub, youtubeVideoCallback, i10);
            return;
        }
        if (this.extractor == null) {
            if (youtubeVideoCallback != null) {
                youtubeVideoCallback.onFail(str, 9, "Service not ready");
            }
            LoggingService loggingService = (LoggingService) this.context.getService("logging");
            if (loggingService != null) {
                loggingService.logEvent("YoutubeParseError", r0.VIDEO_ID, str, "parserVersion", 11, "code", 9, AccountNotice.LEVEL_MESSAGE, "Service not ready");
                return;
            }
            return;
        }
        ExtractResult extractResult = this.cache.get(str);
        if (extractResult != null && extractResult.isValid()) {
            extractResult.callback(str, youtubeVideoCallback);
            if (i10 > 0) {
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
            extractWorker.preloadOrder = Math.max(extractWorker.preloadOrder, i10);
            return;
        }
        ExtractWorker extractWorker2 = new ExtractWorker(str, youtubeLoggingStub);
        if (youtubeVideoCallback != null) {
            extractWorker2.callbacks.add(youtubeVideoCallback);
        }
        extractWorker2.preloadOrder = i10;
        this.runnings.put(str, extractWorker2);
        this.executor.execute(extractWorker2);
    }

    void onPreloadFinished(final String str, YoutubeVideoList youtubeVideoList, boolean z6) {
        final MediaPreloadService mediaPreloadService = (MediaPreloadService) this.context.getService("mediapreload");
        if (mediaPreloadService == null || youtubeVideoList == null) {
            return;
        }
        final String url = youtubeVideoList.getUrl();
        if (z6) {
            mediaPreloadService.preload(str, url);
        } else {
            Utils.postDelayed(new Runnable() { // from class: com.narvii.youtube.YoutubeService.2
                @Override // java.lang.Runnable
                public void run() {
                    mediaPreloadService.preload(str, url);
                }
            }, 500L);
        }
    }

    public void preload(final List<String> list, final ArrayMap<String, YoutubeLoggingStub> arrayMap) {
        Utils.postDelayed(new Runnable() { // from class: com.narvii.youtube.a
            @Override // java.lang.Runnable
            public final void run() {
                this.f3086a.lambda$preload$0(list, arrayMap);
            }
        }, 100L);
    }

    public YoutubeService(NVContext nVContext) {
        this.context = nVContext;
        try {
            this.stbt = Long.parseLong(nVContext.getContext().getString(R.string.stbt));
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public /* synthetic */ void lambda$preload$0(List list, ArrayMap arrayMap) {
        YoutubeLoggingStub youtubeLoggingStub;
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            String str = (String) list.get(i10);
            int i11 = this.preloadIndex + (size - i10);
            if (arrayMap == null) {
                youtubeLoggingStub = null;
            } else {
                youtubeLoggingStub = (YoutubeLoggingStub) arrayMap.get(str);
            }
            exec(str, youtubeLoggingStub, null, i11);
        }
        this.preloadIndex += size;
    }
}
