package com.narvii.video;

import android.os.SystemClock;
import android.support.v4.media.session.PlaybackStateCompat;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.compose.runtime.ComposerKt;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.exifinterface.media.ExifInterface;
import com.narvii.app.NVContext;
import com.narvii.util.DateUtils;
import com.narvii.util.Log;
import com.narvii.util.StringUtils;
import com.narvii.util.Utils;
import com.narvii.util.http.ProxyStack;
import com.narvii.volley.util.HurlConnectionHelper;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.http.entity.mime.MIME;

/* JADX INFO: loaded from: classes5.dex */
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

    private static class FileStub implements Comparable<FileStub> {
        File file;
        long time = -1;

        @Override // java.lang.Comparable
        public int compareTo(@NonNull FileStub fileStub) {
            long jTime = time();
            long jTime2 = fileStub.time();
            if (jTime < jTime2) {
                return -1;
            }
            return jTime > jTime2 ? 1 : 0;
        }

        public long time() {
            if (this.time == -1) {
                this.time = this.file.lastModified();
            }
            return this.time;
        }

        FileStub(File file) {
            this.file = file;
        }
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
                    if (this.file.length() <= 0) {
                        HttpURLConnection httpURLConnectionCreateConnection = MediaPreloadService.this.stack.createConnection(new URL(this.url));
                        httpURLConnectionCreateConnection.setConnectTimeout(10000);
                        httpURLConnectionCreateConnection.setReadTimeout(10000);
                        int iUptimeMillis = (int) ((SystemClock.uptimeMillis() / 5) % PlaybackStateCompat.ACTION_PLAY_FROM_SEARCH);
                        int i10 = 818176 + iUptimeMillis;
                        httpURLConnectionCreateConnection.setRequestProperty("Range", "bytes=0-" + (iUptimeMillis + 818175));
                        if (httpURLConnectionCreateConnection.getResponseCode() == 200) {
                            contentLength = httpURLConnectionCreateConnection.getContentLength();
                        } else {
                            if (httpURLConnectionCreateConnection.getResponseCode() != 206) {
                                throw new IOException("http code " + httpURLConnectionCreateConnection.getResponseCode());
                            }
                            String strTrim = httpURLConnectionCreateConnection.getHeaderField("Content-Range").trim();
                            contentLength = Integer.parseInt(strTrim.substring(strTrim.lastIndexOf(47) + 1));
                        }
                        InputStream inputStream = HurlConnectionHelper.getInputStream(httpURLConnectionCreateConnection);
                        if (this.file.length() <= 0) {
                            byte[] bArr = new byte[960];
                            MediaPreloadService.this.dir.mkdirs();
                            FileOutputStream fileOutputStream2 = new FileOutputStream(this.filew);
                            try {
                                MediaPreloadService.this.writePreloadHeader(fileOutputStream2, contentLength);
                                int i11 = 0;
                                do {
                                    int i12 = inputStream.read(bArr, 0, Math.min(960, i10 - i11));
                                    if (i12 == -1) {
                                        break;
                                    }
                                    fileOutputStream2.write(bArr, 0, i12);
                                    i11 += i12;
                                } while (i11 < i10);
                                fileOutputStream2.close();
                                this.filew.renameTo(this.file);
                                inputStream.close();
                                httpURLConnectionCreateConnection.disconnect();
                                Log.i(MediaPreloadService.TAG, "media preload finished in " + (SystemClock.elapsedRealtime() - jElapsedRealtime) + "ms: " + this.key);
                            } catch (Exception e) {
                                e = e;
                                fileOutputStream = fileOutputStream2;
                                Log.w(MediaPreloadService.TAG, "media preload failed in " + (SystemClock.elapsedRealtime() - jElapsedRealtime) + "ms: " + this.key, e);
                                if (fileOutputStream != null) {
                                    try {
                                        fileOutputStream.close();
                                    } catch (IOException unused) {
                                    }
                                    this.filew.delete();
                                }
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
                                MediaPreloadService mediaPreloadService = MediaPreloadService.this;
                                mediaPreloadService.clean(mediaPreloadService.keep, mediaPreloadService.maxAge, false);
                                throw th;
                            }
                            MediaPreloadService.this.preloadRunning.remove(this.key, this);
                            MediaPreloadService mediaPreloadService2 = MediaPreloadService.this;
                            mediaPreloadService2.clean(mediaPreloadService2.keep, mediaPreloadService2.maxAge, false);
                            return;
                        }
                    }
                    MediaPreloadService.this.preloadRunning.remove(this.key, this);
                    MediaPreloadService mediaPreloadService3 = MediaPreloadService.this;
                    mediaPreloadService3.clean(mediaPreloadService3.keep, mediaPreloadService3.maxAge, false);
                } catch (Exception e2) {
                    e = e2;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:100:0x0207 A[Catch: all -> 0x01b7, TRY_LEAVE, TryCatch #9 {all -> 0x01b7, blocks: (B:74:0x018f, B:90:0x01e6, B:92:0x01ed, B:94:0x01f3, B:98:0x0200, B:100:0x0207), top: B:268:0x018f }] */
    /* JADX WARN: Code duplicated, block: B:104:0x023b A[Catch: all -> 0x025b, TRY_ENTER, TryCatch #25 {all -> 0x025b, blocks: (B:104:0x023b, B:106:0x0252, B:111:0x0261, B:115:0x0272), top: B:298:0x0239 }] */
    /* JADX WARN: Code duplicated, block: B:106:0x0252 A[Catch: all -> 0x025b, TryCatch #25 {all -> 0x025b, blocks: (B:104:0x023b, B:106:0x0252, B:111:0x0261, B:115:0x0272), top: B:298:0x0239 }] */
    /* JADX WARN: Code duplicated, block: B:110:0x025e  */
    /* JADX WARN: Code duplicated, block: B:113:0x026e  */
    /* JADX WARN: Code duplicated, block: B:115:0x0272 A[Catch: all -> 0x025b, TRY_LEAVE, TryCatch #25 {all -> 0x025b, blocks: (B:104:0x023b, B:106:0x0252, B:111:0x0261, B:115:0x0272), top: B:298:0x0239 }] */
    /* JADX WARN: Code duplicated, block: B:120:0x0287 A[Catch: all -> 0x02d5, TRY_LEAVE, TryCatch #23 {all -> 0x02d5, blocks: (B:118:0x027d, B:120:0x0287), top: B:294:0x027d }] */
    /* JADX WARN: Code duplicated, block: B:123:0x028f A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:124:0x0291  */
    /* JADX WARN: Code duplicated, block: B:127:0x0299  */
    /* JADX WARN: Code duplicated, block: B:129:0x02a9  */
    /* JADX WARN: Code duplicated, block: B:130:0x02b4  */
    /* JADX WARN: Code duplicated, block: B:133:0x02c3  */
    /* JADX WARN: Code duplicated, block: B:141:0x02e0  */
    /* JADX WARN: Code duplicated, block: B:143:0x02e5 A[Catch: all -> 0x02cf, TRY_LEAVE, TryCatch #20 {all -> 0x02cf, blocks: (B:134:0x02c7, B:135:0x02ce, B:143:0x02e5, B:153:0x030a), top: B:289:0x027b }] */
    /* JADX WARN: Code duplicated, block: B:153:0x030a A[Catch: all -> 0x02cf, TRY_ENTER, TRY_LEAVE, TryCatch #20 {all -> 0x02cf, blocks: (B:134:0x02c7, B:135:0x02ce, B:143:0x02e5, B:153:0x030a), top: B:289:0x027b }] */
    /* JADX WARN: Code duplicated, block: B:156:0x0326  */
    /* JADX WARN: Code duplicated, block: B:161:0x0334  */
    /* JADX WARN: Code duplicated, block: B:163:0x0338  */
    /* JADX WARN: Code duplicated, block: B:181:0x036e A[Catch: all -> 0x0386, TRY_LEAVE, TryCatch #16 {all -> 0x0386, blocks: (B:179:0x0369, B:181:0x036e), top: B:282:0x0369 }] */
    /* JADX WARN: Code duplicated, block: B:192:0x03aa A[PHI: r7
      0x03aa: PHI (r7v24 int) = (r7v12 int), (r7v13 int) binds: [B:172:0x0353, B:175:0x035c] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:199:0x03c3 A[Catch: all -> 0x03e5, TRY_LEAVE, TryCatch #1 {all -> 0x03e5, blocks: (B:197:0x03be, B:199:0x03c3), top: B:252:0x03be }] */
    /* JADX WARN: Code duplicated, block: B:203:0x03e9  */
    /* JADX WARN: Code duplicated, block: B:209:0x0407  */
    /* JADX WARN: Code duplicated, block: B:210:0x0418  */
    /* JADX WARN: Code duplicated, block: B:212:0x041c  */
    /* JADX WARN: Code duplicated, block: B:214:0x0426  */
    /* JADX WARN: Code duplicated, block: B:234:0x0479  */
    /* JADX WARN: Code duplicated, block: B:236:0x047e  */
    /* JADX WARN: Code duplicated, block: B:238:0x0483  */
    /* JADX WARN: Code duplicated, block: B:240:0x0493  */
    /* JADX WARN: Code duplicated, block: B:242:0x049d  */
    /* JADX WARN: Code duplicated, block: B:254:0x035e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:262:0x0355 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:266:0x02ef A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:272:0x0350 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:27:0x0090  */
    /* JADX WARN: Code duplicated, block: B:284:0x0301 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:286:0x0181 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:288:0x0149 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:292:0x0161 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:294:0x027d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:302:0x03fd A[EDGE_INSN: B:302:0x03fd->B:207:0x03fd BREAK  A[LOOP:1: B:165:0x033c->B:204:0x03eb], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:49:0x013c  */
    /* JADX WARN: Code duplicated, block: B:58:0x015a  */
    /* JADX WARN: Code duplicated, block: B:66:0x0175  */
    /* JADX WARN: Code duplicated, block: B:71:0x0186  */
    /* JADX WARN: Code duplicated, block: B:82:0x01c6  */
    /* JADX WARN: Code duplicated, block: B:88:0x01e3 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:96:0x01fd  */
    /* JADX WARN: Code duplicated, block: B:98:0x0200 A[Catch: all -> 0x01b7, TryCatch #9 {all -> 0x01b7, blocks: (B:74:0x018f, B:90:0x01e6, B:92:0x01ed, B:94:0x01f3, B:98:0x0200, B:100:0x0207), top: B:268:0x018f }] */
    /* JADX WARN: Instruction removed from duplicated block: B:100:0x0207, please report this as an issue */
    /* JADX WARN: Instruction removed from duplicated block: B:181:0x036e, please report this as an issue */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v34 */
    /* JADX WARN: Type inference failed for: r0v36 */
    /* JADX WARN: Type inference failed for: r0v37, types: [int] */
    /* JADX WARN: Type inference failed for: r0v60 */
    /* JADX WARN: Type inference failed for: r0v62 */
    /* JADX WARN: Type inference failed for: r0v72 */
    /* JADX WARN: Type inference failed for: r12v22, types: [com.narvii.video.MediaPreloadService$PreloadTask] */
    /* JADX WARN: Type inference failed for: r23v4 */
    /* JADX WARN: Type inference failed for: r30v1 */
    /* JADX WARN: Type inference failed for: r3v17 */
    /* JADX WARN: Type inference failed for: r3v19 */
    /* JADX WARN: Type inference failed for: r3v20 */
    /* JADX WARN: Type inference failed for: r3v21 */
    /* JADX WARN: Type inference failed for: r3v22 */
    /* JADX WARN: Type inference failed for: r3v3, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v4 */
    /* JADX WARN: Type inference failed for: r3v5 */
    /* JADX WARN: Type inference failed for: r3v6 */
    /* JADX WARN: Type inference failed for: r3v7 */
    /* JADX WARN: Type inference failed for: r3v8 */
    /* JADX WARN: Type inference failed for: r6v26, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r6v27 */
    /* JADX WARN: Type inference failed for: r6v28 */
    /* JADX WARN: Type inference failed for: r6v29 */
    /* JADX WARN: Type inference failed for: r6v30 */
    /* JADX WARN: Type inference failed for: r6v31 */
    /* JADX WARN: Type inference failed for: r6v4, types: [com.narvii.video.MediaPreloadService$PreloadTask, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v8 */
    /* JADX WARN: Type inference failed for: r6v9 */
    /* JADX WARN: Type inference failed for: r8v31 */
    /* JADX WARN: Type inference failed for: r8v32 */
    /* JADX WARN: Type inference failed for: r8v6 */
    /* JADX WARN: Type inference failed for: r8v7 */
    /* JADX WARN: Type inference failed for: r8v8 */
    @Override // com.narvii.video.EmbedHttpServer
    protected void handle(String str, String str2, HashMap<String, String> map, InputStream inputStream, EmbedHttpServer.ResponseOutputStream responseOutputStream) throws Exception {
        int i10;
        int i11;
        int i12;
        FileInputStream fileInputStream;
        String str3;
        FileOutputStream fileOutputStream;
        File file;
        byte[] bArr;
        FileOutputStream fileOutputStream2;
        Throwable th;
        HttpURLConnection httpURLConnectionCreateConnection;
        boolean z6;
        ?? r10;
        ?? r5;
        String str4;
        int preloadHeader;
        String str5;
        Object obj;
        ?? r11;
        int iSkip;
        int i13;
        String str6;
        ?? r12;
        Object obj2;
        PreloadTask preloadTask;
        PreloadTask preloadTask2;
        String str7;
        ?? r1;
        FileOutputStream fileOutputStream3;
        int i14;
        ?? r13;
        ?? r30;
        int i15;
        File file2;
        MediaPreloadService mediaPreloadService;
        File file3;
        boolean zRenameTo;
        long j6;
        String str8;
        int i16;
        String str9;
        int i17;
        String strValueOf;
        MediaPreloadService mediaPreloadService2 = this;
        int iIndexOf = str2.indexOf("?");
        if (iIndexOf < 0) {
            return;
        }
        String strDecode = URLDecoder.decode(str2.substring(1, iIndexOf));
        int iIndexOf2 = str2.indexOf("url=", iIndexOf + 1);
        if (iIndexOf2 < 0) {
            return;
        }
        int i18 = iIndexOf2 + 4;
        int iIndexOf3 = str2.indexOf("&", i18);
        String strDecode2 = URLDecoder.decode(iIndexOf3 < 0 ? str2.substring(i18) : str2.substring(i18, iIndexOf3));
        if (TextUtils.isEmpty(strDecode) || TextUtils.isEmpty(strDecode2)) {
            responseOutputStream.setStatusCode(TypedValues.CycleType.TYPE_ALPHA);
            return;
        }
        String str10 = map.get("Range");
        if (str10 == null) {
            str10 = map.get("range");
        }
        if (str10 != null) {
            Matcher matcher = Pattern.compile("\\s*bytes\\s*=\\s*(\\d+)-(\\d*)\\s*", 2).matcher(str10);
            if (matcher.matches()) {
                i11 = Integer.parseInt(matcher.group(1));
                i10 = matcher.group(2).length() > 0 ? Integer.parseInt(matcher.group(2)) + 1 : Integer.MAX_VALUE;
            } else {
                i10 = Integer.MAX_VALUE;
                i11 = 0;
            }
        } else {
            i10 = Integer.MAX_VALUE;
            i11 = 0;
        }
        int iIncrementAndGet = RID.incrementAndGet();
        StringBuilder sb = new StringBuilder();
        sb.append("[");
        sb.append(iIncrementAndGet);
        sb.append("] ");
        sb.append(strDecode);
        sb.append(": ");
        sb.append(str10 == null ? "all" : str10);
        Log.i(TAG, sb.toString());
        PreloadTask preloadTask3 = mediaPreloadService2.new PreloadTask(strDecode, strDecode2);
        long j10 = 0;
        InputStream inputStream2 = null;
        if (preloadTask3.file.length() > 0) {
            i12 = i10;
            if (preloadTask3.file.length() > i11 + 16384) {
                fileInputStream = new FileInputStream(preloadTask3.file);
            }
            if (i11 == 0 || preloadTask3.file.length() != 0) {
                str3 = "] ";
                fileOutputStream = null;
                file = null;
            } else {
                try {
                    mediaPreloadService2.dir.mkdirs();
                    File parentFile = preloadTask3.filew.getParentFile();
                    StringBuilder sb2 = new StringBuilder();
                    str3 = "] ";
                    try {
                        sb2.append(preloadTask3.filew.getName());
                        sb2.append(ExifInterface.GPS_MEASUREMENT_2D);
                        file = new File(parentFile, sb2.toString());
                        try {
                            fileOutputStream = new FileOutputStream(file);
                            try {
                                mediaPreloadService2.preloadRunning.putIfAbsent(strDecode, preloadTask3);
                            } catch (IOException unused) {
                            }
                        } catch (IOException unused2) {
                            fileOutputStream = null;
                        }
                    } catch (IOException unused3) {
                        fileOutputStream = null;
                        file = null;
                    }
                } catch (IOException unused4) {
                    str3 = "] ";
                }
            }
            bArr = new byte[960];
            if (str10 != null) {
                try {
                    responseOutputStream.setStatusCode(ComposerKt.referenceKey);
                } catch (Throwable th2) {
                    th = th2;
                    fileOutputStream2 = fileOutputStream;
                    httpURLConnectionCreateConnection = null;
                    z6 = false;
                    r5 = strDecode;
                    r10 = preloadTask3;
                }
            } else {
                try {
                    responseOutputStream.setStatusCode(200);
                } catch (Throwable th3) {
                    th = th3;
                    fileOutputStream2 = fileOutputStream;
                    httpURLConnectionCreateConnection = null;
                    z6 = false;
                    r5 = strDecode;
                    r10 = preloadTask3;
                }
            }
            if (fileInputStream != null) {
                try {
                    preloadHeader = mediaPreloadService2.readPreloadHeader(fileInputStream);
                } catch (IOException unused5) {
                    Utils.safeClose(fileInputStream);
                    str4 = strDecode;
                    fileInputStream = null;
                    preloadHeader = 0;
                    z6 = true;
                }
            } else {
                preloadHeader = 0;
            }
            z6 = false;
            str4 = strDecode;
            str5 = "-";
            if (preloadHeader > 0) {
                fileOutputStream2 = fileOutputStream;
                file = file;
                responseOutputStream.setHeader(MIME.CONTENT_TRANSFER_ENC, MIME.ENC_BINARY);
                responseOutputStream.setContentType("video/mp4");
                int i19 = -1;
                if (preloadHeader > 0) {
                    iSkip = 0;
                } else {
                    iSkip = 0;
                }
                if (fileInputStream != null) {
                    fileInputStream.close();
                    fileInputStream = null;
                }
                if (iSkip > 0) {
                    Log.i(TAG, "[" + iIncrementAndGet + "] return preloaded " + i11 + "-" + iSkip);
                }
                httpURLConnectionCreateConnection = mediaPreloadService2.stack.createConnection(new URL(strDecode2));
                httpURLConnectionCreateConnection.setRequestProperty("User-Agent", "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36");
                if (iSkip > 0) {
                    i13 = i12;
                    if (str10 != 0) {
                        str9 = str5;
                        i16 = i13;
                        str6 = str10;
                        httpURLConnectionCreateConnection.setRequestProperty("Range", str6);
                        obj2 = str5;
                        r12 = i13;
                    }
                    inputStream2 = HurlConnectionHelper.getInputStream(httpURLConnectionCreateConnection);
                    if (iSkip > 0) {
                        if (httpURLConnectionCreateConnection.getResponseCode() != 206) {
                            if (httpURLConnectionCreateConnection.getResponseCode() == 416) {
                                throw new IOException("Not Partial Content!");
                            }
                            if (inputStream2 != null) {
                                Utils.safeClose(inputStream2);
                            }
                            httpURLConnectionCreateConnection.disconnect();
                            if (fileOutputStream2 != null) {
                                Utils.safeClose(fileOutputStream2);
                                file.delete();
                                mediaPreloadService2.clean(mediaPreloadService2.keep, mediaPreloadService2.maxAge, false);
                            }
                            if (fileInputStream != null) {
                                Utils.safeClose(fileInputStream);
                                PreloadTask preloadTask4 = preloadTask3;
                                mediaPreloadService2.touch(preloadTask4.file);
                                preloadTask = preloadTask4;
                            } else {
                                preloadTask = preloadTask3;
                            }
                            preloadTask.file.delete();
                            mediaPreloadService2.preloadRunning.remove(str4, preloadTask);
                            return;
                        }
                    }
                    String str11 = str4;
                    preloadTask2 = preloadTask3;
                    if (preloadHeader > 0) {
                        preloadHeader = httpURLConnectionCreateConnection.getContentLength();
                        responseOutputStream.setContentLength(preloadHeader);
                        if (str6 != null) {
                            String headerField = httpURLConnectionCreateConnection.getHeaderField("Content-Range");
                            responseOutputStream.setHeader("Content-Range", headerField);
                            preloadHeader = Integer.parseInt(headerField.substring(headerField.lastIndexOf(47) + 1));
                            r1 = 2147483647;
                        }
                        if (fileOutputStream2 != null) {
                            fileOutputStream3 = fileOutputStream2;
                            mediaPreloadService2.writePreloadHeader(fileOutputStream3, preloadHeader);
                        } else {
                            fileOutputStream3 = fileOutputStream2;
                        }
                        if (iSkip > 0) {
                            i11 = iSkip;
                        }
                        String str12 = str11;
                        i14 = 0;
                        r13 = r1;
                        while (true) {
                            r30 = r13;
                            fileInputStream = fileInputStream;
                            i15 = inputStream2.read(bArr, 0, Math.min(960, r13 - i11));
                            if (i15 != -1) {
                                break;
                                break;
                            }
                            responseOutputStream.write(bArr, 0, i15);
                            if (fileOutputStream3 != null) {
                                fileOutputStream3.write(bArr, 0, i15);
                                i14 += i15;
                                if (i14 >= PRELOAD_SIZE) {
                                    fileOutputStream3.close();
                                    file3 = file;
                                    zRenameTo = file3.renameTo(preloadTask2.file);
                                    file3.delete();
                                    if (zRenameTo) {
                                        Log.i(TAG, "[" + iIncrementAndGet + "] preload data saved!");
                                    }
                                    file = file3;
                                    fileOutputStream3 = null;
                                    i14 = 0;
                                } else {
                                    file = file;
                                }
                            } else {
                                file = file;
                            }
                            i11 += i15;
                            int i20 = i14;
                            j6 = (((long) i11) * 100) / ((long) preloadHeader);
                            if (j6 != j10) {
                                StringBuilder sb3 = new StringBuilder();
                                sb3.append("[");
                                sb3.append(iIncrementAndGet);
                                str8 = str3;
                                sb3.append(str8);
                                sb3.append(j6);
                                sb3.append("%");
                                Log.i(TAG, sb3.toString());
                                j10 = j6;
                            } else {
                                str8 = str3;
                            }
                            mediaPreloadService2 = this;
                            r13 = r30 == true ? 1 : 0;
                            fileInputStream = fileInputStream;
                            str3 = str8;
                            file = file;
                            i14 = i20;
                        }
                        file2 = file;
                        Utils.safeClose(inputStream2);
                        httpURLConnectionCreateConnection.disconnect();
                        if (fileOutputStream3 != null) {
                            Utils.safeClose(fileOutputStream3);
                            file2.delete();
                            mediaPreloadService = this;
                            mediaPreloadService.clean(mediaPreloadService.keep, mediaPreloadService.maxAge, false);
                        } else {
                            mediaPreloadService = this;
                        }
                        if (fileInputStream != null) {
                            Utils.safeClose(fileInputStream);
                            mediaPreloadService.touch(preloadTask2.file);
                        }
                        if (z6) {
                            preloadTask2.file.delete();
                        }
                        mediaPreloadService.preloadRunning.remove(str12, preloadTask2);
                        return;
                    }
                    if (httpURLConnectionCreateConnection.getContentLength() + iSkip != preloadHeader) {
                        throw new IOException("preload length not match");
                    }
                    r1 = r12;
                    if (fileOutputStream2 != null) {
                        fileOutputStream3 = fileOutputStream2;
                        mediaPreloadService2.writePreloadHeader(fileOutputStream3, preloadHeader);
                    } else {
                        fileOutputStream3 = fileOutputStream2;
                    }
                    if (iSkip > 0) {
                        i11 = iSkip;
                    }
                    String str13 = str11;
                    i14 = 0;
                    r13 = r1;
                    while (true) {
                        r30 = r13;
                        fileInputStream = fileInputStream;
                        i15 = inputStream2.read(bArr, 0, Math.min(960, r13 - i11));
                        if (i15 != -1) {
                            break;
                            break;
                        }
                        responseOutputStream.write(bArr, 0, i15);
                        if (fileOutputStream3 != null) {
                            fileOutputStream3.write(bArr, 0, i15);
                            i14 += i15;
                            if (i14 >= PRELOAD_SIZE) {
                                fileOutputStream3.close();
                                file3 = file;
                                zRenameTo = file3.renameTo(preloadTask2.file);
                                file3.delete();
                                if (zRenameTo) {
                                    Log.i(TAG, "[" + iIncrementAndGet + "] preload data saved!");
                                }
                                file = file3;
                                fileOutputStream3 = null;
                                i14 = 0;
                            } else {
                                file = file;
                            }
                        } else {
                            file = file;
                        }
                        i11 += i15;
                        int i21 = i14;
                        j6 = (((long) i11) * 100) / ((long) preloadHeader);
                        if (j6 != j10) {
                            StringBuilder sb4 = new StringBuilder();
                            sb4.append("[");
                            sb4.append(iIncrementAndGet);
                            str8 = str3;
                            sb4.append(str8);
                            sb4.append(j6);
                            sb4.append("%");
                            Log.i(TAG, sb4.toString());
                            j10 = j6;
                        } else {
                            str8 = str3;
                        }
                        mediaPreloadService2 = this;
                        r13 = r30 == true ? 1 : 0;
                        fileInputStream = fileInputStream;
                        str3 = str8;
                        file = file;
                        i14 = i21;
                    }
                    file2 = file;
                    Utils.safeClose(inputStream2);
                    httpURLConnectionCreateConnection.disconnect();
                    if (fileOutputStream3 != null) {
                        Utils.safeClose(fileOutputStream3);
                        file2.delete();
                        mediaPreloadService = this;
                        mediaPreloadService.clean(mediaPreloadService.keep, mediaPreloadService.maxAge, false);
                    } else {
                        mediaPreloadService = this;
                    }
                    if (fileInputStream != null) {
                        Utils.safeClose(fileInputStream);
                        mediaPreloadService.touch(preloadTask2.file);
                    }
                    if (z6) {
                        preloadTask2.file.delete();
                    }
                    mediaPreloadService.preloadRunning.remove(str13, preloadTask2);
                    return;
                }
                StringBuilder sb5 = new StringBuilder();
                sb5.append("bytes=");
                sb5.append(iSkip);
                sb5.append("-");
                i17 = i12;
                if (i17 < Integer.MAX_VALUE) {
                    strValueOf = String.valueOf(i17 - 1);
                } else {
                    strValueOf = "";
                }
                String str14 = strValueOf;
                sb5.append(str14);
                httpURLConnectionCreateConnection.setRequestProperty("Range", sb5.toString());
                str9 = str14;
                i16 = i17;
                str9 = str5;
                i16 = i13;
                str6 = str10;
                obj2 = str9;
                r12 = i16;
                inputStream2 = HurlConnectionHelper.getInputStream(httpURLConnectionCreateConnection);
                if (iSkip > 0) {
                    if (httpURLConnectionCreateConnection.getResponseCode() != 206) {
                        if (httpURLConnectionCreateConnection.getResponseCode() == 416) {
                            throw new IOException("Not Partial Content!");
                        }
                        if (inputStream2 != null) {
                            Utils.safeClose(inputStream2);
                        }
                        httpURLConnectionCreateConnection.disconnect();
                        if (fileOutputStream2 != null) {
                            Utils.safeClose(fileOutputStream2);
                            file.delete();
                            mediaPreloadService2.clean(mediaPreloadService2.keep, mediaPreloadService2.maxAge, false);
                        }
                        if (fileInputStream != null) {
                            Utils.safeClose(fileInputStream);
                            PreloadTask preloadTask5 = preloadTask3;
                            mediaPreloadService2.touch(preloadTask5.file);
                            preloadTask = preloadTask5;
                        } else {
                            preloadTask = preloadTask3;
                        }
                        preloadTask.file.delete();
                        mediaPreloadService2.preloadRunning.remove(str4, preloadTask);
                        return;
                    }
                }
                String str15 = str4;
                preloadTask2 = preloadTask3;
                if (preloadHeader > 0) {
                    preloadHeader = httpURLConnectionCreateConnection.getContentLength();
                    responseOutputStream.setContentLength(preloadHeader);
                    if (str6 != null) {
                        String headerField2 = httpURLConnectionCreateConnection.getHeaderField("Content-Range");
                        responseOutputStream.setHeader("Content-Range", headerField2);
                        preloadHeader = Integer.parseInt(headerField2.substring(headerField2.lastIndexOf(47) + 1));
                        r1 = 2147483647;
                    }
                    if (fileOutputStream2 != null) {
                        fileOutputStream3 = fileOutputStream2;
                        mediaPreloadService2.writePreloadHeader(fileOutputStream3, preloadHeader);
                    } else {
                        fileOutputStream3 = fileOutputStream2;
                    }
                    if (iSkip > 0) {
                        i11 = iSkip;
                    }
                    String str16 = str15;
                    i14 = 0;
                    r13 = r1;
                    while (true) {
                        r30 = r13;
                        fileInputStream = fileInputStream;
                        i15 = inputStream2.read(bArr, 0, Math.min(960, r13 - i11));
                        if (i15 != -1) {
                            break;
                            break;
                        }
                        responseOutputStream.write(bArr, 0, i15);
                        if (fileOutputStream3 != null) {
                            fileOutputStream3.write(bArr, 0, i15);
                            i14 += i15;
                            if (i14 >= PRELOAD_SIZE) {
                                fileOutputStream3.close();
                                file3 = file;
                                zRenameTo = file3.renameTo(preloadTask2.file);
                                file3.delete();
                                if (zRenameTo) {
                                    Log.i(TAG, "[" + iIncrementAndGet + "] preload data saved!");
                                }
                                file = file3;
                                fileOutputStream3 = null;
                                i14 = 0;
                            } else {
                                file = file;
                            }
                        } else {
                            file = file;
                        }
                        i11 += i15;
                        int i22 = i14;
                        j6 = (((long) i11) * 100) / ((long) preloadHeader);
                        if (j6 != j10) {
                            StringBuilder sb6 = new StringBuilder();
                            sb6.append("[");
                            sb6.append(iIncrementAndGet);
                            str8 = str3;
                            sb6.append(str8);
                            sb6.append(j6);
                            sb6.append("%");
                            Log.i(TAG, sb6.toString());
                            j10 = j6;
                        } else {
                            str8 = str3;
                        }
                        mediaPreloadService2 = this;
                        r13 = r30 == true ? 1 : 0;
                        fileInputStream = fileInputStream;
                        str3 = str8;
                        file = file;
                        i14 = i22;
                    }
                    file2 = file;
                    Utils.safeClose(inputStream2);
                    httpURLConnectionCreateConnection.disconnect();
                    if (fileOutputStream3 != null) {
                        Utils.safeClose(fileOutputStream3);
                        file2.delete();
                        mediaPreloadService = this;
                        mediaPreloadService.clean(mediaPreloadService.keep, mediaPreloadService.maxAge, false);
                    } else {
                        mediaPreloadService = this;
                    }
                    if (fileInputStream != null) {
                        Utils.safeClose(fileInputStream);
                        mediaPreloadService.touch(preloadTask2.file);
                    }
                    if (z6) {
                        preloadTask2.file.delete();
                    }
                    mediaPreloadService.preloadRunning.remove(str16, preloadTask2);
                    return;
                }
                if (httpURLConnectionCreateConnection.getContentLength() + iSkip != preloadHeader) {
                    throw new IOException("preload length not match");
                }
                r1 = r12;
                if (fileOutputStream2 != null) {
                    fileOutputStream3 = fileOutputStream2;
                    mediaPreloadService2.writePreloadHeader(fileOutputStream3, preloadHeader);
                } else {
                    fileOutputStream3 = fileOutputStream2;
                }
                if (iSkip > 0) {
                    i11 = iSkip;
                }
                String str17 = str15;
                i14 = 0;
                r13 = r1;
                while (true) {
                    r30 = r13;
                    fileInputStream = fileInputStream;
                    i15 = inputStream2.read(bArr, 0, Math.min(960, r13 - i11));
                    if (i15 != -1) {
                        break;
                        break;
                    }
                    responseOutputStream.write(bArr, 0, i15);
                    if (fileOutputStream3 != null) {
                        fileOutputStream3.write(bArr, 0, i15);
                        i14 += i15;
                        if (i14 >= PRELOAD_SIZE) {
                            fileOutputStream3.close();
                            file3 = file;
                            zRenameTo = file3.renameTo(preloadTask2.file);
                            file3.delete();
                            if (zRenameTo) {
                                Log.i(TAG, "[" + iIncrementAndGet + "] preload data saved!");
                            }
                            file = file3;
                            fileOutputStream3 = null;
                            i14 = 0;
                        } else {
                            file = file;
                        }
                    } else {
                        file = file;
                    }
                    i11 += i15;
                    int i23 = i14;
                    j6 = (((long) i11) * 100) / ((long) preloadHeader);
                    if (j6 != j10) {
                        StringBuilder sb7 = new StringBuilder();
                        sb7.append("[");
                        sb7.append(iIncrementAndGet);
                        str8 = str3;
                        sb7.append(str8);
                        sb7.append(j6);
                        sb7.append("%");
                        Log.i(TAG, sb7.toString());
                        j10 = j6;
                    } else {
                        str8 = str3;
                    }
                    mediaPreloadService2 = this;
                    r13 = r30 == true ? 1 : 0;
                    fileInputStream = fileInputStream;
                    str3 = str8;
                    file = file;
                    i14 = i23;
                }
                file2 = file;
                Utils.safeClose(inputStream2);
                httpURLConnectionCreateConnection.disconnect();
                if (fileOutputStream3 != null) {
                    Utils.safeClose(fileOutputStream3);
                    file2.delete();
                    mediaPreloadService = this;
                    mediaPreloadService.clean(mediaPreloadService.keep, mediaPreloadService.maxAge, false);
                } else {
                    mediaPreloadService = this;
                }
                if (fileInputStream != null) {
                    Utils.safeClose(fileInputStream);
                    mediaPreloadService.touch(preloadTask2.file);
                }
                if (z6) {
                    preloadTask2.file.delete();
                }
                mediaPreloadService.preloadRunning.remove(str17, preloadTask2);
                return;
            }
            try {
                responseOutputStream.setContentLength(preloadHeader);
                if (str10 != null) {
                    file = file;
                    try {
                        StringBuilder sb8 = new StringBuilder();
                        fileOutputStream2 = fileOutputStream;
                        try {
                            sb8.append("bytes ");
                            sb8.append(i11);
                            sb8.append("-");
                            sb8.append(Math.min(i12 - 1, preloadHeader - 1));
                            sb8.append(com.google.firebase.sessions.settings.c.FORWARD_SLASH_STRING);
                            sb8.append(preloadHeader);
                            responseOutputStream.setHeader("Content-Range", sb8.toString());
                        } catch (Throwable th4) {
                            th = th4;
                            httpURLConnectionCreateConnection = null;
                            r11 = str4;
                            obj = preloadTask3;
                            file = file;
                            r5 = r11;
                            r10 = obj;
                            if (inputStream2 != null) {
                                Utils.safeClose(inputStream2);
                            }
                            if (httpURLConnectionCreateConnection != null) {
                                httpURLConnectionCreateConnection.disconnect();
                            }
                            if (fileOutputStream2 != null) {
                                Utils.safeClose(fileOutputStream2);
                                file.delete();
                                mediaPreloadService2.clean(mediaPreloadService2.keep, mediaPreloadService2.maxAge, false);
                            }
                            if (fileInputStream != null) {
                                Utils.safeClose(fileInputStream);
                                mediaPreloadService2.touch(r10.file);
                            }
                            if (z6) {
                                r10.file.delete();
                            }
                            mediaPreloadService2.preloadRunning.remove(r5, r10);
                            throw th;
                        }
                    } catch (Throwable th5) {
                        th = th5;
                        fileOutputStream2 = fileOutputStream;
                        httpURLConnectionCreateConnection = null;
                        r11 = str4;
                        obj = preloadTask3;
                        file = file;
                        r5 = r11;
                        r10 = obj;
                        if (inputStream2 != null) {
                            Utils.safeClose(inputStream2);
                        }
                        if (httpURLConnectionCreateConnection != null) {
                            httpURLConnectionCreateConnection.disconnect();
                        }
                        if (fileOutputStream2 != null) {
                            Utils.safeClose(fileOutputStream2);
                            file.delete();
                            mediaPreloadService2.clean(mediaPreloadService2.keep, mediaPreloadService2.maxAge, false);
                        }
                        if (fileInputStream != null) {
                            Utils.safeClose(fileInputStream);
                            mediaPreloadService2.touch(r10.file);
                        }
                        if (z6) {
                            r10.file.delete();
                        }
                        mediaPreloadService2.preloadRunning.remove(r5, r10);
                        throw th;
                    }
                } else {
                    fileOutputStream2 = fileOutputStream;
                    file = file;
                }
                try {
                    responseOutputStream.setHeader(MIME.CONTENT_TRANSFER_ENC, MIME.ENC_BINARY);
                    responseOutputStream.setContentType("video/mp4");
                    int i110 = -1;
                    if (preloadHeader > 0 || fileInputStream == null) {
                        iSkip = 0;
                    } else {
                        iSkip = (int) fileInputStream.skip(i11);
                        if (iSkip == i11) {
                            while (true) {
                                int i24 = fileInputStream.read(bArr);
                                if (i24 == i110) {
                                    break;
                                }
                                responseOutputStream.write(bArr, 0, i24);
                                iSkip += i24;
                                i110 = -1;
                            }
                        } else {
                            iSkip = 0;
                            preloadHeader = 0;
                        }
                    }
                    if (fileInputStream != null) {
                        fileInputStream.close();
                        fileInputStream = null;
                    }
                    if (iSkip > 0) {
                        Log.i(TAG, "[" + iIncrementAndGet + "] return preloaded " + i11 + "-" + iSkip);
                    }
                    try {
                        httpURLConnectionCreateConnection = mediaPreloadService2.stack.createConnection(new URL(strDecode2));
                        try {
                            httpURLConnectionCreateConnection.setRequestProperty("User-Agent", "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36");
                            try {
                                try {
                                    if (iSkip > 0) {
                                        i13 = i12;
                                        if (str10 != 0) {
                                            str9 = str5;
                                            i16 = i13;
                                            str6 = str10;
                                            httpURLConnectionCreateConnection.setRequestProperty("Range", str6);
                                            obj2 = str5;
                                            r12 = i13;
                                        }
                                        inputStream2 = HurlConnectionHelper.getInputStream(httpURLConnectionCreateConnection);
                                        if (iSkip > 0) {
                                            try {
                                                if (httpURLConnectionCreateConnection.getResponseCode() != 206) {
                                                    if (httpURLConnectionCreateConnection.getResponseCode() == 416) {
                                                        throw new IOException("Not Partial Content!");
                                                    }
                                                    if (inputStream2 != null) {
                                                        Utils.safeClose(inputStream2);
                                                    }
                                                    httpURLConnectionCreateConnection.disconnect();
                                                    if (fileOutputStream2 != null) {
                                                        Utils.safeClose(fileOutputStream2);
                                                        file.delete();
                                                        mediaPreloadService2.clean(mediaPreloadService2.keep, mediaPreloadService2.maxAge, false);
                                                    }
                                                    if (fileInputStream != null) {
                                                        Utils.safeClose(fileInputStream);
                                                        PreloadTask preloadTask6 = preloadTask3;
                                                        mediaPreloadService2.touch(preloadTask6.file);
                                                        preloadTask = preloadTask6;
                                                    } else {
                                                        preloadTask = preloadTask3;
                                                    }
                                                    preloadTask.file.delete();
                                                    mediaPreloadService2.preloadRunning.remove(str4, preloadTask);
                                                    return;
                                                }
                                            } catch (Throwable th6) {
                                                th = th6;
                                                r12 = str4;
                                                obj2 = preloadTask3;
                                                inputStream2 = inputStream2;
                                                r11 = r12;
                                                obj = obj2;
                                                file = file;
                                                r5 = r11;
                                                r10 = obj;
                                                if (inputStream2 != null) {
                                                    Utils.safeClose(inputStream2);
                                                }
                                                if (httpURLConnectionCreateConnection != null) {
                                                    httpURLConnectionCreateConnection.disconnect();
                                                }
                                                if (fileOutputStream2 != null) {
                                                    Utils.safeClose(fileOutputStream2);
                                                    file.delete();
                                                    mediaPreloadService2.clean(mediaPreloadService2.keep, mediaPreloadService2.maxAge, false);
                                                }
                                                if (fileInputStream != null) {
                                                    Utils.safeClose(fileInputStream);
                                                    mediaPreloadService2.touch(r10.file);
                                                }
                                                if (z6) {
                                                    r10.file.delete();
                                                }
                                                mediaPreloadService2.preloadRunning.remove(r5, r10);
                                                throw th;
                                            }
                                        }
                                        String str18 = str4;
                                        preloadTask2 = preloadTask3;
                                        if (preloadHeader > 0) {
                                            try {
                                                preloadHeader = httpURLConnectionCreateConnection.getContentLength();
                                                responseOutputStream.setContentLength(preloadHeader);
                                                if (str6 != null) {
                                                    String headerField3 = httpURLConnectionCreateConnection.getHeaderField("Content-Range");
                                                    responseOutputStream.setHeader("Content-Range", headerField3);
                                                    preloadHeader = Integer.parseInt(headerField3.substring(headerField3.lastIndexOf(47) + 1));
                                                    r1 = 2147483647;
                                                }
                                                if (fileOutputStream2 != null) {
                                                    fileOutputStream3 = fileOutputStream2;
                                                    try {
                                                        mediaPreloadService2.writePreloadHeader(fileOutputStream3, preloadHeader);
                                                    } catch (Throwable th7) {
                                                        th = th7;
                                                        inputStream2 = inputStream2;
                                                        r11 = str18;
                                                        fileOutputStream2 = fileOutputStream3;
                                                        obj = preloadTask2;
                                                        file = file;
                                                        r5 = r11;
                                                        r10 = obj;
                                                    }
                                                } else {
                                                    fileOutputStream3 = fileOutputStream2;
                                                }
                                                if (iSkip > 0) {
                                                    i11 = iSkip;
                                                }
                                                String str19 = str18;
                                                i14 = 0;
                                                r13 = r1;
                                                while (true) {
                                                    r30 = r13;
                                                    try {
                                                        fileInputStream = fileInputStream;
                                                        try {
                                                            i15 = inputStream2.read(bArr, 0, Math.min(960, r13 - i11));
                                                            if (i15 != -1) {
                                                                break;
                                                            }
                                                            try {
                                                                responseOutputStream.write(bArr, 0, i15);
                                                                if (fileOutputStream3 != null) {
                                                                    try {
                                                                        fileOutputStream3.write(bArr, 0, i15);
                                                                        i14 += i15;
                                                                        if (i14 >= PRELOAD_SIZE) {
                                                                            try {
                                                                                fileOutputStream3.close();
                                                                                file3 = file;
                                                                                try {
                                                                                    zRenameTo = file3.renameTo(preloadTask2.file);
                                                                                    try {
                                                                                        file3.delete();
                                                                                        if (zRenameTo) {
                                                                                            Log.i(TAG, "[" + iIncrementAndGet + "] preload data saved!");
                                                                                        }
                                                                                        file = file3;
                                                                                        fileOutputStream3 = null;
                                                                                        i14 = 0;
                                                                                    } catch (Throwable th8) {
                                                                                        th = th8;
                                                                                        fileInputStream = fileInputStream;
                                                                                        file = file3;
                                                                                        fileOutputStream2 = null;
                                                                                        str7 = str19;
                                                                                        inputStream2 = inputStream2;
                                                                                        r5 = str7;
                                                                                        r10 = preloadTask2;
                                                                                        if (inputStream2 != null) {
                                                                                            Utils.safeClose(inputStream2);
                                                                                        }
                                                                                        if (httpURLConnectionCreateConnection != null) {
                                                                                            httpURLConnectionCreateConnection.disconnect();
                                                                                        }
                                                                                        if (fileOutputStream2 != null) {
                                                                                            Utils.safeClose(fileOutputStream2);
                                                                                            file.delete();
                                                                                            mediaPreloadService2.clean(mediaPreloadService2.keep, mediaPreloadService2.maxAge, false);
                                                                                        }
                                                                                        if (fileInputStream != null) {
                                                                                            Utils.safeClose(fileInputStream);
                                                                                            mediaPreloadService2.touch(r10.file);
                                                                                        }
                                                                                        if (z6) {
                                                                                            r10.file.delete();
                                                                                        }
                                                                                        mediaPreloadService2.preloadRunning.remove(r5, r10);
                                                                                        throw th;
                                                                                    }
                                                                                } catch (Throwable th9) {
                                                                                    th = th9;
                                                                                    file = file3;
                                                                                    fileOutputStream2 = fileOutputStream3;
                                                                                    r5 = str19;
                                                                                    r10 = preloadTask2;
                                                                                    if (inputStream2 != null) {
                                                                                        Utils.safeClose(inputStream2);
                                                                                    }
                                                                                    if (httpURLConnectionCreateConnection != null) {
                                                                                        httpURLConnectionCreateConnection.disconnect();
                                                                                    }
                                                                                    if (fileOutputStream2 != null) {
                                                                                        Utils.safeClose(fileOutputStream2);
                                                                                        file.delete();
                                                                                        mediaPreloadService2.clean(mediaPreloadService2.keep, mediaPreloadService2.maxAge, false);
                                                                                    }
                                                                                    if (fileInputStream != null) {
                                                                                        Utils.safeClose(fileInputStream);
                                                                                        mediaPreloadService2.touch(r10.file);
                                                                                    }
                                                                                    if (z6) {
                                                                                        r10.file.delete();
                                                                                    }
                                                                                    mediaPreloadService2.preloadRunning.remove(r5, r10);
                                                                                    throw th;
                                                                                }
                                                                            } catch (Throwable th10) {
                                                                                th = th10;
                                                                                file3 = file;
                                                                            }
                                                                        } else {
                                                                            file = file;
                                                                        }
                                                                    } catch (Throwable th11) {
                                                                        th = th11;
                                                                        file = file;
                                                                        fileOutputStream2 = fileOutputStream3;
                                                                        r5 = str19;
                                                                        r10 = preloadTask2;
                                                                        if (inputStream2 != null) {
                                                                            Utils.safeClose(inputStream2);
                                                                        }
                                                                        if (httpURLConnectionCreateConnection != null) {
                                                                            httpURLConnectionCreateConnection.disconnect();
                                                                        }
                                                                        if (fileOutputStream2 != null) {
                                                                            Utils.safeClose(fileOutputStream2);
                                                                            file.delete();
                                                                            mediaPreloadService2.clean(mediaPreloadService2.keep, mediaPreloadService2.maxAge, false);
                                                                        }
                                                                        if (fileInputStream != null) {
                                                                            Utils.safeClose(fileInputStream);
                                                                            mediaPreloadService2.touch(r10.file);
                                                                        }
                                                                        if (z6) {
                                                                            r10.file.delete();
                                                                        }
                                                                        mediaPreloadService2.preloadRunning.remove(r5, r10);
                                                                        throw th;
                                                                    }
                                                                } else {
                                                                    file = file;
                                                                }
                                                                i11 += i15;
                                                                int i25 = i14;
                                                                try {
                                                                    j6 = (((long) i11) * 100) / ((long) preloadHeader);
                                                                    if (j6 != j10) {
                                                                        StringBuilder sb9 = new StringBuilder();
                                                                        sb9.append("[");
                                                                        sb9.append(iIncrementAndGet);
                                                                        str8 = str3;
                                                                        sb9.append(str8);
                                                                        sb9.append(j6);
                                                                        sb9.append("%");
                                                                        Log.i(TAG, sb9.toString());
                                                                        j10 = j6;
                                                                    } else {
                                                                        str8 = str3;
                                                                    }
                                                                    mediaPreloadService2 = this;
                                                                    r13 = r30 == true ? 1 : 0;
                                                                    fileInputStream = fileInputStream;
                                                                    str3 = str8;
                                                                    file = file;
                                                                    i14 = i25;
                                                                } catch (Throwable th12) {
                                                                    th = th12;
                                                                    mediaPreloadService2 = this;
                                                                    fileOutputStream2 = fileOutputStream3;
                                                                    r5 = str19;
                                                                    r10 = preloadTask2;
                                                                    if (inputStream2 != null) {
                                                                        Utils.safeClose(inputStream2);
                                                                    }
                                                                    if (httpURLConnectionCreateConnection != null) {
                                                                        httpURLConnectionCreateConnection.disconnect();
                                                                    }
                                                                    if (fileOutputStream2 != null) {
                                                                        Utils.safeClose(fileOutputStream2);
                                                                        file.delete();
                                                                        mediaPreloadService2.clean(mediaPreloadService2.keep, mediaPreloadService2.maxAge, false);
                                                                    }
                                                                    if (fileInputStream != null) {
                                                                        Utils.safeClose(fileInputStream);
                                                                        mediaPreloadService2.touch(r10.file);
                                                                    }
                                                                    if (z6) {
                                                                        r10.file.delete();
                                                                    }
                                                                    mediaPreloadService2.preloadRunning.remove(r5, r10);
                                                                    throw th;
                                                                }
                                                            } catch (Throwable th13) {
                                                                th = th13;
                                                                file = file;
                                                            }
                                                        } catch (Throwable th14) {
                                                            th = th14;
                                                            fileInputStream = fileInputStream;
                                                            inputStream2 = inputStream2;
                                                            fileOutputStream2 = fileOutputStream3;
                                                            r5 = str19;
                                                            r10 = preloadTask2;
                                                        }
                                                    } catch (Throwable th15) {
                                                        th = th15;
                                                    }
                                                }
                                                file2 = file;
                                                Utils.safeClose(inputStream2);
                                                httpURLConnectionCreateConnection.disconnect();
                                                if (fileOutputStream3 != null) {
                                                    Utils.safeClose(fileOutputStream3);
                                                    file2.delete();
                                                    mediaPreloadService = this;
                                                    mediaPreloadService.clean(mediaPreloadService.keep, mediaPreloadService.maxAge, false);
                                                } else {
                                                    mediaPreloadService = this;
                                                }
                                                if (fileInputStream != null) {
                                                    Utils.safeClose(fileInputStream);
                                                    mediaPreloadService.touch(preloadTask2.file);
                                                }
                                                if (z6) {
                                                    preloadTask2.file.delete();
                                                }
                                                mediaPreloadService.preloadRunning.remove(str19, preloadTask2);
                                                return;
                                            } catch (Throwable th16) {
                                                th = th16;
                                                str7 = str18;
                                                file = file;
                                                inputStream2 = inputStream2;
                                                r5 = str7;
                                                r10 = preloadTask2;
                                                if (inputStream2 != null) {
                                                    Utils.safeClose(inputStream2);
                                                }
                                                if (httpURLConnectionCreateConnection != null) {
                                                    httpURLConnectionCreateConnection.disconnect();
                                                }
                                                if (fileOutputStream2 != null) {
                                                    Utils.safeClose(fileOutputStream2);
                                                    file.delete();
                                                    mediaPreloadService2.clean(mediaPreloadService2.keep, mediaPreloadService2.maxAge, false);
                                                }
                                                if (fileInputStream != null) {
                                                    Utils.safeClose(fileInputStream);
                                                    mediaPreloadService2.touch(r10.file);
                                                }
                                                if (z6) {
                                                    r10.file.delete();
                                                }
                                                mediaPreloadService2.preloadRunning.remove(r5, r10);
                                                throw th;
                                            }
                                        }
                                        if (httpURLConnectionCreateConnection.getContentLength() + iSkip != preloadHeader) {
                                            try {
                                                throw new IOException("preload length not match");
                                            } catch (Throwable th17) {
                                                th = th17;
                                                inputStream2 = inputStream2;
                                                r5 = str18;
                                                file = file;
                                                z6 = true;
                                                r10 = preloadTask2;
                                            }
                                        }
                                        r1 = r12;
                                        if (fileOutputStream2 != null) {
                                            fileOutputStream3 = fileOutputStream2;
                                            mediaPreloadService2.writePreloadHeader(fileOutputStream3, preloadHeader);
                                        } else {
                                            fileOutputStream3 = fileOutputStream2;
                                        }
                                        if (iSkip > 0) {
                                            i11 = iSkip;
                                        }
                                        String str110 = str18;
                                        i14 = 0;
                                        r13 = r1;
                                        while (true) {
                                            r30 = r13;
                                            fileInputStream = fileInputStream;
                                            i15 = inputStream2.read(bArr, 0, Math.min(960, r13 - i11));
                                            if (i15 != -1) {
                                                break;
                                                break;
                                            }
                                            responseOutputStream.write(bArr, 0, i15);
                                            if (fileOutputStream3 != null) {
                                                fileOutputStream3.write(bArr, 0, i15);
                                                i14 += i15;
                                                if (i14 >= PRELOAD_SIZE) {
                                                    fileOutputStream3.close();
                                                    file3 = file;
                                                    zRenameTo = file3.renameTo(preloadTask2.file);
                                                    file3.delete();
                                                    if (zRenameTo) {
                                                        Log.i(TAG, "[" + iIncrementAndGet + "] preload data saved!");
                                                    }
                                                    file = file3;
                                                    fileOutputStream3 = null;
                                                    i14 = 0;
                                                } else {
                                                    file = file;
                                                }
                                            } else {
                                                file = file;
                                            }
                                            i11 += i15;
                                            int i26 = i14;
                                            j6 = (((long) i11) * 100) / ((long) preloadHeader);
                                            if (j6 != j10) {
                                                StringBuilder sb10 = new StringBuilder();
                                                sb10.append("[");
                                                sb10.append(iIncrementAndGet);
                                                str8 = str3;
                                                sb10.append(str8);
                                                sb10.append(j6);
                                                sb10.append("%");
                                                Log.i(TAG, sb10.toString());
                                                j10 = j6;
                                            } else {
                                                str8 = str3;
                                            }
                                            mediaPreloadService2 = this;
                                            r13 = r30 == true ? 1 : 0;
                                            fileInputStream = fileInputStream;
                                            str3 = str8;
                                            file = file;
                                            i14 = i26;
                                        }
                                        file2 = file;
                                        Utils.safeClose(inputStream2);
                                        httpURLConnectionCreateConnection.disconnect();
                                        if (fileOutputStream3 != null) {
                                            Utils.safeClose(fileOutputStream3);
                                            file2.delete();
                                            mediaPreloadService = this;
                                            mediaPreloadService.clean(mediaPreloadService.keep, mediaPreloadService.maxAge, false);
                                        } else {
                                            mediaPreloadService = this;
                                        }
                                        if (fileInputStream != null) {
                                            Utils.safeClose(fileInputStream);
                                            mediaPreloadService.touch(preloadTask2.file);
                                        }
                                        if (z6) {
                                            preloadTask2.file.delete();
                                        }
                                        mediaPreloadService.preloadRunning.remove(str110, preloadTask2);
                                        return;
                                    }
                                    StringBuilder sb11 = new StringBuilder();
                                    sb11.append("bytes=");
                                    sb11.append(iSkip);
                                    sb11.append("-");
                                    i17 = i12;
                                    if (i17 < Integer.MAX_VALUE) {
                                        strValueOf = String.valueOf(i17 - 1);
                                    } else {
                                        strValueOf = "";
                                    }
                                    String str111 = strValueOf;
                                    sb11.append(str111);
                                    httpURLConnectionCreateConnection.setRequestProperty("Range", sb11.toString());
                                    str9 = str111;
                                    i16 = i17;
                                    if (iSkip > 0) {
                                        if (httpURLConnectionCreateConnection.getResponseCode() != 206) {
                                            if (httpURLConnectionCreateConnection.getResponseCode() == 416) {
                                                throw new IOException("Not Partial Content!");
                                            }
                                            if (inputStream2 != null) {
                                                Utils.safeClose(inputStream2);
                                            }
                                            httpURLConnectionCreateConnection.disconnect();
                                            if (fileOutputStream2 != null) {
                                                Utils.safeClose(fileOutputStream2);
                                                file.delete();
                                                mediaPreloadService2.clean(mediaPreloadService2.keep, mediaPreloadService2.maxAge, false);
                                            }
                                            if (fileInputStream != null) {
                                                Utils.safeClose(fileInputStream);
                                                PreloadTask preloadTask7 = preloadTask3;
                                                mediaPreloadService2.touch(preloadTask7.file);
                                                preloadTask = preloadTask7;
                                            } else {
                                                preloadTask = preloadTask3;
                                            }
                                            preloadTask.file.delete();
                                            mediaPreloadService2.preloadRunning.remove(str4, preloadTask);
                                            return;
                                        }
                                    }
                                    String str112 = str4;
                                    preloadTask2 = preloadTask3;
                                    if (preloadHeader > 0) {
                                        preloadHeader = httpURLConnectionCreateConnection.getContentLength();
                                        responseOutputStream.setContentLength(preloadHeader);
                                        if (str6 != null) {
                                            String headerField4 = httpURLConnectionCreateConnection.getHeaderField("Content-Range");
                                            responseOutputStream.setHeader("Content-Range", headerField4);
                                            preloadHeader = Integer.parseInt(headerField4.substring(headerField4.lastIndexOf(47) + 1));
                                            r1 = 2147483647;
                                        }
                                        if (fileOutputStream2 != null) {
                                            fileOutputStream3 = fileOutputStream2;
                                            mediaPreloadService2.writePreloadHeader(fileOutputStream3, preloadHeader);
                                        } else {
                                            fileOutputStream3 = fileOutputStream2;
                                        }
                                        if (iSkip > 0) {
                                            i11 = iSkip;
                                        }
                                        String str113 = str112;
                                        i14 = 0;
                                        r13 = r1;
                                        while (true) {
                                            r30 = r13;
                                            fileInputStream = fileInputStream;
                                            i15 = inputStream2.read(bArr, 0, Math.min(960, r13 - i11));
                                            if (i15 != -1) {
                                                break;
                                                break;
                                            }
                                            responseOutputStream.write(bArr, 0, i15);
                                            if (fileOutputStream3 != null) {
                                                fileOutputStream3.write(bArr, 0, i15);
                                                i14 += i15;
                                                if (i14 >= PRELOAD_SIZE) {
                                                    fileOutputStream3.close();
                                                    file3 = file;
                                                    zRenameTo = file3.renameTo(preloadTask2.file);
                                                    file3.delete();
                                                    if (zRenameTo) {
                                                        Log.i(TAG, "[" + iIncrementAndGet + "] preload data saved!");
                                                    }
                                                    file = file3;
                                                    fileOutputStream3 = null;
                                                    i14 = 0;
                                                } else {
                                                    file = file;
                                                }
                                            } else {
                                                file = file;
                                            }
                                            i11 += i15;
                                            int i27 = i14;
                                            j6 = (((long) i11) * 100) / ((long) preloadHeader);
                                            if (j6 != j10) {
                                                StringBuilder sb12 = new StringBuilder();
                                                sb12.append("[");
                                                sb12.append(iIncrementAndGet);
                                                str8 = str3;
                                                sb12.append(str8);
                                                sb12.append(j6);
                                                sb12.append("%");
                                                Log.i(TAG, sb12.toString());
                                                j10 = j6;
                                            } else {
                                                str8 = str3;
                                            }
                                            mediaPreloadService2 = this;
                                            r13 = r30 == true ? 1 : 0;
                                            fileInputStream = fileInputStream;
                                            str3 = str8;
                                            file = file;
                                            i14 = i27;
                                        }
                                        file2 = file;
                                        Utils.safeClose(inputStream2);
                                        httpURLConnectionCreateConnection.disconnect();
                                        if (fileOutputStream3 != null) {
                                            Utils.safeClose(fileOutputStream3);
                                            file2.delete();
                                            mediaPreloadService = this;
                                            mediaPreloadService.clean(mediaPreloadService.keep, mediaPreloadService.maxAge, false);
                                        } else {
                                            mediaPreloadService = this;
                                        }
                                        if (fileInputStream != null) {
                                            Utils.safeClose(fileInputStream);
                                            mediaPreloadService.touch(preloadTask2.file);
                                        }
                                        if (z6) {
                                            preloadTask2.file.delete();
                                        }
                                        mediaPreloadService.preloadRunning.remove(str113, preloadTask2);
                                        return;
                                    }
                                    if (httpURLConnectionCreateConnection.getContentLength() + iSkip != preloadHeader) {
                                        throw new IOException("preload length not match");
                                    }
                                    r1 = r12;
                                    if (fileOutputStream2 != null) {
                                        fileOutputStream3 = fileOutputStream2;
                                        mediaPreloadService2.writePreloadHeader(fileOutputStream3, preloadHeader);
                                    } else {
                                        fileOutputStream3 = fileOutputStream2;
                                    }
                                    if (iSkip > 0) {
                                        i11 = iSkip;
                                    }
                                    String str114 = str112;
                                    i14 = 0;
                                    r13 = r1;
                                    while (true) {
                                        r30 = r13;
                                        fileInputStream = fileInputStream;
                                        i15 = inputStream2.read(bArr, 0, Math.min(960, r13 - i11));
                                        if (i15 != -1) {
                                            break;
                                            break;
                                        }
                                        responseOutputStream.write(bArr, 0, i15);
                                        if (fileOutputStream3 != null) {
                                            fileOutputStream3.write(bArr, 0, i15);
                                            i14 += i15;
                                            if (i14 >= PRELOAD_SIZE) {
                                                fileOutputStream3.close();
                                                file3 = file;
                                                zRenameTo = file3.renameTo(preloadTask2.file);
                                                file3.delete();
                                                if (zRenameTo) {
                                                    Log.i(TAG, "[" + iIncrementAndGet + "] preload data saved!");
                                                }
                                                file = file3;
                                                fileOutputStream3 = null;
                                                i14 = 0;
                                            } else {
                                                file = file;
                                            }
                                        } else {
                                            file = file;
                                        }
                                        i11 += i15;
                                        int i28 = i14;
                                        j6 = (((long) i11) * 100) / ((long) preloadHeader);
                                        if (j6 != j10) {
                                            StringBuilder sb13 = new StringBuilder();
                                            sb13.append("[");
                                            sb13.append(iIncrementAndGet);
                                            str8 = str3;
                                            sb13.append(str8);
                                            sb13.append(j6);
                                            sb13.append("%");
                                            Log.i(TAG, sb13.toString());
                                            j10 = j6;
                                        } else {
                                            str8 = str3;
                                        }
                                        mediaPreloadService2 = this;
                                        r13 = r30 == true ? 1 : 0;
                                        fileInputStream = fileInputStream;
                                        str3 = str8;
                                        file = file;
                                        i14 = i28;
                                    }
                                    file2 = file;
                                    Utils.safeClose(inputStream2);
                                    httpURLConnectionCreateConnection.disconnect();
                                    if (fileOutputStream3 != null) {
                                        Utils.safeClose(fileOutputStream3);
                                        file2.delete();
                                        mediaPreloadService = this;
                                        mediaPreloadService.clean(mediaPreloadService.keep, mediaPreloadService.maxAge, false);
                                    } else {
                                        mediaPreloadService = this;
                                    }
                                    if (fileInputStream != null) {
                                        Utils.safeClose(fileInputStream);
                                        mediaPreloadService.touch(preloadTask2.file);
                                    }
                                    if (z6) {
                                        preloadTask2.file.delete();
                                    }
                                    mediaPreloadService.preloadRunning.remove(str114, preloadTask2);
                                    return;
                                } catch (Throwable th18) {
                                    th = th18;
                                }
                                str9 = str5;
                                i16 = i13;
                                str6 = str10;
                                obj2 = str9;
                                r12 = i16;
                                inputStream2 = HurlConnectionHelper.getInputStream(httpURLConnectionCreateConnection);
                            } catch (Throwable th19) {
                                th = th19;
                                r11 = str4;
                                obj = preloadTask3;
                                file = file;
                                r5 = r11;
                                r10 = obj;
                                if (inputStream2 != null) {
                                    Utils.safeClose(inputStream2);
                                }
                                if (httpURLConnectionCreateConnection != null) {
                                    httpURLConnectionCreateConnection.disconnect();
                                }
                                if (fileOutputStream2 != null) {
                                    Utils.safeClose(fileOutputStream2);
                                    file.delete();
                                    mediaPreloadService2.clean(mediaPreloadService2.keep, mediaPreloadService2.maxAge, false);
                                }
                                if (fileInputStream != null) {
                                    Utils.safeClose(fileInputStream);
                                    mediaPreloadService2.touch(r10.file);
                                }
                                if (z6) {
                                    r10.file.delete();
                                }
                                mediaPreloadService2.preloadRunning.remove(r5, r10);
                                throw th;
                            }
                        } catch (Throwable th20) {
                            th = th20;
                            r5 = str4;
                            r10 = preloadTask3;
                            file = file;
                        }
                    } catch (Throwable th21) {
                        th = th21;
                        r5 = str4;
                        r10 = preloadTask3;
                        file = file;
                        httpURLConnectionCreateConnection = null;
                    }
                } catch (Throwable th22) {
                    th = th22;
                }
            } catch (Throwable th23) {
                th = th23;
                fileOutputStream2 = fileOutputStream;
                file = file;
            }
            if (inputStream2 != null) {
                Utils.safeClose(inputStream2);
            }
            if (httpURLConnectionCreateConnection != null) {
                httpURLConnectionCreateConnection.disconnect();
            }
            if (fileOutputStream2 != null) {
                Utils.safeClose(fileOutputStream2);
                file.delete();
                mediaPreloadService2.clean(mediaPreloadService2.keep, mediaPreloadService2.maxAge, false);
            }
            if (fileInputStream != null) {
                Utils.safeClose(fileInputStream);
                mediaPreloadService2.touch(r10.file);
            }
            if (z6) {
                r10.file.delete();
            }
            mediaPreloadService2.preloadRunning.remove(r5, r10);
            throw th;
        }
        i12 = i10;
        preloadTask3.filew.length();
        fileInputStream = null;
        if (i11 == 0) {
            str3 = "] ";
            fileOutputStream = null;
            file = null;
        } else {
            str3 = "] ";
            fileOutputStream = null;
            file = null;
        }
        bArr = new byte[960];
        if (str10 != null) {
            responseOutputStream.setStatusCode(ComposerKt.referenceKey);
        } else {
            responseOutputStream.setStatusCode(200);
        }
        if (fileInputStream != null) {
            preloadHeader = mediaPreloadService2.readPreloadHeader(fileInputStream);
        } else {
            preloadHeader = 0;
        }
        z6 = false;
        str4 = strDecode;
        str5 = "-";
        if (preloadHeader > 0) {
            fileOutputStream2 = fileOutputStream;
            file = file;
            responseOutputStream.setHeader(MIME.CONTENT_TRANSFER_ENC, MIME.ENC_BINARY);
            responseOutputStream.setContentType("video/mp4");
            int i111 = -1;
            if (preloadHeader > 0) {
                iSkip = 0;
            } else {
                iSkip = 0;
            }
            if (fileInputStream != null) {
                fileInputStream.close();
                fileInputStream = null;
            }
            if (iSkip > 0) {
                Log.i(TAG, "[" + iIncrementAndGet + "] return preloaded " + i11 + "-" + iSkip);
            }
            httpURLConnectionCreateConnection = mediaPreloadService2.stack.createConnection(new URL(strDecode2));
            httpURLConnectionCreateConnection.setRequestProperty("User-Agent", "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36");
            if (iSkip > 0) {
                i13 = i12;
                if (str10 != 0) {
                    str9 = str5;
                    i16 = i13;
                    str6 = str10;
                    httpURLConnectionCreateConnection.setRequestProperty("Range", str6);
                    obj2 = str5;
                    r12 = i13;
                }
                inputStream2 = HurlConnectionHelper.getInputStream(httpURLConnectionCreateConnection);
                if (iSkip > 0) {
                    if (httpURLConnectionCreateConnection.getResponseCode() != 206) {
                        if (httpURLConnectionCreateConnection.getResponseCode() == 416) {
                            throw new IOException("Not Partial Content!");
                        }
                        if (inputStream2 != null) {
                            Utils.safeClose(inputStream2);
                        }
                        httpURLConnectionCreateConnection.disconnect();
                        if (fileOutputStream2 != null) {
                            Utils.safeClose(fileOutputStream2);
                            file.delete();
                            mediaPreloadService2.clean(mediaPreloadService2.keep, mediaPreloadService2.maxAge, false);
                        }
                        if (fileInputStream != null) {
                            Utils.safeClose(fileInputStream);
                            PreloadTask preloadTask8 = preloadTask3;
                            mediaPreloadService2.touch(preloadTask8.file);
                            preloadTask = preloadTask8;
                        } else {
                            preloadTask = preloadTask3;
                        }
                        preloadTask.file.delete();
                        mediaPreloadService2.preloadRunning.remove(str4, preloadTask);
                        return;
                    }
                }
                String str115 = str4;
                preloadTask2 = preloadTask3;
                if (preloadHeader > 0) {
                    preloadHeader = httpURLConnectionCreateConnection.getContentLength();
                    responseOutputStream.setContentLength(preloadHeader);
                    if (str6 != null) {
                        String headerField5 = httpURLConnectionCreateConnection.getHeaderField("Content-Range");
                        responseOutputStream.setHeader("Content-Range", headerField5);
                        preloadHeader = Integer.parseInt(headerField5.substring(headerField5.lastIndexOf(47) + 1));
                        r1 = 2147483647;
                    }
                    if (fileOutputStream2 != null) {
                        fileOutputStream3 = fileOutputStream2;
                        mediaPreloadService2.writePreloadHeader(fileOutputStream3, preloadHeader);
                    } else {
                        fileOutputStream3 = fileOutputStream2;
                    }
                    if (iSkip > 0) {
                        i11 = iSkip;
                    }
                    String str116 = str115;
                    i14 = 0;
                    r13 = r1;
                    while (true) {
                        r30 = r13;
                        fileInputStream = fileInputStream;
                        i15 = inputStream2.read(bArr, 0, Math.min(960, r13 - i11));
                        if (i15 != -1) {
                            break;
                            break;
                        }
                        responseOutputStream.write(bArr, 0, i15);
                        if (fileOutputStream3 != null) {
                            fileOutputStream3.write(bArr, 0, i15);
                            i14 += i15;
                            if (i14 >= PRELOAD_SIZE) {
                                fileOutputStream3.close();
                                file3 = file;
                                zRenameTo = file3.renameTo(preloadTask2.file);
                                file3.delete();
                                if (zRenameTo) {
                                    Log.i(TAG, "[" + iIncrementAndGet + "] preload data saved!");
                                }
                                file = file3;
                                fileOutputStream3 = null;
                                i14 = 0;
                            } else {
                                file = file;
                            }
                        } else {
                            file = file;
                        }
                        i11 += i15;
                        int i29 = i14;
                        j6 = (((long) i11) * 100) / ((long) preloadHeader);
                        if (j6 != j10) {
                            StringBuilder sb14 = new StringBuilder();
                            sb14.append("[");
                            sb14.append(iIncrementAndGet);
                            str8 = str3;
                            sb14.append(str8);
                            sb14.append(j6);
                            sb14.append("%");
                            Log.i(TAG, sb14.toString());
                            j10 = j6;
                        } else {
                            str8 = str3;
                        }
                        mediaPreloadService2 = this;
                        r13 = r30 == true ? 1 : 0;
                        fileInputStream = fileInputStream;
                        str3 = str8;
                        file = file;
                        i14 = i29;
                    }
                    file2 = file;
                    Utils.safeClose(inputStream2);
                    httpURLConnectionCreateConnection.disconnect();
                    if (fileOutputStream3 != null) {
                        Utils.safeClose(fileOutputStream3);
                        file2.delete();
                        mediaPreloadService = this;
                        mediaPreloadService.clean(mediaPreloadService.keep, mediaPreloadService.maxAge, false);
                    } else {
                        mediaPreloadService = this;
                    }
                    if (fileInputStream != null) {
                        Utils.safeClose(fileInputStream);
                        mediaPreloadService.touch(preloadTask2.file);
                    }
                    if (z6) {
                        preloadTask2.file.delete();
                    }
                    mediaPreloadService.preloadRunning.remove(str116, preloadTask2);
                    return;
                }
                if (httpURLConnectionCreateConnection.getContentLength() + iSkip != preloadHeader) {
                    throw new IOException("preload length not match");
                }
                r1 = r12;
                if (fileOutputStream2 != null) {
                    fileOutputStream3 = fileOutputStream2;
                    mediaPreloadService2.writePreloadHeader(fileOutputStream3, preloadHeader);
                } else {
                    fileOutputStream3 = fileOutputStream2;
                }
                if (iSkip > 0) {
                    i11 = iSkip;
                }
                String str117 = str115;
                i14 = 0;
                r13 = r1;
                while (true) {
                    r30 = r13;
                    fileInputStream = fileInputStream;
                    i15 = inputStream2.read(bArr, 0, Math.min(960, r13 - i11));
                    if (i15 != -1) {
                        break;
                        break;
                    }
                    responseOutputStream.write(bArr, 0, i15);
                    if (fileOutputStream3 != null) {
                        fileOutputStream3.write(bArr, 0, i15);
                        i14 += i15;
                        if (i14 >= PRELOAD_SIZE) {
                            fileOutputStream3.close();
                            file3 = file;
                            zRenameTo = file3.renameTo(preloadTask2.file);
                            file3.delete();
                            if (zRenameTo) {
                                Log.i(TAG, "[" + iIncrementAndGet + "] preload data saved!");
                            }
                            file = file3;
                            fileOutputStream3 = null;
                            i14 = 0;
                        } else {
                            file = file;
                        }
                    } else {
                        file = file;
                    }
                    i11 += i15;
                    int i210 = i14;
                    j6 = (((long) i11) * 100) / ((long) preloadHeader);
                    if (j6 != j10) {
                        StringBuilder sb15 = new StringBuilder();
                        sb15.append("[");
                        sb15.append(iIncrementAndGet);
                        str8 = str3;
                        sb15.append(str8);
                        sb15.append(j6);
                        sb15.append("%");
                        Log.i(TAG, sb15.toString());
                        j10 = j6;
                    } else {
                        str8 = str3;
                    }
                    mediaPreloadService2 = this;
                    r13 = r30 == true ? 1 : 0;
                    fileInputStream = fileInputStream;
                    str3 = str8;
                    file = file;
                    i14 = i210;
                }
                file2 = file;
                Utils.safeClose(inputStream2);
                httpURLConnectionCreateConnection.disconnect();
                if (fileOutputStream3 != null) {
                    Utils.safeClose(fileOutputStream3);
                    file2.delete();
                    mediaPreloadService = this;
                    mediaPreloadService.clean(mediaPreloadService.keep, mediaPreloadService.maxAge, false);
                } else {
                    mediaPreloadService = this;
                }
                if (fileInputStream != null) {
                    Utils.safeClose(fileInputStream);
                    mediaPreloadService.touch(preloadTask2.file);
                }
                if (z6) {
                    preloadTask2.file.delete();
                }
                mediaPreloadService.preloadRunning.remove(str117, preloadTask2);
                return;
            }
            StringBuilder sb16 = new StringBuilder();
            sb16.append("bytes=");
            sb16.append(iSkip);
            sb16.append("-");
            i17 = i12;
            if (i17 < Integer.MAX_VALUE) {
                strValueOf = String.valueOf(i17 - 1);
            } else {
                strValueOf = "";
            }
            String str118 = strValueOf;
            sb16.append(str118);
            httpURLConnectionCreateConnection.setRequestProperty("Range", sb16.toString());
            str9 = str118;
            i16 = i17;
            str9 = str5;
            i16 = i13;
            str6 = str10;
            obj2 = str9;
            r12 = i16;
            inputStream2 = HurlConnectionHelper.getInputStream(httpURLConnectionCreateConnection);
            if (iSkip > 0) {
                if (httpURLConnectionCreateConnection.getResponseCode() != 206) {
                    if (httpURLConnectionCreateConnection.getResponseCode() == 416) {
                        throw new IOException("Not Partial Content!");
                    }
                    if (inputStream2 != null) {
                        Utils.safeClose(inputStream2);
                    }
                    httpURLConnectionCreateConnection.disconnect();
                    if (fileOutputStream2 != null) {
                        Utils.safeClose(fileOutputStream2);
                        file.delete();
                        mediaPreloadService2.clean(mediaPreloadService2.keep, mediaPreloadService2.maxAge, false);
                    }
                    if (fileInputStream != null) {
                        Utils.safeClose(fileInputStream);
                        PreloadTask preloadTask9 = preloadTask3;
                        mediaPreloadService2.touch(preloadTask9.file);
                        preloadTask = preloadTask9;
                    } else {
                        preloadTask = preloadTask3;
                    }
                    preloadTask.file.delete();
                    mediaPreloadService2.preloadRunning.remove(str4, preloadTask);
                    return;
                }
            }
            String str119 = str4;
            preloadTask2 = preloadTask3;
            if (preloadHeader > 0) {
                preloadHeader = httpURLConnectionCreateConnection.getContentLength();
                responseOutputStream.setContentLength(preloadHeader);
                if (str6 != null) {
                    String headerField6 = httpURLConnectionCreateConnection.getHeaderField("Content-Range");
                    responseOutputStream.setHeader("Content-Range", headerField6);
                    preloadHeader = Integer.parseInt(headerField6.substring(headerField6.lastIndexOf(47) + 1));
                    r1 = 2147483647;
                }
                if (fileOutputStream2 != null) {
                    fileOutputStream3 = fileOutputStream2;
                    mediaPreloadService2.writePreloadHeader(fileOutputStream3, preloadHeader);
                } else {
                    fileOutputStream3 = fileOutputStream2;
                }
                if (iSkip > 0) {
                    i11 = iSkip;
                }
                String str1110 = str119;
                i14 = 0;
                r13 = r1;
                while (true) {
                    r30 = r13;
                    fileInputStream = fileInputStream;
                    i15 = inputStream2.read(bArr, 0, Math.min(960, r13 - i11));
                    if (i15 != -1) {
                        break;
                        break;
                    }
                    responseOutputStream.write(bArr, 0, i15);
                    if (fileOutputStream3 != null) {
                        fileOutputStream3.write(bArr, 0, i15);
                        i14 += i15;
                        if (i14 >= PRELOAD_SIZE) {
                            fileOutputStream3.close();
                            file3 = file;
                            zRenameTo = file3.renameTo(preloadTask2.file);
                            file3.delete();
                            if (zRenameTo) {
                                Log.i(TAG, "[" + iIncrementAndGet + "] preload data saved!");
                            }
                            file = file3;
                            fileOutputStream3 = null;
                            i14 = 0;
                        } else {
                            file = file;
                        }
                    } else {
                        file = file;
                    }
                    i11 += i15;
                    int i211 = i14;
                    j6 = (((long) i11) * 100) / ((long) preloadHeader);
                    if (j6 != j10) {
                        StringBuilder sb17 = new StringBuilder();
                        sb17.append("[");
                        sb17.append(iIncrementAndGet);
                        str8 = str3;
                        sb17.append(str8);
                        sb17.append(j6);
                        sb17.append("%");
                        Log.i(TAG, sb17.toString());
                        j10 = j6;
                    } else {
                        str8 = str3;
                    }
                    mediaPreloadService2 = this;
                    r13 = r30 == true ? 1 : 0;
                    fileInputStream = fileInputStream;
                    str3 = str8;
                    file = file;
                    i14 = i211;
                }
                file2 = file;
                Utils.safeClose(inputStream2);
                httpURLConnectionCreateConnection.disconnect();
                if (fileOutputStream3 != null) {
                    Utils.safeClose(fileOutputStream3);
                    file2.delete();
                    mediaPreloadService = this;
                    mediaPreloadService.clean(mediaPreloadService.keep, mediaPreloadService.maxAge, false);
                } else {
                    mediaPreloadService = this;
                }
                if (fileInputStream != null) {
                    Utils.safeClose(fileInputStream);
                    mediaPreloadService.touch(preloadTask2.file);
                }
                if (z6) {
                    preloadTask2.file.delete();
                }
                mediaPreloadService.preloadRunning.remove(str1110, preloadTask2);
                return;
            }
            if (httpURLConnectionCreateConnection.getContentLength() + iSkip != preloadHeader) {
                throw new IOException("preload length not match");
            }
            r1 = r12;
            if (fileOutputStream2 != null) {
                fileOutputStream3 = fileOutputStream2;
                mediaPreloadService2.writePreloadHeader(fileOutputStream3, preloadHeader);
            } else {
                fileOutputStream3 = fileOutputStream2;
            }
            if (iSkip > 0) {
                i11 = iSkip;
            }
            String str1111 = str119;
            i14 = 0;
            r13 = r1;
            while (true) {
                r30 = r13;
                fileInputStream = fileInputStream;
                i15 = inputStream2.read(bArr, 0, Math.min(960, r13 - i11));
                if (i15 != -1) {
                    break;
                    break;
                }
                responseOutputStream.write(bArr, 0, i15);
                if (fileOutputStream3 != null) {
                    fileOutputStream3.write(bArr, 0, i15);
                    i14 += i15;
                    if (i14 >= PRELOAD_SIZE) {
                        fileOutputStream3.close();
                        file3 = file;
                        zRenameTo = file3.renameTo(preloadTask2.file);
                        file3.delete();
                        if (zRenameTo) {
                            Log.i(TAG, "[" + iIncrementAndGet + "] preload data saved!");
                        }
                        file = file3;
                        fileOutputStream3 = null;
                        i14 = 0;
                    } else {
                        file = file;
                    }
                } else {
                    file = file;
                }
                i11 += i15;
                int i212 = i14;
                j6 = (((long) i11) * 100) / ((long) preloadHeader);
                if (j6 != j10) {
                    StringBuilder sb18 = new StringBuilder();
                    sb18.append("[");
                    sb18.append(iIncrementAndGet);
                    str8 = str3;
                    sb18.append(str8);
                    sb18.append(j6);
                    sb18.append("%");
                    Log.i(TAG, sb18.toString());
                    j10 = j6;
                } else {
                    str8 = str3;
                }
                mediaPreloadService2 = this;
                r13 = r30 == true ? 1 : 0;
                fileInputStream = fileInputStream;
                str3 = str8;
                file = file;
                i14 = i212;
            }
            file2 = file;
            Utils.safeClose(inputStream2);
            httpURLConnectionCreateConnection.disconnect();
            if (fileOutputStream3 != null) {
                Utils.safeClose(fileOutputStream3);
                file2.delete();
                mediaPreloadService = this;
                mediaPreloadService.clean(mediaPreloadService.keep, mediaPreloadService.maxAge, false);
            } else {
                mediaPreloadService = this;
            }
            if (fileInputStream != null) {
                Utils.safeClose(fileInputStream);
                mediaPreloadService.touch(preloadTask2.file);
            }
            if (z6) {
                preloadTask2.file.delete();
            }
            mediaPreloadService.preloadRunning.remove(str1111, preloadTask2);
            return;
        }
        responseOutputStream.setContentLength(preloadHeader);
        if (str10 != null) {
            file = file;
            StringBuilder sb19 = new StringBuilder();
            fileOutputStream2 = fileOutputStream;
            sb19.append("bytes ");
            sb19.append(i11);
            sb19.append("-");
            sb19.append(Math.min(i12 - 1, preloadHeader - 1));
            sb19.append(com.google.firebase.sessions.settings.c.FORWARD_SLASH_STRING);
            sb19.append(preloadHeader);
            responseOutputStream.setHeader("Content-Range", sb19.toString());
        } else {
            fileOutputStream2 = fileOutputStream;
            file = file;
        }
        responseOutputStream.setHeader(MIME.CONTENT_TRANSFER_ENC, MIME.ENC_BINARY);
        responseOutputStream.setContentType("video/mp4");
        int i112 = -1;
        if (preloadHeader > 0) {
            iSkip = 0;
        } else {
            iSkip = 0;
        }
        if (fileInputStream != null) {
            fileInputStream.close();
            fileInputStream = null;
        }
        if (iSkip > 0) {
            Log.i(TAG, "[" + iIncrementAndGet + "] return preloaded " + i11 + "-" + iSkip);
        }
        httpURLConnectionCreateConnection = mediaPreloadService2.stack.createConnection(new URL(strDecode2));
        httpURLConnectionCreateConnection.setRequestProperty("User-Agent", "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.139 Safari/537.36");
        if (iSkip > 0) {
            i13 = i12;
            if (str10 != 0) {
                str9 = str5;
                i16 = i13;
                str6 = str10;
                httpURLConnectionCreateConnection.setRequestProperty("Range", str6);
                obj2 = str5;
                r12 = i13;
            }
            inputStream2 = HurlConnectionHelper.getInputStream(httpURLConnectionCreateConnection);
            if (iSkip > 0) {
                if (httpURLConnectionCreateConnection.getResponseCode() != 206) {
                    if (httpURLConnectionCreateConnection.getResponseCode() == 416) {
                        throw new IOException("Not Partial Content!");
                    }
                    if (inputStream2 != null) {
                        Utils.safeClose(inputStream2);
                    }
                    httpURLConnectionCreateConnection.disconnect();
                    if (fileOutputStream2 != null) {
                        Utils.safeClose(fileOutputStream2);
                        file.delete();
                        mediaPreloadService2.clean(mediaPreloadService2.keep, mediaPreloadService2.maxAge, false);
                    }
                    if (fileInputStream != null) {
                        Utils.safeClose(fileInputStream);
                        PreloadTask preloadTask10 = preloadTask3;
                        mediaPreloadService2.touch(preloadTask10.file);
                        preloadTask = preloadTask10;
                    } else {
                        preloadTask = preloadTask3;
                    }
                    preloadTask.file.delete();
                    mediaPreloadService2.preloadRunning.remove(str4, preloadTask);
                    return;
                }
            }
            String str1112 = str4;
            preloadTask2 = preloadTask3;
            if (preloadHeader > 0) {
                preloadHeader = httpURLConnectionCreateConnection.getContentLength();
                responseOutputStream.setContentLength(preloadHeader);
                if (str6 != null) {
                    String headerField7 = httpURLConnectionCreateConnection.getHeaderField("Content-Range");
                    responseOutputStream.setHeader("Content-Range", headerField7);
                    preloadHeader = Integer.parseInt(headerField7.substring(headerField7.lastIndexOf(47) + 1));
                    r1 = 2147483647;
                }
                if (fileOutputStream2 != null) {
                    fileOutputStream3 = fileOutputStream2;
                    mediaPreloadService2.writePreloadHeader(fileOutputStream3, preloadHeader);
                } else {
                    fileOutputStream3 = fileOutputStream2;
                }
                if (iSkip > 0) {
                    i11 = iSkip;
                }
                String str1113 = str1112;
                i14 = 0;
                r13 = r1;
                while (true) {
                    r30 = r13;
                    fileInputStream = fileInputStream;
                    i15 = inputStream2.read(bArr, 0, Math.min(960, r13 - i11));
                    if (i15 != -1) {
                        break;
                        break;
                    }
                    responseOutputStream.write(bArr, 0, i15);
                    if (fileOutputStream3 != null) {
                        fileOutputStream3.write(bArr, 0, i15);
                        i14 += i15;
                        if (i14 >= PRELOAD_SIZE) {
                            fileOutputStream3.close();
                            file3 = file;
                            zRenameTo = file3.renameTo(preloadTask2.file);
                            file3.delete();
                            if (zRenameTo) {
                                Log.i(TAG, "[" + iIncrementAndGet + "] preload data saved!");
                            }
                            file = file3;
                            fileOutputStream3 = null;
                            i14 = 0;
                        } else {
                            file = file;
                        }
                    } else {
                        file = file;
                    }
                    i11 += i15;
                    int i213 = i14;
                    j6 = (((long) i11) * 100) / ((long) preloadHeader);
                    if (j6 != j10) {
                        StringBuilder sb110 = new StringBuilder();
                        sb110.append("[");
                        sb110.append(iIncrementAndGet);
                        str8 = str3;
                        sb110.append(str8);
                        sb110.append(j6);
                        sb110.append("%");
                        Log.i(TAG, sb110.toString());
                        j10 = j6;
                    } else {
                        str8 = str3;
                    }
                    mediaPreloadService2 = this;
                    r13 = r30 == true ? 1 : 0;
                    fileInputStream = fileInputStream;
                    str3 = str8;
                    file = file;
                    i14 = i213;
                }
                file2 = file;
                Utils.safeClose(inputStream2);
                httpURLConnectionCreateConnection.disconnect();
                if (fileOutputStream3 != null) {
                    Utils.safeClose(fileOutputStream3);
                    file2.delete();
                    mediaPreloadService = this;
                    mediaPreloadService.clean(mediaPreloadService.keep, mediaPreloadService.maxAge, false);
                } else {
                    mediaPreloadService = this;
                }
                if (fileInputStream != null) {
                    Utils.safeClose(fileInputStream);
                    mediaPreloadService.touch(preloadTask2.file);
                }
                if (z6) {
                    preloadTask2.file.delete();
                }
                mediaPreloadService.preloadRunning.remove(str1113, preloadTask2);
                return;
            }
            if (httpURLConnectionCreateConnection.getContentLength() + iSkip != preloadHeader) {
                throw new IOException("preload length not match");
            }
            r1 = r12;
            if (fileOutputStream2 != null) {
                fileOutputStream3 = fileOutputStream2;
                mediaPreloadService2.writePreloadHeader(fileOutputStream3, preloadHeader);
            } else {
                fileOutputStream3 = fileOutputStream2;
            }
            if (iSkip > 0) {
                i11 = iSkip;
            }
            String str1114 = str1112;
            i14 = 0;
            r13 = r1;
            while (true) {
                r30 = r13;
                fileInputStream = fileInputStream;
                i15 = inputStream2.read(bArr, 0, Math.min(960, r13 - i11));
                if (i15 != -1) {
                    break;
                    break;
                }
                responseOutputStream.write(bArr, 0, i15);
                if (fileOutputStream3 != null) {
                    fileOutputStream3.write(bArr, 0, i15);
                    i14 += i15;
                    if (i14 >= PRELOAD_SIZE) {
                        fileOutputStream3.close();
                        file3 = file;
                        zRenameTo = file3.renameTo(preloadTask2.file);
                        file3.delete();
                        if (zRenameTo) {
                            Log.i(TAG, "[" + iIncrementAndGet + "] preload data saved!");
                        }
                        file = file3;
                        fileOutputStream3 = null;
                        i14 = 0;
                    } else {
                        file = file;
                    }
                } else {
                    file = file;
                }
                i11 += i15;
                int i214 = i14;
                j6 = (((long) i11) * 100) / ((long) preloadHeader);
                if (j6 != j10) {
                    StringBuilder sb111 = new StringBuilder();
                    sb111.append("[");
                    sb111.append(iIncrementAndGet);
                    str8 = str3;
                    sb111.append(str8);
                    sb111.append(j6);
                    sb111.append("%");
                    Log.i(TAG, sb111.toString());
                    j10 = j6;
                } else {
                    str8 = str3;
                }
                mediaPreloadService2 = this;
                r13 = r30 == true ? 1 : 0;
                fileInputStream = fileInputStream;
                str3 = str8;
                file = file;
                i14 = i214;
            }
            file2 = file;
            Utils.safeClose(inputStream2);
            httpURLConnectionCreateConnection.disconnect();
            if (fileOutputStream3 != null) {
                Utils.safeClose(fileOutputStream3);
                file2.delete();
                mediaPreloadService = this;
                mediaPreloadService.clean(mediaPreloadService.keep, mediaPreloadService.maxAge, false);
            } else {
                mediaPreloadService = this;
            }
            if (fileInputStream != null) {
                Utils.safeClose(fileInputStream);
                mediaPreloadService.touch(preloadTask2.file);
            }
            if (z6) {
                preloadTask2.file.delete();
            }
            mediaPreloadService.preloadRunning.remove(str1114, preloadTask2);
            return;
        }
        StringBuilder sb112 = new StringBuilder();
        sb112.append("bytes=");
        sb112.append(iSkip);
        sb112.append("-");
        i17 = i12;
        if (i17 < Integer.MAX_VALUE) {
            strValueOf = String.valueOf(i17 - 1);
        } else {
            strValueOf = "";
        }
        String str1115 = strValueOf;
        sb112.append(str1115);
        httpURLConnectionCreateConnection.setRequestProperty("Range", sb112.toString());
        str9 = str1115;
        i16 = i17;
        str9 = str5;
        i16 = i13;
        str6 = str10;
        obj2 = str9;
        r12 = i16;
        inputStream2 = HurlConnectionHelper.getInputStream(httpURLConnectionCreateConnection);
        if (iSkip > 0) {
            if (httpURLConnectionCreateConnection.getResponseCode() != 206) {
                if (httpURLConnectionCreateConnection.getResponseCode() == 416) {
                    throw new IOException("Not Partial Content!");
                }
                if (inputStream2 != null) {
                    Utils.safeClose(inputStream2);
                }
                httpURLConnectionCreateConnection.disconnect();
                if (fileOutputStream2 != null) {
                    Utils.safeClose(fileOutputStream2);
                    file.delete();
                    mediaPreloadService2.clean(mediaPreloadService2.keep, mediaPreloadService2.maxAge, false);
                }
                if (fileInputStream != null) {
                    Utils.safeClose(fileInputStream);
                    PreloadTask preloadTask11 = preloadTask3;
                    mediaPreloadService2.touch(preloadTask11.file);
                    preloadTask = preloadTask11;
                } else {
                    preloadTask = preloadTask3;
                }
                preloadTask.file.delete();
                mediaPreloadService2.preloadRunning.remove(str4, preloadTask);
                return;
            }
        }
        String str1116 = str4;
        preloadTask2 = preloadTask3;
        if (preloadHeader > 0) {
            preloadHeader = httpURLConnectionCreateConnection.getContentLength();
            responseOutputStream.setContentLength(preloadHeader);
            if (str6 != null) {
                String headerField8 = httpURLConnectionCreateConnection.getHeaderField("Content-Range");
                responseOutputStream.setHeader("Content-Range", headerField8);
                preloadHeader = Integer.parseInt(headerField8.substring(headerField8.lastIndexOf(47) + 1));
                r1 = 2147483647;
            }
            if (fileOutputStream2 != null) {
                fileOutputStream3 = fileOutputStream2;
                mediaPreloadService2.writePreloadHeader(fileOutputStream3, preloadHeader);
            } else {
                fileOutputStream3 = fileOutputStream2;
            }
            if (iSkip > 0) {
                i11 = iSkip;
            }
            String str1117 = str1116;
            i14 = 0;
            r13 = r1;
            while (true) {
                r30 = r13;
                fileInputStream = fileInputStream;
                i15 = inputStream2.read(bArr, 0, Math.min(960, r13 - i11));
                if (i15 != -1) {
                    break;
                    break;
                }
                responseOutputStream.write(bArr, 0, i15);
                if (fileOutputStream3 != null) {
                    fileOutputStream3.write(bArr, 0, i15);
                    i14 += i15;
                    if (i14 >= PRELOAD_SIZE) {
                        fileOutputStream3.close();
                        file3 = file;
                        zRenameTo = file3.renameTo(preloadTask2.file);
                        file3.delete();
                        if (zRenameTo) {
                            Log.i(TAG, "[" + iIncrementAndGet + "] preload data saved!");
                        }
                        file = file3;
                        fileOutputStream3 = null;
                        i14 = 0;
                    } else {
                        file = file;
                    }
                } else {
                    file = file;
                }
                i11 += i15;
                int i215 = i14;
                j6 = (((long) i11) * 100) / ((long) preloadHeader);
                if (j6 != j10) {
                    StringBuilder sb113 = new StringBuilder();
                    sb113.append("[");
                    sb113.append(iIncrementAndGet);
                    str8 = str3;
                    sb113.append(str8);
                    sb113.append(j6);
                    sb113.append("%");
                    Log.i(TAG, sb113.toString());
                    j10 = j6;
                } else {
                    str8 = str3;
                }
                mediaPreloadService2 = this;
                r13 = r30 == true ? 1 : 0;
                fileInputStream = fileInputStream;
                str3 = str8;
                file = file;
                i14 = i215;
            }
            file2 = file;
            Utils.safeClose(inputStream2);
            httpURLConnectionCreateConnection.disconnect();
            if (fileOutputStream3 != null) {
                Utils.safeClose(fileOutputStream3);
                file2.delete();
                mediaPreloadService = this;
                mediaPreloadService.clean(mediaPreloadService.keep, mediaPreloadService.maxAge, false);
            } else {
                mediaPreloadService = this;
            }
            if (fileInputStream != null) {
                Utils.safeClose(fileInputStream);
                mediaPreloadService.touch(preloadTask2.file);
            }
            if (z6) {
                preloadTask2.file.delete();
            }
            mediaPreloadService.preloadRunning.remove(str1117, preloadTask2);
            return;
        }
        if (httpURLConnectionCreateConnection.getContentLength() + iSkip != preloadHeader) {
            throw new IOException("preload length not match");
        }
        r1 = r12;
        if (fileOutputStream2 != null) {
            fileOutputStream3 = fileOutputStream2;
            mediaPreloadService2.writePreloadHeader(fileOutputStream3, preloadHeader);
        } else {
            fileOutputStream3 = fileOutputStream2;
        }
        if (iSkip > 0) {
            i11 = iSkip;
        }
        String str1118 = str1116;
        i14 = 0;
        r13 = r1;
        while (true) {
            r30 = r13;
            fileInputStream = fileInputStream;
            i15 = inputStream2.read(bArr, 0, Math.min(960, r13 - i11));
            if (i15 != -1) {
                break;
                break;
            }
            responseOutputStream.write(bArr, 0, i15);
            if (fileOutputStream3 != null) {
                fileOutputStream3.write(bArr, 0, i15);
                i14 += i15;
                if (i14 >= PRELOAD_SIZE) {
                    fileOutputStream3.close();
                    file3 = file;
                    zRenameTo = file3.renameTo(preloadTask2.file);
                    file3.delete();
                    if (zRenameTo) {
                        Log.i(TAG, "[" + iIncrementAndGet + "] preload data saved!");
                    }
                    file = file3;
                    fileOutputStream3 = null;
                    i14 = 0;
                } else {
                    file = file;
                }
            } else {
                file = file;
            }
            i11 += i15;
            int i216 = i14;
            j6 = (((long) i11) * 100) / ((long) preloadHeader);
            if (j6 != j10) {
                StringBuilder sb114 = new StringBuilder();
                sb114.append("[");
                sb114.append(iIncrementAndGet);
                str8 = str3;
                sb114.append(str8);
                sb114.append(j6);
                sb114.append("%");
                Log.i(TAG, sb114.toString());
                j10 = j6;
            } else {
                str8 = str3;
            }
            mediaPreloadService2 = this;
            r13 = r30 == true ? 1 : 0;
            fileInputStream = fileInputStream;
            str3 = str8;
            file = file;
            i14 = i216;
        }
        file2 = file;
        Utils.safeClose(inputStream2);
        httpURLConnectionCreateConnection.disconnect();
        if (fileOutputStream3 != null) {
            Utils.safeClose(fileOutputStream3);
            file2.delete();
            mediaPreloadService = this;
            mediaPreloadService.clean(mediaPreloadService.keep, mediaPreloadService.maxAge, false);
        } else {
            mediaPreloadService = this;
        }
        if (fileInputStream != null) {
            Utils.safeClose(fileInputStream);
            mediaPreloadService.touch(preloadTask2.file);
        }
        if (z6) {
            preloadTask2.file.delete();
        }
        mediaPreloadService.preloadRunning.remove(str1118, preloadTask2);
        return;
        if (inputStream2 != null) {
            Utils.safeClose(inputStream2);
        }
        if (httpURLConnectionCreateConnection != null) {
            httpURLConnectionCreateConnection.disconnect();
        }
        if (fileOutputStream2 != null) {
            Utils.safeClose(fileOutputStream2);
            file.delete();
            mediaPreloadService2.clean(mediaPreloadService2.keep, mediaPreloadService2.maxAge, false);
        }
        if (fileInputStream != null) {
            Utils.safeClose(fileInputStream);
            mediaPreloadService2.touch(r10.file);
        }
        if (z6) {
            r10.file.delete();
        }
        mediaPreloadService2.preloadRunning.remove(r5, r10);
        throw th;
    }

    public void clean(int i10, long j6, boolean z6) {
        if (z6 || this.cleanCounter.incrementAndGet() % 4 == 0) {
            long jCurrentTimeMillis = j6 == 0 ? 0L : System.currentTimeMillis() - j6;
            ArrayList arrayList = new ArrayList();
            File[] fileArrListFiles = this.dir.listFiles();
            if (fileArrListFiles != null) {
                for (File file : fileArrListFiles) {
                    FileStub fileStub = new FileStub(file);
                    if (jCurrentTimeMillis != 0 && fileStub.time() < jCurrentTimeMillis) {
                        file.delete();
                    } else if (!file.getName().endsWith(".w")) {
                        arrayList.add(fileStub);
                    } else if (z6) {
                        file.delete();
                    }
                }
            }
            if (arrayList.size() > i10) {
                Collections.sort(arrayList);
                for (int size = (arrayList.size() - i10) - 1; size >= 0; size--) {
                    ((FileStub) arrayList.get(size)).file.delete();
                }
            }
        }
    }

    public void clear() {
        clean(0, 0L, true);
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

    public void revoke(String str) {
        new PreloadTask(str, null).file.delete();
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

    void writePreloadHeader(OutputStream outputStream, int i10) throws IOException {
        outputStream.write(77);
        outputStream.write(49);
        outputStream.write((i10 >>> 24) & 255);
        outputStream.write((i10 >>> 16) & 255);
        outputStream.write((i10 >>> 8) & 255);
        outputStream.write(i10 & 255);
    }

    public MediaPreloadService(NVContext nVContext, File file) {
        this.context = nVContext;
        this.dir = file;
        this.stack = new ProxyStack(nVContext);
    }

    int readPreloadHeader(InputStream inputStream) throws IOException {
        if (inputStream.read() == 77 && inputStream.read() == 49) {
            int i10 = inputStream.read();
            int i11 = inputStream.read();
            int i12 = inputStream.read();
            int i13 = inputStream.read();
            if (i10 >= 0 && i11 >= 0 && i12 >= 0 && i13 >= 0) {
                return i13 | (i10 << 24) | (i11 << 16) | (i12 << 8);
            }
            throw new IOException("malformed (magic eof)");
        }
        throw new IOException("malformed (magic number)");
    }

    void touch(File file) {
        file.setLastModified(System.currentTimeMillis());
    }

    public String translateUrl(String str, String str2) {
        if (isStarted()) {
            return "http://127.0.0.1:" + getPort() + '/' + URLEncoder.encode(str) + "?url=" + URLEncoder.encode(str2);
        }
        return str2;
    }
}
