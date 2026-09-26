package com.narvii.monetization.bubble.service;

import android.os.AsyncTask;
import android.os.SystemClock;
import com.google.firebase.sessions.settings.c;
import com.narvii.app.NVContext;
import com.narvii.model.ChatBubble;
import com.narvii.monetization.bubble.BubbleService;
import com.narvii.util.FileUtils;
import com.narvii.util.Log;
import com.narvii.util.Utils;
import com.narvii.util.ZipUtils;
import com.narvii.util.http.ProxyStack;
import com.narvii.volley.util.HurlConnectionHelper;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes9.dex */
public class BubbleDownloadTask extends AsyncTask<Void, Integer, File> {
    private static final String TAG = "BubbleDownloadTask";
    BubbleService bubbleService;
    protected HttpURLConnection conn;
    NVContext context;
    BubbleDownloadListener downloadListener;
    protected ChatBubble downloadingBubble;
    String error;
    protected OutputStream os = null;
    protected InputStream ins = null;

    public void cancelDownload() {
        cancel(true);
        HttpURLConnection httpURLConnection = this.conn;
        if (httpURLConnection != null) {
            try {
                httpURLConnection.disconnect();
            } catch (Exception unused) {
            }
            this.conn = null;
        }
        OutputStream outputStream = this.os;
        if (outputStream != null) {
            Utils.safeClose(outputStream);
            this.os = null;
        }
        InputStream inputStream = this.ins;
        if (inputStream != null) {
            Utils.safeClose(inputStream);
            this.ins = null;
        }
    }

    protected boolean check() {
        return true;
    }

    private File getBubbleEditDir(ChatBubble chatBubble) {
        File file = new File(this.bubbleService.editBubbleDir.getAbsolutePath() + c.FORWARD_SLASH_STRING + chatBubble.id());
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }

    private File getDir(ChatBubble chatBubble) {
        return new File(getEditDir(chatBubble), chatBubble.id());
    }

    private File getEditDir(ChatBubble chatBubble) {
        File file = new File(this.bubbleService.editBubbleDir.getAbsolutePath());
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }

    private File getEditDownloadedFile(ChatBubble chatBubble) {
        return new File(getEditDir(chatBubble), chatBubble.id() + ".zip");
    }

    private File getEditWritingFile(ChatBubble chatBubble) {
        return new File(getEditDir(chatBubble), chatBubble.id() + ".w");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public File doInBackground(Void... voidArr) {
        int contentLength;
        int i10;
        try {
            File editWritingFile = getEditWritingFile(this.downloadingBubble);
            File editDownloadedFile = getEditDownloadedFile(this.downloadingBubble);
            URL url = new URL(this.downloadingBubble.resourceUrl);
            this.conn = getProxyStack().createConnection(url);
            if (!check()) {
                BubbleDownloadListener bubbleDownloadListener = this.downloadListener;
                if (bubbleDownloadListener != null) {
                    bubbleDownloadListener.onDownloadFail("something wrong happened");
                }
                return null;
            }
            long length = editWritingFile.length();
            if (length > 0) {
                this.conn.addRequestProperty("Range", "bytes=" + length + "-");
                if (this.conn.getResponseCode() == 416) {
                    Log.w("gif download range not satisfiable (416)");
                    try {
                        this.conn.disconnect();
                    } catch (Exception unused) {
                    }
                    this.conn = getProxyStack().createConnection(url);
                } else {
                    String headerField = this.conn.getHeaderField("Content-Range");
                    if (headerField == null) {
                        headerField = "";
                    }
                    Matcher matcher = Pattern.compile("bytes (\\d+)-(\\d+)/(\\d+)", 2).matcher(headerField);
                    if (matcher.matches()) {
                        i10 = Integer.parseInt(matcher.group(1));
                        contentLength = Integer.parseInt(matcher.group(3));
                        if (i10 == length) {
                            this.os = new FileOutputStream(editWritingFile, true);
                        }
                    }
                }
                contentLength = 0;
                i10 = 0;
            } else {
                contentLength = 0;
                i10 = 0;
            }
            Log.d(TAG, "download bubble resource " + this.downloadingBubble.resourceUrl);
            this.ins = HurlConnectionHelper.getInputStream(this.conn);
            if (!check()) {
                return null;
            }
            if (this.os == null) {
                contentLength = this.conn.getContentLength();
                this.os = new FileOutputStream(editWritingFile);
                i10 = 0;
            }
            byte[] bArr = new byte[4096];
            long j6 = 0;
            while (true) {
                int i11 = this.ins.read(bArr);
                if (i11 == -1) {
                    this.os.close();
                    this.os = null;
                    this.ins.close();
                    this.ins = null;
                    this.conn.disconnect();
                    this.conn = null;
                    if (!editWritingFile.renameTo(editDownloadedFile)) {
                        Log.w("fail to move downloaded bubble Source " + editWritingFile);
                    }
                    File bubbleEditDir = getBubbleEditDir(this.downloadingBubble);
                    if (bubbleEditDir.isDirectory()) {
                        for (File file : bubbleEditDir.listFiles()) {
                            FileUtils.deleteFile(file);
                        }
                    }
                    File file2 = new File(bubbleEditDir.getParentFile(), bubbleEditDir.getName() + ".tmp");
                    FileUtils.deleteFile(file2);
                    if (editDownloadedFile.length() > 0) {
                        if (ZipUtils.extract(new FileInputStream(editDownloadedFile), file2)) {
                            FileUtils.deleteFile(bubbleEditDir);
                            if (!file2.renameTo(bubbleEditDir)) {
                                FileUtils.deleteFile(file2);
                                FileUtils.deleteFile(bubbleEditDir);
                                this.error = "unable to rename bubble dir";
                                break;
                            }
                            return bubbleEditDir;
                        }
                        FileUtils.deleteFile(file2);
                        this.error = "unable to unzip file";
                    }
                    return null;
                }
                if (this.conn == null) {
                    return null;
                }
                long jUptimeMillis = SystemClock.uptimeMillis();
                this.os.write(bArr, 0, i11);
                i10 += i11;
                publishProgress(Integer.valueOf(i10), Integer.valueOf(contentLength));
                if (jUptimeMillis > 20 + j6) {
                    j6 = jUptimeMillis;
                }
            }
            return null;
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (MalformedURLException e2) {
            e2.printStackTrace();
        } catch (IOException e6) {
            e6.printStackTrace();
        }
    }

    protected ProxyStack getProxyStack() {
        return this.bubbleService.getStack();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public void onPostExecute(File file) {
        if (file == null) {
            BubbleDownloadListener bubbleDownloadListener = this.downloadListener;
            if (bubbleDownloadListener != null) {
                bubbleDownloadListener.onDownloadFail("Download file fail");
            }
        } else {
            BubbleDownloadListener bubbleDownloadListener2 = this.downloadListener;
            if (bubbleDownloadListener2 != null) {
                bubbleDownloadListener2.onDownloadSuccess(this.downloadingBubble, file);
            }
        }
        super.onPostExecute(file);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public void onProgressUpdate(Integer... numArr) {
        BubbleDownloadListener bubbleDownloadListener = this.downloadListener;
        if (bubbleDownloadListener != null) {
            bubbleDownloadListener.onDownloadProgressUpdate(numArr[0].intValue(), numArr[1].intValue());
        }
        super.onProgressUpdate((Object[]) numArr);
    }

    public BubbleDownloadTask(NVContext nVContext, ChatBubble chatBubble, BubbleDownloadListener bubbleDownloadListener) {
        this.context = nVContext;
        this.bubbleService = (BubbleService) nVContext.getService("bubble");
        this.downloadingBubble = chatBubble;
        this.downloadListener = bubbleDownloadListener;
    }
}
