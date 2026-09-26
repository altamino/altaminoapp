package com.bumptech.glide.util;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.IOException;
import java.io.InputStream;
import java.util.Queue;

/* JADX INFO: loaded from: classes8.dex */
public class d extends InputStream {
    private static final Queue<d> QUEUE = k.e(0);
    private IOException exception;
    private InputStream wrapped;

    @Nullable
    public IOException d() {
        return this.exception;
    }

    void f(@NonNull InputStream inputStream) {
        this.wrapped = inputStream;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) {
        try {
            return this.wrapped.read(bArr);
        } catch (IOException e) {
            this.exception = e;
            return -1;
        }
    }

    public void release() {
        this.exception = null;
        this.wrapped = null;
        Queue<d> queue = QUEUE;
        synchronized (queue) {
            queue.offer(this);
        }
    }

    @Override // java.io.InputStream
    public synchronized void reset() throws IOException {
        this.wrapped.reset();
    }

    @NonNull
    public static d e(@NonNull InputStream inputStream) {
        d dVarPoll;
        Queue<d> queue = QUEUE;
        synchronized (queue) {
            dVarPoll = queue.poll();
        }
        if (dVarPoll == null) {
            dVarPoll = new d();
        }
        dVarPoll.f(inputStream);
        return dVarPoll;
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        return this.wrapped.available();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.wrapped.close();
    }

    @Override // java.io.InputStream
    public void mark(int i10) {
        this.wrapped.mark(i10);
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return this.wrapped.markSupported();
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i10, int i11) {
        try {
            return this.wrapped.read(bArr, i10, i11);
        } catch (IOException e) {
            this.exception = e;
            return -1;
        }
    }

    @Override // java.io.InputStream
    public long skip(long j6) {
        try {
            return this.wrapped.skip(j6);
        } catch (IOException e) {
            this.exception = e;
            return 0L;
        }
    }

    d() {
    }

    @Override // java.io.InputStream
    public int read() {
        try {
            return this.wrapped.read();
        } catch (IOException e) {
            this.exception = e;
            return -1;
        }
    }
}
