package androidx.media3.common.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes7.dex */
@UnstableApi
public final class AtomicFile {
    private static final String TAG = "AtomicFile";
    private final File backupName;
    private final File baseName;

    private static final class AtomicFileOutputStream extends OutputStream {
        private boolean closed = false;
        private final FileOutputStream fileOutputStream;

        @Override // java.io.OutputStream
        public void write(int i10) throws IOException {
            this.fileOutputStream.write(i10);
        }

        @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (this.closed) {
                return;
            }
            this.closed = true;
            flush();
            try {
                this.fileOutputStream.getFD().sync();
            } catch (IOException e) {
                Log.j(AtomicFile.TAG, "Failed to sync file descriptor:", e);
            }
            this.fileOutputStream.close();
        }

        @Override // java.io.OutputStream, java.io.Flushable
        public void flush() throws IOException {
            this.fileOutputStream.flush();
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr) throws IOException {
            this.fileOutputStream.write(bArr);
        }

        public AtomicFileOutputStream(File file) throws FileNotFoundException {
            this.fileOutputStream = new FileOutputStream(file);
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr, int i10, int i11) throws IOException {
            this.fileOutputStream.write(bArr, i10, i11);
        }
    }

    private void e() {
        if (this.backupName.exists()) {
            this.baseName.delete();
            this.backupName.renameTo(this.baseName);
        }
    }

    public void a() {
        this.baseName.delete();
        this.backupName.delete();
    }

    public boolean c() {
        return this.baseName.exists() || this.backupName.exists();
    }

    public OutputStream f() throws IOException {
        if (this.baseName.exists()) {
            if (this.backupName.exists()) {
                this.baseName.delete();
            } else if (!this.baseName.renameTo(this.backupName)) {
                Log.i(TAG, "Couldn't rename file " + this.baseName + " to backup file " + this.backupName);
            }
        }
        try {
            return new AtomicFileOutputStream(this.baseName);
        } catch (FileNotFoundException e) {
            File parentFile = this.baseName.getParentFile();
            if (parentFile == null || !parentFile.mkdirs()) {
                throw new IOException("Couldn't create " + this.baseName, e);
            }
            try {
                return new AtomicFileOutputStream(this.baseName);
            } catch (FileNotFoundException e2) {
                throw new IOException("Couldn't create " + this.baseName, e2);
            }
        }
    }

    public AtomicFile(File file) {
        this.baseName = file;
        this.backupName = new File(file.getPath() + ".bak");
    }

    public void b(OutputStream outputStream) throws IOException {
        outputStream.close();
        this.backupName.delete();
    }

    public InputStream d() throws FileNotFoundException {
        e();
        return new FileInputStream(this.baseName);
    }
}
