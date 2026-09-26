package org.apache.commons.compress.utils;

import android.support.v4.media.session.PlaybackStateCompat;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.channels.ReadableByteChannel;

/* JADX INFO: loaded from: classes9.dex */
public final class IOUtils {
    private static final int COPY_BUF_SIZE = 8024;
    private static final byte[] SKIP_BUF = new byte[4096];
    private static final int SKIP_BUF_SIZE = 4096;

    public static long copy(InputStream inputStream, OutputStream outputStream) throws IOException {
        return copy(inputStream, outputStream, COPY_BUF_SIZE);
    }

    public static int readFully(InputStream inputStream, byte[] bArr) throws IOException {
        return readFully(inputStream, bArr, 0, bArr.length);
    }

    public static long skip(InputStream inputStream, long j6) throws IOException {
        int fully;
        long j10 = j6;
        while (j10 > 0) {
            long jSkip = inputStream.skip(j10);
            if (jSkip == 0) {
                break;
            }
            j10 -= jSkip;
        }
        while (j10 > 0 && (fully = readFully(inputStream, SKIP_BUF, 0, (int) Math.min(j10, PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM))) >= 1) {
            j10 -= (long) fully;
        }
        return j6 - j10;
    }

    public static void closeQuietly(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException unused) {
            }
        }
    }

    public static long copy(InputStream inputStream, OutputStream outputStream, int i10) throws IOException {
        byte[] bArr = new byte[i10];
        long j6 = 0;
        while (true) {
            int i11 = inputStream.read(bArr);
            if (-1 == i11) {
                return j6;
            }
            outputStream.write(bArr, 0, i11);
            j6 += (long) i11;
        }
    }

    public static int readFully(InputStream inputStream, byte[] bArr, int i10, int i11) throws IOException {
        if (i11 < 0 || i10 < 0 || i11 + i10 > bArr.length) {
            throw new IndexOutOfBoundsException();
        }
        int i12 = 0;
        while (i12 != i11) {
            int i13 = inputStream.read(bArr, i10 + i12, i11 - i12);
            if (i13 == -1) {
                break;
            }
            i12 += i13;
        }
        return i12;
    }

    public static byte[] toByteArray(InputStream inputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        copy(inputStream, byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }

    private IOUtils() {
    }

    public static void readFully(ReadableByteChannel readableByteChannel, ByteBuffer byteBuffer) throws IOException {
        int iRemaining = byteBuffer.remaining();
        int i10 = 0;
        while (i10 < iRemaining) {
            int i11 = readableByteChannel.read(byteBuffer);
            if (i11 <= 0) {
                break;
            } else {
                i10 += i11;
            }
        }
        if (i10 < iRemaining) {
            throw new EOFException();
        }
    }
}
