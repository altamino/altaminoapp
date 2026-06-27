package com.narvii.util.drawables.gif;

import android.net.Uri;
import com.narvii.app.NVContext;
import com.narvii.photos.PhotoManager;
import com.narvii.util.Log;
import com.narvii.util.Utils;
import com.narvii.util.drawables.DrawableLoaderListener;
import com.narvii.util.drawables.DrawableUtils;
import com.narvii.util.fileloader.DiskDaemonHelper;
import com.narvii.util.http.ProxyStack;
import com.narvii.util.image.MediaStoreUtils;
import java.io.File;
import java.lang.ref.WeakReference;
import java.net.HttpURLConnection;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;

/* loaded from: classes3.dex */
public class GifLoader {
    public static final int STATE_LOADING = 2;
    public static final int STATE_NONE = 0;
    public static final int STATE_PLAYING = 3;
    public static final int STATE_QUEUEING = 1;
    NVContext context;
    File dir;
    final DiskDaemonHelper diskDaemonHelper;
    ProxyStack stack;
    final LinkedBlockingQueue<Session> queue1 = new LinkedBlockingQueue<>();
    final LinkedBlockingQueue<Session> queue2 = new LinkedBlockingQueue<>();
    final HashMap<String, Session> map = new HashMap<>();
    final ConcurrentHashMap<String, WeakReference<NVGifDrawable>> refs = new ConcurrentHashMap<>();
    final ArrayList<WorkerDownload> workerDownloads = new ArrayList<>();
    final ArrayList<WorkerLoad> workerLoads = new ArrayList<>();

    protected int maxWorkerDownloadCount() {
        return 4;
    }

    protected int maxWorkerLoadCount() {
        return 1;
    }

    private static class ListenerStub {
        DrawableLoaderListener listener;
        String url;

        ListenerStub(String str, DrawableLoaderListener drawableLoaderListener) {
            this.url = str;
            this.listener = drawableLoaderListener;
        }

        public int hashCode() {
            return this.listener.hashCode();
        }

        public boolean equals(Object obj) {
            return obj == this || ((obj instanceof ListenerStub) && ((ListenerStub) obj).listener == this.listener);
        }
    }

    private class Session implements Runnable {
        boolean aborted;
        int contentLength;
        boolean dispatched;
        int downloadedBytes;
        NVGifDrawable drawable;
        final File file;
        final String key;
        final ArrayList<ListenerStub> listeners = new ArrayList<>();
        int status;
        final String url;
        final File writingFile;

        public Session(String str, String str2, File file, File file2, DrawableLoaderListener drawableLoaderListener) {
            this.key = str;
            this.url = str2;
            this.file = file;
            this.writingFile = file2;
            this.listeners.add(new ListenerStub(str2, drawableLoaderListener));
        }

        public void addListener(String str, DrawableLoaderListener drawableLoaderListener) {
            if (this.aborted) {
                return;
            }
            ListenerStub listenerStub = new ListenerStub(str, drawableLoaderListener);
            if (this.listeners.contains(listenerStub)) {
                return;
            }
            this.listeners.add(listenerStub);
            if (this.dispatched) {
                NVGifDrawable nVGifDrawable = this.drawable;
                if (nVGifDrawable != null) {
                    drawableLoaderListener.onFinished(str, new WrapGifDrawable(nVGifDrawable), true);
                } else {
                    drawableLoaderListener.onFailed(str);
                }
            }
        }

        public void update() {
            int i;
            int i2;
            if (this.dispatched || this.aborted) {
                return;
            }
            if (this.drawable == null) {
                int i3 = this.status;
                boolean z = false;
                if (i3 == 0 || (i3 != 1 ? !(i3 != 2 && i3 != 3) : !((i2 = this.downloadedBytes) <= 65536 && i2 <= (this.contentLength * 3) / 10))) {
                    z = true;
                }
                if (z) {
                    try {
                        NVGifDrawable nVGifDrawable = new NVGifDrawable(this.file, this.writingFile);
                        if (nVGifDrawable.getIntrinsicWidth() > 0 && nVGifDrawable.getIntrinsicHeight() > 0 && nVGifDrawable.getNumberOfFrames() > 0) {
                            this.drawable = nVGifDrawable;
                        } else {
                            nVGifDrawable.recycle();
                        }
                    } catch (Exception unused) {
                    } catch (OutOfMemoryError e) {
                        Log.w("OutOfMemory when open gif", e);
                    }
                }
            }
            if (!(this.status == -1 && this.drawable == null) && ((this.status != 1 || this.drawable == null) && (i = this.status) != 2 && (i != 3 || this.drawable == null))) {
                return;
            }
            Utils.post(this);
            this.dispatched = true;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.aborted) {
                return;
            }
            NVGifDrawable nVGifDrawable = this.drawable;
            if (nVGifDrawable != null) {
                GifLoader.this.refs.put(this.key, new WeakReference<>(nVGifDrawable));
                Iterator<ListenerStub> it = this.listeners.iterator();
                while (it.hasNext()) {
                    ListenerStub next = it.next();
                    next.listener.onFinished(next.url, new WrapGifDrawable(this.drawable), false);
                }
                return;
            }
            Iterator<ListenerStub> it2 = this.listeners.iterator();
            while (it2.hasNext()) {
                ListenerStub next2 = it2.next();
                next2.listener.onFailed(next2.url);
            }
        }
    }

    public GifLoader(NVContext nVContext, File file) {
        this.context = nVContext;
        this.dir = file;
        this.diskDaemonHelper = new DiskDaemonHelper(file, "gif-diskd");
        this.stack = new ProxyStack(this.context);
    }

    public String getKey(String str) {
        int iIndexOf = str.indexOf(63);
        return iIndexOf > 0 ? str.substring(0, iIndexOf) : str;
    }

    public List<String> getLoadingRequests() {
        ArrayList arrayList;
        synchronized (this.map) {
            arrayList = null;
            for (Session session : this.map.values()) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(session.url);
            }
        }
        return arrayList == null ? Collections.emptyList() : arrayList;
    }

    public int getLoadingProgress(String str) {
        Session session;
        String key = getKey(str);
        synchronized (this.map) {
            session = this.map.get(key);
        }
        if (session == null) {
            return -1;
        }
        int i = session.contentLength;
        if (i > 0) {
            return (session.downloadedBytes * 100) / i;
        }
        return -2;
    }

    public int getLoadingState(String str) {
        Session session;
        String key = getKey(str);
        synchronized (this.map) {
            session = this.map.get(key);
        }
        if (session == null) {
            return 0;
        }
        int i = session.status;
        if (i == 0) {
            return 1;
        }
        if (session.drawable != null) {
            return 3;
        }
        return i == 1 ? 2 : 0;
    }

    public WrapGifDrawable getCachedGifDrawable(String str, boolean z) {
        if (!z && getLoadingState(str) != 0) {
            return null;
        }
        WeakReference<NVGifDrawable> weakReference = this.refs.get(getKey(str));
        NVGifDrawable nVGifDrawable = weakReference == null ? null : weakReference.get();
        if (nVGifDrawable != null) {
            return new WrapGifDrawable(nVGifDrawable);
        }
        return null;
    }

    public boolean isUrlCached(String str) {
        if (str == null) {
            return false;
        }
        if (getCachedGifDrawable(str, true) != null) {
            return true;
        }
        try {
            File file = getFile(str);
            if (file.exists()) {
                if (file.length() > 0) {
                    return true;
                }
            }
        } catch (Exception unused) {
        }
        return false;
    }

    public WrapGifDrawable getDiskCachedGifDrawable(String str) {
        if (getLoadingState(str) != 0) {
            return null;
        }
        WrapGifDrawable cachedGifDrawable = getCachedGifDrawable(str, true);
        if (cachedGifDrawable != null) {
            return cachedGifDrawable;
        }
        File file = getFile(str);
        if (file.length() > 0) {
            try {
                String key = getKey(str);
                NVGifDrawable nVGifDrawable = new NVGifDrawable(file);
                if (nVGifDrawable.getIntrinsicWidth() > 0 && nVGifDrawable.getIntrinsicHeight() > 0 && nVGifDrawable.getNumberOfFrames() > 0) {
                    this.refs.put(key, new WeakReference<>(nVGifDrawable));
                    return new WrapGifDrawable(nVGifDrawable);
                }
                nVGifDrawable.recycle();
            } catch (Exception unused) {
            } catch (OutOfMemoryError e) {
                Log.w("OutOfMemory when open gif", e);
            }
        }
        return null;
    }

    public WrapGifDrawable getLocalGifDrawable(String str) {
        File file;
        NVGifDrawable nVGifDrawable;
        WrapGifDrawable cachedGifDrawable = getCachedGifDrawable(str, true);
        if (cachedGifDrawable != null) {
            return cachedGifDrawable;
        }
        try {
            if (str.startsWith("assets://")) {
                nVGifDrawable = new NVGifDrawable(this.context.getContext().getAssets(), str.substring(9));
            } else {
                if (str.startsWith("photo://")) {
                    file = ((PhotoManager) this.context.getService("photo")).getPath(str);
                } else if (str.startsWith("mediastore://")) {
                    file = MediaStoreUtils.getImagePath(str);
                } else {
                    file = str.startsWith("file://") ? new File(Uri.parse(str).getPath()) : null;
                }
                nVGifDrawable = new NVGifDrawable(file);
            }
            if (nVGifDrawable.getIntrinsicWidth() > 0 && nVGifDrawable.getIntrinsicHeight() > 0 && nVGifDrawable.getNumberOfFrames() > 0) {
                this.refs.put(getKey(str), new WeakReference<>(nVGifDrawable));
                return new WrapGifDrawable(nVGifDrawable);
            }
        } catch (Exception unused) {
        } catch (OutOfMemoryError e) {
            Log.w("OutOfMemory when open local gif", e);
        }
        return null;
    }

    public void request(String str, DrawableLoaderListener drawableLoaderListener) {
        Session session;
        if (str.startsWith("assets://")) {
            WrapGifDrawable localGifDrawable = getLocalGifDrawable(str);
            if (localGifDrawable == null) {
                drawableLoaderListener.onFailed(str);
                return;
            } else {
                drawableLoaderListener.onFinished(str, localGifDrawable, true);
                return;
            }
        }
        String key = getKey(str);
        synchronized (this.map) {
            Session session2 = this.map.get(key);
            if (session2 != null) {
                session2.addListener(str, drawableLoaderListener);
            } else {
                NVGifDrawable nVGifDrawable = null;
                WeakReference<NVGifDrawable> weakReference = this.refs.get(key);
                if (weakReference != null && (nVGifDrawable = weakReference.get()) == null) {
                    this.refs.remove(key);
                }
                NVGifDrawable nVGifDrawable2 = nVGifDrawable;
                if (nVGifDrawable2 != null && (str.startsWith("photo://") || str.startsWith("mediastore://") || str.startsWith("file://"))) {
                    drawableLoaderListener.onFinished(str, new WrapGifDrawable(nVGifDrawable2), true);
                } else {
                    if (str.startsWith("photo://")) {
                        session = new Session(key, str, ((PhotoManager) this.context.getService("photo")).getPath(str), null, drawableLoaderListener);
                    } else if (str.startsWith("mediastore://")) {
                        session = new Session(key, str, MediaStoreUtils.getImagePath(str), null, drawableLoaderListener);
                    } else if (str.startsWith("file://")) {
                        session = new Session(key, str, new File(Uri.parse(str).getPath()), null, drawableLoaderListener);
                    } else {
                        File file = getFile(str);
                        if (nVGifDrawable2 != null && file.length() > 0) {
                            drawableLoaderListener.onFinished(str, new WrapGifDrawable(nVGifDrawable2), true);
                            session = session2;
                        } else {
                            Session session3 = new Session(key, str, file, DrawableUtils.getWritingFile(file), drawableLoaderListener);
                            if (nVGifDrawable2 != null) {
                                session3.drawable = nVGifDrawable2;
                                drawableLoaderListener.onFinished(str, new WrapGifDrawable(nVGifDrawable2), true);
                            }
                            session = session3;
                        }
                    }
                    if (session != null) {
                        this.map.put(key, session);
                        if (session.drawable == null) {
                            this.queue1.add(session);
                            addWorkerLoad();
                        } else {
                            this.queue2.add(session);
                            addWorkerDownload();
                        }
                    }
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0037  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void abort(java.lang.String r4, com.narvii.util.drawables.DrawableLoaderListener r5) {
        /*
            r3 = this;
            java.lang.String r4 = r3.getKey(r4)
            java.util.HashMap<java.lang.String, com.narvii.util.drawables.gif.GifLoader$Session> r0 = r3.map
            monitor-enter(r0)
            java.util.HashMap<java.lang.String, com.narvii.util.drawables.gif.GifLoader$Session> r1 = r3.map     // Catch: java.lang.Throwable -> L5e
            java.lang.Object r1 = r1.get(r4)     // Catch: java.lang.Throwable -> L5e
            com.narvii.util.drawables.gif.GifLoader$Session r1 = (com.narvii.util.drawables.gif.GifLoader.Session) r1     // Catch: java.lang.Throwable -> L5e
            if (r1 == 0) goto L37
            java.util.ArrayList<com.narvii.util.drawables.gif.GifLoader$ListenerStub> r2 = r1.listeners     // Catch: java.lang.Throwable -> L5e
            r2.remove(r5)     // Catch: java.lang.Throwable -> L5e
            java.util.ArrayList<com.narvii.util.drawables.gif.GifLoader$ListenerStub> r5 = r1.listeners     // Catch: java.lang.Throwable -> L5e
            boolean r5 = r5.isEmpty()     // Catch: java.lang.Throwable -> L5e
            if (r5 == 0) goto L37
            r5 = 1
            r1.aborted = r5     // Catch: java.lang.Throwable -> L5e
            java.util.HashMap<java.lang.String, com.narvii.util.drawables.gif.GifLoader$Session> r5 = r3.map     // Catch: java.lang.Throwable -> L5e
            r5.remove(r4)     // Catch: java.lang.Throwable -> L5e
            java.util.concurrent.LinkedBlockingQueue<com.narvii.util.drawables.gif.GifLoader$Session> r4 = r3.queue1     // Catch: java.lang.Throwable -> L5e
            boolean r4 = r4.remove(r1)     // Catch: java.lang.Throwable -> L5e
            java.util.concurrent.LinkedBlockingQueue<com.narvii.util.drawables.gif.GifLoader$Session> r5 = r3.queue2     // Catch: java.lang.Throwable -> L5e
            boolean r5 = r5.remove(r1)     // Catch: java.lang.Throwable -> L5e
            if (r4 != 0) goto L37
            if (r5 != 0) goto L37
            goto L38
        L37:
            r1 = 0
        L38:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L5e
            if (r1 == 0) goto L5d
            java.util.ArrayList<com.narvii.util.drawables.gif.GifLoader$WorkerDownload> r4 = r3.workerDownloads
            monitor-enter(r4)
            java.util.ArrayList<com.narvii.util.drawables.gif.GifLoader$WorkerDownload> r5 = r3.workerDownloads     // Catch: java.lang.Throwable -> L5a
            java.util.Iterator r5 = r5.iterator()     // Catch: java.lang.Throwable -> L5a
        L44:
            boolean r0 = r5.hasNext()     // Catch: java.lang.Throwable -> L5a
            if (r0 == 0) goto L58
            java.lang.Object r0 = r5.next()     // Catch: java.lang.Throwable -> L5a
            com.narvii.util.drawables.gif.GifLoader$WorkerDownload r0 = (com.narvii.util.drawables.gif.GifLoader.WorkerDownload) r0     // Catch: java.lang.Throwable -> L5a
            com.narvii.util.drawables.gif.GifLoader$Session r2 = r0.session     // Catch: java.lang.Throwable -> L5a
            if (r2 != r1) goto L44
            r0.abort()     // Catch: java.lang.Throwable -> L5a
            goto L44
        L58:
            monitor-exit(r4)     // Catch: java.lang.Throwable -> L5a
            goto L5d
        L5a:
            r5 = move-exception
            monitor-exit(r4)     // Catch: java.lang.Throwable -> L5a
            throw r5
        L5d:
            return
        L5e:
            r4 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L5e
            goto L62
        L61:
            throw r4
        L62:
            goto L61
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.util.drawables.gif.GifLoader.abort(java.lang.String, com.narvii.util.drawables.DrawableLoaderListener):void");
    }

    protected void addWorkerLoad() {
        synchronized (this.workerLoads) {
            if (this.workerLoads.size() < maxWorkerLoadCount()) {
                WorkerLoad workerLoad = new WorkerLoad();
                this.workerLoads.add(workerLoad);
                workerLoad.start();
            }
        }
    }

    protected void addWorkerDownload() {
        synchronized (this.workerDownloads) {
            if (this.workerDownloads.size() < maxWorkerDownloadCount()) {
                WorkerDownload workerDownload = new WorkerDownload();
                this.workerDownloads.add(workerDownload);
                workerDownload.start();
            }
        }
    }

    public long size() {
        File[] fileArrListFiles = this.dir.listFiles();
        long length = 0;
        if (fileArrListFiles != null) {
            for (File file : fileArrListFiles) {
                length += file.length();
            }
        }
        return length;
    }

    public void touch(File file) {
        this.diskDaemonHelper.touch(file);
    }

    public void touch(String str) {
        touch(getFile(str));
    }

    public void trimAndFlush(int i, long j) {
        try {
            Iterator<Map.Entry<String, WeakReference<NVGifDrawable>>> it = this.refs.entrySet().iterator();
            while (it.hasNext()) {
                if (it.next().getValue().get() == null) {
                    it.remove();
                }
            }
        } catch (Exception unused) {
        }
        this.diskDaemonHelper.trimAndFlush(i, j);
    }

    public void abortAll() {
        this.queue1.clear();
        this.queue2.clear();
        synchronized (this.workerLoads) {
            Iterator<WorkerLoad> it = this.workerLoads.iterator();
            while (it.hasNext()) {
                WorkerLoad next = it.next();
                next.stoped = true;
                Session session = next.session;
                if (session != null) {
                    session.aborted = true;
                }
            }
            this.workerLoads.clear();
        }
        synchronized (this.workerDownloads) {
            Iterator<WorkerDownload> it2 = this.workerDownloads.iterator();
            while (it2.hasNext()) {
                WorkerDownload next2 = it2.next();
                next2.abortAndStop();
                Session session2 = next2.session;
                if (session2 != null) {
                    session2.aborted = true;
                }
            }
            this.workerDownloads.clear();
        }
        synchronized (this.map) {
            this.map.clear();
        }
    }

    public void clear() {
        File[] fileArrListFiles = this.dir.listFiles();
        if (fileArrListFiles != null) {
            for (File file : fileArrListFiles) {
                file.delete();
            }
        }
        this.refs.clear();
        this.diskDaemonHelper.clear();
        abortAll();
    }

    private class WorkerLoad extends Thread {
        Session session;
        boolean stoped;

        public WorkerLoad() {
            super("gif-load");
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() throws InterruptedException {
            Session sessionPoll;
            while (!this.stoped) {
                try {
                    sessionPoll = GifLoader.this.queue1.poll(500L, TimeUnit.MILLISECONDS);
                } catch (Exception unused) {
                    sessionPoll = null;
                }
                if (sessionPoll == null) {
                    synchronized (GifLoader.this.workerLoads) {
                        GifLoader.this.workerLoads.remove(this);
                    }
                    return;
                }
                if (!sessionPoll.aborted) {
                    if (sessionPoll.listeners.isEmpty()) {
                        Log.w("gif load canceled in queue");
                    } else {
                        this.session = sessionPoll;
                        try {
                            try {
                                boolean z = sessionPoll.writingFile == null;
                                if (sessionPoll.file.length() > 0) {
                                    sessionPoll.status = z ? 2 : 3;
                                    sessionPoll.update();
                                    if (!sessionPoll.dispatched) {
                                        sessionPoll.status = 0;
                                    } else if (!z) {
                                        GifLoader.this.touch(sessionPoll.file);
                                        GifLoader.this.touch(sessionPoll.file);
                                    }
                                }
                                this.session = null;
                            } catch (Exception unused2) {
                                sessionPoll.status = 0;
                                this.session = null;
                                if (sessionPoll.aborted || sessionPoll.dispatched) {
                                    synchronized (GifLoader.this.map) {
                                        if (GifLoader.this.map.get(sessionPoll.key) == sessionPoll) {
                                            GifLoader.this.map.remove(sessionPoll.key);
                                        }
                                    }
                                }
                            }
                            if (sessionPoll.aborted || sessionPoll.dispatched) {
                                synchronized (GifLoader.this.map) {
                                    if (GifLoader.this.map.get(sessionPoll.key) == sessionPoll) {
                                        GifLoader.this.map.remove(sessionPoll.key);
                                    }
                                }
                            } else {
                                GifLoader.this.queue2.add(sessionPoll);
                                GifLoader.this.addWorkerDownload();
                            }
                        } catch (Throwable th) {
                            this.session = null;
                            if (sessionPoll.aborted || sessionPoll.dispatched) {
                                synchronized (GifLoader.this.map) {
                                    if (GifLoader.this.map.get(sessionPoll.key) == sessionPoll) {
                                        GifLoader.this.map.remove(sessionPoll.key);
                                    }
                                }
                            } else {
                                GifLoader.this.queue2.add(sessionPoll);
                                GifLoader.this.addWorkerDownload();
                            }
                            throw th;
                        }
                    }
                }
            }
        }
    }

    private class WorkerDownload extends Thread {
        HttpURLConnection connection;
        Session session;
        boolean stoped;

        public WorkerDownload() {
            super("gif-download");
        }

        /* JADX WARN: Code restructure failed: missing block: B:103:0x01fb, code lost:
        
            r2 = th;
         */
        /* JADX WARN: Code restructure failed: missing block: B:104:0x01fc, code lost:
        
            r4 = null;
         */
        /* JADX WARN: Code restructure failed: missing block: B:105:0x01fe, code lost:
        
            r4 = null;
         */
        /* JADX WARN: Code restructure failed: missing block: B:90:0x01bc, code lost:
        
            r4.close();
         */
        /* JADX WARN: Code restructure failed: missing block: B:91:0x01bf, code lost:
        
            r1.writingFile.renameTo(r1.file);
            r1.status = 2;
            r1.update();
            r3.close();
         */
        /* JADX WARN: Code restructure failed: missing block: B:92:0x01ce, code lost:
        
            r8.disconnect();
         */
        /* JADX WARN: Code restructure failed: missing block: B:93:0x01d1, code lost:
        
            com.narvii.util.Utils.safeClose((java.io.OutputStream) null);
            com.narvii.util.Utils.safeClose((java.io.InputStream) null);
            r13.connection = null;
            r13.session = null;
            r2 = r13.this$0.map;
         */
        /* JADX WARN: Code restructure failed: missing block: B:94:0x01df, code lost:
        
            monitor-enter(r2);
         */
        /* JADX WARN: Code restructure failed: missing block: B:96:0x01ea, code lost:
        
            if (r13.this$0.map.get(r1.key) != r1) goto L98;
         */
        /* JADX WARN: Code restructure failed: missing block: B:97:0x01ec, code lost:
        
            r13.this$0.map.remove(r1.key);
         */
        /* JADX WARN: Code restructure failed: missing block: B:98:0x01f5, code lost:
        
            monitor-exit(r2);
         */
        /* JADX WARN: Removed duplicated region for block: B:150:0x022a A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:164:0x024e A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:166:0x025a A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:170:0x021e A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:75:0x017e  */
        @Override // java.lang.Thread, java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void run() throws java.lang.Throwable {
            /*
                Method dump skipped, instructions count: 632
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.narvii.util.drawables.gif.GifLoader.WorkerDownload.run():void");
        }

        public void abort() {
            final HttpURLConnection httpURLConnection = this.connection;
            if (httpURLConnection != null) {
                new Thread() { // from class: com.narvii.util.drawables.gif.GifLoader.WorkerDownload.1
                    @Override // java.lang.Thread, java.lang.Runnable
                    public void run() {
                        try {
                            httpURLConnection.disconnect();
                        } catch (Exception unused) {
                        }
                    }
                }.start();
            }
        }

        public void abortAndStop() {
            this.stoped = true;
            abort();
            interrupt();
        }
    }

    public File getFile(String str) {
        return new File(this.dir, DrawableUtils.getFileName(getKey(str)));
    }
}
