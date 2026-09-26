package com.google.firebase.messaging;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayDeque;
import java.util.Arrays;
import java.util.Queue;

/* JADX INFO: loaded from: classes8.dex */
final class b {
    private static final int BUFFER_SIZE = 8192;
    private static final int MAX_ARRAY_LEN = 2147483639;
    private static final int TO_BYTE_ARRAY_DEQUE_SIZE = 20;

    private static final class a extends FilterInputStream {
        private long left;
        private long mark;

        @Override // java.io.FilterInputStream, java.io.InputStream
        public synchronized void mark(int i10) {
            ((FilterInputStream) this).in.mark(i10);
            this.mark = this.left;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public int read() throws IOException {
            if (this.left == 0) {
                return -1;
            }
            int i10 = ((FilterInputStream) this).in.read();
            if (i10 != -1) {
                this.left--;
            }
            return i10;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public synchronized void reset() throws IOException {
            if (!((FilterInputStream) this).in.markSupported()) {
                throw new IOException("Mark not supported");
            }
            if (this.mark == -1) {
                throw new IOException("Mark not set");
            }
            ((FilterInputStream) this).in.reset();
            this.left = this.mark;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public int available() throws IOException {
            return (int) Math.min(((FilterInputStream) this).in.available(), this.left);
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public int read(byte[] bArr, int i10, int i11) throws IOException {
            long j6 = this.left;
            if (j6 == 0) {
                return -1;
            }
            int i12 = ((FilterInputStream) this).in.read(bArr, i10, (int) Math.min(i11, j6));
            if (i12 != -1) {
                this.left -= (long) i12;
            }
            return i12;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public long skip(long j6) throws IOException {
            long jSkip = ((FilterInputStream) this).in.skip(Math.min(j6, this.left));
            this.left -= jSkip;
            return jSkip;
        }

        a(InputStream inputStream, long j6) {
            super(inputStream);
            this.mark = -1L;
            this.left = j6;
        }
    }

    private static int c(long j6) {
        if (j6 > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        if (j6 < -2147483648L) {
            return Integer.MIN_VALUE;
        }
        return (int) j6;
    }

    public static InputStream b(InputStream inputStream, long j6) {
        return new a(inputStream, j6);
    }

    public static byte[] d(InputStream inputStream) throws IOException {
        return e(inputStream, new ArrayDeque(20), 0);
    }

    private static byte[] a(Queue<byte[]> queue, int i10) {
        if (queue.isEmpty()) {
            return new byte[0];
        }
        byte[] bArrRemove = queue.remove();
        if (bArrRemove.length == i10) {
            return bArrRemove;
        }
        int length = i10 - bArrRemove.length;
        byte[] bArrCopyOf = Arrays.copyOf(bArrRemove, i10);
        while (length > 0) {
            byte[] bArrRemove2 = queue.remove();
            int iMin = Math.min(length, bArrRemove2.length);
            System.arraycopy(bArrRemove2, 0, bArrCopyOf, i10 - length, iMin);
            length -= iMin;
        }
        return bArrCopyOf;
    }

    private static byte[] e(InputStream inputStream, Queue<byte[]> queue, int i10) throws IOException {
        int i11;
        int iMin = Math.min(8192, Math.max(128, Integer.highestOneBit(i10) * 2));
        while (i10 < MAX_ARRAY_LEN) {
            int iMin2 = Math.min(iMin, MAX_ARRAY_LEN - i10);
            byte[] bArr = new byte[iMin2];
            queue.add(bArr);
            int i12 = 0;
            while (i12 < iMin2) {
                int i13 = inputStream.read(bArr, i12, iMin2 - i12);
                if (i13 == -1) {
                    return a(queue, i10);
                }
                i12 += i13;
                i10 += i13;
            }
            long j6 = iMin;
            if (iMin < 4096) {
                i11 = 4;
            } else {
                i11 = 2;
            }
            iMin = c(j6 * ((long) i11));
        }
        if (inputStream.read() == -1) {
            return a(queue, MAX_ARRAY_LEN);
        }
        throw new OutOfMemoryError("input is too large to fit in a byte array");
    }
}
