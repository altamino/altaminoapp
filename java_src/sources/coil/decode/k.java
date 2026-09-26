package coil.decode;

import java.io.IOException;
import java.io.InputStream;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
final class k extends InputStream {
    private int availableBytes = 1073741824;

    @NotNull
    private final InputStream delegate;

    private final int a(int i10) {
        if (i10 == -1) {
            this.availableBytes = 0;
        }
        return i10;
    }

    @Override // java.io.InputStream
    public int available() {
        return this.availableBytes;
    }

    @Override // java.io.InputStream
    public int read() {
        return a(this.delegate.read());
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.delegate.close();
    }

    @Override // java.io.InputStream
    public int read(@NotNull byte[] bArr) {
        return a(this.delegate.read(bArr));
    }

    @Override // java.io.InputStream
    public long skip(long j6) {
        return this.delegate.skip(j6);
    }

    public k(@NotNull InputStream inputStream) {
        this.delegate = inputStream;
    }

    @Override // java.io.InputStream
    public int read(@NotNull byte[] bArr, int i10, int i11) {
        return a(this.delegate.read(bArr, i10, i11));
    }
}
