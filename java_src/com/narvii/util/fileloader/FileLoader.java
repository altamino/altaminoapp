package com.narvii.util.fileloader;

import android.content.Context;
import android.support.v4.view.accessibility.AccessibilityEventCompat;
import com.narvii.app.NVContext;
import com.narvii.util.FileUtils;
import com.narvii.util.Log;
import com.narvii.util.StorageUtils;
import com.narvii.util.Utils;
import com.narvii.util.ZipUtils;
import com.narvii.util.fileloader.FileLoader;
import com.narvii.util.fileloader.FileLoader$Session$callbackWrapper$2;
import com.narvii.util.fileloader.FileLoaderRequest;
import com.narvii.util.fileloader.IFileDownloadCallback;
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
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Pair;
import kotlin.TypeCastException;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;

/* compiled from: FileLoader.kt */
/* loaded from: classes.dex */
public abstract class FileLoader {
    static final /* synthetic */ KProperty[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(FileLoader.class), "cache", "getCache()Lcom/narvii/util/fileloader/INVFileCache;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(FileLoader.class), "downloader", "getDownloader()Lcom/narvii/util/fileloader/FileDownloader;")), Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(FileLoader.class), "sessionMap", "getSessionMap()Ljava/util/concurrent/ConcurrentHashMap;"))};
    public static final Companion Companion = new Companion(null);
    public static final int LOAD_STATUS_DOWNLOADING = 1;
    public static final int LOAD_STATUS_FAILED = -1;
    public static final int LOAD_STATUS_FINISHED = 2;
    public static final int LOAD_STATUS_IDLE = 0;
    private final Lazy cache$delegate;
    private final NVContext ctx;
    public File dir;
    private final Lazy downloader$delegate;
    private final ThreadPoolExecutor executorService;
    private int maxSize;
    private final String path;
    private final Lazy sessionMap$delegate;

    /* JADX INFO: Access modifiers changed from: private */
    public final FileDownloader getDownloader() {
        Lazy lazy = this.downloader$delegate;
        KProperty kProperty = $$delegatedProperties[1];
        return (FileDownloader) lazy.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ConcurrentHashMap<String, Session> getSessionMap() {
        Lazy lazy = this.sessionMap$delegate;
        KProperty kProperty = $$delegatedProperties[2];
        return (ConcurrentHashMap) lazy.getValue();
    }

    public abstract boolean dispatchToMainThread();

    protected final INVFileCache getCache() {
        Lazy lazy = this.cache$delegate;
        KProperty kProperty = $$delegatedProperties[0];
        return (INVFileCache) lazy.getValue();
    }

    public void onDestroy() {
    }

    public void onPause() {
    }

    public void onResume() {
    }

    public void onStart() {
    }

    public abstract INVFileCache provideCache(File file);

    public abstract boolean validateCacheFile(File file);

    public FileLoader(NVContext ctx, String path) {
        Intrinsics.checkParameterIsNotNull(ctx, "ctx");
        Intrinsics.checkParameterIsNotNull(path, "path");
        this.ctx = ctx;
        this.path = path;
        this.cache$delegate = LazyKt__LazyJVMKt.lazy(new Function0<INVFileCache>() { // from class: com.narvii.util.fileloader.FileLoader$cache$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final INVFileCache invoke() {
                FileLoader fileLoader = this.this$0;
                return fileLoader.provideCache(fileLoader.getDir());
            }
        });
        this.downloader$delegate = LazyKt__LazyJVMKt.lazy(new Function0<FileDownloader>() { // from class: com.narvii.util.fileloader.FileLoader$downloader$2
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final FileDownloader invoke() {
                return new FileDownloader(this.this$0.getCtx());
            }
        });
        this.sessionMap$delegate = LazyKt__LazyJVMKt.lazy(new Function0<ConcurrentHashMap<String, Session>>() { // from class: com.narvii.util.fileloader.FileLoader$sessionMap$2
            @Override // kotlin.jvm.functions.Function0
            public final ConcurrentHashMap<String, FileLoader.Session> invoke() {
                return new ConcurrentHashMap<>();
            }
        });
        this.executorService = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60L, TimeUnit.SECONDS, new SynchronousQueue(), new ThreadFactory() { // from class: com.narvii.util.fileloader.FileLoader$executorService$1
            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                return new Thread(runnable, "File Loader Thread");
            }
        });
        initLoader();
    }

    public final NVContext getCtx() {
        return this.ctx;
    }

    public final String getPath() {
        return this.path;
    }

    public final File getDir() {
        File file = this.dir;
        if (file != null) {
            return file;
        }
        Intrinsics.throwUninitializedPropertyAccessException("dir");
        throw null;
    }

    public final void setDir(File file) {
        Intrinsics.checkParameterIsNotNull(file, "<set-?>");
        this.dir = file;
    }

    protected final int getMaxSize() {
        return this.maxSize;
    }

    protected final void setMaxSize(int i) {
        this.maxSize = i;
    }

    /* compiled from: FileLoader.kt */
    /* loaded from: classes3.dex */
    public final class Session implements Runnable {
        static final /* synthetic */ KProperty[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(Session.class), "callbackWrapper", "getCallbackWrapper()Lcom/narvii/util/fileloader/FileLoader$Session$callbackWrapper$2$1;"))};
        private boolean aborted;
        private final IFileDownloadCallback callback;
        private final Lazy callbackWrapper$delegate;
        private final ConcurrentLinkedQueue<IFileDownloadCallback> callbacks;
        private int contentLength;
        private volatile boolean dispatched;
        private int downloadedByte;
        private File file;
        private final FileLoaderRequest request;
        private int status;
        final /* synthetic */ FileLoader this$0;
        private File writingFile;

        private final FileLoader$Session$callbackWrapper$2.AnonymousClass1 getCallbackWrapper() {
            Lazy lazy = this.callbackWrapper$delegate;
            KProperty kProperty = $$delegatedProperties[0];
            return (FileLoader$Session$callbackWrapper$2.AnonymousClass1) lazy.getValue();
        }

        public static /* synthetic */ void status$annotations() {
        }

        public Session(FileLoader fileLoader, FileLoaderRequest request, IFileDownloadCallback iFileDownloadCallback) {
            File file;
            Intrinsics.checkParameterIsNotNull(request, "request");
            this.this$0 = fileLoader;
            this.request = request;
            this.callback = iFileDownloadCallback;
            this.callbacks = new ConcurrentLinkedQueue<>();
            this.callbackWrapper$delegate = LazyKt__LazyJVMKt.lazy(new Function0<FileLoader$Session$callbackWrapper$2.AnonymousClass1>() { // from class: com.narvii.util.fileloader.FileLoader$Session$callbackWrapper$2
                {
                    super(0);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                /* JADX WARN: Type inference failed for: r0v0, types: [com.narvii.util.fileloader.FileLoader$Session$callbackWrapper$2$1] */
                @Override // kotlin.jvm.functions.Function0
                public final AnonymousClass1 invoke() {
                    return new IFileDownloadCallback() { // from class: com.narvii.util.fileloader.FileLoader$Session$callbackWrapper$2.1
                        @Override // com.narvii.util.fileloader.IFileDownloadCallback
                        public Object getRealCallback() {
                            return IFileDownloadCallback.DefaultImpls.getRealCallback(this);
                        }

                        @Override // com.narvii.util.fileloader.IFileDownloadCallback
                        public Object getTag() {
                            return IFileDownloadCallback.DefaultImpls.getTag(this);
                        }

                        @Override // com.narvii.util.fileloader.IFileDownloadCallback
                        public void onProgressUpdate(final int i, final int i2) {
                            Iterator it = FileLoader$Session$callbackWrapper$2.this.this$0.callbacks.iterator();
                            while (it.hasNext()) {
                                final IFileDownloadCallback iFileDownloadCallback2 = (IFileDownloadCallback) it.next();
                                Utils.post(new Runnable() { // from class: com.narvii.util.fileloader.FileLoader$Session$callbackWrapper$2$1$onProgressUpdate$1
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        iFileDownloadCallback2.onProgressUpdate(i, i2);
                                    }
                                });
                            }
                        }

                        @Override // com.narvii.util.fileloader.IFileDownloadCallback
                        public void onPostExecute(File file2) {
                            Intrinsics.checkParameterIsNotNull(file2, "file");
                            if (FileLoader$Session$callbackWrapper$2.this.this$0.getRequest().applyZipExtract()) {
                                return;
                            }
                            FileLoader$Session$callbackWrapper$2.this.this$0.setStatus(2);
                            FileLoader$Session$callbackWrapper$2.this.this$0.dispatchResult(null);
                        }

                        @Override // com.narvii.util.fileloader.IFileDownloadCallback
                        public void onError(String url, Exception exc) {
                            Intrinsics.checkParameterIsNotNull(url, "url");
                            FileLoader$Session$callbackWrapper$2.this.this$0.setStatus(-1);
                            FileLoader$Session$callbackWrapper$2.this.this$0.dispatchResult(exc);
                        }
                    };
                }
            });
            this.file = getFile(fileLoader.getFileName(this.request));
            File file2 = this.file;
            if (file2 == null) {
                file = new File(fileLoader.getDir(), fileLoader.getFileName(this.request) + ".w");
            } else {
                if (file2 == null) {
                    Intrinsics.throwNpe();
                    throw null;
                }
                file = getWritingFile(file2);
            }
            this.writingFile = file;
            IFileDownloadCallback iFileDownloadCallback2 = this.callback;
            if (iFileDownloadCallback2 != null) {
                this.callbacks.add(iFileDownloadCallback2);
            }
        }

        public final FileLoaderRequest getRequest() {
            return this.request;
        }

        public final int getContentLength() {
            return this.contentLength;
        }

        public final void setContentLength(int i) {
            this.contentLength = i;
        }

        public final int getDownloadedByte() {
            return this.downloadedByte;
        }

        public final void setDownloadedByte(int i) {
            this.downloadedByte = i;
        }

        public final boolean getDispatched() {
            return this.dispatched;
        }

        public final void setDispatched(boolean z) {
            this.dispatched = z;
        }

        public final boolean getAborted() {
            return this.aborted;
        }

        public final void setAborted(boolean z) {
            this.aborted = z;
        }

        public final File getFile() {
            return this.file;
        }

        public final void setFile(File file) {
            this.file = file;
        }

        public final File getWritingFile() {
            return this.writingFile;
        }

        public final void setWritingFile(File file) {
            Intrinsics.checkParameterIsNotNull(file, "<set-?>");
            this.writingFile = file;
        }

        public final int getStatus() {
            return this.status;
        }

        public final void setStatus(int i) {
            this.status = i;
        }

        public final boolean containsRealCallback(Object obj) {
            if (obj == null) {
                return false;
            }
            Iterator<IFileDownloadCallback> it = this.callbacks.iterator();
            while (it.hasNext()) {
                if (Intrinsics.areEqual(it.next().getRealCallback(), obj)) {
                    return true;
                }
            }
            return false;
        }

        public final void addCallback(IFileDownloadCallback callback) {
            Intrinsics.checkParameterIsNotNull(callback, "callback");
            if (this.callbacks.contains(callback)) {
                return;
            }
            this.callbacks.add(callback);
            if (this.dispatched) {
                File file = this.file;
                if ((file != null ? file.length() : -1L) > 0) {
                    File file2 = this.file;
                    if (file2 != null) {
                        callback.onPostExecute(file2);
                        return;
                    } else {
                        Intrinsics.throwNpe();
                        throw null;
                    }
                }
                callback.onError(this.request.getUrl(), null);
            }
        }

        public final String getKey() {
            return this.this$0.getSessionKey(this.request);
        }

        public final void abort(IFileDownloadCallback iFileDownloadCallback) {
            if (iFileDownloadCallback != null) {
                this.callbacks.remove(iFileDownloadCallback);
                if (this.callbacks.isEmpty()) {
                    this.aborted = true;
                    this.this$0.getSessionMap().remove(getKey());
                }
            }
        }

        public final void removeCallbackByTag(Object tag) {
            Intrinsics.checkParameterIsNotNull(tag, "tag");
            ArrayList arrayList = new ArrayList();
            Iterator<IFileDownloadCallback> it = this.callbacks.iterator();
            while (it.hasNext()) {
                IFileDownloadCallback next = it.next();
                Object tag2 = next.getTag();
                if (tag2 != null && Intrinsics.areEqual(tag2, tag)) {
                    arrayList.add(next);
                }
            }
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                this.callbacks.remove((IFileDownloadCallback) it2.next());
            }
        }

        @Override // java.lang.Runnable
        public void run() throws Throwable {
            INVFileCache cache;
            if (this.aborted) {
                return;
            }
            if (this.request.applyCache() && (cache = this.this$0.getCache()) != null) {
                this.file = cache.get(this.this$0.getFileName(this.request));
                File file = this.file;
                if ((file != null ? file.length() : -1L) > 0) {
                    FileLoader fileLoader = this.this$0;
                    File file2 = this.file;
                    if (file2 == null) {
                        Intrinsics.throwNpe();
                        throw null;
                    }
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

        private final void extract(File file) throws Throwable {
            FileInputStream fileInputStream;
            Exception exc = new Exception("Failed to extract " + file.getName());
            FileInputStream fileInputStream2 = null;
            try {
                try {
                    fileInputStream = new FileInputStream(file);
                } catch (Throwable th) {
                    th = th;
                    fileInputStream = fileInputStream2;
                }
            } catch (Exception e) {
                e = e;
            }
            try {
                File file2 = new File(file.getParentFile(), file.getName() + ".tmp");
                FileUtils.deleteFile(file2);
                if (ZipUtils.extract(fileInputStream, file2)) {
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
                Utils.safeClose(fileInputStream);
            } catch (Exception e2) {
                e = e2;
                fileInputStream2 = fileInputStream;
                this.status = 2;
                dispatchResult(e);
                Utils.safeClose(fileInputStream2);
            } catch (Throwable th2) {
                th = th2;
                Utils.safeClose(fileInputStream);
                throw th;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void dispatchResult(final Exception exc) {
            File file = this.file;
            final long length = file != null ? file.length() : -1L;
            if ((this.status != 2 || length <= 0) && (this.status != -1 || length > 0)) {
                return;
            }
            if (this.this$0.dispatchToMainThread()) {
                Utils.post(new Runnable() { // from class: com.narvii.util.fileloader.FileLoader$Session$dispatchResult$1
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.this$0.innerDispatchResult(length, exc);
                    }
                });
            } else {
                innerDispatchResult(length, exc);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void innerDispatchResult(long j, Exception exc) {
            this.dispatched = true;
            if (Intrinsics.areEqual((Session) this.this$0.getSessionMap().get(getKey()), this)) {
                this.this$0.getSessionMap().remove(getKey());
            }
            Iterator<IFileDownloadCallback> it = this.callbacks.iterator();
            while (it.hasNext()) {
                IFileDownloadCallback next = it.next();
                if (j > 0) {
                    File file = this.file;
                    if (file == null) {
                        Intrinsics.throwNpe();
                        throw null;
                    }
                    next.onPostExecute(file);
                } else {
                    next.onError(this.request.getUrl(), exc);
                }
            }
        }

        private final File getFile(String str) {
            return new File(this.this$0.getDir(), str);
        }

        private final File getWritingFile(File file) {
            String fn = file.getName();
            Intrinsics.checkExpressionValueIsNotNull(fn, "fn");
            if (StringsKt__StringsJVMKt.endsWith$default(fn, ".w", false, 2, null)) {
                return file;
            }
            return new File(file.getParent(), fn + ".w");
        }
    }

    /* compiled from: FileLoader.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {

        /* compiled from: FileLoader.kt */
        @Retention(RetentionPolicy.SOURCE)
        /* loaded from: classes.dex */
        public @interface LoadStatus {
        }

        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    protected Pair<File, Boolean> initCacheDir() {
        boolean z;
        Context context = this.ctx.getContext();
        Intrinsics.checkExpressionValueIsNotNull(context, "ctx.context");
        File externalCacheDir = context.getExternalCacheDir();
        if (externalCacheDir == null || !externalCacheDir.isDirectory()) {
            Log.w("fail to get external cache dir, using internal cache instead");
            Context context2 = this.ctx.getContext();
            Intrinsics.checkExpressionValueIsNotNull(context2, "ctx.context");
            externalCacheDir = context2.getCacheDir();
            z = true;
        } else {
            z = false;
        }
        return new Pair<>(new File(externalCacheDir, this.path), Boolean.valueOf(z));
    }

    private final void initLoader() {
        long jMax;
        Pair<File, Boolean> pairInitCacheDir = initCacheDir();
        this.dir = pairInitCacheDir.getFirst();
        File file = this.dir;
        if (file == null) {
            Intrinsics.throwUninitializedPropertyAccessException("dir");
            throw null;
        }
        file.mkdir();
        if (pairInitCacheDir.getSecond().booleanValue()) {
            jMax = Math.max(AccessibilityEventCompat.TYPE_WINDOWS_CHANGED, Math.min((StorageUtils.getAvailableInternalMemorySize() * 3) / 100, 16777216));
        } else {
            jMax = Math.max(AccessibilityEventCompat.TYPE_WINDOWS_CHANGED, Math.min((StorageUtils.getAvailableInternalMemorySize() * 3) / 100, 33554432));
        }
        this.maxSize = (int) jMax;
    }

    public final void requireFile(FileLoaderRequest request, IFileDownloadCallback iFileDownloadCallback) {
        Intrinsics.checkParameterIsNotNull(request, "request");
        File file = this.dir;
        if (file == null) {
            Intrinsics.throwUninitializedPropertyAccessException("dir");
            throw null;
        }
        if (!file.exists()) {
            initLoader();
        }
        Session session = getSessionMap().get(getSessionKey(request));
        if (session != null && iFileDownloadCallback != null) {
            session.addCallback(iFileDownloadCallback);
        } else {
            this.executorService.execute(new Session(this, request, iFileDownloadCallback));
        }
    }

    public final boolean containsRealCallback(String sessionKey, Object obj) {
        Intrinsics.checkParameterIsNotNull(sessionKey, "sessionKey");
        Session session = getSessionMap().get(sessionKey);
        if (session != null) {
            return session.containsRealCallback(obj);
        }
        return false;
    }

    public String getFileName(FileLoaderRequest request) {
        Intrinsics.checkParameterIsNotNull(request, "request");
        FileLoaderRequest.Companion.Builder builder = request.getBuilder();
        int iIndexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) builder.getUrl(), '?', 0, false, 6, (Object) null);
        if (iIndexOf$default < 0) {
            iIndexOf$default = builder.getUrl().length();
        }
        String url = builder.getUrl();
        int iLastIndexOf$default = StringsKt__StringsKt.lastIndexOf$default((CharSequence) builder.getUrl(), '/', iIndexOf$default, false, 4, (Object) null) + 1;
        if (url == null) {
            throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
        }
        String strSubstring = url.substring(iLastIndexOf$default, iIndexOf$default);
        Intrinsics.checkExpressionValueIsNotNull(strSubstring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        StringBuilder sb = new StringBuilder();
        if (strSubstring.length() >= 128) {
            int length = strSubstring.length() - 128;
            if (strSubstring == null) {
                throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
            }
            strSubstring = strSubstring.substring(length);
            Intrinsics.checkExpressionValueIsNotNull(strSubstring, "(this as java.lang.String).substring(startIndex)");
        }
        sb.append(Utils.safeFilename(strSubstring));
        sb.append("-r");
        sb.append(builder.getRev());
        return sb.toString();
    }

    public String getSessionKey(FileLoaderRequest request) {
        Intrinsics.checkParameterIsNotNull(request, "request");
        return request.getUrl();
    }

    public Session getSession(String str) {
        if (str == null) {
            return null;
        }
        return getSessionMap().get(str);
    }

    public final void removeCallbackByTag(Object tag) {
        Intrinsics.checkParameterIsNotNull(tag, "tag");
        Iterator<Session> it = getSessionMap().values().iterator();
        while (it.hasNext()) {
            it.next().removeCallbackByTag(tag);
        }
    }

    public final void trimAndFlush(long j) {
        INVFileCache cache = getCache();
        if (cache != null) {
            cache.trimAndFlush(this.maxSize, j);
        }
    }

    public final void abort(String url, IFileDownloadCallback iFileDownloadCallback) {
        Intrinsics.checkParameterIsNotNull(url, "url");
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

    public void onStop() {
        abortAll();
    }

    public void clearCache() {
        abortAll();
        File file = this.dir;
        if (file != null) {
            Utils.deleteDir(file);
        } else {
            Intrinsics.throwUninitializedPropertyAccessException("dir");
            throw null;
        }
    }

    public long getCacheSize() {
        File file = this.dir;
        if (file != null) {
            return Utils.getFolderSize(file);
        }
        Intrinsics.throwUninitializedPropertyAccessException("dir");
        throw null;
    }
}
