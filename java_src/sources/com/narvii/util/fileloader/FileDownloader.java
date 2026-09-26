package com.narvii.util.fileloader;

import androidx.annotation.WorkerThread;
import com.narvii.app.NVContext;
import com.narvii.util.Log;
import com.narvii.util.Utils;
import com.narvii.util.http.ProxyStack;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes7.dex */
public final class FileDownloader {

    @NotNull
    private final NVContext ctx;

    @NotNull
    private final ProxyStack stack;

    /* JADX WARN: Code duplicated, block: B:74:0x01cb A[Catch: all -> 0x0135, TRY_ENTER, TryCatch #1 {all -> 0x0135, blocks: (B:44:0x0119, B:46:0x0120, B:51:0x013d, B:54:0x0148, B:58:0x0158, B:60:0x0165, B:62:0x0179, B:61:0x016e, B:63:0x017e, B:66:0x018e, B:67:0x0197, B:69:0x01a4, B:70:0x01ad, B:74:0x01cb, B:75:0x01d4), top: B:87:0x0017 }] */
    /* JADX WARN: Code duplicated, block: B:75:0x01d4 A[Catch: all -> 0x0135, TRY_LEAVE, TryCatch #1 {all -> 0x0135, blocks: (B:44:0x0119, B:46:0x0120, B:51:0x013d, B:54:0x0148, B:58:0x0158, B:60:0x0165, B:62:0x0179, B:61:0x016e, B:63:0x017e, B:66:0x018e, B:67:0x0197, B:69:0x01a4, B:70:0x01ad, B:74:0x01cb, B:75:0x01d4), top: B:87:0x0017 }] */
    /* JADX WARN: Code duplicated, block: B:94:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Not initialized variable reg: 1, insn: 0x0137: MOVE (r0 I:??[OBJECT, ARRAY]) = (r1 I:??[OBJECT, ARRAY]), block:B:48:0x0136 */
    @WorkerThread
    public final void execute(@NotNull final FileLoader.Session session, @NotNull final File dir, @NotNull final IFileDownloadCallback callback, boolean z6) {
        InputStream inputStream;
        HttpURLConnection httpURLConnectionCreateConnection;
        FileOutputStream fileOutputStream;
        OutputStream outputStream;
        t.j(session, "session");
        t.j(dir, "dir");
        t.j(callback, "callback");
        if (session.getAborted()) {
            return;
        }
        OutputStream outputStream2 = null;
        try {
            try {
                if (!dir.isDirectory() && !dir.mkdir()) {
                    if (z6) {
                        Utils.post(new Runnable() { // from class: com.narvii.util.fileloader.a
                            @Override // java.lang.Runnable
                            public final void run() {
                                FileDownloader.execute$lambda$0(callback, session, dir);
                            }
                        });
                    } else {
                        callback.onError(session.getRequest().getUrl(), new IOException("Cache dir " + dir + " not available"));
                    }
                    Utils.safeClose((OutputStream) null);
                    Utils.safeClose((InputStream) null);
                    return;
                }
                session.setStatus(1);
                long length = session.getWritingFile().length();
                if (length > 0) {
                    session.setDownloadedByte((int) length);
                }
                httpURLConnectionCreateConnection = this.stack.createConnection(new URL(session.getRequest().getUrl()));
                if (length > 0) {
                    try {
                        try {
                            httpURLConnectionCreateConnection.addRequestProperty("Range", "bytes=" + length + '-');
                            if (httpURLConnectionCreateConnection.getResponseCode() == 416) {
                                Log.w("Download range not satisfiable (416)");
                                try {
                                    httpURLConnectionCreateConnection.disconnect();
                                } catch (Exception unused) {
                                }
                                httpURLConnectionCreateConnection = this.stack.createConnection(new URL(session.getRequest().getUrl()));
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
                                        session.setContentLength(i11);
                                        session.setDownloadedByte(i10);
                                        fileOutputStream = new FileOutputStream(session.getWritingFile(), true);
                                    }
                                }
                            }
                            fileOutputStream = null;
                        } catch (Exception e) {
                            e = e;
                            fileOutputStream = null;
                            if (z6) {
                                Utils.post(new Runnable() { // from class: com.narvii.util.fileloader.e
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        FileDownloader.execute$lambda$4(callback, session, e);
                                    }
                                });
                            } else {
                                callback.onError(session.getRequest().getUrl(), e);
                            }
                            Utils.safeClose(fileOutputStream);
                            Utils.safeClose((InputStream) null);
                            if (httpURLConnectionCreateConnection == null) {
                                return;
                            }
                            httpURLConnectionCreateConnection.disconnect();
                        }
                    } catch (Throwable th) {
                        th = th;
                        inputStream = null;
                        Utils.safeClose(outputStream2);
                        Utils.safeClose(inputStream);
                        if (httpURLConnectionCreateConnection != null) {
                            httpURLConnectionCreateConnection.disconnect();
                        }
                        throw th;
                    }
                } else {
                    fileOutputStream = null;
                }
                try {
                    InputStream inputStream2 = httpURLConnectionCreateConnection.getInputStream();
                    if (fileOutputStream == null) {
                        session.setContentLength(httpURLConnectionCreateConnection.getContentLength());
                        session.setDownloadedByte(0);
                        fileOutputStream = new FileOutputStream(session.getWritingFile());
                    }
                    byte[] bArr = new byte[4096];
                    for (int i12 = inputStream2.read(bArr); i12 != -1; i12 = inputStream2.read(bArr)) {
                        if (session.getAborted()) {
                            Utils.safeClose(fileOutputStream);
                            Utils.safeClose(inputStream2);
                            httpURLConnectionCreateConnection.disconnect();
                            return;
                        } else {
                            fileOutputStream.write(bArr, 0, i12);
                            session.setDownloadedByte(session.getDownloadedByte() + i12);
                            if (z6) {
                                Utils.post(new Runnable() { // from class: com.narvii.util.fileloader.b
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        FileDownloader.execute$lambda$1(callback, session);
                                    }
                                });
                            } else {
                                callback.onProgressUpdate(session.getDownloadedByte(), session.getContentLength());
                            }
                        }
                    }
                    if (session.getWritingFile().renameTo(session.getFile())) {
                        if (z6) {
                            Utils.post(new Runnable() { // from class: com.narvii.util.fileloader.c
                                @Override // java.lang.Runnable
                                public final void run() {
                                    FileDownloader.execute$lambda$2(callback, session);
                                }
                            });
                        } else {
                            File file = session.getFile();
                            t.g(file);
                            callback.onPostExecute(file);
                        }
                    } else if (z6) {
                        Utils.post(new Runnable() { // from class: com.narvii.util.fileloader.d
                            @Override // java.lang.Runnable
                            public final void run() {
                                FileDownloader.execute$lambda$3(callback, session);
                            }
                        });
                    } else {
                        callback.onError(session.getRequest().getUrl(), new Exception("Fail to move downloaded file"));
                    }
                    Utils.safeClose(fileOutputStream);
                    Utils.safeClose(inputStream2);
                } catch (Exception e2) {
                    e = e2;
                    if (z6) {
                        Utils.post(new Runnable() { // from class: com.narvii.util.fileloader.e
                            @Override // java.lang.Runnable
                            public final void run() {
                                FileDownloader.execute$lambda$4(callback, session, e);
                            }
                        });
                    } else {
                        callback.onError(session.getRequest().getUrl(), e);
                    }
                    Utils.safeClose(fileOutputStream);
                    Utils.safeClose((InputStream) null);
                    if (httpURLConnectionCreateConnection == null) {
                        return;
                    }
                }
                httpURLConnectionCreateConnection.disconnect();
            } catch (Throwable th2) {
                th = th2;
                inputStream = null;
                outputStream2 = outputStream;
            }
        } catch (Exception e6) {
            e = e6;
            fileOutputStream = null;
            httpURLConnectionCreateConnection = null;
        } catch (Throwable th3) {
            th = th3;
            inputStream = null;
            httpURLConnectionCreateConnection = null;
        }
    }

    @NotNull
    public final NVContext getCtx() {
        return this.ctx;
    }

    public FileDownloader(@NotNull NVContext ctx) {
        t.j(ctx, "ctx");
        this.ctx = ctx;
        this.stack = new ProxyStack(ctx);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void execute$lambda$0(IFileDownloadCallback callback, FileLoader.Session session, File dir) {
        t.j(callback, "$callback");
        t.j(session, "$session");
        t.j(dir, "$dir");
        callback.onError(session.getRequest().getUrl(), new IOException("Cache dir " + dir + " not available"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void execute$lambda$1(IFileDownloadCallback callback, FileLoader.Session session) {
        t.j(callback, "$callback");
        t.j(session, "$session");
        callback.onProgressUpdate(session.getDownloadedByte(), session.getContentLength());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void execute$lambda$2(IFileDownloadCallback callback, FileLoader.Session session) {
        t.j(callback, "$callback");
        t.j(session, "$session");
        File file = session.getFile();
        t.g(file);
        callback.onPostExecute(file);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void execute$lambda$3(IFileDownloadCallback callback, FileLoader.Session session) {
        t.j(callback, "$callback");
        t.j(session, "$session");
        callback.onError(session.getRequest().getUrl(), new Exception("Fail to move downloaded file"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void execute$lambda$4(IFileDownloadCallback callback, FileLoader.Session session, Exception e) {
        t.j(callback, "$callback");
        t.j(session, "$session");
        t.j(e, "$e");
        callback.onError(session.getRequest().getUrl(), e);
    }
}
