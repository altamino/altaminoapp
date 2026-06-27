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
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.lang.ref.WeakReference;
import java.net.HttpURLConnection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ThreadPoolExecutor;

/* loaded from: classes.dex */
public class StickerCacheService {
    File cacheDir;
    File legacyCacheDir;
    volatile boolean migrating;
    NVContext nvContext;
    private ProxyStack stack;
    private static final int CPU_COUNT = Runtime.getRuntime().availableProcessors();
    private static final int CORE_POOL_SIZE = Math.max(2, Math.min(CPU_COUNT - 1, 4));
    public static final ThreadPoolExecutor executor = Utils.createThreadPoolExecutor(CORE_POOL_SIZE, "sticker-cache");
    final ConcurrentHashMap<String, LoadWorker> runningSessions = new ConcurrentHashMap<>();
    private final ConcurrentHashMap<String, String> errors = new ConcurrentHashMap<>();
    final Object migrateLock = new Object();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public interface DownloadListener {
        boolean onStatusChanged(String str, String str2);
    }

    static {
        executor.allowCoreThreadTimeOut(true);
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
                        boolean z = 0;
                        z = 0;
                        try {
                            try {
                                Utils.moveFolder(StickerCacheService.this.legacyCacheDir, StickerCacheService.this.cacheDir);
                                StickerCacheService.this.migrating = false;
                                z = StickerCacheService.this.migrateLock;
                            } catch (Exception e) {
                                Log.e("migrate sticker cache", e);
                                StickerCacheService.this.migrating = false;
                                z = StickerCacheService.this.migrateLock;
                            }
                            z.notifyAll();
                            Log.i("migrate sticker cache " + (SystemClock.elapsedRealtime() - jElapsedRealtime) + " ms");
                        } catch (Throwable th) {
                            StickerCacheService.this.migrating = z;
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

    /* JADX INFO: Access modifiers changed from: private */
    public File getDownloadFile(String str, String str2) {
        if (str2 == null || str == null) {
            return null;
        }
        String str3 = Utils.isGif(str2) ? ".gif" : Utils.isWebP(str2) ? ".webp" : ".s";
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
    public File getStickerCollectionDir(String str) {
        if (str == null) {
            return null;
        }
        return new File(this.cacheDir.getAbsolutePath(), str);
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

    public long size() {
        return Utils.getFolderSize(this.cacheDir);
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

    public boolean isStickerIconReady(Sticker sticker) {
        return !FileUtils.isEmpty(getDownloadFile(sticker.stickerCollectionId, sticker.icon));
    }

    public boolean isStickerThumbnailReady(Sticker sticker) {
        return !FileUtils.isEmpty(getDownloadFile(sticker.stickerCollectionId, sticker.thumbnail));
    }

    public String getThumbnailUri(Sticker sticker) {
        File downloadFile = getDownloadFile(sticker.stickerCollectionId, sticker.thumbnail);
        if (FileUtils.isEmpty(downloadFile)) {
            return null;
        }
        return Uri.fromFile(downloadFile).toString();
    }

    public String getIconUri(Sticker sticker) {
        File downloadFile = getDownloadFile(sticker.stickerCollectionId, sticker.icon);
        if (FileUtils.isEmpty(downloadFile)) {
            return null;
        }
        return Uri.fromFile(downloadFile).toString();
    }

    public String getLocalUri(String str, String str2) {
        File downloadFile = getDownloadFile(str, str2);
        if (FileUtils.isEmpty(downloadFile)) {
            return null;
        }
        return Uri.fromFile(downloadFile).toString();
    }

    public String getLocalPath(String str, String str2) {
        File downloadFile = getDownloadFile(str, str2);
        if (FileUtils.isEmpty(downloadFile)) {
            return null;
        }
        return downloadFile.getAbsolutePath();
    }

    public boolean isStickerReady(Sticker sticker) {
        if (isStickerIconReady(sticker)) {
            return isStickerThumbnailReady(sticker);
        }
        return false;
    }

    public void downloadSticker(Sticker sticker) {
        if (!isStickerIconReady(sticker)) {
            downloadFile(sticker.stickerCollectionId, sticker.icon, null);
        }
        if (isStickerThumbnailReady(sticker)) {
            return;
        }
        downloadFile(sticker.stickerCollectionId, sticker.thumbnail, null);
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

    public DownloadStatusInfo getStickerDownloadStatusInfo(Sticker sticker) {
        DownloadStatusInfo fileDownloadStatusInfo = getFileDownloadStatusInfo(sticker.stickerCollectionId, sticker.icon);
        DownloadStatusInfo fileDownloadStatusInfo2 = getFileDownloadStatusInfo(sticker.stickerCollectionId, sticker.thumbnail);
        if (fileDownloadStatusInfo.status == 2 && fileDownloadStatusInfo2.status == 2) {
            return DownloadStatusInfo.READY;
        }
        if (fileDownloadStatusInfo.status == 0 && fileDownloadStatusInfo2.status == 0) {
            return DownloadStatusInfo.IDLE;
        }
        if (fileDownloadStatusInfo.status == -1 || fileDownloadStatusInfo2.status == -1) {
            return DownloadStatusInfo.FAIL;
        }
        return new DownloadStatusInfo(1, (fileDownloadStatusInfo.progress * 0.5f) + (fileDownloadStatusInfo2.progress * 0.5f));
    }

    public DownloadStatusInfo getFileDownloadStatusInfo(String str, String str2) {
        LoadWorker loadWorker = this.runningSessions.get(getDownloadId(str, str2));
        if (loadWorker == null) {
            if (FileUtils.isEmpty(getDownloadFile(str, str2))) {
                return this.errors.get(getDownloadId(str, str2)) == null ? DownloadStatusInfo.IDLE : DownloadStatusInfo.FAIL;
            }
            return DownloadStatusInfo.READY;
        }
        return new DownloadStatusInfo(1, loadWorker.getProgress());
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

    ProxyStack getStack() {
        if (this.stack == null) {
            this.stack = new ProxyStack(this.nvContext);
        }
        return this.stack;
    }

    /* loaded from: classes3.dex */
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

        private float getProgress(int i, int i2) {
            if (i2 <= 0) {
                return 0.0f;
            }
            return (i * 1.0f) / i2;
        }

        public LoadWorker(String str, String str2) {
            this.url = str2;
            this.collectionId = str;
            this.downloadId = StickerCacheService.this.getDownloadId(str, str2);
        }

        private boolean check() {
            return this.conn != null && StickerCacheService.this.runningSessions.get(this.downloadId) == this;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Code restructure failed: missing block: B:153:?, code lost:
        
            return r15;
         */
        /* JADX WARN: Code restructure failed: missing block: B:154:?, code lost:
        
            return r15;
         */
        /* JADX WARN: Code restructure failed: missing block: B:155:?, code lost:
        
            return r15;
         */
        /* JADX WARN: Code restructure failed: missing block: B:70:0x0146, code lost:
        
            r14.os.close();
            r14.os = null;
            r4.close();
         */
        /* JADX WARN: Code restructure failed: missing block: B:71:0x0150, code lost:
        
            r14.conn.disconnect();
            r14.conn = null;
            publishProgress(java.lang.Integer.valueOf(r14.current), java.lang.Integer.valueOf(r14.total));
         */
        /* JADX WARN: Code restructure failed: missing block: B:72:0x016e, code lost:
        
            if (r14.canceled == false) goto L77;
         */
        /* JADX WARN: Code restructure failed: missing block: B:73:0x0170, code lost:
        
            com.narvii.util.Utils.safeClose(r14.os);
            com.narvii.util.Utils.safeClose((java.io.InputStream) null);
            r15 = r14.conn;
         */
        /* JADX WARN: Code restructure failed: missing block: B:74:0x017a, code lost:
        
            if (r15 == null) goto L76;
         */
        /* JADX WARN: Code restructure failed: missing block: B:75:0x017c, code lost:
        
            r15.disconnect();
         */
        /* JADX WARN: Code restructure failed: missing block: B:78:0x0184, code lost:
        
            if (r1.renameTo(r15) != false) goto L81;
         */
        /* JADX WARN: Code restructure failed: missing block: B:79:0x0186, code lost:
        
            r15 = "Fail to download sticker";
            com.narvii.util.Log.w("Fail to download sticker" + r1);
         */
        /* JADX WARN: Code restructure failed: missing block: B:81:0x019d, code lost:
        
            r15 = null;
         */
        /* JADX WARN: Code restructure failed: missing block: B:82:0x019e, code lost:
        
            com.narvii.util.Utils.safeClose(r14.os);
            com.narvii.util.Utils.safeClose((java.io.InputStream) null);
            r0 = r14.conn;
         */
        /* JADX WARN: Code restructure failed: missing block: B:83:0x01a8, code lost:
        
            if (r0 == null) goto L153;
         */
        /* JADX WARN: Code restructure failed: missing block: B:84:0x01aa, code lost:
        
            r0.disconnect();
         */
        @Override // android.os.AsyncTask
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.String doInBackground(java.lang.String... r15) throws java.lang.Throwable {
            /*
                Method dump skipped, instructions count: 503
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.narvii.sticker.StickerCacheService.LoadWorker.doInBackground(java.lang.String[]):java.lang.String");
        }

        public float getProgress() {
            return getProgress(this.current, this.total);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.os.AsyncTask
        public void onProgressUpdate(Integer... numArr) {
            super.onProgressUpdate((Object[]) numArr);
            notifyStatusChanged();
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
        public void onPostExecute(String str) {
            StickerCacheService.this.runningSessions.remove(this.downloadId, this);
            if (str == null) {
                StickerCacheService.this.errors.remove(this.downloadId);
            } else {
                StickerCacheService.this.errors.put(this.downloadId, str);
            }
            notifyStatusChanged();
        }
    }
}
