package com.narvii.util.fileloader;

import android.support.v4.media.session.PlaybackStateCompat;
import androidx.annotation.MainThread;
import com.narvii.app.NVContext;
import com.narvii.util.FileUtils;
import com.narvii.util.Log;
import com.narvii.util.StorageUtils;
import com.narvii.util.Utils;
import com.narvii.util.ZipUtils;
import java.io.File;
import java.io.FileInputStream;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import kotlin.text.u;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.m;
import w7.o;

/* JADX INFO: loaded from: classes2.dex */
public abstract class FileLoader {

    @NotNull
    public static final Companion Companion = new Companion(null);
    public static final int LOAD_STATUS_DOWNLOADING = 1;
    public static final int LOAD_STATUS_FAILED = -1;
    public static final int LOAD_STATUS_FINISHED = 2;
    public static final int LOAD_STATUS_IDLE = 0;

    @NotNull
    private final m cache$delegate;

    @NotNull
    private final NVContext ctx;
    public File dir;

    @NotNull
    private final m downloader$delegate;

    @NotNull
    private final ThreadPoolExecutor executorService;
    private int maxSize;

    @NotNull
    private final String path;

    @NotNull
    private final m sessionMap$delegate;

    public static final class Companion {

        @Retention(RetentionPolicy.SOURCE)
        public @interface LoadStatus {
        }

        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }
    }

    public final class Session implements Runnable {
        private boolean aborted;

        @Nullable
        private final IFileDownloadCallback callback;

        @NotNull
        private final m callbackWrapper$delegate;

        @NotNull
        private final ConcurrentLinkedQueue<IFileDownloadCallback> callbacks;
        private int contentLength;
        private volatile boolean dispatched;
        private int downloadedByte;

        @Nullable
        private File file;

        @NotNull
        private final FileLoaderRequest request;
        private int status;
        final /* synthetic */ FileLoader this$0;

        @NotNull
        private File writingFile;

        public static /* synthetic */ void getStatus$annotations() {
        }

        private final void innerDispatchResult(long j6, Exception exc) {
            this.dispatched = true;
            if (t.e(this.this$0.getSessionMap().get(getKey()), this)) {
                this.this$0.getSessionMap().remove(getKey());
            }
            for (IFileDownloadCallback iFileDownloadCallback : this.callbacks) {
                if (j6 > 0) {
                    File file = this.file;
                    t.g(file);
                    iFileDownloadCallback.onPostExecute(file);
                } else {
                    iFileDownloadCallback.onError(this.request.getUrl(), exc);
                }
            }
        }

        public final boolean containsRealCallback(@Nullable Object obj) {
            if (obj == null) {
                return false;
            }
            Iterator<IFileDownloadCallback> it = this.callbacks.iterator();
            while (it.hasNext()) {
                if (t.e(it.next().getRealCallback(), obj)) {
                    return true;
                }
            }
            return false;
        }

        public final boolean getAborted() {
            return this.aborted;
        }

        public final int getContentLength() {
            return this.contentLength;
        }

        public final boolean getDispatched() {
            return this.dispatched;
        }

        public final int getDownloadedByte() {
            return this.downloadedByte;
        }

        @Nullable
        public final File getFile() {
            return this.file;
        }

        @NotNull
        public final FileLoaderRequest getRequest() {
            return this.request;
        }

        public final int getStatus() {
            return this.status;
        }

        @NotNull
        public final File getWritingFile() {
            return this.writingFile;
        }

        public final void setAborted(boolean z6) {
            this.aborted = z6;
        }

        public final void setContentLength(int i10) {
            this.contentLength = i10;
        }

        public final void setDispatched(boolean z6) {
            this.dispatched = z6;
        }

        public final void setDownloadedByte(int i10) {
            this.downloadedByte = i10;
        }

        public final void setFile(@Nullable File file) {
            this.file = file;
        }

        public final void setStatus(int i10) {
            this.status = i10;
        }

        public final void setWritingFile(@NotNull File file) {
            t.j(file, "<set-?>");
            this.writingFile = file;
        }

        public Session(@NotNull FileLoader fileLoader, @Nullable FileLoaderRequest request, IFileDownloadCallback iFileDownloadCallback) {
            File file;
            t.j(request, "request");
            this.this$0 = fileLoader;
            this.request = request;
            this.callback = iFileDownloadCallback;
            ConcurrentLinkedQueue<IFileDownloadCallback> concurrentLinkedQueue = new ConcurrentLinkedQueue<>();
            this.callbacks = concurrentLinkedQueue;
            this.callbackWrapper$delegate = o.a(new FileLoader$Session$callbackWrapper$2(this));
            File file2 = getFile(fileLoader.getFileName(request));
            this.file = file2;
            if (file2 != null) {
                t.g(file2);
                file = getWritingFile(file2);
            } else {
                file = new File(fileLoader.getDir(), fileLoader.getFileName(request) + ".w");
            }
            this.writingFile = file;
            if (iFileDownloadCallback != null) {
                concurrentLinkedQueue.add(iFileDownloadCallback);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void dispatchResult(final Exception exc) {
            File file = this.file;
            final long length = file != null ? file.length() : -1L;
            int i10 = this.status;
            if ((i10 != 2 || length <= 0) && (i10 != -1 || length > 0)) {
                return;
            }
            if (this.this$0.dispatchToMainThread()) {
                Utils.post(new Runnable() { // from class: com.narvii.util.fileloader.g
                    @Override // java.lang.Runnable
                    public final void run() {
                        FileLoader.Session.dispatchResult$lambda$5(this.f2838a, length, exc);
                    }
                });
            } else {
                innerDispatchResult(length, exc);
            }
        }

        private final void extract(File file) throws Throwable {
            Exception exc = new Exception("Failed to extract " + file.getName());
            FileInputStream fileInputStream = null;
            try {
                try {
                    FileInputStream fileInputStream2 = new FileInputStream(file);
                    try {
                        File file2 = new File(file.getParentFile(), file.getName() + ".tmp");
                        FileUtils.deleteFile(file2);
                        if (ZipUtils.extract(fileInputStream2, file2)) {
                            FileUtils.deleteFile(file);
                            if (file2.renameTo(file)) {
                                this.status = 2;
                                dispatchResult(null);
                            } else {
                                FileUtils.deleteFile(file2);
                                this.status = 2;
                                dispatchResult(exc);
                            }
                        } else {
                            FileUtils.deleteFile(file2);
                            this.status = 2;
                            dispatchResult(exc);
                        }
                        Utils.safeClose(fileInputStream2);
                    } catch (Exception e) {
                        e = e;
                        fileInputStream = fileInputStream2;
                        this.status = 2;
                        dispatchResult(e);
                        Utils.safeClose(fileInputStream);
                    } catch (Throwable th) {
                        th = th;
                        fileInputStream = fileInputStream2;
                        Utils.safeClose(fileInputStream);
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (Exception e2) {
                e = e2;
            }
        }

        private final FileLoader$Session$callbackWrapper$2.AnonymousClass1 getCallbackWrapper() {
            return (FileLoader$Session$callbackWrapper$2.AnonymousClass1) this.callbackWrapper$delegate.getValue();
        }

        private final File getFile(String str) {
            return new File(this.this$0.getDir(), str);
        }

        private final File getWritingFile(File file) {
            String name = file.getName();
            t.g(name);
            if (kotlin.text.t.v(name, ".w", false, 2, null)) {
                return file;
            }
            return new File(file.getParent(), name + ".w");
        }

        public final void abort(@Nullable IFileDownloadCallback iFileDownloadCallback) {
            if (iFileDownloadCallback != null) {
                FileLoader fileLoader = this.this$0;
                this.callbacks.remove(iFileDownloadCallback);
                if (this.callbacks.isEmpty()) {
                    this.aborted = true;
                    fileLoader.getSessionMap().remove(getKey());
                }
            }
        }

        @MainThread
        public final void addCallback(@NotNull IFileDownloadCallback callback) {
            t.j(callback, "callback");
            if (this.callbacks.contains(callback)) {
                return;
            }
            this.callbacks.add(callback);
            if (this.dispatched) {
                File file = this.file;
                if ((file != null ? file.length() : -1L) <= 0) {
                    callback.onError(this.request.getUrl(), null);
                    return;
                }
                File file2 = this.file;
                t.g(file2);
                callback.onPostExecute(file2);
            }
        }

        @NotNull
        public final String getKey() {
            return this.this$0.getSessionKey(this.request);
        }

        @Override // java.lang.Runnable
        public void run() throws Throwable {
            INVFileCache cache;
            if (this.aborted) {
                return;
            }
            if (this.request.applyCache() && (cache = this.this$0.getCache()) != null) {
                FileLoader fileLoader = this.this$0;
                File file = cache.get(fileLoader.getFileName(this.request));
                this.file = file;
                if ((file != null ? file.length() : -1L) > 0) {
                    File file2 = this.file;
                    t.g(file2);
                    if (fileLoader.validateCacheFile(file2)) {
                        this.status = 2;
                        dispatchResult(null);
                        return;
                    }
                    FileUtils.deleteFile(this.file);
                }
            }
            this.this$0.getSessionMap().put(getKey(), this);
            this.this$0.getDownloader().execute(this, this.this$0.getDir(), getCallbackWrapper(), this.this$0.dispatchToMainThread());
            if (this.request.applyZipExtract()) {
                File file3 = this.file;
                if ((file3 != null ? file3.length() : -1L) <= 0) {
                    this.status = -1;
                    dispatchResult(new Exception("Invalid file"));
                } else {
                    File file4 = this.file;
                    if (file4 != null) {
                        extract(file4);
                    }
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void dispatchResult$lambda$5(Session this$0, long j6, Exception exc) {
            t.j(this$0, "this$0");
            this$0.innerDispatchResult(j6, exc);
        }

        public final void removeCallbackByTag(@NotNull Object tag) {
            t.j(tag, "tag");
            ArrayList arrayList = new ArrayList();
            for (IFileDownloadCallback iFileDownloadCallback : this.callbacks) {
                Object tag2 = iFileDownloadCallback.getTag();
                if (tag2 != null && t.e(tag2, tag)) {
                    arrayList.add(iFileDownloadCallback);
                }
            }
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                this.callbacks.remove((IFileDownloadCallback) it.next());
            }
        }
    }

    public abstract boolean dispatchToMainThread();

    @NotNull
    public final NVContext getCtx() {
        return this.ctx;
    }

    protected final int getMaxSize() {
        return this.maxSize;
    }

    @NotNull
    public final String getPath() {
        return this.path;
    }

    public void onDestroy() {
    }

    public void onPause() {
    }

    public void onResume() {
    }

    public void onStart() {
    }

    @Nullable
    public abstract INVFileCache provideCache(@NotNull File file);

    public final void setDir(@NotNull File file) {
        t.j(file, "<set-?>");
        this.dir = file;
    }

    protected final void setMaxSize(int i10) {
        this.maxSize = i10;
    }

    public abstract boolean validateCacheFile(@NotNull File file);

    public FileLoader(@NotNull NVContext ctx, @NotNull String path) {
        t.j(ctx, "ctx");
        t.j(path, "path");
        this.ctx = ctx;
        this.path = path;
        this.cache$delegate = o.a(new FileLoader$cache$2(this));
        this.downloader$delegate = o.a(new FileLoader$downloader$2(this));
        this.sessionMap$delegate = o.a(FileLoader$sessionMap$2.INSTANCE);
        this.executorService = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60L, TimeUnit.SECONDS, new SynchronousQueue(), new ThreadFactory() { // from class: com.narvii.util.fileloader.f
            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                return FileLoader.executorService$lambda$0(runnable);
            }
        });
        initLoader();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Thread executorService$lambda$0(Runnable runnable) {
        return new Thread(runnable, "File Loader Thread");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final FileDownloader getDownloader() {
        return (FileDownloader) this.downloader$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ConcurrentHashMap<String, Session> getSessionMap() {
        return (ConcurrentHashMap) this.sessionMap$delegate.getValue();
    }

    public final boolean containsRealCallback(@NotNull String sessionKey, @Nullable Object obj) {
        t.j(sessionKey, "sessionKey");
        Session session = getSessionMap().get(sessionKey);
        if (session != null) {
            return session.containsRealCallback(obj);
        }
        return false;
    }

    @Nullable
    protected final INVFileCache getCache() {
        return (INVFileCache) this.cache$delegate.getValue();
    }

    @NotNull
    public final File getDir() {
        File file = this.dir;
        if (file != null) {
            return file;
        }
        t.B("dir");
        return null;
    }

    @NotNull
    public String getFileName(@NotNull FileLoaderRequest request) {
        t.j(request, "request");
        FileLoaderRequest.Companion.Builder builder = request.getBuilder();
        int iB0 = u.b0(builder.getUrl(), '?', 0, false, 6, null);
        if (iB0 < 0) {
            iB0 = builder.getUrl().length();
        }
        String strSubstring = builder.getUrl().substring(u.h0(builder.getUrl(), '/', iB0, false, 4, null) + 1, iB0);
        t.i(strSubstring, "substring(...)");
        StringBuilder sb = new StringBuilder();
        if (strSubstring.length() >= 128) {
            strSubstring = strSubstring.substring(strSubstring.length() - 128);
            t.i(strSubstring, "substring(...)");
        }
        sb.append(Utils.safeFilename(strSubstring));
        sb.append("-r");
        sb.append(builder.getRev());
        return sb.toString();
    }

    @Nullable
    public Session getSession(@Nullable String str) {
        if (str == null) {
            return null;
        }
        return getSessionMap().get(str);
    }

    @NotNull
    public String getSessionKey(@NotNull FileLoaderRequest request) {
        t.j(request, "request");
        return request.getUrl();
    }

    @NotNull
    protected w7.u<File, Boolean> initCacheDir() {
        boolean z6;
        File externalCacheDir = this.ctx.getContext().getExternalCacheDir();
        if (externalCacheDir == null || !externalCacheDir.isDirectory()) {
            Log.w("fail to get external cache dir, using internal cache instead");
            externalCacheDir = this.ctx.getContext().getCacheDir();
            z6 = true;
        } else {
            z6 = false;
        }
        return new w7.u<>(new File(externalCacheDir, this.path), Boolean.valueOf(z6));
    }

    public final void requireFile(@NotNull FileLoaderRequest request, @Nullable IFileDownloadCallback iFileDownloadCallback) {
        t.j(request, "request");
        if (!getDir().exists()) {
            initLoader();
        }
        Session session = getSessionMap().get(getSessionKey(request));
        if (session != null && iFileDownloadCallback != null) {
            session.addCallback(iFileDownloadCallback);
        } else {
            this.executorService.execute(new Session(this, request, iFileDownloadCallback));
        }
    }

    private final void initLoader() {
        long jMax;
        w7.u<File, Boolean> uVarInitCacheDir = initCacheDir();
        setDir(uVarInitCacheDir.c());
        getDir().mkdir();
        if (uVarInitCacheDir.d().booleanValue()) {
            jMax = Math.max(PlaybackStateCompat.ACTION_SET_PLAYBACK_SPEED, Math.min((StorageUtils.getAvailableInternalMemorySize() * ((long) 3)) / ((long) 100), 16777216L));
        } else {
            jMax = Math.max(PlaybackStateCompat.ACTION_SET_PLAYBACK_SPEED, Math.min((StorageUtils.getAvailableInternalMemorySize() * ((long) 3)) / ((long) 100), 33554432L));
        }
        this.maxSize = (int) jMax;
    }

    public final void abort(@NotNull String url, @Nullable IFileDownloadCallback iFileDownloadCallback) {
        t.j(url, "url");
        Session session = getSessionMap().get(url);
        if (session != null) {
            session.abort(iFileDownloadCallback);
        }
    }

    public final void abortAll() {
        Iterator<Map.Entry<String, Session>> it = getSessionMap().entrySet().iterator();
        while (it.hasNext()) {
            it.next().getValue().setAborted(true);
        }
        getSessionMap().clear();
    }

    public void clearCache() {
        abortAll();
        Utils.deleteDir(getDir());
    }

    public long getCacheSize() {
        return Utils.getFolderSize(getDir());
    }

    public void onStop() {
        abortAll();
    }

    public final void removeCallbackByTag(@NotNull Object tag) {
        t.j(tag, "tag");
        Iterator<Session> it = getSessionMap().values().iterator();
        while (it.hasNext()) {
            it.next().removeCallbackByTag(tag);
        }
    }

    public final void trimAndFlush(long j6) {
        INVFileCache cache = getCache();
        if (cache != null) {
            cache.trimAndFlush(this.maxSize, j6);
        }
    }
}
