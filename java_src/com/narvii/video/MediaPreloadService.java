package com.narvii.video;

import android.os.SystemClock;
import com.narvii.app.NVContext;
import com.narvii.util.DateUtils;
import com.narvii.util.Log;
import com.narvii.util.StringUtils;
import com.narvii.util.Utils;
import com.narvii.util.http.ProxyStack;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes3.dex */
public class MediaPreloadService extends EmbedHttpServer {
    private static final char MAGIC1 = 'M';
    private static final char MAGIC2 = '1';
    static final int PRELOAD_SIZE = 819200;
    private static final AtomicInteger RID = new AtomicInteger();
    private static final String TAG = "mediapreload";
    NVContext context;
    File dir;
    ProxyStack stack;
    final AtomicInteger cleanCounter = new AtomicInteger();
    public int keep = 32;
    public long maxAge = DateUtils.ONE_DAY;
    private final Executor preloadExecutor = Utils.createThreadPoolExecutor(2, "media-preload");
    private final ConcurrentHashMap<String, PreloadTask> preloadRunning = new ConcurrentHashMap<>();

    public MediaPreloadService(NVContext nVContext, File file) {
        this.context = nVContext;
        this.dir = file;
        this.stack = new ProxyStack(nVContext);
    }

    /* JADX WARN: Removed duplicated region for block: B:140:0x02df  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x02e8 A[Catch: all -> 0x0301, TRY_ENTER, TRY_LEAVE, TryCatch #13 {all -> 0x0301, blocks: (B:143:0x02e8, B:156:0x030e), top: B:276:0x02e6 }] */
    /* JADX WARN: Removed duplicated region for block: B:159:0x032a  */
    /* JADX WARN: Removed duplicated region for block: B:164:0x0335  */
    /* JADX WARN: Removed duplicated region for block: B:166:0x0339  */
    /* JADX WARN: Removed duplicated region for block: B:188:0x0392 A[PHI: r8
  0x0392: PHI (r8v7 int) = (r8v6 int), (r8v13 int) binds: [B:174:0x0351, B:176:0x035a] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:203:0x03fb  */
    /* JADX WARN: Removed duplicated region for block: B:205:0x0400  */
    /* JADX WARN: Removed duplicated region for block: B:207:0x0405  */
    /* JADX WARN: Removed duplicated region for block: B:209:0x0415  */
    /* JADX WARN: Removed duplicated region for block: B:210:0x0420  */
    /* JADX WARN: Removed duplicated region for block: B:212:0x0424  */
    /* JADX WARN: Removed duplicated region for block: B:233:0x0474  */
    /* JADX WARN: Removed duplicated region for block: B:235:0x0479  */
    /* JADX WARN: Removed duplicated region for block: B:237:0x047e  */
    /* JADX WARN: Removed duplicated region for block: B:239:0x048e  */
    /* JADX WARN: Removed duplicated region for block: B:241:0x0498  */
    /* JADX WARN: Removed duplicated region for block: B:257:0x034e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:271:0x0177 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:278:0x0305 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x008f  */
    /* JADX WARN: Removed duplicated region for block: B:282:0x0143 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:289:0x0278 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:293:0x0159 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:301:0x03f5 A[EDGE_INSN: B:301:0x03f5->B:201:0x03f5 BREAK  A[LOOP:1: B:267:0x033b->B:195:0x03cd], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0137  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0152  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x016a  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x01c4  */
    @Override // com.narvii.video.EmbedHttpServer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void handle(java.lang.String r29, java.lang.String r30, java.util.HashMap<java.lang.String, java.lang.String> r31, java.io.InputStream r32, com.narvii.video.EmbedHttpServer.ResponseOutputStream r33) throws java.lang.Exception {
        /*
            Method dump skipped, instructions count: 1193
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.video.MediaPreloadService.handle(java.lang.String, java.lang.String, java.util.HashMap, java.io.InputStream, com.narvii.video.EmbedHttpServer$ResponseOutputStream):void");
    }

    void writePreloadHeader(OutputStream outputStream, int i) throws IOException {
        outputStream.write(77);
        outputStream.write(49);
        outputStream.write((i >>> 24) & 255);
        outputStream.write((i >>> 16) & 255);
        outputStream.write((i >>> 8) & 255);
        outputStream.write(i & 255);
    }

    int readPreloadHeader(InputStream inputStream) throws IOException {
        if (inputStream.read() == 77 && inputStream.read() == 49) {
            int i = inputStream.read();
            int i2 = inputStream.read();
            int i3 = inputStream.read();
            int i4 = inputStream.read();
            if (i < 0 || i2 < 0 || i3 < 0 || i4 < 0) {
                throw new IOException("malformed (magic eof)");
            }
            return i4 | (i << 24) | (i2 << 16) | (i3 << 8);
        }
        throw new IOException("malformed (magic number)");
    }

    public String translateUrl(String str, String str2) {
        if (!isStarted()) {
            return str2;
        }
        return "http://127.0.0.1:" + getPort() + '/' + URLEncoder.encode(str) + "?url=" + URLEncoder.encode(str2);
    }

    public void preload(String str, String str2) {
        if (this.preloadRunning.get(str) == null) {
            PreloadTask preloadTask = new PreloadTask(str, str2);
            if (preloadTask.file.length() == 0) {
                this.preloadExecutor.execute(preloadTask);
                this.preloadRunning.put(str, preloadTask);
            }
        }
    }

    public Runnable startPreload(String str, String str2) {
        if (this.preloadRunning.get(str) != null) {
            return null;
        }
        PreloadTask preloadTask = new PreloadTask(str, str2);
        if (preloadTask.file.length() != 0) {
            return null;
        }
        this.preloadExecutor.execute(preloadTask);
        this.preloadRunning.put(str, preloadTask);
        return preloadTask;
    }

    public void revoke(String str) {
        new PreloadTask(str, null).file.delete();
    }

    private class PreloadTask implements Runnable {
        File file;
        File filew;
        String key;
        String url;

        PreloadTask(String str, String str2) {
            this.key = str;
            this.url = str2;
            String strMd5 = StringUtils.md5(str);
            this.filew = new File(MediaPreloadService.this.dir, strMd5 + ".w");
            this.file = new File(MediaPreloadService.this.dir, strMd5);
        }

        @Override // java.lang.Runnable
        public void run() throws Throwable {
            int contentLength;
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            FileOutputStream fileOutputStream = null;
            try {
                try {
                } catch (Exception e) {
                    e = e;
                }
                if (this.file.length() <= 0) {
                    HttpURLConnection httpURLConnectionCreateConnection = MediaPreloadService.this.stack.createConnection(new URL(this.url));
                    httpURLConnectionCreateConnection.setConnectTimeout(10000);
                    httpURLConnectionCreateConnection.setReadTimeout(10000);
                    int iUptimeMillis = ((int) ((SystemClock.uptimeMillis() / 5) % 2048)) + 818176;
                    StringBuilder sb = new StringBuilder();
                    sb.append("bytes=0-");
                    sb.append(iUptimeMillis - 1);
                    httpURLConnectionCreateConnection.setRequestProperty("Range", sb.toString());
                    if (httpURLConnectionCreateConnection.getResponseCode() == 200) {
                        contentLength = httpURLConnectionCreateConnection.getContentLength();
                    } else if (httpURLConnectionCreateConnection.getResponseCode() == 206) {
                        String strTrim = httpURLConnectionCreateConnection.getHeaderField("Content-Range").trim();
                        contentLength = Integer.parseInt(strTrim.substring(strTrim.lastIndexOf(47) + 1));
                    } else {
                        throw new IOException("http code " + httpURLConnectionCreateConnection.getResponseCode());
                    }
                    InputStream inputStream = httpURLConnectionCreateConnection.getInputStream();
                    if (this.file.length() <= 0) {
                        byte[] bArr = new byte[960];
                        MediaPreloadService.this.dir.mkdirs();
                        FileOutputStream fileOutputStream2 = new FileOutputStream(this.filew);
                        try {
                            MediaPreloadService.this.writePreloadHeader(fileOutputStream2, contentLength);
                            int i = 0;
                            do {
                                int i2 = inputStream.read(bArr, 0, Math.min(bArr.length, iUptimeMillis - i));
                                if (i2 == -1) {
                                    break;
                                }
                                fileOutputStream2.write(bArr, 0, i2);
                                i += i2;
                            } while (i < iUptimeMillis);
                            fileOutputStream2.close();
                            this.filew.renameTo(this.file);
                            inputStream.close();
                            httpURLConnectionCreateConnection.disconnect();
                            Log.i(MediaPreloadService.TAG, "media preload finished in " + (SystemClock.elapsedRealtime() - jElapsedRealtime) + "ms: " + this.key);
                        } catch (Exception e2) {
                            e = e2;
                            fileOutputStream = fileOutputStream2;
                            Log.w(MediaPreloadService.TAG, "media preload failed in " + (SystemClock.elapsedRealtime() - jElapsedRealtime) + "ms: " + this.key, e);
                            if (fileOutputStream != null) {
                                try {
                                    fileOutputStream.close();
                                } catch (IOException unused) {
                                }
                                this.filew.delete();
                            }
                            MediaPreloadService.this.preloadRunning.remove(this.key, this);
                            MediaPreloadService mediaPreloadService = MediaPreloadService.this;
                            mediaPreloadService.clean(mediaPreloadService.keep, mediaPreloadService.maxAge, false);
                            return;
                        } catch (Throwable th) {
                            th = th;
                            fileOutputStream = fileOutputStream2;
                            if (fileOutputStream != null) {
                                try {
                                    fileOutputStream.close();
                                } catch (IOException unused2) {
                                }
                                this.filew.delete();
                            }
                            MediaPreloadService.this.preloadRunning.remove(this.key, this);
                            MediaPreloadService mediaPreloadService2 = MediaPreloadService.this;
                            mediaPreloadService2.clean(mediaPreloadService2.keep, mediaPreloadService2.maxAge, false);
                            throw th;
                        }
                        MediaPreloadService.this.preloadRunning.remove(this.key, this);
                        MediaPreloadService mediaPreloadService3 = MediaPreloadService.this;
                        mediaPreloadService3.clean(mediaPreloadService3.keep, mediaPreloadService3.maxAge, false);
                        return;
                    }
                }
                MediaPreloadService.this.preloadRunning.remove(this.key, this);
                MediaPreloadService mediaPreloadService4 = MediaPreloadService.this;
                mediaPreloadService4.clean(mediaPreloadService4.keep, mediaPreloadService4.maxAge, false);
            } catch (Throwable th2) {
                th = th2;
            }
        }
    }

    private static class FileStub implements Comparable<FileStub> {
        File file;
        long time = -1;

        FileStub(File file) {
            this.file = file;
        }

        public long time() {
            if (this.time == -1) {
                this.time = this.file.lastModified();
            }
            return this.time;
        }

        @Override // java.lang.Comparable
        public int compareTo(FileStub fileStub) {
            long jTime = time();
            long jTime2 = fileStub.time();
            if (jTime < jTime2) {
                return -1;
            }
            return jTime > jTime2 ? 1 : 0;
        }
    }

    public void clean(int i, long j, boolean z) {
        if (z || this.cleanCounter.incrementAndGet() % 4 == 0) {
            long jCurrentTimeMillis = j == 0 ? 0L : System.currentTimeMillis() - j;
            ArrayList arrayList = new ArrayList();
            File[] fileArrListFiles = this.dir.listFiles();
            if (fileArrListFiles != null) {
                for (File file : fileArrListFiles) {
                    FileStub fileStub = new FileStub(file);
                    if (jCurrentTimeMillis != 0 && fileStub.time() < jCurrentTimeMillis) {
                        file.delete();
                    } else if (!file.getName().endsWith(".w")) {
                        arrayList.add(fileStub);
                    } else if (z) {
                        file.delete();
                    }
                }
            }
            if (arrayList.size() > i) {
                Collections.sort(arrayList);
                for (int size = (arrayList.size() - i) - 1; size >= 0; size--) {
                    ((FileStub) arrayList.get(size)).file.delete();
                }
            }
        }
    }

    void touch(File file) {
        file.setLastModified(System.currentTimeMillis());
    }

    public void clear() {
        clean(0, 0L, true);
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
}
