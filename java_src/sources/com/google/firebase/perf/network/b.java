package com.google.firebase.perf.network;

import com.google.firebase.perf.util.Timer;
import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes11.dex */
public final class b extends OutputStream {
    long bytesWritten = -1;
    com.google.firebase.perf.metrics.h networkMetricBuilder;
    private final OutputStream outputStream;
    private final Timer timer;

    @Override // java.io.OutputStream
    public void write(int i10) throws IOException {
        try {
            this.outputStream.write(i10);
            long j6 = this.bytesWritten + 1;
            this.bytesWritten = j6;
            this.networkMetricBuilder.s(j6);
        } catch (IOException e) {
            this.networkMetricBuilder.x(this.timer.g());
            j.d(this.networkMetricBuilder);
            throw e;
        }
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        long j6 = this.bytesWritten;
        if (j6 != -1) {
            this.networkMetricBuilder.s(j6);
        }
        this.networkMetricBuilder.w(this.timer.g());
        try {
            this.outputStream.close();
        } catch (IOException e) {
            this.networkMetricBuilder.x(this.timer.g());
            j.d(this.networkMetricBuilder);
            throw e;
        }
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
        try {
            this.outputStream.flush();
        } catch (IOException e) {
            this.networkMetricBuilder.x(this.timer.g());
            j.d(this.networkMetricBuilder);
            throw e;
        }
    }

    public b(OutputStream outputStream, com.google.firebase.perf.metrics.h hVar, Timer timer) {
        this.outputStream = outputStream;
        this.networkMetricBuilder = hVar;
        this.timer = timer;
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) throws IOException {
        try {
            this.outputStream.write(bArr);
            long length = this.bytesWritten + ((long) bArr.length);
            this.bytesWritten = length;
            this.networkMetricBuilder.s(length);
        } catch (IOException e) {
            this.networkMetricBuilder.x(this.timer.g());
            j.d(this.networkMetricBuilder);
            throw e;
        }
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i10, int i11) throws IOException {
        try {
            this.outputStream.write(bArr, i10, i11);
            long j6 = this.bytesWritten + ((long) i11);
            this.bytesWritten = j6;
            this.networkMetricBuilder.s(j6);
        } catch (IOException e) {
            this.networkMetricBuilder.x(this.timer.g());
            j.d(this.networkMetricBuilder);
            throw e;
        }
    }
}
