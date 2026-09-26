package com.narvii.util;

import android.os.SystemClock;
import android.support.v4.media.session.PlaybackStateCompat;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes8.dex */
public class SafeFileOutputStream extends OutputStream {
    private FileOutputStream fos;
    private File target;
    private File tmp;

    public SafeFileOutputStream(File file) throws IOException {
        this(file, file.getParentFile());
    }

    public boolean close(boolean z6, boolean z10) throws IOException {
        this.fos.close();
        File file = this.tmp;
        if (file == null) {
            return true;
        }
        if (!z6) {
            file.delete();
            this.tmp = null;
            return false;
        }
        if (z10 && this.target.isFile()) {
            File file2 = this.target;
            file2.renameTo(getBakFile(file2));
        }
        if (this.tmp.renameTo(this.target)) {
            this.tmp = null;
            return true;
        }
        throw new IOException("unable to move tmp file from " + this.tmp + " to " + this.target);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i10, int i11) throws IOException {
        try {
            this.fos.write(bArr, i10, i11);
        } catch (IOException e) {
            if (this.tmp != null) {
                this.fos.close();
                this.tmp.delete();
                this.tmp = null;
            }
            throw e;
        }
    }

    public SafeFileOutputStream(File file, File file2) throws IOException {
        this.target = file;
        for (int i10 = 0; i10 < 10; i10++) {
            File file3 = new File(file2, Long.toHexString((SystemClock.elapsedRealtime() + ((long) i10)) % PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH));
            if (!file3.exists()) {
                this.tmp = file3;
                break;
            }
        }
        if (this.tmp == null) {
            throw new IOException("no useable tmp file");
        }
        this.fos = new FileOutputStream(this.tmp);
    }

    public static File getBakFile(File file) {
        return new File(file.getParentFile(), file.getName() + ".bak");
    }

    public void abort() {
        if (this.tmp != null) {
            try {
                this.fos.close();
            } catch (Exception unused) {
            }
            this.tmp.delete();
            this.tmp = null;
        }
    }

    @Override // java.io.OutputStream
    public void write(int i10) throws IOException {
        try {
            this.fos.write(i10);
        } catch (IOException e) {
            if (this.tmp != null) {
                this.fos.close();
                this.tmp.delete();
                this.tmp = null;
            }
            throw e;
        }
    }

    public void close(boolean z6) throws IOException {
        close(z6, false);
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        close(true);
    }
}
