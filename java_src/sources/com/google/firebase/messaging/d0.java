package com.google.firebase.messaging;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;

/* JADX INFO: loaded from: classes7.dex */
public class d0 implements Closeable {
    private static final int MAX_IMAGE_SIZE_BYTES = 1048576;

    @Nullable
    private volatile Future<?> future;

    @Nullable
    private Task<Bitmap> task;
    private final URL url;

    public Bitmap d() throws IOException {
        if (Log.isLoggable(e.TAG, 4)) {
            Log.i(e.TAG, "Starting download of: " + this.url);
        }
        byte[] bArrH = h();
        Bitmap bitmapDecodeByteArray = BitmapFactory.decodeByteArray(bArrH, 0, bArrH.length);
        if (bitmapDecodeByteArray == null) {
            throw new IOException("Failed to decode image: " + this.url);
        }
        if (Log.isLoggable(e.TAG, 3)) {
            Log.d(e.TAG, "Successfully downloaded image: " + this.url);
        }
        return bitmapDecodeByteArray;
    }

    private byte[] h() throws IOException {
        URLConnection uRLConnectionOpenConnection = this.url.openConnection();
        if (uRLConnectionOpenConnection.getContentLength() > 1048576) {
            throw new IOException("Content-Length exceeds max size of 1048576");
        }
        InputStream inputStream = uRLConnectionOpenConnection.getInputStream();
        try {
            byte[] bArrD = b.d(b.b(inputStream, 1048577L));
            if (inputStream != null) {
                inputStream.close();
            }
            if (Log.isLoggable(e.TAG, 2)) {
                Log.v(e.TAG, "Downloaded " + bArrD.length + " bytes from " + this.url);
            }
            if (bArrD.length <= 1048576) {
                return bArrD;
            }
            throw new IOException("Image exceeds max size of 1048576");
        } catch (Throwable th) {
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.future.cancel(true);
    }

    public Task<Bitmap> k() {
        return (Task) Preconditions.checkNotNull(this.task);
    }

    public void m(ExecutorService executorService) {
        final TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        this.future = executorService.submit(new Runnable() { // from class: com.google.firebase.messaging.c0
            @Override // java.lang.Runnable
            public final void run() {
                this.f1565a.l(taskCompletionSource);
            }
        });
        this.task = taskCompletionSource.getTask();
    }

    private d0(URL url) {
        this.url = url;
    }

    @Nullable
    public static d0 i(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            return new d0(new URL(str));
        } catch (MalformedURLException unused) {
            Log.w(e.TAG, "Not downloading image, bad URL: " + str);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void l(TaskCompletionSource taskCompletionSource) {
        try {
            taskCompletionSource.setResult(d());
        } catch (Exception e) {
            taskCompletionSource.setException(e);
        }
    }
}
