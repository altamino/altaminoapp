package com.narvii.sticker;

import android.net.Uri;
import android.os.AsyncTask;
import android.os.SystemClock;
import com.narvii.app.NVContext;
import com.narvii.asset.DownloadStatusInfo;
import com.narvii.model.Sticker;
import com.narvii.util.FileUtils;
import com.narvii.util.Log;
import com.narvii.util.StringUtils;
import com.narvii.util.Utils;
import com.narvii.util.http.ProxyStack;
import com.narvii.volley.util.HurlConnectionHelper;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.ref.WeakReference;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ThreadPoolExecutor;

/* JADX INFO: loaded from: classes5.dex */
public class StickerCacheService {
    private static final int CORE_POOL_SIZE;
    private static final int CPU_COUNT;
    public static final ThreadPoolExecutor executor;
    File cacheDir;
    File legacyCacheDir;
    volatile boolean migrating;
    NVContext nvContext;
    private ProxyStack stack;
    final ConcurrentHashMap<String, LoadWorker> runningSessions = new ConcurrentHashMap<>();
    private final ConcurrentHashMap<String, String> errors = new ConcurrentHashMap<>();
    final Object migrateLock = new Object();

    /* JADX INFO: Access modifiers changed from: package-private */
    public interface DownloadListener {
        boolean onStatusChanged(String str, String str2);
    }

    private class LoadWorker extends AsyncTask<String, Integer, String> {
        volatile boolean canceled;
        String collectionId;
        private HttpURLConnection conn;
        int current;
        String downloadId;
        HashSet<DownloadListener> listeners = new HashSet<>();
        private OutputStream os;
        int total;
        String url;

        private float getProgress(int i10, int i11) {
            if (i11 <= 0) {
                return 0.0f;
            }
            return (i10 * 1.0f) / i11;
        }

        public LoadWorker(String str, String str2) {
            this.url = str2;
            this.collectionId = str;
            this.downloadId = StickerCacheService.this.getDownloadId(str, str2);
        }

        private boolean check() {
            return this.conn != null && StickerCacheService.this.runningSessions.get(this.downloadId) == this;
        }

        private void notifyStatusChanged() {
            Iterator<DownloadListener> it = this.listeners.iterator();
            while (it.hasNext()) {
                if (!it.next().onStatusChanged(this.collectionId, this.url)) {
                    it.remove();
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public String doInBackground(String... strArr) throws Throwable {
            String str;
            String str2;
            String str3 = this.collectionId;
            InputStream inputStream = null;
            if (str3 == null || (str = this.url) == null) {
                return null;
            }
            File downloadFile = StickerCacheService.this.getDownloadFile(str3, str);
            long j6 = 0;
            if (StickerCacheService.this.migrating) {
                synchronized (StickerCacheService.this.migrateLock) {
                    while (StickerCacheService.this.migrating) {
                        try {
                            StickerCacheService.this.migrateLock.wait();
                        } catch (InterruptedException unused) {
                        }
                    }
                    if (downloadFile.exists() && downloadFile.length() != 0) {
                        return null;
                    }
                }
            }
            if (this.canceled) {
                return null;
            }
            this.os = null;
            this.conn = null;
            StickerCacheService.this.cacheDir.mkdir();
            StickerCacheService.this.getStickerCollectionDir(this.collectionId).mkdirs();
            File file = new File(downloadFile.getAbsolutePath() + ".d");
            try {
                try {
                    this.conn = StickerCacheService.this.getStack().createConnection(new URL(this.url));
                    if (!check()) {
                        Utils.safeClose(this.os);
                        Utils.safeClose((InputStream) null);
                        HttpURLConnection httpURLConnection = this.conn;
                        if (httpURLConnection != null) {
                            try {
                                httpURLConnection.disconnect();
                            } catch (Exception unused2) {
                            }
                        }
                        return null;
                    }
                    InputStream inputStream2 = HurlConnectionHelper.getInputStream(this.conn);
                    try {
                        if (!check()) {
                            Utils.safeClose(this.os);
                            Utils.safeClose(inputStream2);
                            HttpURLConnection httpURLConnection2 = this.conn;
                            if (httpURLConnection2 != null) {
                                try {
                                    httpURLConnection2.disconnect();
                                } catch (Exception unused3) {
                                }
                            }
                            return null;
                        }
                        if (this.canceled) {
                            Utils.safeClose(this.os);
                            Utils.safeClose(inputStream2);
                            HttpURLConnection httpURLConnection3 = this.conn;
                            if (httpURLConnection3 != null) {
                                try {
                                    httpURLConnection3.disconnect();
                                } catch (Exception unused4) {
                                }
                            }
                            return null;
                        }
                        if (this.os == null) {
                            this.total = this.conn.getContentLength();
                            this.current = 0;
                            this.os = new FileOutputStream(file);
                        }
                        byte[] bArr = new byte[4096];
                        while (true) {
                            int i10 = inputStream2.read(bArr);
                            if (i10 == -1) {
                                this.os.close();
                                this.os = null;
                                inputStream2.close();
                                this.conn.disconnect();
                                this.conn = null;
                                publishProgress(Integer.valueOf(this.current), Integer.valueOf(this.total));
                                if (this.canceled) {
                                    Utils.safeClose(this.os);
                                    Utils.safeClose((InputStream) null);
                                    HttpURLConnection httpURLConnection4 = this.conn;
                                    if (httpURLConnection4 != null) {
                                        try {
                                            httpURLConnection4.disconnect();
                                        } catch (Exception unused5) {
                                        }
                                    }
                                    return null;
                                }
                                if (file.renameTo(downloadFile)) {
                                    str2 = null;
                                } else {
                                    str2 = "Fail to download sticker";
                                    Log.w("Fail to download sticker" + file);
                                }
                                Utils.safeClose(this.os);
                                Utils.safeClose((InputStream) null);
                                HttpURLConnection httpURLConnection5 = this.conn;
                                if (httpURLConnection5 == null) {
                                    return str2;
                                }
                                try {
                                    httpURLConnection5.disconnect();
                                    return str2;
                                } catch (Exception unused6) {
                                    return str2;
                                }
                            }
                            if (this.conn == null) {
                                Utils.safeClose(this.os);
                                Utils.safeClose(inputStream2);
                                HttpURLConnection httpURLConnection6 = this.conn;
                                if (httpURLConnection6 != null) {
                                    try {
                                        httpURLConnection6.disconnect();
                                    } catch (Exception unused7) {
                                    }
                                }
                                return null;
                            }
                            if (this.canceled) {
                                Utils.safeClose(this.os);
                                Utils.safeClose(inputStream2);
                                HttpURLConnection httpURLConnection7 = this.conn;
                                if (httpURLConnection7 != null) {
                                    try {
                                        httpURLConnection7.disconnect();
                                    } catch (Exception unused8) {
                                    }
                                }
                                return null;
                            }
                            long jUptimeMillis = SystemClock.uptimeMillis();
                            this.os.write(bArr, 0, i10);
                            int i11 = this.current + i10;
                            this.current = i11;
                            if (jUptimeMillis > 20 + j6) {
                                publishProgress(Integer.valueOf(i11), Integer.valueOf(this.total));
                                j6 = jUptimeMillis;
                            }
                        }
                    } catch (Exception e) {
                        e = e;
                        inputStream = inputStream2;
                    } catch (Throwable th) {
                        th = th;
                        inputStream = inputStream2;
                        Utils.safeClose(this.os);
                        Utils.safeClose(inputStream);
                        HttpURLConnection httpURLConnection8 = this.conn;
                        if (httpURLConnection8 != null) {
                            try {
                                httpURLConnection8.disconnect();
                            } catch (Exception unused9) {
                            }
                        }
                        throw th;
                    }
                } catch (Exception e2) {
                    e = e2;
                }
            } catch (Throwable th2) {
                th = th2;
            }
            String message = e.getMessage();
            if (message == null) {
                message = "Fail to download sticker ";
            }
            Log.w("fail to download sticker " + this.url, e);
            Utils.safeClose(this.os);
            Utils.safeClose(inputStream);
            HttpURLConnection httpURLConnection9 = this.conn;
            if (httpURLConnection9 != null) {
                try {
                    httpURLConnection9.disconnect();
                } catch (Exception unused10) {
                }
            }
            return message;
        }

        public float getProgress() {
            return getProgress(this.current, this.total);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onPostExecute(String str) {
            StickerCacheService.this.runningSessions.remove(this.downloadId, this);
            if (str == null) {
                StickerCacheService.this.errors.remove(this.downloadId);
            } else {
                StickerCacheService.this.errors.put(this.downloadId, str);
            }
            notifyStatusChanged();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onProgressUpdate(Integer... numArr) {
            super.onProgressUpdate((Object[]) numArr);
            notifyStatusChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public File getDownloadFile(String str, String str2) {
        String str3;
        if (str2 == null || str == null) {
            return null;
        }
        if (Utils.isGif(str2)) {
            str3 = ".gif";
        } else {
            str3 = Utils.isWebP(str2) ? ".webp" : ".s";
        }
        int iIndexOf = str2.indexOf(63);
        File stickerCollectionDir = getStickerCollectionDir(str);
        StringBuilder sb = new StringBuilder();
        if (iIndexOf > 0) {
            str2 = str2.substring(0, iIndexOf);
        }
        sb.append(StringUtils.md5(str2));
        sb.append(str3);
        return new File(stickerCollectionDir, sb.toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getDownloadId(String str, String str2) {
        int iIndexOf = str2 == null ? -1 : str2.indexOf(63);
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append("-");
        if (iIndexOf > 0) {
            str2 = str2.substring(0, iIndexOf);
        }
        sb.append(StringUtils.md5(str2));
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public File getStickerCollectionDir(String str) {
        if (str == null) {
            return null;
        }
        return new File(this.cacheDir.getAbsolutePath(), str);
    }

    public void cancelAllDownloading() {
        if (this.runningSessions.isEmpty()) {
            return;
        }
        Iterator<LoadWorker> it = this.runningSessions.values().iterator();
        while (it.hasNext()) {
            it.next().canceled = true;
        }
        this.runningSessions.clear();
    }

    public void clear() {
        if (this.migrating) {
            return;
        }
        cancelAllDownloading();
        if (this.cacheDir.exists()) {
            Utils.deleteDir(this.cacheDir);
        }
    }

    public void deleteCachedFiles(List<Sticker> list) {
        if (list == null) {
            return;
        }
        for (Sticker sticker : list) {
            File downloadFile = getDownloadFile(sticker.stickerCollectionId, sticker.thumbnail);
            if (downloadFile != null && downloadFile.exists()) {
                downloadFile.delete();
            }
            File downloadFile2 = getDownloadFile(sticker.stickerCollectionId, sticker.icon);
            if (downloadFile2 != null && downloadFile2.exists()) {
                downloadFile2.delete();
            }
        }
    }

    public DownloadStatusInfo getFileDownloadStatusInfo(String str, String str2) {
        LoadWorker loadWorker = this.runningSessions.get(getDownloadId(str, str2));
        if (loadWorker != null) {
            return new DownloadStatusInfo(1, loadWorker.getProgress());
        }
        if (FileUtils.isEmpty(getDownloadFile(str, str2))) {
            return this.errors.get(getDownloadId(str, str2)) == null ? DownloadStatusInfo.IDLE : DownloadStatusInfo.FAIL;
        }
        return DownloadStatusInfo.READY;
    }

    public String getIconUri(Sticker sticker) {
        File downloadFile = getDownloadFile(sticker.stickerCollectionId, sticker.icon);
        if (FileUtils.isEmpty(downloadFile)) {
            return null;
        }
        return Uri.fromFile(downloadFile).toString();
    }

    ProxyStack getStack() {
        if (this.stack == null) {
            this.stack = new ProxyStack(this.nvContext);
        }
        return this.stack;
    }

    public DownloadStatusInfo getStickerDownloadStatusInfo(Sticker sticker) {
        DownloadStatusInfo fileDownloadStatusInfo = getFileDownloadStatusInfo(sticker.stickerCollectionId, sticker.icon);
        DownloadStatusInfo fileDownloadStatusInfo2 = getFileDownloadStatusInfo(sticker.stickerCollectionId, sticker.thumbnail);
        int i10 = fileDownloadStatusInfo.status;
        if (i10 == 2 && fileDownloadStatusInfo2.status == 2) {
            return DownloadStatusInfo.READY;
        }
        if (i10 == 0 && fileDownloadStatusInfo2.status == 0) {
            return DownloadStatusInfo.IDLE;
        }
        return (i10 == -1 || fileDownloadStatusInfo2.status == -1) ? DownloadStatusInfo.FAIL : new DownloadStatusInfo(1, (fileDownloadStatusInfo.progress * 0.5f) + (fileDownloadStatusInfo2.progress * 0.5f));
    }

    public String getThumbnailUri(Sticker sticker) {
        File downloadFile = getDownloadFile(sticker.stickerCollectionId, sticker.thumbnail);
        if (FileUtils.isEmpty(downloadFile)) {
            return null;
        }
        return Uri.fromFile(downloadFile).toString();
    }

    public boolean isStickerIconReady(Sticker sticker) {
        return !FileUtils.isEmpty(getDownloadFile(sticker.stickerCollectionId, sticker.icon));
    }

    public boolean isStickerThumbnailReady(Sticker sticker) {
        return !FileUtils.isEmpty(getDownloadFile(sticker.stickerCollectionId, sticker.thumbnail));
    }

    public void observeFileStatusChange(String str, String str2, StickerFileDownloadListener stickerFileDownloadListener) {
        if (stickerFileDownloadListener == null) {
            return;
        }
        DownloadStatusInfo fileDownloadStatusInfo = getFileDownloadStatusInfo(str, str2);
        stickerFileDownloadListener.onStatusChanged(str, str2, fileDownloadStatusInfo);
        if (fileDownloadStatusInfo.isFinished()) {
            return;
        }
        final WeakReference weakReference = new WeakReference(stickerFileDownloadListener);
        downloadFile(str, str2, new DownloadListener() { // from class: com.narvii.sticker.StickerCacheService.2
            @Override // com.narvii.sticker.StickerCacheService.DownloadListener
            public boolean onStatusChanged(String str3, String str4) {
                StickerFileDownloadListener stickerFileDownloadListener2 = (StickerFileDownloadListener) weakReference.get();
                if (stickerFileDownloadListener2 == null) {
                    return false;
                }
                stickerFileDownloadListener2.onStatusChanged(str3, str4, StickerCacheService.this.getFileDownloadStatusInfo(str3, str4));
                return true;
            }
        });
    }

    public void observeStickerStatusChange(final Sticker sticker, final StickerStatusChangeListener stickerStatusChangeListener) {
        if (stickerStatusChangeListener == null) {
            return;
        }
        stickerStatusChangeListener.onStatusChanged(sticker, getStickerDownloadStatusInfo(sticker));
        if (!getFileDownloadStatusInfo(sticker.stickerCollectionId, sticker.icon).isFinished()) {
            final WeakReference weakReference = new WeakReference(stickerStatusChangeListener);
            downloadFile(sticker.stickerCollectionId, sticker.icon, new DownloadListener() { // from class: com.narvii.sticker.StickerCacheService.3
                @Override // com.narvii.sticker.StickerCacheService.DownloadListener
                public boolean onStatusChanged(String str, String str2) {
                    if (((StickerStatusChangeListener) weakReference.get()) == null) {
                        return false;
                    }
                    StickerStatusChangeListener stickerStatusChangeListener2 = stickerStatusChangeListener;
                    Sticker sticker2 = sticker;
                    stickerStatusChangeListener2.onStatusChanged(sticker2, StickerCacheService.this.getStickerDownloadStatusInfo(sticker2));
                    return true;
                }
            });
        }
        if (getFileDownloadStatusInfo(sticker.stickerCollectionId, sticker.thumbnail).isFinished()) {
            return;
        }
        final WeakReference weakReference2 = new WeakReference(stickerStatusChangeListener);
        downloadFile(sticker.stickerCollectionId, sticker.thumbnail, new DownloadListener() { // from class: com.narvii.sticker.StickerCacheService.4
            @Override // com.narvii.sticker.StickerCacheService.DownloadListener
            public boolean onStatusChanged(String str, String str2) {
                if (((StickerStatusChangeListener) weakReference2.get()) == null) {
                    return false;
                }
                StickerStatusChangeListener stickerStatusChangeListener2 = stickerStatusChangeListener;
                Sticker sticker2 = sticker;
                stickerStatusChangeListener2.onStatusChanged(sticker2, StickerCacheService.this.getStickerDownloadStatusInfo(sticker2));
                return true;
            }
        });
    }

    public long size() {
        return Utils.getFolderSize(this.cacheDir);
    }

    static {
        int iAvailableProcessors = Runtime.getRuntime().availableProcessors();
        CPU_COUNT = iAvailableProcessors;
        int iMax = Math.max(2, Math.min(iAvailableProcessors - 1, 4));
        CORE_POOL_SIZE = iMax;
        ThreadPoolExecutor threadPoolExecutorCreateThreadPoolExecutor = Utils.createThreadPoolExecutor(iMax, "sticker-cache");
        executor = threadPoolExecutorCreateThreadPoolExecutor;
        threadPoolExecutorCreateThreadPoolExecutor.allowCoreThreadTimeOut(true);
    }

    public StickerCacheService(NVContext nVContext) {
        this.nvContext = nVContext;
        this.cacheDir = new File(nVContext.getContext().getCacheDir(), "stickers");
        this.legacyCacheDir = new File(nVContext.getContext().getFilesDir(), "stickers");
        this.migrating = true;
        if (this.legacyCacheDir.exists()) {
            new Thread("migrate sticker cache") { // from class: com.narvii.sticker.StickerCacheService.1
                /* JADX WARN: Multi-variable type inference failed */
                /* JADX WARN: Type inference failed for: r3v0 */
                /* JADX WARN: Type inference failed for: r3v10 */
                /* JADX WARN: Type inference failed for: r3v4, types: [java.lang.Object] */
                /* JADX WARN: Type inference failed for: r3v8 */
                /* JADX WARN: Type inference failed for: r3v9 */
                @Override // java.lang.Thread, java.lang.Runnable
                public void run() {
                    synchronized (StickerCacheService.this.migrateLock) {
                        long jElapsedRealtime = SystemClock.elapsedRealtime();
                        boolean z6 = 0;
                        z6 = 0;
                        try {
                            try {
                                StickerCacheService stickerCacheService = StickerCacheService.this;
                                Utils.moveFolder(stickerCacheService.legacyCacheDir, stickerCacheService.cacheDir);
                                StickerCacheService.this.migrating = false;
                                z6 = StickerCacheService.this.migrateLock;
                            } catch (Exception e) {
                                Log.e("migrate sticker cache", e);
                                StickerCacheService.this.migrating = false;
                                z6 = StickerCacheService.this.migrateLock;
                            }
                            z6.notifyAll();
                            Log.i("migrate sticker cache " + (SystemClock.elapsedRealtime() - jElapsedRealtime) + " ms");
                        } catch (Throwable th) {
                            StickerCacheService.this.migrating = z6;
                            StickerCacheService.this.migrateLock.notifyAll();
                            throw th;
                        }
                    }
                }
            }.start();
        } else {
            this.migrating = false;
        }
    }

    public void cacheLocalIconFile(File file, Sticker sticker) throws Throwable {
        if (FileUtils.isEmpty(file)) {
            return;
        }
        try {
            Utils.copyFile(file, getDownloadFile(sticker.stickerCollectionId, sticker.icon));
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public void downloadFile(String str, String str2, DownloadListener downloadListener) {
        String downloadId = getDownloadId(str, str2);
        LoadWorker loadWorker = this.runningSessions.get(downloadId);
        if (loadWorker != null) {
            if (downloadListener != null) {
                loadWorker.listeners.add(downloadListener);
            }
        } else {
            LoadWorker loadWorker2 = new LoadWorker(str, str2);
            if (downloadListener != null) {
                loadWorker2.listeners.add(downloadListener);
            }
            this.runningSessions.put(downloadId, loadWorker2);
            loadWorker2.executeOnExecutor(executor, str2);
        }
    }

    public void downloadSticker(Sticker sticker) {
        if (!isStickerIconReady(sticker)) {
            downloadFile(sticker.stickerCollectionId, sticker.icon, null);
        }
        if (!isStickerThumbnailReady(sticker)) {
            downloadFile(sticker.stickerCollectionId, sticker.thumbnail, null);
        }
    }

    public String getLocalPath(String str, String str2) {
        File downloadFile = getDownloadFile(str, str2);
        if (!FileUtils.isEmpty(downloadFile)) {
            return downloadFile.getAbsolutePath();
        }
        return null;
    }

    public String getLocalUri(String str, String str2) {
        File downloadFile = getDownloadFile(str, str2);
        if (!FileUtils.isEmpty(downloadFile)) {
            return Uri.fromFile(downloadFile).toString();
        }
        return null;
    }

    public boolean isStickerReady(Sticker sticker) {
        if (!isStickerIconReady(sticker)) {
            return false;
        }
        return isStickerThumbnailReady(sticker);
    }
}
