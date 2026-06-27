package com.narvii.util.drawables.webp;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.support.rastermill.FrameSequence;
import android.support.rastermill.FrameSequenceDrawable;
import android.text.TextUtils;
import com.narvii.app.NVContext;
import com.narvii.photos.PhotoManager;
import com.narvii.util.Log;
import com.narvii.util.Utils;
import com.narvii.util.drawables.DrawableLoaderListener;
import com.narvii.util.drawables.DrawableUtils;
import com.narvii.util.http.ProxyStack;
import com.narvii.util.image.MediaStoreUtils;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ThreadPoolExecutor;

/* loaded from: classes3.dex */
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

    public WebPLoader(NVContext nVContext, File file) {
        this.context = nVContext;
        this.dir = file;
        this.stack = new ProxyStack(nVContext);
    }

    public String getKey(String str) {
        int iIndexOf = str.indexOf(63);
        return iIndexOf > 0 ? str.substring(0, iIndexOf) : str;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0, types: [java.lang.CharSequence, java.lang.String] */
    /* JADX WARN: Type inference failed for: r5v1, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r5v3 */
    public WrapWebPDrawable getLocalWebPDrawable(String str, int i, int i2) throws Throwable {
        Throwable e;
        InputStream fileInputStream;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        WrapWebPDrawable webPFromMemoryCache = getWebPFromMemoryCache(str);
        try {
            if (webPFromMemoryCache != null) {
                return webPFromMemoryCache;
            }
            try {
                if (str.startsWith("assets://")) {
                    fileInputStream = this.context.getContext().getAssets().open(str.substring(9));
                } else {
                    File localFileByUrl = getLocalFileByUrl(str);
                    fileInputStream = (localFileByUrl == null || !localFileByUrl.exists() || localFileByUrl.length() <= 0) ? null : new FileInputStream(localFileByUrl);
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
                                public Bitmap acquireBitmap(int i3, int i4) {
                                    return Bitmap.createBitmap(i3, i4, Bitmap.Config.ARGB_8888);
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
                    } catch (IOException e2) {
                        e = e2;
                        Log.e("fail to load local webp", e);
                        Utils.safeClose(fileInputStream);
                        return null;
                    } catch (IllegalArgumentException e3) {
                        e = e3;
                        Log.e("fail to load local webp", e);
                        Utils.safeClose(fileInputStream);
                        return null;
                    }
                }
            } catch (IOException e4) {
                e = e4;
                e = e;
                fileInputStream = null;
                Log.e("fail to load local webp", e);
                Utils.safeClose(fileInputStream);
                return null;
            } catch (IllegalArgumentException e5) {
                e = e5;
                e = e;
                fileInputStream = null;
                Log.e("fail to load local webp", e);
                Utils.safeClose(fileInputStream);
                return null;
            } catch (Throwable th) {
                th = th;
                str = 0;
                Utils.safeClose((InputStream) str);
                throw th;
            }
            Utils.safeClose(fileInputStream);
            return null;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public void request(String str, DrawableLoaderListener drawableLoaderListener, int i, int i2) {
        request(str, drawableLoaderListener, i, i2, false, 0);
    }

    public void request(String str, DrawableLoaderListener drawableLoaderListener, int i, int i2, boolean z, int i3) {
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
            LoadTask loadTask2 = new LoadTask(key, str, localFileByUrl, drawableLoaderListener, i, i2, z, i3);
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
        DownloadTask downloadTask2 = new DownloadTask(key, str, drawableLoaderListener, i, i2, i3);
        this.downloadTasks.put(key, downloadTask2);
        this.downloadExecutor.execute(downloadTask2);
    }

    public void abort(String str, DrawableLoaderListener drawableLoaderListener) {
        DownloadTask downloadTask = this.downloadTasks.get(getKey(str));
        if (downloadTask == null) {
            return;
        }
        downloadTask.removeListener(str, drawableLoaderListener);
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
            if (file.exists()) {
                if (file.length() > 0) {
                    return true;
                }
            }
        } catch (Exception unused) {
        }
        return false;
    }

    public File getFile(String str) {
        return new File(this.dir, DrawableUtils.getFileName(getKey(str)));
    }

    private File getLocalFileByUrl(String str) {
        if (TextUtils.isEmpty(str) || str.startsWith("assets://")) {
            return null;
        }
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

    private WrapWebPDrawable getWebPFromMemoryCache(String str) {
        String key = getKey(str);
        WeakReference<NVWebPDrawable> weakReference = this.refs.get(key);
        NVWebPDrawable nVWebPDrawable = weakReference == null ? null : weakReference.get();
        if (nVWebPDrawable != null) {
            return new WrapWebPDrawable(nVWebPDrawable);
        }
        if (weakReference != null) {
            this.refs.remove(key);
        }
        return null;
    }

    private class LoadTask extends BaseDrawableTask {
        private boolean doRtl;
        private File file;

        LoadTask(String str, String str2, File file, DrawableLoaderListener drawableLoaderListener, int i, int i2, boolean z, int i3) {
            super(str, str2, drawableLoaderListener, i, i2, i3);
            this.file = file;
            this.doRtl = z;
        }

        @Override // com.narvii.util.drawables.webp.WebPLoader.BaseDrawableTask
        protected void abort() {
            WebPLoader.this.loadTasks.remove(this.key);
            WebPLoader.this.loadExecutor.remove(this);
        }

        /* JADX WARN: Removed duplicated region for block: B:56:0x00e5  */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void run() throws java.lang.Throwable {
            /*
                Method dump skipped, instructions count: 457
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.narvii.util.drawables.webp.WebPLoader.LoadTask.run():void");
        }
    }

    private class DownloadTask extends BaseDrawableTask {
        DownloadTask(String str, String str2, DrawableLoaderListener drawableLoaderListener, int i, int i2, int i3) {
            super(str, str2, drawableLoaderListener, i, i2, i3);
        }

        @Override // com.narvii.util.drawables.webp.WebPLoader.BaseDrawableTask
        protected void abort() {
            WebPLoader.this.downloadTasks.remove(this.key);
            WebPLoader.this.downloadExecutor.remove(this);
        }

        /* JADX WARN: Removed duplicated region for block: B:64:0x010c A[Catch: Exception -> 0x010f, TRY_ENTER, TRY_LEAVE, TryCatch #0 {Exception -> 0x010f, blocks: (B:35:0x00c0, B:64:0x010c), top: B:77:0x0001 }] */
        /* JADX WARN: Removed duplicated region for block: B:81:0x0125 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:91:? A[RETURN, SYNTHETIC] */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void run() throws java.lang.Throwable {
            /*
                Method dump skipped, instructions count: 299
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.narvii.util.drawables.webp.WebPLoader.DownloadTask.run():void");
        }
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

    private abstract class BaseDrawableTask implements Runnable {
        protected int height;
        protected final String key;
        protected int loopCount;
        protected final String url;
        protected int width;
        protected final ArrayList<ListenerStub> listeners = new ArrayList<>();
        protected FrameSequenceDrawable.BitmapProvider bitmapProvider = null;

        protected abstract void abort();

        BaseDrawableTask(String str, String str2, DrawableLoaderListener drawableLoaderListener, int i, int i2, int i3) {
            this.key = str;
            this.url = str2;
            this.width = i;
            this.height = i2;
            this.loopCount = i3;
            if (drawableLoaderListener != null) {
                this.listeners.add(new ListenerStub(str2, drawableLoaderListener));
            }
            init();
        }

        private void init() {
            this.bitmapProvider = new FrameSequenceDrawable.BitmapProvider() { // from class: com.narvii.util.drawables.webp.WebPLoader.BaseDrawableTask.1
                @Override // android.support.rastermill.FrameSequenceDrawable.BitmapProvider
                public void releaseBitmap(Bitmap bitmap) {
                }

                @Override // android.support.rastermill.FrameSequenceDrawable.BitmapProvider
                public Bitmap acquireBitmap(int i, int i2) {
                    try {
                        return Bitmap.createBitmap(i, i2, Bitmap.Config.ARGB_8888);
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

        protected void addListeners(ArrayList<ListenerStub> arrayList) {
            Iterator<ListenerStub> it = arrayList.iterator();
            while (it.hasNext()) {
                ListenerStub next = it.next();
                if (!arrayList.contains(next)) {
                    arrayList.add(next);
                }
            }
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

        protected void postResult(final NVWebPDrawable nVWebPDrawable) {
            WebPLoader.this.mainH.post(new Runnable() { // from class: com.narvii.util.drawables.webp.WebPLoader.BaseDrawableTask.2
                @Override // java.lang.Runnable
                public void run() {
                    if (nVWebPDrawable != null) {
                        WebPLoader.this.refs.put(BaseDrawableTask.this.key, new WeakReference(nVWebPDrawable));
                    }
                    Iterator<ListenerStub> it = BaseDrawableTask.this.listeners.iterator();
                    while (it.hasNext()) {
                        ListenerStub next = it.next();
                        NVWebPDrawable nVWebPDrawable2 = nVWebPDrawable;
                        if (nVWebPDrawable2 == null) {
                            next.listener.onFailed(next.url);
                        } else {
                            next.listener.onFinished(next.url, new WrapWebPDrawable(nVWebPDrawable2), true);
                        }
                    }
                }
            });
        }
    }
}
