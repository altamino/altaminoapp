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
import com.narvii.volley.util.HurlConnectionHelper;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.ref.WeakReference;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes7.dex */
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

    private static class ListenerStub {
        DrawableLoaderListener listener;
        String url;

        public boolean equals(Object obj) {
            return obj == this || ((obj instanceof ListenerStub) && ((ListenerStub) obj).listener == this.listener);
        }

        public int hashCode() {
            return this.listener.hashCode();
        }

        ListenerStub(String str, DrawableLoaderListener drawableLoaderListener) {
            this.url = str;
            this.listener = drawableLoaderListener;
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
        final ArrayList<ListenerStub> listeners;
        int status;
        final String url;
        final File writingFile;

        public Session(String str, String str2, File file, File file2, DrawableLoaderListener drawableLoaderListener) {
            ArrayList<ListenerStub> arrayList = new ArrayList<>();
            this.listeners = arrayList;
            this.key = str;
            this.url = str2;
            this.file = file;
            this.writingFile = file2;
            arrayList.add(new ListenerStub(str2, drawableLoaderListener));
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
                if (this.drawable != null) {
                    drawableLoaderListener.onFinished(str, new WrapGifDrawable(this.drawable), true);
                } else {
                    drawableLoaderListener.onFailed(str);
                }
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.aborted) {
                return;
            }
            if (this.drawable == null) {
                for (ListenerStub listenerStub : this.listeners) {
                    listenerStub.listener.onFailed(listenerStub.url);
                }
                return;
            }
            GifLoader.this.refs.put(this.key, new WeakReference<>(this.drawable));
            for (ListenerStub listenerStub2 : this.listeners) {
                listenerStub2.listener.onFinished(listenerStub2.url, new WrapGifDrawable(this.drawable), false);
            }
        }

        public void update() {
            int i10;
            int i11;
            if (this.dispatched || this.aborted) {
                return;
            }
            if (this.drawable == null && ((i10 = this.status) == 0 || (i10 != 1 ? !(i10 != 2 && i10 != 3) : !((i11 = this.downloadedBytes) <= 65536 && i11 <= (this.contentLength * 3) / 10)))) {
                try {
                    NVGifDrawable nVGifDrawable = new NVGifDrawable(this.file, this.writingFile);
                    if (nVGifDrawable.getIntrinsicWidth() <= 0 || nVGifDrawable.getIntrinsicHeight() <= 0 || nVGifDrawable.getNumberOfFrames() <= 0) {
                        nVGifDrawable.recycle();
                    } else {
                        this.drawable = nVGifDrawable;
                    }
                } catch (Exception unused) {
                } catch (OutOfMemoryError e) {
                    Log.w("OutOfMemory when open gif", e);
                }
            }
            int i12 = this.status;
            if (!(i12 == -1 && this.drawable == null) && ((i12 != 1 || this.drawable == null) && i12 != 2 && (i12 != 3 || this.drawable == null))) {
                return;
            }
            Utils.post(this);
            this.dispatched = true;
        }
    }

    private class WorkerDownload extends Thread {
        HttpURLConnection connection;
        Session session;
        boolean stoped;

        public void abortAndStop() {
            this.stoped = true;
            abort();
            interrupt();
        }

        /* JADX WARN: Code duplicated, block: B:122:0x0235 A[Catch: all -> 0x023f, TryCatch #19 {all -> 0x023f, blocks: (B:120:0x0229, B:122:0x0235, B:125:0x0241), top: B:172:0x0229 }] */
        /* JADX WARN: Code duplicated, block: B:136:0x0266 A[Catch: all -> 0x0270, TryCatch #15 {all -> 0x0270, blocks: (B:134:0x025a, B:136:0x0266, B:139:0x0272), top: B:168:0x025a }] */
        /* JADX WARN: Code duplicated, block: B:164:0x024e A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:166:0x021d A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:168:0x025a A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:172:0x0229 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        @Override // java.lang.Thread, java.lang.Runnable
        public void run() throws Throwable {
            Session sessionPoll;
            InputStream inputStream;
            FileOutputStream fileOutputStream;
            HttpURLConnection httpURLConnectionCreateConnection;
            while (!this.stoped) {
                try {
                    sessionPoll = GifLoader.this.queue2.poll(500L, TimeUnit.MILLISECONDS);
                } catch (Exception unused) {
                    sessionPoll = null;
                }
                if (sessionPoll == null) {
                    synchronized (GifLoader.this.workerDownloads) {
                        GifLoader.this.workerDownloads.remove(this);
                    }
                    return;
                }
                if (!sessionPoll.aborted) {
                    if (sessionPoll.listeners.isEmpty()) {
                        Log.w("gif download canceled in queue");
                    } else {
                        this.session = sessionPoll;
                        try {
                            if (!GifLoader.this.dir.isDirectory() && !GifLoader.this.dir.mkdirs()) {
                                throw new IOException("gif cache dir " + GifLoader.this.dir + " not available");
                            }
                            sessionPoll.status = 1;
                            long length = sessionPoll.writingFile.length();
                            if (length > 0 && sessionPoll.drawable == null) {
                                sessionPoll.downloadedBytes = (int) length;
                                sessionPoll.update();
                                if (sessionPoll.drawable == null) {
                                    Log.w("gif download not resumed (len=" + length + ")");
                                    length = 0L;
                                }
                            }
                            httpURLConnectionCreateConnection = GifLoader.this.stack.createConnection(new URL(sessionPoll.url));
                            try {
                                try {
                                    this.connection = httpURLConnectionCreateConnection;
                                    if (sessionPoll.aborted) {
                                        Utils.safeClose((OutputStream) null);
                                        Utils.safeClose((InputStream) null);
                                        if (httpURLConnectionCreateConnection != null) {
                                            try {
                                                httpURLConnectionCreateConnection.disconnect();
                                            } catch (Exception unused2) {
                                            }
                                        }
                                        this.connection = null;
                                        this.session = null;
                                        synchronized (GifLoader.this.map) {
                                            try {
                                                if (GifLoader.this.map.get(sessionPoll.key) == sessionPoll) {
                                                    GifLoader.this.map.remove(sessionPoll.key);
                                                }
                                            } catch (Throwable th) {
                                                throw th;
                                            }
                                        }
                                    } else {
                                        if (length > 0) {
                                            httpURLConnectionCreateConnection.addRequestProperty("Range", "bytes=" + length + "-");
                                            if (httpURLConnectionCreateConnection.getResponseCode() == 416) {
                                                Log.w("gif download range not satisfiable (416)");
                                                try {
                                                    httpURLConnectionCreateConnection.disconnect();
                                                } catch (Exception unused3) {
                                                }
                                                this.connection = null;
                                                httpURLConnectionCreateConnection = GifLoader.this.stack.createConnection(new URL(sessionPoll.url));
                                                this.connection = httpURLConnectionCreateConnection;
                                            } else {
                                                String headerField = httpURLConnectionCreateConnection.getHeaderField("Content-Range");
                                                if (headerField == null) {
                                                    headerField = "";
                                                }
                                                Matcher matcher = Pattern.compile("bytes (\\d+)-(\\d+)/(\\d+)", 2).matcher(headerField);
                                                if (matcher.matches()) {
                                                    int i10 = Integer.parseInt(matcher.group(1));
                                                    int i11 = Integer.parseInt(matcher.group(3));
                                                    if (i10 == length) {
                                                        sessionPoll.contentLength = i11;
                                                        sessionPoll.downloadedBytes = i10;
                                                        fileOutputStream = new FileOutputStream(sessionPoll.writingFile, true);
                                                    }
                                                }
                                            }
                                            fileOutputStream = null;
                                        } else {
                                            fileOutputStream = null;
                                        }
                                        try {
                                            inputStream = HurlConnectionHelper.getInputStream(httpURLConnectionCreateConnection);
                                            if (fileOutputStream == null) {
                                                try {
                                                    try {
                                                        sessionPoll.contentLength = httpURLConnectionCreateConnection.getContentLength();
                                                        sessionPoll.downloadedBytes = 0;
                                                        fileOutputStream = new FileOutputStream(sessionPoll.writingFile);
                                                    } catch (Throwable th2) {
                                                        th = th2;
                                                        Utils.safeClose(fileOutputStream);
                                                        Utils.safeClose(inputStream);
                                                        if (httpURLConnectionCreateConnection != null) {
                                                            try {
                                                                httpURLConnectionCreateConnection.disconnect();
                                                            } catch (Exception unused4) {
                                                            }
                                                        }
                                                        this.connection = null;
                                                        this.session = null;
                                                        synchronized (GifLoader.this.map) {
                                                            try {
                                                                if (GifLoader.this.map.get(sessionPoll.key) == sessionPoll) {
                                                                    GifLoader.this.map.remove(sessionPoll.key);
                                                                }
                                                            } catch (Throwable th3) {
                                                                throw th3;
                                                            }
                                                        }
                                                        sessionPoll.update();
                                                        throw th;
                                                    }
                                                } catch (Exception unused5) {
                                                    sessionPoll.status = -1;
                                                    Utils.safeClose(fileOutputStream);
                                                    Utils.safeClose(inputStream);
                                                    if (httpURLConnectionCreateConnection != null) {
                                                        try {
                                                            httpURLConnectionCreateConnection.disconnect();
                                                        } catch (Exception unused6) {
                                                        }
                                                    }
                                                    this.connection = null;
                                                    this.session = null;
                                                    synchronized (GifLoader.this.map) {
                                                        try {
                                                            if (GifLoader.this.map.get(sessionPoll.key) == sessionPoll) {
                                                                GifLoader.this.map.remove(sessionPoll.key);
                                                            }
                                                        } catch (Throwable th4) {
                                                            throw th4;
                                                        }
                                                    }
                                                    sessionPoll.update();
                                                }
                                            }
                                            byte[] bArr = new byte[4096];
                                            while (true) {
                                                int i12 = inputStream.read(bArr);
                                                if (i12 == -1) {
                                                    fileOutputStream.close();
                                                    try {
                                                        sessionPoll.writingFile.renameTo(sessionPoll.file);
                                                        sessionPoll.status = 2;
                                                        sessionPoll.update();
                                                        inputStream.close();
                                                        httpURLConnectionCreateConnection.disconnect();
                                                        Utils.safeClose((OutputStream) null);
                                                        Utils.safeClose((InputStream) null);
                                                        this.connection = null;
                                                        this.session = null;
                                                        synchronized (GifLoader.this.map) {
                                                            try {
                                                                if (GifLoader.this.map.get(sessionPoll.key) == sessionPoll) {
                                                                    GifLoader.this.map.remove(sessionPoll.key);
                                                                }
                                                            } catch (Throwable th5) {
                                                                throw th5;
                                                            }
                                                        }
                                                        break;
                                                    } catch (Exception unused7) {
                                                        fileOutputStream = null;
                                                        sessionPoll.status = -1;
                                                        Utils.safeClose(fileOutputStream);
                                                        Utils.safeClose(inputStream);
                                                        if (httpURLConnectionCreateConnection != null) {
                                                            httpURLConnectionCreateConnection.disconnect();
                                                        }
                                                        this.connection = null;
                                                        this.session = null;
                                                        synchronized (GifLoader.this.map) {
                                                            if (GifLoader.this.map.get(sessionPoll.key) == sessionPoll) {
                                                                GifLoader.this.map.remove(sessionPoll.key);
                                                            }
                                                        }
                                                    } catch (Throwable th6) {
                                                        th = th6;
                                                        fileOutputStream = null;
                                                        Utils.safeClose(fileOutputStream);
                                                        Utils.safeClose(inputStream);
                                                        if (httpURLConnectionCreateConnection != null) {
                                                            httpURLConnectionCreateConnection.disconnect();
                                                        }
                                                        this.connection = null;
                                                        this.session = null;
                                                        synchronized (GifLoader.this.map) {
                                                            if (GifLoader.this.map.get(sessionPoll.key) == sessionPoll) {
                                                                GifLoader.this.map.remove(sessionPoll.key);
                                                            }
                                                            sessionPoll.update();
                                                            throw th;
                                                        }
                                                    }
                                                } else {
                                                    if (this.stoped || sessionPoll.aborted) {
                                                        throw new IOException("abort");
                                                    }
                                                    fileOutputStream.write(bArr, 0, i12);
                                                    sessionPoll.downloadedBytes += i12;
                                                    sessionPoll.update();
                                                }
                                            }
                                        } catch (Exception unused8) {
                                            inputStream = null;
                                        } catch (Throwable th7) {
                                            th = th7;
                                            inputStream = null;
                                        }
                                    }
                                } catch (Exception unused9) {
                                    inputStream = null;
                                    fileOutputStream = null;
                                }
                            } catch (Throwable th8) {
                                th = th8;
                                inputStream = null;
                                fileOutputStream = null;
                            }
                        } catch (Exception unused10) {
                            inputStream = null;
                            fileOutputStream = null;
                            httpURLConnectionCreateConnection = null;
                        } catch (Throwable th9) {
                            th = th9;
                            inputStream = null;
                            fileOutputStream = null;
                            httpURLConnectionCreateConnection = null;
                        }
                        sessionPoll.update();
                    }
                }
            }
        }

        public WorkerDownload() {
            super("gif-download");
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
    }

    private class WorkerLoad extends Thread {
        Session session;
        boolean stoped;

        public WorkerLoad() {
            super("gif-load");
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
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
                                boolean z6 = sessionPoll.writingFile == null;
                                if (sessionPoll.file.length() > 0) {
                                    sessionPoll.status = z6 ? 2 : 3;
                                    sessionPoll.update();
                                    if (!sessionPoll.dispatched) {
                                        sessionPoll.status = 0;
                                    } else if (!z6) {
                                        GifLoader.this.touch(sessionPoll.file);
                                        GifLoader.this.touch(sessionPoll.file);
                                    }
                                }
                                this.session = null;
                                if (sessionPoll.aborted || sessionPoll.dispatched) {
                                    synchronized (GifLoader.this.map) {
                                        try {
                                            if (GifLoader.this.map.get(sessionPoll.key) == sessionPoll) {
                                                GifLoader.this.map.remove(sessionPoll.key);
                                            }
                                        } catch (Throwable th) {
                                            throw th;
                                        }
                                    }
                                } else {
                                    GifLoader.this.queue2.add(sessionPoll);
                                    GifLoader.this.addWorkerDownload();
                                }
                            } catch (Throwable th2) {
                                this.session = null;
                                if (sessionPoll.aborted || sessionPoll.dispatched) {
                                    synchronized (GifLoader.this.map) {
                                        try {
                                            if (GifLoader.this.map.get(sessionPoll.key) == sessionPoll) {
                                                GifLoader.this.map.remove(sessionPoll.key);
                                            }
                                        } catch (Throwable th3) {
                                            throw th3;
                                        }
                                    }
                                } else {
                                    GifLoader.this.queue2.add(sessionPoll);
                                    GifLoader.this.addWorkerDownload();
                                }
                                throw th2;
                            }
                        } catch (Exception unused2) {
                            sessionPoll.status = 0;
                            this.session = null;
                            if (sessionPoll.aborted || sessionPoll.dispatched) {
                                synchronized (GifLoader.this.map) {
                                    try {
                                        if (GifLoader.this.map.get(sessionPoll.key) == sessionPoll) {
                                            GifLoader.this.map.remove(sessionPoll.key);
                                        }
                                    } catch (Throwable th4) {
                                        throw th4;
                                    }
                                }
                            } else {
                                GifLoader.this.queue2.add(sessionPoll);
                                GifLoader.this.addWorkerDownload();
                            }
                        }
                    }
                }
            }
        }
    }

    public WrapGifDrawable getCachedGifDrawable(String str, boolean z6) {
        if (!z6 && getLoadingState(str) != 0) {
            return null;
        }
        WeakReference<NVGifDrawable> weakReference = this.refs.get(getKey(str));
        NVGifDrawable nVGifDrawable = weakReference == null ? null : weakReference.get();
        if (nVGifDrawable != null) {
            return new WrapGifDrawable(nVGifDrawable);
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

    public boolean isUrlCached(String str) {
        if (str == null) {
            return false;
        }
        if (getCachedGifDrawable(str, true) != null) {
            return true;
        }
        try {
            File file = getFile(str);
            return file.exists() && file.length() > 0;
        } catch (Exception unused) {
        }
    }

    protected int maxWorkerDownloadCount() {
        return 4;
    }

    protected int maxWorkerLoadCount() {
        return 1;
    }

    public void touch(File file) {
        this.diskDaemonHelper.touch(file);
    }

    public void abortAll() {
        this.queue1.clear();
        this.queue2.clear();
        synchronized (this.workerLoads) {
            try {
                for (WorkerLoad workerLoad : this.workerLoads) {
                    workerLoad.stoped = true;
                    Session session = workerLoad.session;
                    if (session != null) {
                        session.aborted = true;
                    }
                }
                this.workerLoads.clear();
            } catch (Throwable th) {
                throw th;
            }
        }
        synchronized (this.workerDownloads) {
            try {
                for (WorkerDownload workerDownload : this.workerDownloads) {
                    workerDownload.abortAndStop();
                    Session session2 = workerDownload.session;
                    if (session2 != null) {
                        session2.aborted = true;
                    }
                }
                this.workerDownloads.clear();
            } catch (Throwable th2) {
                throw th2;
            }
        }
        synchronized (this.map) {
            this.map.clear();
        }
    }

    protected void addWorkerDownload() {
        synchronized (this.workerDownloads) {
            try {
                if (this.workerDownloads.size() < maxWorkerDownloadCount()) {
                    WorkerDownload workerDownload = new WorkerDownload();
                    this.workerDownloads.add(workerDownload);
                    workerDownload.start();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    protected void addWorkerLoad() {
        synchronized (this.workerLoads) {
            try {
                if (this.workerLoads.size() < maxWorkerLoadCount()) {
                    WorkerLoad workerLoad = new WorkerLoad();
                    this.workerLoads.add(workerLoad);
                    workerLoad.start();
                }
            } catch (Throwable th) {
                throw th;
            }
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

    public String getKey(String str) {
        int iIndexOf = str.indexOf(63);
        return iIndexOf > 0 ? str.substring(0, iIndexOf) : str;
    }

    public List<String> getLoadingRequests() {
        ArrayList arrayList;
        synchronized (this.map) {
            try {
                arrayList = null;
                for (Session session : this.map.values()) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(session.url);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return arrayList == null ? Collections.emptyList() : arrayList;
    }

    /* JADX WARN: Code duplicated, block: B:51:0x0102 A[Catch: all -> 0x002d, TryCatch #0 {all -> 0x002d, blocks: (B:11:0x001e, B:13:0x0028, B:55:0x011c, B:16:0x0030, B:18:0x003a, B:20:0x0042, B:24:0x004d, B:26:0x0055, B:28:0x005d, B:30:0x0065, B:31:0x006f, B:33:0x0077, B:51:0x0102, B:53:0x010b, B:54:0x0114, B:35:0x0093, B:37:0x009b, B:38:0x00ab, B:40:0x00b3, B:41:0x00cc, B:43:0x00d2, B:45:0x00dc, B:46:0x00e5, B:48:0x00f5), top: B:59:0x001e }] */
    /* JADX WARN: Code duplicated, block: B:53:0x010b A[Catch: all -> 0x002d, TryCatch #0 {all -> 0x002d, blocks: (B:11:0x001e, B:13:0x0028, B:55:0x011c, B:16:0x0030, B:18:0x003a, B:20:0x0042, B:24:0x004d, B:26:0x0055, B:28:0x005d, B:30:0x0065, B:31:0x006f, B:33:0x0077, B:51:0x0102, B:53:0x010b, B:54:0x0114, B:35:0x0093, B:37:0x009b, B:38:0x00ab, B:40:0x00b3, B:41:0x00cc, B:43:0x00d2, B:45:0x00dc, B:46:0x00e5, B:48:0x00f5), top: B:59:0x001e }] */
    /* JADX WARN: Code duplicated, block: B:54:0x0114 A[Catch: all -> 0x002d, TryCatch #0 {all -> 0x002d, blocks: (B:11:0x001e, B:13:0x0028, B:55:0x011c, B:16:0x0030, B:18:0x003a, B:20:0x0042, B:24:0x004d, B:26:0x0055, B:28:0x005d, B:30:0x0065, B:31:0x006f, B:33:0x0077, B:51:0x0102, B:53:0x010b, B:54:0x0114, B:35:0x0093, B:37:0x009b, B:38:0x00ab, B:40:0x00b3, B:41:0x00cc, B:43:0x00d2, B:45:0x00dc, B:46:0x00e5, B:48:0x00f5), top: B:59:0x001e }] */
    public void request(String str, DrawableLoaderListener drawableLoaderListener) {
        NVGifDrawable nVGifDrawable;
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
            try {
                Session session2 = this.map.get(key);
                if (session2 != null) {
                    session2.addListener(str, drawableLoaderListener);
                } else {
                    WeakReference<NVGifDrawable> weakReference = this.refs.get(key);
                    if (weakReference != null) {
                        nVGifDrawable = weakReference.get();
                        if (nVGifDrawable == null) {
                            this.refs.remove(key);
                        }
                    } else {
                        nVGifDrawable = null;
                    }
                    NVGifDrawable nVGifDrawable2 = nVGifDrawable;
                    if (nVGifDrawable2 == null || !(str.startsWith("photo://") || str.startsWith("mediastore://") || str.startsWith("file://"))) {
                        if (str.startsWith("photo://")) {
                            session = new Session(key, str, ((PhotoManager) this.context.getService("photo")).getPath(str), null, drawableLoaderListener);
                        } else if (str.startsWith("mediastore://")) {
                            session = new Session(key, str, MediaStoreUtils.getImagePath(str), null, drawableLoaderListener);
                        } else {
                            if (str.startsWith("file://")) {
                                session = new Session(key, str, new File(Uri.parse(str).getPath()), null, drawableLoaderListener);
                            } else {
                                File file = getFile(str);
                                if (nVGifDrawable2 == null || file.length() <= 0) {
                                    Session session3 = new Session(key, str, file, DrawableUtils.getWritingFile(file), drawableLoaderListener);
                                    if (nVGifDrawable2 != null) {
                                        session3.drawable = nVGifDrawable2;
                                        drawableLoaderListener.onFinished(str, new WrapGifDrawable(nVGifDrawable2), true);
                                    }
                                    session2 = session3;
                                } else {
                                    drawableLoaderListener.onFinished(str, new WrapGifDrawable(nVGifDrawable2), true);
                                }
                            }
                            if (session2 != null) {
                                this.map.put(key, session2);
                                if (session2.drawable == null) {
                                    this.queue1.add(session2);
                                    addWorkerLoad();
                                } else {
                                    this.queue2.add(session2);
                                    addWorkerDownload();
                                }
                            }
                        }
                        session2 = session;
                        if (session2 != null) {
                            this.map.put(key, session2);
                            if (session2.drawable == null) {
                                this.queue1.add(session2);
                                addWorkerLoad();
                            } else {
                                this.queue2.add(session2);
                                addWorkerDownload();
                            }
                        }
                    } else {
                        drawableLoaderListener.onFinished(str, new WrapGifDrawable(nVGifDrawable2), true);
                    }
                }
            } catch (Throwable th) {
                throw th;
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

    public void touch(String str) {
        touch(getFile(str));
    }

    public void trimAndFlush(int i10, long j6) {
        try {
            Iterator<Map.Entry<String, WeakReference<NVGifDrawable>>> it = this.refs.entrySet().iterator();
            while (it.hasNext()) {
                if (it.next().getValue().get() == null) {
                    it.remove();
                }
            }
        } catch (Exception unused) {
        }
        this.diskDaemonHelper.trimAndFlush(i10, j6);
    }

    public GifLoader(NVContext nVContext, File file) {
        this.context = nVContext;
        this.dir = file;
        this.diskDaemonHelper = new DiskDaemonHelper(file, "gif-diskd");
        this.stack = new ProxyStack(this.context);
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0039  */
    public void abort(String str, DrawableLoaderListener drawableLoaderListener) {
        Session session;
        String key = getKey(str);
        synchronized (this.map) {
            try {
                session = this.map.get(key);
                if (session != null) {
                    session.listeners.remove(drawableLoaderListener);
                    if (session.listeners.isEmpty()) {
                        session.aborted = true;
                        this.map.remove(key);
                        boolean zRemove = this.queue1.remove(session);
                        boolean zRemove2 = this.queue2.remove(session);
                        if (zRemove || zRemove2) {
                            session = null;
                        }
                    } else {
                        session = null;
                    }
                } else {
                    session = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (session != null) {
            synchronized (this.workerDownloads) {
                try {
                    for (WorkerDownload workerDownload : this.workerDownloads) {
                        if (workerDownload.session == session) {
                            workerDownload.abort();
                        }
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
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

    public File getFile(String str) {
        return new File(this.dir, DrawableUtils.getFileName(getKey(str)));
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
        int i10 = session.contentLength;
        if (i10 > 0) {
            return (session.downloadedBytes * 100) / i10;
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
        int i10 = session.status;
        if (i10 == 0) {
            return 1;
        }
        if (session.drawable != null) {
            return 3;
        }
        if (i10 != 1) {
            return 0;
        }
        return 2;
    }
}
