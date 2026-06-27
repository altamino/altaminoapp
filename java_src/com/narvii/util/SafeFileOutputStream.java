package com.narvii.util;

import android.os.SystemClock;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;

/* loaded from: classes.dex */
public class SafeFileOutputStream extends OutputStream {
    private FileOutputStream fos;
    private File target;
    private File tmp;

    public SafeFileOutputStream(File file) throws IOException {
        this(file, file.getParentFile());
    }

    public SafeFileOutputStream(File file, File file2) throws IOException {
        this.target = file;
        int i = 0;
        while (true) {
            if (i >= 10) {
                break;
            }
            File file3 = new File(file2, Long.toHexString((SystemClock.elapsedRealtime() + i) % 65536));
            if (!file3.exists()) {
                this.tmp = file3;
                break;
            }
            i++;
        }
        File file4 = this.tmp;
        if (file4 == null) {
            throw new IOException("no useable tmp file");
        }
        this.fos = new FileOutputStream(file4);
    }

    public void abort() throws IOException {
        if (this.tmp != null) {
            try {
                this.fos.close();
            } catch (Exception unused) {
            }
            this.tmp.delete();
            this.tmp = null;
        }
    }

    public static File getBakFile(File file) {
        return new File(file.getParentFile(), file.getName() + ".bak");
    }

    public boolean close(boolean z, boolean z2) throws IOException {
        this.fos.close();
        File file = this.tmp;
        if (file == null) {
            return true;
        }
        if (z) {
            if (z2 && this.target.isFile()) {
                File file2 = this.target;
                file2.renameTo(getBakFile(file2));
            }
            if (this.tmp.renameTo(this.target)) {
                this.tmp = null;
                return true;
            }
            throw new IOException("unable to move tmp file from " + this.tmp + " to " + this.target);
        }
        file.delete();
        this.tmp = null;
        return false;
    }

    public void close(boolean z) throws IOException {
        close(z, false);
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        close(true);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws IOException {
        try {
            this.fos.write(bArr, i, i2);
        } catch (IOException e) {
            if (this.tmp != null) {
                this.fos.close();
                this.tmp.delete();
                this.tmp = null;
            }
            throw e;
        }
    }

    @Override // java.io.OutputStream
    public void write(int i) throws IOException {
        try {
            this.fos.write(i);
        } catch (IOException e) {
            if (this.tmp != null) {
                this.fos.close();
                this.tmp.delete();
                this.tmp = null;
            }
            throw e;
        }
    }
}
