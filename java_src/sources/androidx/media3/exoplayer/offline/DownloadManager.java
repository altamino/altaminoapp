package androidx.media3.exoplayer.offline;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import androidx.annotation.CheckResult;
import androidx.annotation.Nullable;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.database.DatabaseProvider;
import androidx.media3.datasource.DataSource;
import androidx.media3.datasource.cache.Cache;
import androidx.media3.datasource.cache.CacheDataSource;
import androidx.media3.exoplayer.scheduler.Requirements;
import androidx.media3.exoplayer.scheduler.RequirementsWatcher;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes2.dex */
@UnstableApi
public final class DownloadManager {
    public static final int DEFAULT_MAX_PARALLEL_DOWNLOADS = 3;
    public static final int DEFAULT_MIN_RETRY_COUNT = 5;
    public static final Requirements DEFAULT_REQUIREMENTS = new Requirements(1);
    private static final int MSG_ADD_DOWNLOAD = 6;
    private static final int MSG_CONTENT_LENGTH_CHANGED = 10;
    private static final int MSG_DOWNLOAD_UPDATE = 2;
    private static final int MSG_INITIALIZE = 0;
    private static final int MSG_INITIALIZED = 0;
    private static final int MSG_PROCESSED = 1;
    private static final int MSG_RELEASE = 12;
    private static final int MSG_REMOVE_ALL_DOWNLOADS = 8;
    private static final int MSG_REMOVE_DOWNLOAD = 7;
    private static final int MSG_SET_DOWNLOADS_PAUSED = 1;
    private static final int MSG_SET_MAX_PARALLEL_DOWNLOADS = 4;
    private static final int MSG_SET_MIN_RETRY_COUNT = 5;
    private static final int MSG_SET_NOT_MET_REQUIREMENTS = 2;
    private static final int MSG_SET_STOP_REASON = 3;
    private static final int MSG_TASK_STOPPED = 9;
    private static final int MSG_UPDATE_PROGRESS = 11;
    private static final String TAG = "DownloadManager";
    private int activeTaskCount;
    private final Handler applicationHandler;
    private final Context context;
    private final WritableDownloadIndex downloadIndex;
    private List<Download> downloads;
    private boolean downloadsPaused;
    private boolean initialized;
    private final InternalHandler internalHandler;
    private final CopyOnWriteArraySet<Listener> listeners;
    private int maxParallelDownloads;
    private int minRetryCount;
    private int notMetRequirements;
    private int pendingMessages;
    private final RequirementsWatcher.Listener requirementsListener;
    private RequirementsWatcher requirementsWatcher;
    private boolean waitingForRequirements;

    /* JADX INFO: Access modifiers changed from: private */
    static final class InternalHandler extends Handler {
        private static final int UPDATE_PROGRESS_INTERVAL_MS = 5000;
        private int activeDownloadTaskCount;
        private final HashMap<String, Task> activeTasks;
        private final WritableDownloadIndex downloadIndex;
        private final DownloaderFactory downloaderFactory;
        private final ArrayList<Download> downloads;
        private boolean downloadsPaused;
        private boolean hasActiveRemoveTask;
        private final Handler mainHandler;
        private int maxParallelDownloads;
        private int minRetryCount;
        private int notMetRequirements;
        public boolean released;
        private final HandlerThread thread;

        private void B() {
            int i10 = 0;
            for (int i11 = 0; i11 < this.downloads.size(); i11++) {
                Download download = this.downloads.get(i11);
                Task taskY = this.activeTasks.get(download.request.id);
                int i12 = download.state;
                if (i12 == 0) {
                    taskY = y(taskY, download);
                } else if (i12 == 1) {
                    A(taskY);
                } else if (i12 == 2) {
                    Assertions.e(taskY);
                    x(taskY, download, i10);
                } else {
                    if (i12 != 5 && i12 != 7) {
                        throw new IllegalStateException();
                    }
                    z(taskY, download);
                }
                if (taskY != null && !taskY.isRemove) {
                    i10++;
                }
            }
        }

        private void C() {
            for (int i10 = 0; i10 < this.downloads.size(); i10++) {
                Download download = this.downloads.get(i10);
                if (download.state == 2) {
                    try {
                        this.downloadIndex.b(download);
                    } catch (IOException e) {
                        Log.d(DownloadManager.TAG, "Failed to update index.", e);
                    }
                }
            }
            sendEmptyMessageDelayed(11, 5000L);
        }

        private boolean c() {
            return !this.downloadsPaused && this.notMetRequirements == 0;
        }

        private int g(String str) {
            for (int i10 = 0; i10 < this.downloads.size(); i10++) {
                if (this.downloads.get(i10).request.id.equals(str)) {
                    return i10;
                }
            }
            return -1;
        }

        private void i(Task task, long j6) {
            Download download = (Download) Assertions.e(f(task.request.id, false));
            if (j6 == download.contentLength || j6 == -1) {
                return;
            }
            m(new Download(download.request, download.state, download.startTimeMs, System.currentTimeMillis(), j6, download.stopReason, download.failureReason, download.progress));
        }

        private Download n(Download download, int i10, int i11) {
            Assertions.g((i10 == 3 || i10 == 4) ? false : true);
            return m(e(download, i10, i11));
        }

        private void q(String str) {
            Download downloadF = f(str, true);
            if (downloadF != null) {
                n(downloadF, 5, 0);
                B();
            } else {
                Log.c(DownloadManager.TAG, "Failed to remove nonexistent download: " + str);
            }
        }

        private void t(int i10) {
            this.minRetryCount = i10;
        }

        private void v(Download download, int i10) {
            if (i10 == 0) {
                if (download.state == 1) {
                    n(download, 0, 0);
                }
            } else if (i10 != download.stopReason) {
                int i11 = download.state;
                if (i11 == 0 || i11 == 2) {
                    i11 = 1;
                }
                m(new Download(download.request, i11, download.startTimeMs, System.currentTimeMillis(), download.contentLength, i10, 0, download.progress));
            }
        }

        @Nullable
        @CheckResult
        private Task y(@Nullable Task task, Download download) {
            if (task != null) {
                Assertions.g(!task.isRemove);
                task.f(false);
                return task;
            }
            if (!c() || this.activeDownloadTaskCount >= this.maxParallelDownloads) {
                return null;
            }
            Download downloadN = n(download, 2, 0);
            Task task2 = new Task(downloadN.request, this.downloaderFactory.a(downloadN.request), downloadN.progress, false, this.minRetryCount, this);
            this.activeTasks.put(downloadN.request.id, task2);
            int i10 = this.activeDownloadTaskCount;
            this.activeDownloadTaskCount = i10 + 1;
            if (i10 == 0) {
                sendEmptyMessageDelayed(11, 5000L);
            }
            task2.start();
            return task2;
        }

        private void A(@Nullable Task task) {
            if (task != null) {
                Assertions.g(!task.isRemove);
                task.f(false);
            }
        }

        private void b(DownloadRequest downloadRequest, int i10) {
            Download downloadF = f(downloadRequest.id, true);
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (downloadF != null) {
                m(DownloadManager.m(downloadF, downloadRequest, i10, jCurrentTimeMillis));
            } else {
                m(new Download(downloadRequest, i10 == 0 ? 0 : 1, jCurrentTimeMillis, jCurrentTimeMillis, -1L, i10, 0));
            }
            B();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static int d(Download download, Download download2) {
            return Util.o(download.startTimeMs, download2.startTimeMs);
        }

        private static Download e(Download download, int i10, int i11) {
            return new Download(download.request, i10, download.startTimeMs, System.currentTimeMillis(), download.contentLength, i11, 0, download.progress);
        }

        private void h(int i10) {
            this.notMetRequirements = i10;
            DownloadCursor downloadCursorD = null;
            try {
                try {
                    this.downloadIndex.h();
                    downloadCursorD = this.downloadIndex.d(0, 1, 2, 5, 7);
                    while (downloadCursorD.moveToNext()) {
                        this.downloads.add(downloadCursorD.E());
                    }
                } catch (IOException e) {
                    Log.d(DownloadManager.TAG, "Failed to load index.", e);
                    this.downloads.clear();
                }
                Util.n(downloadCursorD);
                this.mainHandler.obtainMessage(0, new ArrayList(this.downloads)).sendToTarget();
                B();
            } catch (Throwable th) {
                Util.n(downloadCursorD);
                throw th;
            }
        }

        private void j(Download download, @Nullable Exception exc) {
            Download download2 = new Download(download.request, exc == null ? 3 : 4, download.startTimeMs, System.currentTimeMillis(), download.contentLength, download.stopReason, exc == null ? 0 : 1, download.progress);
            this.downloads.remove(g(download2.request.id));
            try {
                this.downloadIndex.b(download2);
            } catch (IOException e) {
                Log.d(DownloadManager.TAG, "Failed to update index.", e);
            }
            this.mainHandler.obtainMessage(2, new DownloadUpdate(download2, false, new ArrayList(this.downloads), exc)).sendToTarget();
        }

        private void k(Download download) {
            if (download.state == 7) {
                int i10 = download.stopReason;
                n(download, i10 == 0 ? 0 : 1, i10);
                B();
            } else {
                this.downloads.remove(g(download.request.id));
                try {
                    this.downloadIndex.c(download.request.id);
                } catch (IOException unused) {
                    Log.c(DownloadManager.TAG, "Failed to remove from database");
                }
                this.mainHandler.obtainMessage(2, new DownloadUpdate(download, true, new ArrayList(this.downloads), null)).sendToTarget();
            }
        }

        private Download m(Download download) {
            int i10 = download.state;
            Assertions.g((i10 == 3 || i10 == 4) ? false : true);
            int iG = g(download.request.id);
            if (iG == -1) {
                this.downloads.add(download);
                Collections.sort(this.downloads, new h());
            } else {
                boolean z6 = download.startTimeMs != this.downloads.get(iG).startTimeMs;
                this.downloads.set(iG, download);
                if (z6) {
                    Collections.sort(this.downloads, new h());
                }
            }
            try {
                this.downloadIndex.b(download);
            } catch (IOException e) {
                Log.d(DownloadManager.TAG, "Failed to update index.", e);
            }
            this.mainHandler.obtainMessage(2, new DownloadUpdate(download, false, new ArrayList(this.downloads), null)).sendToTarget();
            return download;
        }

        private void o() {
            Iterator<Task> it = this.activeTasks.values().iterator();
            while (it.hasNext()) {
                it.next().f(true);
            }
            try {
                this.downloadIndex.h();
            } catch (IOException e) {
                Log.d(DownloadManager.TAG, "Failed to update index.", e);
            }
            this.downloads.clear();
            this.thread.quit();
            synchronized (this) {
                this.released = true;
                notifyAll();
            }
        }

        private void p() {
            ArrayList arrayList = new ArrayList();
            try {
                DownloadCursor downloadCursorD = this.downloadIndex.d(3, 4);
                while (downloadCursorD.moveToNext()) {
                    try {
                        arrayList.add(downloadCursorD.E());
                    } catch (Throwable th) {
                        if (downloadCursorD != null) {
                            try {
                                downloadCursorD.close();
                            } catch (Throwable th2) {
                                th.addSuppressed(th2);
                            }
                        }
                        throw th;
                    }
                }
                downloadCursorD.close();
            } catch (IOException unused) {
                Log.c(DownloadManager.TAG, "Failed to load downloads.");
            }
            for (int i10 = 0; i10 < this.downloads.size(); i10++) {
                ArrayList<Download> arrayList2 = this.downloads;
                arrayList2.set(i10, e(arrayList2.get(i10), 5, 0));
            }
            for (int i11 = 0; i11 < arrayList.size(); i11++) {
                this.downloads.add(e((Download) arrayList.get(i11), 5, 0));
            }
            Collections.sort(this.downloads, new h());
            try {
                this.downloadIndex.g();
            } catch (IOException e) {
                Log.d(DownloadManager.TAG, "Failed to update index.", e);
            }
            ArrayList arrayList3 = new ArrayList(this.downloads);
            for (int i12 = 0; i12 < this.downloads.size(); i12++) {
                this.mainHandler.obtainMessage(2, new DownloadUpdate(this.downloads.get(i12), false, arrayList3, null)).sendToTarget();
            }
            B();
        }

        private void r(boolean z6) {
            this.downloadsPaused = z6;
            B();
        }

        private void s(int i10) {
            this.maxParallelDownloads = i10;
            B();
        }

        private void u(int i10) {
            this.notMetRequirements = i10;
            B();
        }

        private void w(@Nullable String str, int i10) {
            if (str == null) {
                for (int i11 = 0; i11 < this.downloads.size(); i11++) {
                    v(this.downloads.get(i11), i10);
                }
                try {
                    this.downloadIndex.f(i10);
                } catch (IOException e) {
                    Log.d(DownloadManager.TAG, "Failed to set manual stop reason", e);
                }
            } else {
                Download downloadF = f(str, false);
                if (downloadF != null) {
                    v(downloadF, i10);
                } else {
                    try {
                        this.downloadIndex.a(str, i10);
                    } catch (IOException e2) {
                        Log.d(DownloadManager.TAG, "Failed to set manual stop reason: " + str, e2);
                    }
                }
            }
            B();
        }

        private void z(@Nullable Task task, Download download) {
            if (task != null) {
                if (task.isRemove) {
                    return;
                }
                task.f(false);
            } else {
                if (this.hasActiveRemoveTask) {
                    return;
                }
                Task task2 = new Task(download.request, this.downloaderFactory.a(download.request), download.progress, true, this.minRetryCount, this);
                this.activeTasks.put(download.request.id, task2);
                this.hasActiveRemoveTask = true;
                task2.start();
            }
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i10 = 0;
            switch (message.what) {
                case 0:
                    h(message.arg1);
                    i10 = 1;
                    this.mainHandler.obtainMessage(1, i10, this.activeTasks.size()).sendToTarget();
                    return;
                case 1:
                    r(message.arg1 != 0);
                    i10 = 1;
                    this.mainHandler.obtainMessage(1, i10, this.activeTasks.size()).sendToTarget();
                    return;
                case 2:
                    u(message.arg1);
                    i10 = 1;
                    this.mainHandler.obtainMessage(1, i10, this.activeTasks.size()).sendToTarget();
                    return;
                case 3:
                    w((String) message.obj, message.arg1);
                    i10 = 1;
                    this.mainHandler.obtainMessage(1, i10, this.activeTasks.size()).sendToTarget();
                    return;
                case 4:
                    s(message.arg1);
                    i10 = 1;
                    this.mainHandler.obtainMessage(1, i10, this.activeTasks.size()).sendToTarget();
                    return;
                case 5:
                    t(message.arg1);
                    i10 = 1;
                    this.mainHandler.obtainMessage(1, i10, this.activeTasks.size()).sendToTarget();
                    return;
                case 6:
                    b((DownloadRequest) message.obj, message.arg1);
                    i10 = 1;
                    this.mainHandler.obtainMessage(1, i10, this.activeTasks.size()).sendToTarget();
                    return;
                case 7:
                    q((String) message.obj);
                    i10 = 1;
                    this.mainHandler.obtainMessage(1, i10, this.activeTasks.size()).sendToTarget();
                    return;
                case 8:
                    p();
                    i10 = 1;
                    this.mainHandler.obtainMessage(1, i10, this.activeTasks.size()).sendToTarget();
                    return;
                case 9:
                    l((Task) message.obj);
                    this.mainHandler.obtainMessage(1, i10, this.activeTasks.size()).sendToTarget();
                    return;
                case 10:
                    i((Task) message.obj, Util.n1(message.arg1, message.arg2));
                    return;
                case 11:
                    C();
                    return;
                case 12:
                    o();
                    return;
                default:
                    throw new IllegalStateException();
            }
        }

        public InternalHandler(HandlerThread handlerThread, WritableDownloadIndex writableDownloadIndex, DownloaderFactory downloaderFactory, Handler handler, int i10, int i11, boolean z6) {
            super(handlerThread.getLooper());
            this.thread = handlerThread;
            this.downloadIndex = writableDownloadIndex;
            this.downloaderFactory = downloaderFactory;
            this.mainHandler = handler;
            this.maxParallelDownloads = i10;
            this.minRetryCount = i11;
            this.downloadsPaused = z6;
            this.downloads = new ArrayList<>();
            this.activeTasks = new HashMap<>();
        }

        @Nullable
        private Download f(String str, boolean z6) {
            int iG = g(str);
            if (iG != -1) {
                return this.downloads.get(iG);
            }
            if (z6) {
                try {
                    return this.downloadIndex.e(str);
                } catch (IOException e) {
                    Log.d(DownloadManager.TAG, "Failed to load download: " + str, e);
                    return null;
                }
            }
            return null;
        }

        private void l(Task task) {
            String str = task.request.id;
            this.activeTasks.remove(str);
            boolean z6 = task.isRemove;
            if (z6) {
                this.hasActiveRemoveTask = false;
            } else {
                int i10 = this.activeDownloadTaskCount - 1;
                this.activeDownloadTaskCount = i10;
                if (i10 == 0) {
                    removeMessages(11);
                }
            }
            if (!task.isCanceled) {
                Exception exc = task.finalException;
                if (exc != null) {
                    Log.d(DownloadManager.TAG, "Task failed: " + task.request + ", " + z6, exc);
                }
                Download download = (Download) Assertions.e(f(str, false));
                int i11 = download.state;
                if (i11 != 2) {
                    if (i11 != 5 && i11 != 7) {
                        throw new IllegalStateException();
                    }
                    Assertions.g(z6);
                    k(download);
                } else {
                    Assertions.g(!z6);
                    j(download, exc);
                }
                B();
                return;
            }
            B();
        }

        private void x(Task task, Download download, int i10) {
            Assertions.g(!task.isRemove);
            if (!c() || i10 >= this.maxParallelDownloads) {
                n(download, 0, 0);
                task.f(false);
            }
        }
    }

    public interface Listener {
        void a(DownloadManager downloadManager, boolean z6);

        void b(DownloadManager downloadManager, Download download);

        void c(DownloadManager downloadManager, boolean z6);

        void d(DownloadManager downloadManager, Requirements requirements, int i10);

        void e(DownloadManager downloadManager, Download download, @Nullable Exception exc);

        void f(DownloadManager downloadManager);

        void g(DownloadManager downloadManager);
    }

    private static class Task extends Thread implements Downloader.ProgressListener {
        private long contentLength;
        private final DownloadProgress downloadProgress;
        private final Downloader downloader;

        @Nullable
        private Exception finalException;

        @Nullable
        private volatile InternalHandler internalHandler;
        private volatile boolean isCanceled;
        private final boolean isRemove;
        private final int minRetryCount;
        private final DownloadRequest request;

        private Task(DownloadRequest downloadRequest, Downloader downloader, DownloadProgress downloadProgress, boolean z6, int i10, InternalHandler internalHandler) {
            this.request = downloadRequest;
            this.downloader = downloader;
            this.downloadProgress = downloadProgress;
            this.isRemove = z6;
            this.minRetryCount = i10;
            this.internalHandler = internalHandler;
            this.contentLength = -1L;
        }

        private static int g(int i10) {
            return Math.min((i10 - 1) * 1000, 5000);
        }

        @Override // androidx.media3.exoplayer.offline.Downloader.ProgressListener
        public void a(long j6, long j10, float f) {
            this.downloadProgress.bytesDownloaded = j10;
            this.downloadProgress.percentDownloaded = f;
            if (j6 != this.contentLength) {
                this.contentLength = j6;
                InternalHandler internalHandler = this.internalHandler;
                if (internalHandler != null) {
                    internalHandler.obtainMessage(10, (int) (j6 >> 32), (int) j6, this).sendToTarget();
                }
            }
        }

        public void f(boolean z6) {
            if (z6) {
                this.internalHandler = null;
            }
            if (this.isCanceled) {
                return;
            }
            this.isCanceled = true;
            this.downloader.cancel();
            interrupt();
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            try {
                if (this.isRemove) {
                    this.downloader.remove();
                } else {
                    long j6 = -1;
                    int i10 = 0;
                    while (!this.isCanceled) {
                        try {
                            this.downloader.a(this);
                            break;
                        } catch (IOException e) {
                            if (!this.isCanceled) {
                                long j10 = this.downloadProgress.bytesDownloaded;
                                if (j10 != j6) {
                                    i10 = 0;
                                    j6 = j10;
                                }
                                i10++;
                                if (i10 > this.minRetryCount) {
                                    throw e;
                                }
                                Thread.sleep(g(i10));
                            }
                        }
                    }
                }
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
            } catch (Exception e2) {
                this.finalException = e2;
            }
            InternalHandler internalHandler = this.internalHandler;
            if (internalHandler != null) {
                internalHandler.obtainMessage(9, this).sendToTarget();
            }
        }
    }

    public DownloadManager(Context context, DatabaseProvider databaseProvider, Cache cache, DataSource.Factory factory, Executor executor) {
        this(context, new DefaultDownloadIndex(databaseProvider), new DefaultDownloaderFactory(new CacheDataSource.Factory().h(cache).i(factory), executor));
    }

    private void p(List<Download> list) {
        this.initialized = true;
        this.downloads = Collections.unmodifiableList(list);
        boolean z6 = z();
        Iterator<Listener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().g(this);
        }
        if (z6) {
            n();
        }
    }

    public List<Download> e() {
        return this.downloads;
    }

    public boolean f() {
        return this.downloadsPaused;
    }

    public int g() {
        return this.notMetRequirements;
    }

    public boolean j() {
        return this.activeTaskCount == 0 && this.pendingMessages == 0;
    }

    public boolean k() {
        return this.initialized;
    }

    public boolean l() {
        return this.waitingForRequirements;
    }

    public void s() {
        w(true);
    }

    public void v() {
        w(false);
    }

    private static final class DownloadUpdate {
        public final Download download;
        public final List<Download> downloads;

        @Nullable
        public final Exception finalException;
        public final boolean isRemove;

        public DownloadUpdate(Download download, boolean z6, List<Download> list, @Nullable Exception exc) {
            this.download = download;
            this.isRemove = z6;
            this.downloads = list;
            this.finalException = exc;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean i(Message message) {
        int i10 = message.what;
        if (i10 == 0) {
            p((List) message.obj);
        } else if (i10 == 1) {
            q(message.arg1, message.arg2);
        } else {
            if (i10 != 2) {
                throw new IllegalStateException();
            }
            o((DownloadUpdate) message.obj);
        }
        return true;
    }

    static Download m(Download download, DownloadRequest downloadRequest, int i10, long j6) {
        int i11;
        int i12 = download.state;
        long j10 = (i12 == 5 || download.c()) ? j6 : download.startTimeMs;
        if (i12 == 5 || i12 == 7) {
            i11 = 7;
        } else {
            i11 = i10 != 0 ? 1 : 0;
        }
        return new Download(download.request.a(downloadRequest), i11, j10, j6, -1L, i10, 0);
    }

    private void n() {
        Iterator<Listener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().a(this, this.waitingForRequirements);
        }
    }

    private void o(DownloadUpdate downloadUpdate) {
        this.downloads = Collections.unmodifiableList(downloadUpdate.downloads);
        Download download = downloadUpdate.download;
        boolean z6 = z();
        if (downloadUpdate.isRemove) {
            Iterator<Listener> it = this.listeners.iterator();
            while (it.hasNext()) {
                it.next().b(this, download);
            }
        } else {
            Iterator<Listener> it2 = this.listeners.iterator();
            while (it2.hasNext()) {
                it2.next().e(this, download, downloadUpdate.finalException);
            }
        }
        if (z6) {
            n();
        }
    }

    private void q(int i10, int i11) {
        this.pendingMessages -= i10;
        this.activeTaskCount = i11;
        if (j()) {
            Iterator<Listener> it = this.listeners.iterator();
            while (it.hasNext()) {
                it.next().f(this);
            }
        }
    }

    private void w(boolean z6) {
        if (this.downloadsPaused == z6) {
            return;
        }
        this.downloadsPaused = z6;
        this.pendingMessages++;
        this.internalHandler.obtainMessage(1, z6 ? 1 : 0, 0).sendToTarget();
        boolean z10 = z();
        Iterator<Listener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().c(this, z6);
        }
        if (z10) {
            n();
        }
    }

    private boolean z() {
        boolean z6;
        if (!this.downloadsPaused && this.notMetRequirements != 0) {
            int i10 = 0;
            while (true) {
                if (i10 >= this.downloads.size()) {
                    z6 = false;
                    break;
                }
                if (this.downloads.get(i10).state == 0) {
                    z6 = true;
                    break;
                }
                i10++;
            }
        } else {
            z6 = false;
            break;
        }
        boolean z10 = this.waitingForRequirements != z6;
        this.waitingForRequirements = z6;
        return z10;
    }

    public void c(DownloadRequest downloadRequest, int i10) {
        this.pendingMessages++;
        this.internalHandler.obtainMessage(6, i10, 0, downloadRequest).sendToTarget();
    }

    public Requirements h() {
        return this.requirementsWatcher.f();
    }

    public void t() {
        this.pendingMessages++;
        this.internalHandler.obtainMessage(8).sendToTarget();
    }

    public void u(String str) {
        this.pendingMessages++;
        this.internalHandler.obtainMessage(7, str).sendToTarget();
    }

    public void x(Requirements requirements) {
        if (requirements.equals(this.requirementsWatcher.f())) {
            return;
        }
        this.requirementsWatcher.j();
        RequirementsWatcher requirementsWatcher = new RequirementsWatcher(this.context, this.requirementsListener, requirements);
        this.requirementsWatcher = requirementsWatcher;
        r(this.requirementsWatcher, requirementsWatcher.i());
    }

    public void y(@Nullable String str, int i10) {
        this.pendingMessages++;
        this.internalHandler.obtainMessage(3, i10, 0, str).sendToTarget();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void r(RequirementsWatcher requirementsWatcher, int i10) {
        Requirements requirementsF = requirementsWatcher.f();
        if (this.notMetRequirements != i10) {
            this.notMetRequirements = i10;
            this.pendingMessages++;
            this.internalHandler.obtainMessage(2, i10, 0).sendToTarget();
        }
        boolean z6 = z();
        Iterator<Listener> it = this.listeners.iterator();
        while (it.hasNext()) {
            it.next().d(this, requirementsF, i10);
        }
        if (z6) {
            n();
        }
    }

    public void d(Listener listener) {
        Assertions.e(listener);
        this.listeners.add(listener);
    }

    public DownloadManager(Context context, WritableDownloadIndex writableDownloadIndex, DownloaderFactory downloaderFactory) {
        this.context = context.getApplicationContext();
        this.downloadIndex = writableDownloadIndex;
        this.maxParallelDownloads = 3;
        this.minRetryCount = 5;
        this.downloadsPaused = true;
        this.downloads = Collections.emptyList();
        this.listeners = new CopyOnWriteArraySet<>();
        Handler handlerZ = Util.z(new Handler.Callback() { // from class: androidx.media3.exoplayer.offline.f
            @Override // android.os.Handler.Callback
            public final boolean handleMessage(Message message) {
                return this.f568a.i(message);
            }
        });
        this.applicationHandler = handlerZ;
        HandlerThread handlerThread = new HandlerThread("ExoPlayer:DownloadManager");
        handlerThread.start();
        InternalHandler internalHandler = new InternalHandler(handlerThread, writableDownloadIndex, downloaderFactory, handlerZ, this.maxParallelDownloads, this.minRetryCount, this.downloadsPaused);
        this.internalHandler = internalHandler;
        RequirementsWatcher.Listener listener = new RequirementsWatcher.Listener() { // from class: androidx.media3.exoplayer.offline.g
            @Override // androidx.media3.exoplayer.scheduler.RequirementsWatcher.Listener
            public final void a(RequirementsWatcher requirementsWatcher, int i10) {
                this.f569a.r(requirementsWatcher, i10);
            }
        };
        this.requirementsListener = listener;
        RequirementsWatcher requirementsWatcher = new RequirementsWatcher(context, listener, DEFAULT_REQUIREMENTS);
        this.requirementsWatcher = requirementsWatcher;
        int i10 = requirementsWatcher.i();
        this.notMetRequirements = i10;
        this.pendingMessages = 1;
        internalHandler.obtainMessage(0, i10, 0).sendToTarget();
    }
}
