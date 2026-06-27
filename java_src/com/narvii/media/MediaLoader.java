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
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ThreadPoolExecutor;

/* loaded from: classes3.dex */
public class MediaLoader {
    public static final ThreadPoolExecutor executor = Utils.createThreadPoolExecutor(2, "media-loader");
    volatile DiskLruCache cache;
    Context context;
    File dir;
    boolean mDiskCacheStarting;
    private ProxyStack stack;
    final ConcurrentHashMap<String, LoadWorker> runningSessions = new ConcurrentHashMap<>();
    final Object mDiskCacheLock = new Object();

    interface OnMediaLoadListener {
        void onError(String str);

        void onLoading(String str);

        void onLocalReady(String str, FileDescriptor fileDescriptor);
    }

    public void trimAndFlush(int i, long j) {
        if (this.cache != null) {
            try {
                this.cache.trimAndFlush(i, j);
            } catch (Exception unused) {
            }
        }
    }

    public MediaLoader(Context context, final File file) {
        this.mDiskCacheStarting = true;
        this.context = context;
        this.dir = file;
        this.mDiskCacheStarting = true;
        new Thread("audio lru cache load") { // from class: com.narvii.media.MediaLoader.1
            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r3v0 */
            /* JADX WARN: Type inference failed for: r3v10 */
            /* JADX WARN: Type inference failed for: r3v4, types: [java.lang.Object] */
            /* JADX WARN: Type inference failed for: r3v8 */
            /* JADX WARN: Type inference failed for: r3v9 */
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                synchronized (MediaLoader.this.mDiskCacheLock) {
                    long jElapsedRealtime = SystemClock.elapsedRealtime();
                    boolean z = 0;
                    z = 0;
                    try {
                        try {
                            MediaLoader.this.cache = DiskLruCache.open(file, 1, 1);
                            MediaLoader.this.mDiskCacheStarting = false;
                            z = MediaLoader.this.mDiskCacheLock;
                        } catch (IOException e) {
                            Log.e("fail to init media lru cache", e);
                            MediaLoader.this.mDiskCacheStarting = false;
                            z = MediaLoader.this.mDiskCacheLock;
                        }
                        z.notifyAll();
                        Log.i("load audio cache for " + (SystemClock.elapsedRealtime() - jElapsedRealtime) + " ms");
                    } catch (Throwable th) {
                        MediaLoader.this.mDiskCacheStarting = z;
                        MediaLoader.this.mDiskCacheLock.notifyAll();
                        throw th;
                    }
                }
            }
        }.start();
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

    ProxyStack getStack() {
        if (this.stack == null) {
            this.stack = new ProxyStack(null);
        }
        return this.stack;
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
                callback.call(false);
                return;
            }
            return;
        }
        final Uri uri = Uri.parse(str2);
        if ("file".equals(uri.getScheme()) && new File(uri.getPath()).exists()) {
            new Thread() { // from class: com.narvii.media.MediaLoader.2
                @Override // java.lang.Thread, java.lang.Runnable
                public void run() throws IOException {
                    DiskLruCache.Editor editorEdit;
                    try {
                        editorEdit = MediaLoader.this.cache.edit(MediaLoader.this.getCacheKey(str));
                    } catch (IOException unused) {
                        editorEdit = null;
                    }
                    if (editorEdit == null) {
                        Callback callback2 = callback;
                        if (callback2 != null) {
                            callback2.call(false);
                            return;
                        }
                        return;
                    }
                    try {
                        FileInputStream fileInputStream = new FileInputStream(new File(uri.getPath()));
                        OutputStream outputStreamNewOutputStream = editorEdit.newOutputStream(0);
                        byte[] bArr = new byte[4096];
                        while (true) {
                            int i = fileInputStream.read(bArr);
                            if (i == -1) {
                                break;
                            } else {
                                outputStreamNewOutputStream.write(bArr, 0, i);
                            }
                        }
                        outputStreamNewOutputStream.close();
                        fileInputStream.close();
                        if (editorEdit != null) {
                            editorEdit.commit();
                            if (callback != null) {
                                callback.call(true);
                            }
                        }
                    } catch (Exception unused2) {
                        if (editorEdit != null) {
                            try {
                                editorEdit.abort();
                            } catch (Exception unused3) {
                            }
                        }
                        Callback callback3 = callback;
                        if (callback3 != null) {
                            callback3.call(false);
                        }
                    }
                }
            }.start();
        } else if (callback != null) {
            callback.call(false);
        }
    }

    private class LoadWorker extends AsyncTask<String, Integer, FileDescriptor> {
        private HttpURLConnection conn;
        final ArrayList<OnMediaLoadListener> listeners;
        private OutputStream os;
        String url;

        private LoadWorker() {
            this.listeners = new ArrayList<>();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Code restructure failed: missing block: B:34:0x0093, code lost:
        
            r8.os.close();
            r8.os = null;
            r4.close();
         */
        /* JADX WARN: Code restructure failed: missing block: B:35:0x009d, code lost:
        
            r8.conn.disconnect();
            r8.conn = null;
            r1.commit();
         */
        /* JADX WARN: Code restructure failed: missing block: B:36:0x00a7, code lost:
        
            com.narvii.util.Utils.safeClose(r8.os);
            com.narvii.util.Utils.safeClose((java.io.InputStream) null);
            r1 = r8.conn;
         */
        /* JADX WARN: Code restructure failed: missing block: B:37:0x00b1, code lost:
        
            if (r1 == null) goto L85;
         */
        /* JADX WARN: Removed duplicated region for block: B:103:? A[RETURN, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:59:0x00ea  */
        /* JADX WARN: Removed duplicated region for block: B:77:0x00cc A[EXC_TOP_SPLITTER, SYNTHETIC] */
        @Override // android.os.AsyncTask
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.io.FileDescriptor doInBackground(java.lang.String... r9) throws java.lang.Throwable {
            /*
                Method dump skipped, instructions count: 255
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.narvii.media.MediaLoader.LoadWorker.doInBackground(java.lang.String[]):java.io.FileDescriptor");
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onProgressUpdate(Integer... numArr) {
            super.onProgressUpdate((Object[]) numArr);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(FileDescriptor fileDescriptor) {
            Iterator<OnMediaLoadListener> it = this.listeners.iterator();
            while (it.hasNext()) {
                OnMediaLoadListener next = it.next();
                if (fileDescriptor != null) {
                    next.onLocalReady(this.url, fileDescriptor);
                } else {
                    next.onError(this.url);
                }
            }
            MediaLoader.this.runningSessions.remove(this.url, this);
        }
    }
}
