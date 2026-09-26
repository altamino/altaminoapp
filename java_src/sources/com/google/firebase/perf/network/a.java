package com.google.firebase.perf.network;

import com.google.firebase.perf.util.Timer;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes11.dex */
public final class a extends InputStream {
    private final InputStream inputStream;
    private final com.google.firebase.perf.metrics.h networkMetricBuilder;
    private long timeToResponseInitiated;
    private final Timer timer;
    private long bytesRead = -1;
    private long timeToResponseLastRead = -1;

    @Override // java.io.InputStream
    public int read() throws IOException {
        try {
            int i10 = this.inputStream.read();
            long jG = this.timer.g();
            if (this.timeToResponseInitiated == -1) {
                this.timeToResponseInitiated = jG;
            }
            if (i10 == -1 && this.timeToResponseLastRead == -1) {
                this.timeToResponseLastRead = jG;
                this.networkMetricBuilder.x(jG);
                this.networkMetricBuilder.c();
            } else {
                long j6 = this.bytesRead + 1;
                this.bytesRead = j6;
                this.networkMetricBuilder.v(j6);
            }
            return i10;
        } catch (IOException e) {
            this.networkMetricBuilder.x(this.timer.g());
            j.d(this.networkMetricBuilder);
            throw e;
        }
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        try {
            return this.inputStream.available();
        } catch (IOException e) {
            this.networkMetricBuilder.x(this.timer.g());
            j.d(this.networkMetricBuilder);
            throw e;
        }
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        long jG = this.timer.g();
        if (this.timeToResponseLastRead == -1) {
            this.timeToResponseLastRead = jG;
        }
        try {
            this.inputStream.close();
            long j6 = this.bytesRead;
            if (j6 != -1) {
                this.networkMetricBuilder.v(j6);
            }
            long j10 = this.timeToResponseInitiated;
            if (j10 != -1) {
                this.networkMetricBuilder.y(j10);
            }
            this.networkMetricBuilder.x(this.timeToResponseLastRead);
            this.networkMetricBuilder.c();
        } catch (IOException e) {
            this.networkMetricBuilder.x(this.timer.g());
            j.d(this.networkMetricBuilder);
            throw e;
        }
    }

    @Override // java.io.InputStream
    public void mark(int i10) {
        this.inputStream.mark(i10);
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return this.inputStream.markSupported();
    }

    @Override // java.io.InputStream
    public void reset() throws IOException {
        try {
            this.inputStream.reset();
        } catch (IOException e) {
            this.networkMetricBuilder.x(this.timer.g());
            j.d(this.networkMetricBuilder);
            throw e;
        }
    }

    @Override // java.io.InputStream
    public long skip(long j6) throws IOException {
        try {
            long jSkip = this.inputStream.skip(j6);
            long jG = this.timer.g();
            if (this.timeToResponseInitiated == -1) {
                this.timeToResponseInitiated = jG;
            }
            if (jSkip == -1 && this.timeToResponseLastRead == -1) {
                this.timeToResponseLastRead = jG;
                this.networkMetricBuilder.x(jG);
            } else {
                long j10 = this.bytesRead + jSkip;
                this.bytesRead = j10;
                this.networkMetricBuilder.v(j10);
            }
            return jSkip;
        } catch (IOException e) {
            this.networkMetricBuilder.x(this.timer.g());
            j.d(this.networkMetricBuilder);
            throw e;
        }
    }

    public a(InputStream inputStream, com.google.firebase.perf.metrics.h hVar, Timer timer) {
        this.timer = timer;
        this.inputStream = inputStream;
        this.networkMetricBuilder = hVar;
        this.timeToResponseInitiated = hVar.h();
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        try {
            int i12 = this.inputStream.read(bArr, i10, i11);
            long jG = this.timer.g();
            if (this.timeToResponseInitiated == -1) {
                this.timeToResponseInitiated = jG;
            }
            if (i12 == -1 && this.timeToResponseLastRead == -1) {
                this.timeToResponseLastRead = jG;
                this.networkMetricBuilder.x(jG);
                this.networkMetricBuilder.c();
            } else {
                long j6 = this.bytesRead + ((long) i12);
                this.bytesRead = j6;
                this.networkMetricBuilder.v(j6);
            }
            return i12;
        } catch (IOException e) {
            this.networkMetricBuilder.x(this.timer.g());
            j.d(this.networkMetricBuilder);
            throw e;
        }
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        try {
            int i10 = this.inputStream.read(bArr);
            long jG = this.timer.g();
            if (this.timeToResponseInitiated == -1) {
                this.timeToResponseInitiated = jG;
            }
            if (i10 == -1 && this.timeToResponseLastRead == -1) {
                this.timeToResponseLastRead = jG;
                this.networkMetricBuilder.x(jG);
                this.networkMetricBuilder.c();
            } else {
                long j6 = this.bytesRead + ((long) i10);
                this.bytesRead = j6;
                this.networkMetricBuilder.v(j6);
            }
            return i10;
        } catch (IOException e) {
            this.networkMetricBuilder.x(this.timer.g());
            j.d(this.networkMetricBuilder);
            throw e;
        }
    }
}
