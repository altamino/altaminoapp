package com.narvii.media;

import android.content.Context;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.SystemClock;
import android.text.TextUtils;
import com.narvii.util.Callback;
import com.narvii.util.Log;
import com.narvii.util.StringUtils;
import com.narvii.util.Utils;
import com.narvii.util.disklrucache.DiskLruCache;
import com.narvii.util.http.ProxyStack;
import com.narvii.volley.util.HurlConnectionHelper;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ThreadPoolExecutor;

/* JADX INFO: loaded from: classes6.dex */
public class MediaLoader {
    public static final ThreadPoolExecutor executor = Utils.createThreadPoolExecutor(2, "media-loader");
    volatile DiskLruCache cache;
    Context context;
    File dir;
    private ProxyStack stack;
    final ConcurrentHashMap<String, LoadWorker> runningSessions = new ConcurrentHashMap<>();
    final Object mDiskCacheLock = new Object();
    boolean mDiskCacheStarting = true;

    private class LoadWorker extends AsyncTask<String, Integer, FileDescriptor> {
        private HttpURLConnection conn;
        final ArrayList<OnMediaLoadListener> listeners;
        private OutputStream os;
        String url;

        private LoadWorker() {
            this.listeners = new ArrayList<>();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Code duplicated, block: B:101:? A[RETURN, SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:58:0x00e3  */
        /* JADX WARN: Code duplicated, block: B:75:0x00c8 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        @Override // android.os.AsyncTask
        public FileDescriptor doInBackground(String... strArr) throws Throwable {
            MediaLoader mediaLoader;
            DiskLruCache.Snapshot snapshot;
            DiskLruCache.Editor editorEdit;
            InputStream inputStream;
            HttpURLConnection httpURLConnection;
            HttpURLConnection httpURLConnection2;
            String str = strArr[0];
            this.url = str;
            String cacheKey = MediaLoader.this.getCacheKey(str);
            synchronized (MediaLoader.this.mDiskCacheLock) {
                while (true) {
                    mediaLoader = MediaLoader.this;
                    if (!mediaLoader.mDiskCacheStarting) {
                        break;
                    }
                    try {
                        mediaLoader.mDiskCacheLock.wait();
                    } catch (InterruptedException unused) {
                    }
                }
                InputStream inputStream2 = null;
                if (mediaLoader.cache == null) {
                    return null;
                }
                try {
                    snapshot = MediaLoader.this.cache.get(cacheKey);
                } catch (IOException unused2) {
                    snapshot = null;
                }
                if (snapshot == null) {
                    try {
                        editorEdit = MediaLoader.this.cache.edit(cacheKey);
                    } catch (IOException unused3) {
                        editorEdit = null;
                    }
                    if (editorEdit == null) {
                        return null;
                    }
                    try {
                        this.os = editorEdit.newOutputStream(0);
                        HttpURLConnection httpURLConnectionCreateConnection = MediaLoader.this.getStack().createConnection(new URL(this.url));
                        this.conn = httpURLConnectionCreateConnection;
                        inputStream = HurlConnectionHelper.getInputStream(httpURLConnectionCreateConnection);
                        try {
                            try {
                                publishProgress(0);
                                byte[] bArr = new byte[4096];
                                while (true) {
                                    int i10 = inputStream.read(bArr);
                                    try {
                                        try {
                                            if (i10 == -1) {
                                                this.os.close();
                                                this.os = null;
                                                inputStream.close();
                                                this.conn.disconnect();
                                                this.conn = null;
                                                editorEdit.commit();
                                                Utils.safeClose(this.os);
                                                Utils.safeClose((InputStream) null);
                                                httpURLConnection2 = this.conn;
                                                if (httpURLConnection2 != null) {
                                                }
                                                snapshot = MediaLoader.this.cache.get(cacheKey);
                                            } else {
                                                if (this.conn == null) {
                                                    Utils.safeClose(this.os);
                                                    Utils.safeClose(inputStream);
                                                    HttpURLConnection httpURLConnection3 = this.conn;
                                                    if (httpURLConnection3 != null) {
                                                        try {
                                                            httpURLConnection3.disconnect();
                                                        } catch (Exception unused4) {
                                                        }
                                                    }
                                                    return null;
                                                }
                                                this.os.write(bArr, 0, i10);
                                            }
                                            snapshot = MediaLoader.this.cache.get(cacheKey);
                                        } catch (IOException unused5) {
                                        }
                                        httpURLConnection2.disconnect();
                                    } catch (Exception unused6) {
                                    }
                                }
                            } catch (Exception unused7) {
                                try {
                                    editorEdit.abort();
                                } catch (Exception unused8) {
                                }
                                Utils.safeClose(this.os);
                                Utils.safeClose(inputStream);
                                httpURLConnection2 = this.conn;
                                if (httpURLConnection2 != null) {
                                }
                                snapshot = MediaLoader.this.cache.get(cacheKey);
                                if (snapshot == null) {
                                    return null;
                                }
                                try {
                                    return ((FileInputStream) snapshot.getInputStream(0)).getFD();
                                } catch (IOException e) {
                                    e.printStackTrace();
                                    return null;
                                }
                            }
                        } catch (Throwable th) {
                            th = th;
                            inputStream2 = inputStream;
                            Utils.safeClose(this.os);
                            Utils.safeClose(inputStream2);
                            httpURLConnection = this.conn;
                            if (httpURLConnection != null) {
                                try {
                                    httpURLConnection.disconnect();
                                } catch (Exception unused9) {
                                }
                            }
                            throw th;
                        }
                    } catch (Exception unused10) {
                        inputStream = null;
                    } catch (Throwable th2) {
                        th = th2;
                        Utils.safeClose(this.os);
                        Utils.safeClose(inputStream2);
                        httpURLConnection = this.conn;
                        if (httpURLConnection != null) {
                            httpURLConnection.disconnect();
                        }
                        throw th;
                    }
                }
                if (snapshot == null) {
                    return ((FileInputStream) snapshot.getInputStream(0)).getFD();
                }
                return null;
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(FileDescriptor fileDescriptor) {
            for (OnMediaLoadListener onMediaLoadListener : this.listeners) {
                if (fileDescriptor != null) {
                    onMediaLoadListener.onLocalReady(this.url, fileDescriptor);
                } else {
                    onMediaLoadListener.onError(this.url);
                }
            }
            MediaLoader.this.runningSessions.remove(this.url, this);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onProgressUpdate(Integer... numArr) {
            super.onProgressUpdate((Object[]) numArr);
        }
    }

    interface OnMediaLoadListener {
        void onError(String str);

        void onLoading(String str);

        void onLocalReady(String str, FileDescriptor fileDescriptor);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getCacheKey(String str) {
        int iIndexOf = str.indexOf(63);
        if (iIndexOf > 0) {
            str = str.substring(0, iIndexOf);
        }
        return StringUtils.md5(str);
    }

    public void cacheLocalFile(final String str, String str2, final Callback<Boolean> callback) {
        if (this.cache == null || TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            if (callback != null) {
                callback.call(Boolean.FALSE);
                return;
            }
            return;
        }
        final Uri uri = Uri.parse(str2);
        if ("file".equals(uri.getScheme()) && new File(uri.getPath()).exists()) {
            new Thread() { // from class: com.narvii.media.MediaLoader.2
                /* JADX WARN: Code duplicated, block: B:22:0x005c  */
                /* JADX WARN: Code duplicated, block: B:33:? A[RETURN, SYNTHETIC] */
                @Override // java.lang.Thread, java.lang.Runnable
                public void run() {
                    DiskLruCache.Editor editorEdit;
                    Callback callback2;
                    try {
                        editorEdit = MediaLoader.this.cache.edit(MediaLoader.this.getCacheKey(str));
                    } catch (IOException unused) {
                        editorEdit = null;
                    }
                    if (editorEdit == null) {
                        Callback callback3 = callback;
                        if (callback3 != null) {
                            callback3.call(Boolean.FALSE);
                            return;
                        }
                        return;
                    }
                    try {
                        try {
                            FileInputStream fileInputStream = new FileInputStream(new File(uri.getPath()));
                            OutputStream outputStreamNewOutputStream = editorEdit.newOutputStream(0);
                            byte[] bArr = new byte[4096];
                            while (true) {
                                int i10 = fileInputStream.read(bArr);
                                if (i10 == -1) {
                                    break;
                                } else {
                                    outputStreamNewOutputStream.write(bArr, 0, i10);
                                }
                                callback2 = callback;
                                if (callback2 != null) {
                                    callback2.call(Boolean.FALSE);
                                }
                            }
                            outputStreamNewOutputStream.close();
                            fileInputStream.close();
                            editorEdit.commit();
                            Callback callback4 = callback;
                            if (callback4 != null) {
                                callback4.call(Boolean.TRUE);
                                return;
                            }
                            return;
                        } catch (Exception unused2) {
                        }
                    } catch (Exception unused3) {
                        editorEdit.abort();
                        callback2 = callback;
                        if (callback2 != null) {
                            callback2.call(Boolean.FALSE);
                        }
                    }
                    callback2 = callback;
                    if (callback2 != null) {
                        callback2.call(Boolean.FALSE);
                    }
                }
            }.start();
        } else if (callback != null) {
            callback.call(Boolean.FALSE);
        }
    }

    public void clear() {
        Object obj;
        if (this.cache != null) {
            try {
                this.cache.delete();
            } catch (Exception unused) {
            }
            this.cache = null;
            synchronized (this.mDiskCacheLock) {
                try {
                    try {
                        try {
                            this.cache = DiskLruCache.open(this.dir, 1, 1);
                            this.mDiskCacheStarting = false;
                            obj = this.mDiskCacheLock;
                        } catch (Throwable th) {
                            this.mDiskCacheStarting = false;
                            this.mDiskCacheLock.notifyAll();
                            throw th;
                        }
                    } catch (Exception unused2) {
                        this.mDiskCacheStarting = false;
                        obj = this.mDiskCacheLock;
                    }
                    obj.notifyAll();
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    ProxyStack getStack() {
        if (this.stack == null) {
            this.stack = new ProxyStack(null);
        }
        return this.stack;
    }

    public boolean isDownloading(String str) {
        return this.runningSessions.get(str) != null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void loadMedia(String str, OnMediaLoadListener onMediaLoadListener) {
        FileDescriptor fd;
        if (str == null) {
            return;
        }
        Uri uri = Uri.parse(str);
        FileDescriptor fd2 = null;
        Object[] objArr = 0;
        if ("file".equals(uri.getScheme())) {
            if (onMediaLoadListener != null) {
                try {
                    fd2 = new FileInputStream(uri.getPath()).getFD();
                } catch (IOException unused) {
                }
                if (fd2 != null) {
                    onMediaLoadListener.onLocalReady(str, fd2);
                    return;
                } else {
                    onMediaLoadListener.onError(str);
                    return;
                }
            }
            return;
        }
        if (this.cache == null && !this.mDiskCacheStarting) {
            Log.w("cache is null");
            if (onMediaLoadListener != null) {
                onMediaLoadListener.onError(str);
                return;
            }
        }
        if (this.cache != null) {
            try {
                DiskLruCache.Snapshot snapshot = this.cache.get(getCacheKey(str));
                if (snapshot != null) {
                    try {
                        fd = ((FileInputStream) snapshot.getInputStream(0)).getFD();
                    } catch (IOException unused2) {
                        fd = null;
                    }
                    if (onMediaLoadListener != null) {
                        onMediaLoadListener.onLocalReady(str, fd);
                        return;
                    }
                    return;
                }
            } catch (IOException unused3) {
            }
        }
        LoadWorker loadWorker = this.runningSessions.get(str);
        if (loadWorker != null) {
            if (onMediaLoadListener != null) {
                loadWorker.listeners.add(onMediaLoadListener);
                onMediaLoadListener.onLoading(str);
                return;
            }
            return;
        }
        LoadWorker loadWorker2 = new LoadWorker();
        loadWorker2.listeners.add(onMediaLoadListener);
        this.runningSessions.put(str, loadWorker2);
        loadWorker2.executeOnExecutor(executor, str);
        if (onMediaLoadListener != null) {
            onMediaLoadListener.onLoading(str);
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

    public void trimAndFlush(int i10, long j6) {
        if (this.cache != null) {
            try {
                this.cache.trimAndFlush(i10, j6);
            } catch (Exception unused) {
            }
        }
    }

    public MediaLoader(Context context, final File file) {
        this.context = context;
        this.dir = file;
        new Thread("audio lru cache load") { // from class: com.narvii.media.MediaLoader.1
            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r3v0 */
            /* JADX WARN: Type inference failed for: r3v3, types: [java.lang.Object] */
            /* JADX WARN: Type inference failed for: r3v6 */
            /* JADX WARN: Type inference failed for: r3v7 */
            /* JADX WARN: Type inference failed for: r3v8 */
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                synchronized (MediaLoader.this.mDiskCacheLock) {
                    long jElapsedRealtime = SystemClock.elapsedRealtime();
                    boolean z6 = 0;
                    z6 = 0;
                    try {
                        try {
                            MediaLoader.this.cache = DiskLruCache.open(file, 1, 1);
                            MediaLoader mediaLoader = MediaLoader.this;
                            mediaLoader.mDiskCacheStarting = false;
                            z6 = mediaLoader.mDiskCacheLock;
                        } catch (IOException e) {
                            Log.e("fail to init media lru cache", e);
                            MediaLoader mediaLoader2 = MediaLoader.this;
                            mediaLoader2.mDiskCacheStarting = false;
                            z6 = mediaLoader2.mDiskCacheLock;
                        }
                        z6.notifyAll();
                        Log.i("load audio cache for " + (SystemClock.elapsedRealtime() - jElapsedRealtime) + " ms");
                    } catch (Throwable th) {
                        MediaLoader mediaLoader3 = MediaLoader.this;
                        mediaLoader3.mDiskCacheStarting = z6;
                        mediaLoader3.mDiskCacheLock.notifyAll();
                        throw th;
                    }
                }
            }
        }.start();
    }
}
