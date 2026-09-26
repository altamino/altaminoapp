package okio;

import java.io.RandomAccessFile;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public final class JvmFileHandle extends FileHandle {

    @NotNull
    private final RandomAccessFile randomAccessFile;

    @Override // okio.FileHandle
    protected synchronized void protectedClose() {
        this.randomAccessFile.close();
    }

    @Override // okio.FileHandle
    protected synchronized void protectedFlush() {
        this.randomAccessFile.getFD().sync();
    }

    @Override // okio.FileHandle
    protected synchronized int protectedRead(long j6, @NotNull byte[] array, int i10, int i11) {
        kotlin.jvm.internal.t.j(array, "array");
        this.randomAccessFile.seek(j6);
        int i12 = 0;
        while (i12 < i11) {
            int i13 = this.randomAccessFile.read(array, i10, i11 - i12);
            if (i13 == -1) {
                if (i12 != 0) {
                    break;
                }
                return -1;
            }
            i12 += i13;
        }
        return i12;
    }

    @Override // okio.FileHandle
    protected synchronized void protectedResize(long j6) {
        try {
            long size = size();
            long j10 = j6 - size;
            if (j10 > 0) {
                int i10 = (int) j10;
                protectedWrite(size, new byte[i10], 0, i10);
            } else {
                this.randomAccessFile.setLength(j6);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // okio.FileHandle
    protected synchronized long protectedSize() {
        return this.randomAccessFile.length();
    }

    @Override // okio.FileHandle
    protected synchronized void protectedWrite(long j6, @NotNull byte[] array, int i10, int i11) {
        kotlin.jvm.internal.t.j(array, "array");
        this.randomAccessFile.seek(j6);
        this.randomAccessFile.write(array, i10, i11);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public JvmFileHandle(boolean z6, @NotNull RandomAccessFile randomAccessFile) {
        super(z6);
        kotlin.jvm.internal.t.j(randomAccessFile, "randomAccessFile");
        this.randomAccessFile = randomAccessFile;
    }
}
