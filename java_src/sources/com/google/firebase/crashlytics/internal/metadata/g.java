package com.google.firebase.crashlytics.internal.metadata;

import android.support.v4.media.session.PlaybackStateCompat;
import java.io.Closeable;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.nio.channels.FileChannel;
import java.util.NoSuchElementException;
import java.util.logging.Level;
import java.util.logging.Logger;

/* JADX INFO: loaded from: classes4.dex */
class g implements Closeable {
    static final int HEADER_LENGTH = 16;
    private static final int INITIAL_LENGTH = 4096;
    private static final Logger LOGGER = Logger.getLogger(g.class.getName());
    private final byte[] buffer = new byte[16];
    private int elementCount;
    int fileLength;
    private b first;
    private b last;
    private final RandomAccessFile raf;

    class a implements d {
        boolean first = true;
        final /* synthetic */ StringBuilder val$builder;

        a(StringBuilder sb) {
            this.val$builder = sb;
        }

        @Override // com.google.firebase.crashlytics.internal.metadata.g.d
        public void a(InputStream inputStream, int i10) throws IOException {
            if (this.first) {
                this.first = false;
            } else {
                this.val$builder.append(", ");
            }
            this.val$builder.append(i10);
        }
    }

    static class b {
        static final int HEADER_LENGTH = 4;
        static final b NULL = new b(0, 0);
        final int length;
        final int position;

        public String toString() {
            return getClass().getSimpleName() + "[position = " + this.position + ", length = " + this.length + "]";
        }

        b(int i10, int i11) {
            this.position = i10;
            this.length = i11;
        }
    }

    private final class c extends InputStream {
        private int position;
        private int remaining;

        /* synthetic */ c(g gVar, b bVar, a aVar) {
            this(bVar);
        }

        @Override // java.io.InputStream
        public int read(byte[] bArr, int i10, int i11) throws IOException {
            g.m(bArr, "buffer");
            if ((i10 | i11) < 0 || i11 > bArr.length - i10) {
                throw new ArrayIndexOutOfBoundsException();
            }
            int i12 = this.remaining;
            if (i12 <= 0) {
                return -1;
            }
            if (i11 > i12) {
                i11 = i12;
            }
            g.this.O(this.position, bArr, i10, i11);
            this.position = g.this.g0(this.position + i11);
            this.remaining -= i11;
            return i11;
        }

        private c(b bVar) {
            this.position = g.this.g0(bVar.position + 4);
            this.remaining = bVar.length;
        }

        @Override // java.io.InputStream
        public int read() throws IOException {
            if (this.remaining == 0) {
                return -1;
            }
            g.this.raf.seek(this.position);
            int i10 = g.this.raf.read();
            this.position = g.this.g0(this.position + 1);
            this.remaining--;
            return i10;
        }
    }

    public interface d {
        void a(InputStream inputStream, int i10) throws IOException;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int g0(int i10) {
        int i11 = this.fileLength;
        return i10 < i11 ? i10 : (i10 + 16) - i11;
    }

    private static void y0(byte[] bArr, int... iArr) {
        int i10 = 0;
        for (int i11 : iArr) {
            t0(bArr, i10, i11);
            i10 += 4;
        }
    }

    public synchronized void L() throws IOException {
        try {
            if (l()) {
                throw new NoSuchElementException();
            }
            if (this.elementCount == 1) {
                h();
            } else {
                b bVar = this.first;
                int iG0 = g0(bVar.position + 4 + bVar.length);
                O(iG0, this.buffer, 0, 4);
                int iQ = q(this.buffer, 0);
                k0(this.fileLength, this.elementCount - 1, iG0, this.last.position);
                this.elementCount--;
                this.first = new b(iG0, iQ);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() throws IOException {
        this.raf.close();
    }

    public void f(byte[] bArr) throws IOException {
        g(bArr, 0, bArr.length);
    }

    public synchronized void g(byte[] bArr, int i10, int i11) throws IOException {
        int iG0;
        try {
            m(bArr, "buffer");
            if ((i10 | i11) < 0 || i11 > bArr.length - i10) {
                throw new IndexOutOfBoundsException();
            }
            i(i11);
            boolean zL = l();
            if (zL) {
                iG0 = 16;
            } else {
                b bVar = this.last;
                iG0 = g0(bVar.position + 4 + bVar.length);
            }
            b bVar2 = new b(iG0, i11);
            t0(this.buffer, 0, i11);
            Q(bVar2.position, this.buffer, 0, 4);
            Q(bVar2.position + 4, bArr, i10, i11);
            k0(this.fileLength, this.elementCount + 1, zL ? bVar2.position : this.first.position, bVar2.position);
            this.last = bVar2;
            this.elementCount++;
            if (zL) {
                this.first = bVar2;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized void h() throws IOException {
        try {
            k0(4096, 0, 0, 0);
            this.elementCount = 0;
            b bVar = b.NULL;
            this.first = bVar;
            this.last = bVar;
            if (this.fileLength > 4096) {
                U(4096);
            }
            this.fileLength = 4096;
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized void j(d dVar) throws IOException {
        int iG0 = this.first.position;
        for (int i10 = 0; i10 < this.elementCount; i10++) {
            b bVarO = o(iG0);
            dVar.a(new c(this, bVarO, null), bVarO.length);
            iG0 = g0(bVarO.position + 4 + bVarO.length);
        }
    }

    public synchronized boolean l() {
        return this.elementCount == 0;
    }

    private void U(int i10) throws IOException {
        this.raf.setLength(i10);
        this.raf.getChannel().force(true);
    }

    private void i(int i10) throws IOException {
        int i11 = i10 + 4;
        int iR = r();
        if (iR >= i11) {
            return;
        }
        int i12 = this.fileLength;
        do {
            iR += i12;
            i12 <<= 1;
        } while (iR < i11);
        U(i12);
        b bVar = this.last;
        int iG0 = g0(bVar.position + 4 + bVar.length);
        if (iG0 < this.first.position) {
            FileChannel channel = this.raf.getChannel();
            channel.position(this.fileLength);
            long j6 = iG0 - 4;
            if (channel.transferTo(16L, j6, channel) != j6) {
                throw new AssertionError("Copied insufficient number of bytes!");
            }
        }
        int i13 = this.last.position;
        int i14 = this.first.position;
        if (i13 < i14) {
            int i15 = (this.fileLength + i13) - 16;
            k0(i12, this.elementCount, i14, i15);
            this.last = new b(i15, this.last.length);
        } else {
            k0(i12, this.elementCount, i14, i13);
        }
        this.fileLength = i12;
    }

    private static void k(File file) throws IOException {
        File file2 = new File(file.getPath() + ".tmp");
        RandomAccessFile randomAccessFileN = n(file2);
        try {
            randomAccessFileN.setLength(PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM);
            randomAccessFileN.seek(0L);
            byte[] bArr = new byte[16];
            y0(bArr, 4096, 0, 0, 0);
            randomAccessFileN.write(bArr);
            randomAccessFileN.close();
            if (!file2.renameTo(file)) {
                throw new IOException("Rename failed!");
            }
        } catch (Throwable th) {
            randomAccessFileN.close();
            throw th;
        }
    }

    private void k0(int i10, int i11, int i12, int i13) throws IOException {
        y0(this.buffer, i10, i11, i12, i13);
        this.raf.seek(0L);
        this.raf.write(this.buffer);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <T> T m(T t5, String str) {
        if (t5 != null) {
            return t5;
        }
        throw new NullPointerException(str);
    }

    private static RandomAccessFile n(File file) throws FileNotFoundException {
        return new RandomAccessFile(file, "rwd");
    }

    private b o(int i10) throws IOException {
        if (i10 == 0) {
            return b.NULL;
        }
        this.raf.seek(i10);
        return new b(i10, this.raf.readInt());
    }

    private void p() throws IOException {
        this.raf.seek(0L);
        this.raf.readFully(this.buffer);
        int iQ = q(this.buffer, 0);
        this.fileLength = iQ;
        if (iQ <= this.raf.length()) {
            this.elementCount = q(this.buffer, 4);
            int iQ2 = q(this.buffer, 8);
            int iQ3 = q(this.buffer, 12);
            this.first = o(iQ2);
            this.last = o(iQ3);
            return;
        }
        throw new IOException("File is truncated. Expected length: " + this.fileLength + ", Actual length: " + this.raf.length());
    }

    private static int q(byte[] bArr, int i10) {
        return ((bArr[i10] & 255) << 24) + ((bArr[i10 + 1] & 255) << 16) + ((bArr[i10 + 2] & 255) << 8) + (bArr[i10 + 3] & 255);
    }

    private int r() {
        return this.fileLength - b0();
    }

    private static void t0(byte[] bArr, int i10, int i11) {
        bArr[i10] = (byte) (i11 >> 24);
        bArr[i10 + 1] = (byte) (i11 >> 16);
        bArr[i10 + 2] = (byte) (i11 >> 8);
        bArr[i10 + 3] = (byte) i11;
    }

    public int b0() {
        if (this.elementCount == 0) {
            return 16;
        }
        b bVar = this.last;
        int i10 = bVar.position;
        int i11 = this.first.position;
        return i10 >= i11 ? (i10 - i11) + 4 + bVar.length + 16 : (((i10 + 4) + bVar.length) + this.fileLength) - i11;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append(kotlinx.serialization.json.internal.b.BEGIN_LIST);
        sb.append("fileLength=");
        sb.append(this.fileLength);
        sb.append(", size=");
        sb.append(this.elementCount);
        sb.append(", first=");
        sb.append(this.first);
        sb.append(", last=");
        sb.append(this.last);
        sb.append(", element lengths=[");
        try {
            j(new a(sb));
        } catch (IOException e) {
            LOGGER.log(Level.WARNING, "read error", (Throwable) e);
        }
        sb.append("]]");
        return sb.toString();
    }

    public g(File file) throws IOException {
        if (!file.exists()) {
            k(file);
        }
        this.raf = n(file);
        p();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void O(int i10, byte[] bArr, int i11, int i12) throws IOException {
        int iG0 = g0(i10);
        int i13 = iG0 + i12;
        int i14 = this.fileLength;
        if (i13 <= i14) {
            this.raf.seek(iG0);
            this.raf.readFully(bArr, i11, i12);
            return;
        }
        int i15 = i14 - iG0;
        this.raf.seek(iG0);
        this.raf.readFully(bArr, i11, i15);
        this.raf.seek(16L);
        this.raf.readFully(bArr, i11 + i15, i12 - i15);
    }

    private void Q(int i10, byte[] bArr, int i11, int i12) throws IOException {
        int iG0 = g0(i10);
        int i13 = iG0 + i12;
        int i14 = this.fileLength;
        if (i13 <= i14) {
            this.raf.seek(iG0);
            this.raf.write(bArr, i11, i12);
            return;
        }
        int i15 = i14 - iG0;
        this.raf.seek(iG0);
        this.raf.write(bArr, i11, i15);
        this.raf.seek(16L);
        this.raf.write(bArr, i11 + i15, i12 - i15);
    }
}
