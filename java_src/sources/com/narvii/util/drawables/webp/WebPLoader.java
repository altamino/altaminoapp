package com.narvii.util.drawables.webp;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.support.rastermill.FrameSequence;
import android.support.rastermill.FrameSequenceDrawable;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.narvii.app.NVContext;
import com.narvii.photos.PhotoManager;
import com.narvii.util.Log;
import com.narvii.util.Utils;
import com.narvii.util.drawables.DrawableLoaderListener;
import com.narvii.util.drawables.DrawableUtils;
import com.narvii.util.http.ProxyStack;
import com.narvii.util.image.MediaStoreUtils;
import com.narvii.volley.util.HurlConnectionHelper;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.ref.WeakReference;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ThreadPoolExecutor;

/* JADX INFO: loaded from: classes3.dex */
public class WebPLoader {
    public static final String s_WEBP_DOWNLOAD_THREAD_NAME = "webp-download";
    public static final String s_WEBP_LOAD_THREAD_NAME = "webp-load";
    private NVContext context;
    private File dir;
    private ProxyStack stack;
    private final ConcurrentHashMap<String, WeakReference<NVWebPDrawable>> refs = new ConcurrentHashMap<>();
    private final ConcurrentHashMap<String, DownloadTask> downloadTasks = new ConcurrentHashMap<>();
    private final ConcurrentHashMap<String, LoadTask> loadTasks = new ConcurrentHashMap<>();
    private final Handler mainH = new Handler(Looper.getMainLooper());
    private ThreadPoolExecutor downloadExecutor = Utils.createThreadPoolExecutor(4, s_WEBP_DOWNLOAD_THREAD_NAME);
    private ThreadPoolExecutor loadExecutor = Utils.createThreadPoolExecutor(1, s_WEBP_LOAD_THREAD_NAME);

    private abstract class BaseDrawableTask implements Runnable {
        protected FrameSequenceDrawable.BitmapProvider bitmapProvider;
        protected int height;
        protected final String key;
        protected final ArrayList<ListenerStub> listeners;
        protected int loopCount;
        protected final String url;
        protected int width;

        protected abstract void abort();

        BaseDrawableTask(String str, String str2, DrawableLoaderListener drawableLoaderListener, int i10, int i11, int i12) {
            ArrayList<ListenerStub> arrayList = new ArrayList<>();
            this.listeners = arrayList;
            this.bitmapProvider = null;
            this.key = str;
            this.url = str2;
            this.width = i10;
            this.height = i11;
            this.loopCount = i12;
            if (drawableLoaderListener != null) {
                arrayList.add(new ListenerStub(str2, drawableLoaderListener));
            }
            init();
        }

        private void init() {
            this.bitmapProvider = new FrameSequenceDrawable.BitmapProvider() { // from class: com.narvii.util.drawables.webp.WebPLoader.BaseDrawableTask.1
                @Override // android.support.rastermill.FrameSequenceDrawable.BitmapProvider
                public void releaseBitmap(Bitmap bitmap) {
                }

                @Override // android.support.rastermill.FrameSequenceDrawable.BitmapProvider
                public Bitmap acquireBitmap(int i10, int i11) {
                    try {
                        return Bitmap.createBitmap(i10, i11, Bitmap.Config.ARGB_8888);
                    } catch (OutOfMemoryError unused) {
                        return null;
                    }
                }
            };
        }

        protected void addListener(String str, DrawableLoaderListener drawableLoaderListener) {
            if (drawableLoaderListener != null) {
                ListenerStub listenerStub = new ListenerStub(str, drawableLoaderListener);
                if (this.listeners.contains(listenerStub)) {
                    return;
                }
                this.listeners.add(listenerStub);
            }
        }

        protected void postResult(@Nullable final NVWebPDrawable nVWebPDrawable) {
            WebPLoader.this.mainH.post(new Runnable() { // from class: com.narvii.util.drawables.webp.WebPLoader.BaseDrawableTask.2
                @Override // java.lang.Runnable
                public void run() {
                    if (nVWebPDrawable != null) {
                        WebPLoader.this.refs.put(BaseDrawableTask.this.key, new WeakReference(nVWebPDrawable));
                    }
                    for (ListenerStub listenerStub : BaseDrawableTask.this.listeners) {
                        if (nVWebPDrawable == null) {
                            listenerStub.listener.onFailed(listenerStub.url);
                        } else {
                            listenerStub.listener.onFinished(listenerStub.url, new WrapWebPDrawable(nVWebPDrawable), true);
                        }
                    }
                }
            });
        }

        protected void removeListener(String str, DrawableLoaderListener drawableLoaderListener) {
            Iterator<ListenerStub> it = this.listeners.iterator();
            while (it.hasNext()) {
                ListenerStub next = it.next();
                if (str == null || str.equals(next.url)) {
                    if (next.listener == drawableLoaderListener) {
                        it.remove();
                    }
                }
            }
            if (this.listeners.isEmpty()) {
                abort();
            }
        }

        protected void addListeners(ArrayList<ListenerStub> arrayList) {
            for (ListenerStub listenerStub : arrayList) {
                if (!arrayList.contains(listenerStub)) {
                    arrayList.add(listenerStub);
                }
            }
        }
    }

    private class DownloadTask extends BaseDrawableTask {
        /* JADX WARN: Code duplicated, block: B:65:0x0114 A[Catch: Exception -> 0x0117, TRY_ENTER, TRY_LEAVE, TryCatch #4 {Exception -> 0x0117, blocks: (B:54:0x00ea, B:65:0x0114), top: B:76:0x0001 }] */
        /* JADX WARN: Code duplicated, block: B:78:0x0131 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:91:? A[RETURN, SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:93:? A[SYNTHETIC] */
        @Override // java.lang.Runnable
        public void run() throws Throwable {
            InputStream inputStream;
            Throwable th;
            HttpURLConnection httpURLConnectionCreateConnection;
            InputStream inputStream2;
            FileOutputStream fileOutputStream;
            FileOutputStream fileOutputStream2 = null;
            try {
                try {
                    if (!WebPLoader.this.dir.isDirectory() && !WebPLoader.this.dir.mkdirs()) {
                        throw new IOException("webp cache dir " + WebPLoader.this.dir + " not available");
                    }
                    httpURLConnectionCreateConnection = WebPLoader.this.stack.createConnection(new URL(this.url));
                    try {
                        inputStream = HurlConnectionHelper.getInputStream(httpURLConnectionCreateConnection);
                        try {
                            FrameSequence frameSequenceDecodeStream = FrameSequence.decodeStream(inputStream);
                            if (frameSequenceDecodeStream == null || frameSequenceDecodeStream.getFrameCount() <= 0) {
                                postResult(null);
                            } else {
                                FrameSequenceDrawable frameSequenceDrawable = new FrameSequenceDrawable(frameSequenceDecodeStream, this.bitmapProvider);
                                if (frameSequenceDecodeStream.getFrameCount() == 1) {
                                    frameSequenceDrawable.setLoopBehavior(1);
                                } else if (this.loopCount > 0) {
                                    frameSequenceDrawable.setLoopBehavior(1);
                                    frameSequenceDrawable.setLoopCount(this.loopCount);
                                } else {
                                    frameSequenceDrawable.setLoopBehavior(2);
                                    frameSequenceDrawable.start();
                                }
                                postResult(new NVWebPDrawable(frameSequenceDrawable));
                            }
                            FileOutputStream fileOutputStream3 = new FileOutputStream(WebPLoader.this.getFile(this.url));
                            try {
                                byte[] bArr = new byte[4096];
                                while (true) {
                                    int i10 = inputStream.read(bArr);
                                    if (i10 == -1) {
                                        break;
                                    } else {
                                        fileOutputStream3.write(bArr, 0, i10);
                                    }
                                }
                                WebPLoader.this.downloadTasks.remove(this.key);
                                Utils.safeClose(fileOutputStream3);
                                Utils.safeClose(inputStream);
                                if (httpURLConnectionCreateConnection != null) {
                                    httpURLConnectionCreateConnection.disconnect();
                                }
                            } catch (IOException e) {
                                e = e;
                                e = e;
                                fileOutputStream = fileOutputStream3;
                                inputStream2 = inputStream;
                                try {
                                    postResult(null);
                                    e.printStackTrace();
                                    WebPLoader.this.downloadTasks.remove(this.key);
                                    Utils.safeClose(fileOutputStream);
                                    Utils.safeClose(inputStream2);
                                    if (httpURLConnectionCreateConnection != null) {
                                    } else {
                                        httpURLConnectionCreateConnection.disconnect();
                                    }
                                } catch (Throwable th2) {
                                    fileOutputStream2 = fileOutputStream;
                                    InputStream inputStream3 = inputStream2;
                                    th = th2;
                                    httpURLConnectionCreateConnection = httpURLConnectionCreateConnection;
                                    inputStream = inputStream3;
                                    WebPLoader.this.downloadTasks.remove(this.key);
                                    Utils.safeClose(fileOutputStream2);
                                    Utils.safeClose(inputStream);
                                    if (httpURLConnectionCreateConnection != null) {
                                        throw th;
                                    }
                                    try {
                                        httpURLConnectionCreateConnection.disconnect();
                                        throw th;
                                    } catch (Exception unused) {
                                        throw th;
                                    }
                                }
                            } catch (IllegalArgumentException e2) {
                                e = e2;
                                e = e;
                                fileOutputStream = fileOutputStream3;
                                inputStream2 = inputStream;
                                postResult(null);
                                e.printStackTrace();
                                WebPLoader.this.downloadTasks.remove(this.key);
                                Utils.safeClose(fileOutputStream);
                                Utils.safeClose(inputStream2);
                                if (httpURLConnectionCreateConnection != null) {
                                } else {
                                    httpURLConnectionCreateConnection.disconnect();
                                }
                            } catch (Throwable th3) {
                                th = th3;
                                fileOutputStream2 = fileOutputStream3;
                                WebPLoader.this.downloadTasks.remove(this.key);
                                Utils.safeClose(fileOutputStream2);
                                Utils.safeClose(inputStream);
                                if (httpURLConnectionCreateConnection != null) {
                                    throw th;
                                }
                                httpURLConnectionCreateConnection.disconnect();
                                throw th;
                            }
                        } catch (IOException e6) {
                            e = e6;
                            fileOutputStream = null;
                            e = e;
                            inputStream2 = inputStream;
                            postResult(null);
                            e.printStackTrace();
                            WebPLoader.this.downloadTasks.remove(this.key);
                            Utils.safeClose(fileOutputStream);
                            Utils.safeClose(inputStream2);
                            if (httpURLConnectionCreateConnection != null) {
                                httpURLConnectionCreateConnection.disconnect();
                            }
                        } catch (IllegalArgumentException e7) {
                            e = e7;
                            fileOutputStream = null;
                            e = e;
                            inputStream2 = inputStream;
                            postResult(null);
                            e.printStackTrace();
                            WebPLoader.this.downloadTasks.remove(this.key);
                            Utils.safeClose(fileOutputStream);
                            Utils.safeClose(inputStream2);
                            if (httpURLConnectionCreateConnection != null) {
                                httpURLConnectionCreateConnection.disconnect();
                            }
                        } catch (Throwable th4) {
                            th = th4;
                        }
                    } catch (IOException e10) {
                        e = e10;
                        inputStream2 = null;
                        fileOutputStream = null;
                        Throwable th5 = e;
                        httpURLConnectionCreateConnection = httpURLConnectionCreateConnection;
                        e = th5;
                        postResult(null);
                        e.printStackTrace();
                        WebPLoader.this.downloadTasks.remove(this.key);
                        Utils.safeClose(fileOutputStream);
                        Utils.safeClose(inputStream2);
                        if (httpURLConnectionCreateConnection != null) {
                            httpURLConnectionCreateConnection.disconnect();
                        }
                    } catch (IllegalArgumentException e11) {
                        e = e11;
                        inputStream2 = null;
                        fileOutputStream = null;
                        Throwable th6 = e;
                        httpURLConnectionCreateConnection = httpURLConnectionCreateConnection;
                        e = th6;
                        postResult(null);
                        e.printStackTrace();
                        WebPLoader.this.downloadTasks.remove(this.key);
                        Utils.safeClose(fileOutputStream);
                        Utils.safeClose(inputStream2);
                        if (httpURLConnectionCreateConnection != null) {
                            httpURLConnectionCreateConnection.disconnect();
                        }
                    } catch (Throwable th7) {
                        th = th7;
                        inputStream = null;
                    }
                } catch (Exception unused2) {
                }
            } catch (IOException e12) {
                e = e12;
                httpURLConnectionCreateConnection = null;
                inputStream2 = null;
                fileOutputStream = null;
                postResult(null);
                e.printStackTrace();
                WebPLoader.this.downloadTasks.remove(this.key);
                Utils.safeClose(fileOutputStream);
                Utils.safeClose(inputStream2);
                if (httpURLConnectionCreateConnection != null) {
                    httpURLConnectionCreateConnection.disconnect();
                }
            } catch (IllegalArgumentException e13) {
                e = e13;
                httpURLConnectionCreateConnection = null;
                inputStream2 = null;
                fileOutputStream = null;
                postResult(null);
                e.printStackTrace();
                WebPLoader.this.downloadTasks.remove(this.key);
                Utils.safeClose(fileOutputStream);
                Utils.safeClose(inputStream2);
                if (httpURLConnectionCreateConnection != null) {
                    httpURLConnectionCreateConnection.disconnect();
                }
            } catch (Throwable th8) {
                inputStream = null;
                th = th8;
                httpURLConnectionCreateConnection = null;
            }
        }

        DownloadTask(String str, String str2, DrawableLoaderListener drawableLoaderListener, int i10, int i11, int i12) {
            super(str, str2, drawableLoaderListener, i10, i11, i12);
        }

        @Override // com.narvii.util.drawables.webp.WebPLoader.BaseDrawableTask
        protected void abort() {
            WebPLoader.this.downloadTasks.remove(this.key);
            WebPLoader.this.downloadExecutor.remove(this);
        }
    }

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

    private class LoadTask extends BaseDrawableTask {
        private boolean doRtl;
        private File file;

        LoadTask(String str, String str2, File file, DrawableLoaderListener drawableLoaderListener, int i10, int i11, boolean z6, int i12) {
            super(str, str2, drawableLoaderListener, i10, i11, i12);
            this.file = file;
            this.doRtl = z6;
        }

        @Override // com.narvii.util.drawables.webp.WebPLoader.BaseDrawableTask
        protected void abort() {
            WebPLoader.this.loadTasks.remove(this.key);
            WebPLoader.this.loadExecutor.remove(this);
        }

        /* JADX WARN: Code duplicated, block: B:57:0x00fd  */
        /* JADX WARN: Code duplicated, block: B:62:0x0114  */
        /* JADX WARN: Code duplicated, block: B:64:0x011c  */
        @Override // java.lang.Runnable
        public void run() throws Throwable {
            InputStream inputStreamOpen;
            DownloadTask downloadTask;
            boolean z6 = false;
            try {
                try {
                    inputStreamOpen = this.url.startsWith("assets://") ? WebPLoader.this.context.getContext().getAssets().open(this.url.substring(9)) : new FileInputStream(this.file);
                    try {
                        FrameSequence frameSequenceDecodeStream = FrameSequence.decodeStream(inputStreamOpen);
                        if (frameSequenceDecodeStream != null && frameSequenceDecodeStream.getFrameCount() > 0) {
                            FrameSequenceDrawable frameSequenceDrawable = new FrameSequenceDrawable(frameSequenceDecodeStream, this.bitmapProvider);
                            frameSequenceDrawable.setDoRtl(this.doRtl);
                            if (frameSequenceDecodeStream.getFrameCount() == 1) {
                                frameSequenceDrawable.setLoopBehavior(1);
                            } else if (this.loopCount > 0) {
                                frameSequenceDrawable.setLoopBehavior(1);
                                frameSequenceDrawable.setLoopCount(this.loopCount);
                            } else {
                                frameSequenceDrawable.setLoopBehavior(2);
                                frameSequenceDrawable.start();
                            }
                            try {
                                postResult(new NVWebPDrawable(frameSequenceDrawable));
                                z6 = true;
                            } catch (IOException e) {
                                e = e;
                                z6 = true;
                                e.printStackTrace();
                                Utils.safeClose(inputStreamOpen);
                                if (!z6) {
                                    if (!this.url.startsWith("photo://") || this.url.startsWith("mediastore://") || this.url.startsWith("file://") || this.url.startsWith("assets://")) {
                                        postResult(null);
                                    } else {
                                        DownloadTask downloadTask2 = (DownloadTask) WebPLoader.this.downloadTasks.get(this.key);
                                        if (downloadTask2 != null) {
                                            downloadTask2.addListeners(this.listeners);
                                            return;
                                        }
                                        downloadTask = WebPLoader.this.new DownloadTask(this.key, this.url, null, this.width, this.height, this.loopCount);
                                        downloadTask.addListeners(this.listeners);
                                        WebPLoader.this.downloadTasks.put(this.key, downloadTask);
                                        WebPLoader.this.downloadExecutor.execute(downloadTask);
                                    }
                                }
                            } catch (IllegalArgumentException e2) {
                                e = e2;
                                z6 = true;
                                e.printStackTrace();
                                Utils.safeClose(inputStreamOpen);
                                if (!z6) {
                                    if (this.url.startsWith("photo://")) {
                                    }
                                    postResult(null);
                                }
                            } catch (Throwable th) {
                                th = th;
                                z6 = true;
                                Utils.safeClose(inputStreamOpen);
                                if (!z6) {
                                    if (this.url.startsWith("photo://") || this.url.startsWith("mediastore://") || this.url.startsWith("file://") || this.url.startsWith("assets://")) {
                                        postResult(null);
                                    } else {
                                        DownloadTask downloadTask3 = (DownloadTask) WebPLoader.this.downloadTasks.get(this.key);
                                        if (downloadTask3 != null) {
                                            downloadTask3.addListeners(this.listeners);
                                            return;
                                        }
                                        DownloadTask downloadTask4 = WebPLoader.this.new DownloadTask(this.key, this.url, null, this.width, this.height, this.loopCount);
                                        downloadTask4.addListeners(this.listeners);
                                        WebPLoader.this.downloadTasks.put(this.key, downloadTask4);
                                        WebPLoader.this.downloadExecutor.execute(downloadTask4);
                                    }
                                }
                                WebPLoader.this.loadTasks.remove(this.key);
                                throw th;
                            }
                        }
                        Utils.safeClose(inputStreamOpen);
                        if (!z6) {
                            if (this.url.startsWith("photo://") || this.url.startsWith("mediastore://") || this.url.startsWith("file://") || this.url.startsWith("assets://")) {
                                postResult(null);
                            } else {
                                DownloadTask downloadTask5 = (DownloadTask) WebPLoader.this.downloadTasks.get(this.key);
                                if (downloadTask5 != null) {
                                    downloadTask5.addListeners(this.listeners);
                                    return;
                                }
                                downloadTask = WebPLoader.this.new DownloadTask(this.key, this.url, null, this.width, this.height, this.loopCount);
                                downloadTask.addListeners(this.listeners);
                                WebPLoader.this.downloadTasks.put(this.key, downloadTask);
                                WebPLoader.this.downloadExecutor.execute(downloadTask);
                            }
                        }
                    } catch (IOException e6) {
                        e = e6;
                    } catch (IllegalArgumentException e7) {
                        e = e7;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (IOException e10) {
                e = e10;
                inputStreamOpen = null;
                e.printStackTrace();
                Utils.safeClose(inputStreamOpen);
                if (!z6) {
                    if (this.url.startsWith("photo://")) {
                    }
                    postResult(null);
                }
                WebPLoader.this.loadTasks.remove(this.key);
            } catch (IllegalArgumentException e11) {
                e = e11;
                inputStreamOpen = null;
                e.printStackTrace();
                Utils.safeClose(inputStreamOpen);
                if (!z6) {
                    if (this.url.startsWith("photo://")) {
                    }
                    postResult(null);
                }
                WebPLoader.this.loadTasks.remove(this.key);
            } catch (Throwable th3) {
                th = th3;
                inputStreamOpen = null;
            }
            WebPLoader.this.loadTasks.remove(this.key);
        }
    }

    public boolean isUrlCached(String str) {
        if (str == null) {
            return false;
        }
        if (getWebPFromMemoryCache(str) != null) {
            return true;
        }
        try {
            File file = getFile(str);
            return file.exists() && file.length() > 0;
        } catch (Exception unused) {
        }
    }

    public void request(String str, DrawableLoaderListener drawableLoaderListener, int i10, int i11) {
        request(str, drawableLoaderListener, i10, i11, false, 0);
    }

    public String getKey(String str) {
        int iIndexOf = str.indexOf(63);
        return iIndexOf > 0 ? str.substring(0, iIndexOf) : str;
    }

    public void request(String str, DrawableLoaderListener drawableLoaderListener, int i10, int i11, boolean z6, int i12) {
        WrapWebPDrawable webPFromMemoryCache = getWebPFromMemoryCache(str);
        if (webPFromMemoryCache != null) {
            if (drawableLoaderListener != null) {
                drawableLoaderListener.onFinished(str, webPFromMemoryCache, true);
                return;
            }
            return;
        }
        String key = getKey(str);
        File localFileByUrl = getLocalFileByUrl(str);
        if (str.startsWith("assets://") || (localFileByUrl != null && localFileByUrl.exists() && localFileByUrl.length() > 0)) {
            LoadTask loadTask = this.loadTasks.get(key);
            if (loadTask != null) {
                loadTask.addListener(str, drawableLoaderListener);
                return;
            }
            LoadTask loadTask2 = new LoadTask(key, str, localFileByUrl, drawableLoaderListener, i10, i11, z6, i12);
            this.loadTasks.put(key, loadTask2);
            this.loadExecutor.execute(loadTask2);
            return;
        }
        if (str.startsWith("photo://") || str.startsWith("mediastore://") || str.startsWith("file://") || str.startsWith("assets://")) {
            if (drawableLoaderListener != null) {
                drawableLoaderListener.onFailed(str);
                return;
            }
            return;
        }
        DownloadTask downloadTask = this.downloadTasks.get(key);
        if (downloadTask != null) {
            downloadTask.addListener(str, drawableLoaderListener);
            return;
        }
        DownloadTask downloadTask2 = new DownloadTask(key, str, drawableLoaderListener, i10, i11, i12);
        this.downloadTasks.put(key, downloadTask2);
        this.downloadExecutor.execute(downloadTask2);
    }

    public WebPLoader(NVContext nVContext, File file) {
        this.context = nVContext;
        this.dir = file;
        this.stack = new ProxyStack(nVContext);
    }

    private File getLocalFileByUrl(String str) {
        if (!TextUtils.isEmpty(str) && !str.startsWith("assets://")) {
            if (str.startsWith("photo://")) {
                return ((PhotoManager) this.context.getService("photo")).getPath(str);
            }
            if (str.startsWith("mediastore://")) {
                return MediaStoreUtils.getImagePath(str);
            }
            if (str.startsWith("file://")) {
                return new File(Uri.parse(str).getPath());
            }
            return getFile(str);
        }
        return null;
    }

    private WrapWebPDrawable getWebPFromMemoryCache(String str) {
        NVWebPDrawable nVWebPDrawable;
        String key = getKey(str);
        WeakReference<NVWebPDrawable> weakReference = this.refs.get(key);
        if (weakReference == null) {
            nVWebPDrawable = null;
        } else {
            nVWebPDrawable = weakReference.get();
        }
        if (nVWebPDrawable == null) {
            if (weakReference != null) {
                this.refs.remove(key);
            }
            return null;
        }
        return new WrapWebPDrawable(nVWebPDrawable);
    }

    public void abort(String str, DrawableLoaderListener drawableLoaderListener) {
        DownloadTask downloadTask = this.downloadTasks.get(getKey(str));
        if (downloadTask == null) {
            return;
        }
        downloadTask.removeListener(str, drawableLoaderListener);
    }

    public File getFile(String str) {
        return new File(this.dir, DrawableUtils.getFileName(getKey(str)));
    }

    public WrapWebPDrawable getLocalWebPDrawable(String str, int i10, int i11) throws Throwable {
        InputStream inputStream;
        InputStream fileInputStream;
        InputStream inputStream2 = null;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        WrapWebPDrawable webPFromMemoryCache = getWebPFromMemoryCache(str);
        if (webPFromMemoryCache != null) {
            return webPFromMemoryCache;
        }
        try {
            if (str.startsWith("assets://")) {
                fileInputStream = this.context.getContext().getAssets().open(str.substring(9));
            } else {
                File localFileByUrl = getLocalFileByUrl(str);
                if (localFileByUrl != null && localFileByUrl.exists() && localFileByUrl.length() > 0) {
                    fileInputStream = new FileInputStream(localFileByUrl);
                } else {
                    fileInputStream = null;
                }
            }
            if (fileInputStream != null) {
                try {
                    FrameSequence frameSequenceDecodeStream = FrameSequence.decodeStream(fileInputStream);
                    if (frameSequenceDecodeStream != null && frameSequenceDecodeStream.getFrameCount() > 0) {
                        FrameSequenceDrawable frameSequenceDrawable = new FrameSequenceDrawable(frameSequenceDecodeStream, new FrameSequenceDrawable.BitmapProvider() { // from class: com.narvii.util.drawables.webp.WebPLoader.1
                            @Override // android.support.rastermill.FrameSequenceDrawable.BitmapProvider
                            public void releaseBitmap(Bitmap bitmap) {
                            }

                            @Override // android.support.rastermill.FrameSequenceDrawable.BitmapProvider
                            public Bitmap acquireBitmap(int i12, int i13) {
                                return Bitmap.createBitmap(i12, i13, Bitmap.Config.ARGB_8888);
                            }
                        });
                        if (frameSequenceDecodeStream.getFrameCount() == 1) {
                            frameSequenceDrawable.setLoopBehavior(1);
                        } else {
                            frameSequenceDrawable.setLoopBehavior(2);
                            frameSequenceDrawable.start();
                        }
                        WrapWebPDrawable wrapWebPDrawable = new WrapWebPDrawable(new NVWebPDrawable(frameSequenceDrawable));
                        Utils.safeClose(fileInputStream);
                        return wrapWebPDrawable;
                    }
                    Utils.safeClose(fileInputStream);
                    return null;
                } catch (IOException e) {
                    e = e;
                    Throwable th = e;
                    inputStream = fileInputStream;
                    e = th;
                    try {
                        Log.e("fail to load local webp", e);
                        Utils.safeClose(inputStream);
                        return null;
                    } catch (Throwable th2) {
                        th = th2;
                        inputStream2 = inputStream;
                        Utils.safeClose(inputStream2);
                        throw th;
                    }
                } catch (IllegalArgumentException e2) {
                    e = e2;
                    Throwable th3 = e;
                    inputStream = fileInputStream;
                    e = th3;
                    Log.e("fail to load local webp", e);
                    Utils.safeClose(inputStream);
                    return null;
                } catch (Throwable th4) {
                    inputStream2 = fileInputStream;
                    th = th4;
                    Utils.safeClose(inputStream2);
                    throw th;
                }
            }
            Utils.safeClose(fileInputStream);
            return null;
        } catch (IOException e6) {
            e = e6;
            inputStream = null;
            Log.e("fail to load local webp", e);
            Utils.safeClose(inputStream);
            return null;
        } catch (IllegalArgumentException e7) {
            e = e7;
            inputStream = null;
            Log.e("fail to load local webp", e);
            Utils.safeClose(inputStream);
            return null;
        } catch (Throwable th5) {
            th = th5;
        }
    }
}
