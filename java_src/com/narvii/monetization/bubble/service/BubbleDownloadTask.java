package com.narvii.monetization.bubble.service;

import android.os.AsyncTask;
import com.narvii.app.NVContext;
import com.narvii.model.ChatBubble;
import com.narvii.monetization.bubble.BubbleService;
import com.narvii.util.Utils;
import com.narvii.util.http.ProxyStack;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;

/* loaded from: classes3.dex */
public class BubbleDownloadTask extends AsyncTask<Void, Integer, File> {
    private static final String TAG = BubbleDownloadTask.class.getSimpleName();
    BubbleService bubbleService;
    protected HttpURLConnection conn;
    NVContext context;
    BubbleDownloadListener downloadListener;
    protected ChatBubble downloadingBubble;
    String error;
    protected OutputStream os = null;
    protected InputStream ins = null;

    protected boolean check() {
        return true;
    }

    public BubbleDownloadTask(NVContext nVContext, ChatBubble chatBubble, BubbleDownloadListener bubbleDownloadListener) {
        this.context = nVContext;
        this.bubbleService = (BubbleService) nVContext.getService("bubble");
        this.downloadingBubble = chatBubble;
        this.downloadListener = bubbleDownloadListener;
    }

    public void cancelDownload() throws IOException {
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

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00e1 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00e2 A[Catch: IOException -> 0x01ca, FileNotFoundException -> 0x01cf, MalformedURLException -> 0x01d4, TryCatch #3 {FileNotFoundException -> 0x01cf, MalformedURLException -> 0x01d4, IOException -> 0x01ca, blocks: (B:3:0x0003, B:5:0x0028, B:7:0x002c, B:9:0x0034, B:11:0x0041, B:13:0x0068, B:15:0x0072, B:16:0x007d, B:19:0x0089, B:21:0x0099, B:23:0x00af, B:25:0x00b9, B:28:0x00e2, B:30:0x00e6, B:31:0x00f4, B:32:0x00f9, B:34:0x0102, B:37:0x0107, B:41:0x012d, B:43:0x0148, B:44:0x015c, B:46:0x0168, B:48:0x016f, B:49:0x0177, B:51:0x01a2, B:53:0x01ad, B:56:0x01b7, B:57:0x01c2), top: B:69:0x0003 }] */
    @Override // android.os.AsyncTask
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.io.File doInBackground(java.lang.Void... r18) throws java.lang.NumberFormatException, java.io.IOException {
        /*
            Method dump skipped, instructions count: 473
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.monetization.bubble.service.BubbleDownloadTask.doInBackground(java.lang.Void[]):java.io.File");
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
        super.onPostExecute((BubbleDownloadTask) file);
    }

    protected ProxyStack getProxyStack() {
        return this.bubbleService.getStack();
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

    private File getBubbleEditDir(ChatBubble chatBubble) {
        File file = new File(this.bubbleService.editBubbleDir.getAbsolutePath() + "/" + chatBubble.id());
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }

    private File getEditWritingFile(ChatBubble chatBubble) {
        return new File(getEditDir(chatBubble), chatBubble.id() + ".w");
    }

    private File getEditDownloadedFile(ChatBubble chatBubble) {
        return new File(getEditDir(chatBubble), chatBubble.id() + ".zip");
    }
}
