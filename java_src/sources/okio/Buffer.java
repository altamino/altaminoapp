package okio;

import android.support.v4.media.session.PlaybackStateCompat;
import androidx.work.WorkRequest;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.channels.ByteChannel;
import java.nio.charset.Charset;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import okhttp3.internal.connection.RealConnection;
import okio.internal._BufferKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes5.dex */
public final class Buffer implements BufferedSource, BufferedSink, Cloneable, ByteChannel {

    @Nullable
    public Segment head;
    private long size;

    public static final class UnsafeCursor implements Closeable {

        @Nullable
        public Buffer buffer;

        @Nullable
        public byte[] data;
        public boolean readWrite;

        @Nullable
        private Segment segment;
        public long offset = -1;
        public int start = -1;
        public int end = -1;

        @Nullable
        public final Segment getSegment$okio() {
            return this.segment;
        }

        public final void setSegment$okio(@Nullable Segment segment) {
            this.segment = segment;
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (this.buffer == null) {
                throw new IllegalStateException("not attached to a buffer".toString());
            }
            this.buffer = null;
            setSegment$okio(null);
            this.offset = -1L;
            this.data = null;
            this.start = -1;
            this.end = -1;
        }

        public final long expandBuffer(int i10) {
            if (i10 <= 0) {
                throw new IllegalArgumentException(("minByteCount <= 0: " + i10).toString());
            }
            if (i10 > 8192) {
                throw new IllegalArgumentException(("minByteCount > Segment.SIZE: " + i10).toString());
            }
            Buffer buffer = this.buffer;
            if (buffer == null) {
                throw new IllegalStateException("not attached to a buffer".toString());
            }
            if (!this.readWrite) {
                throw new IllegalStateException("expandBuffer() only permitted for read/write buffers".toString());
            }
            long size = buffer.size();
            Segment segmentWritableSegment$okio = buffer.writableSegment$okio(i10);
            int i11 = 8192 - segmentWritableSegment$okio.limit;
            segmentWritableSegment$okio.limit = 8192;
            long j6 = i11;
            buffer.setSize$okio(size + j6);
            setSegment$okio(segmentWritableSegment$okio);
            this.offset = size;
            this.data = segmentWritableSegment$okio.data;
            this.start = 8192 - i11;
            this.end = 8192;
            return j6;
        }

        public final int next() {
            long j6 = this.offset;
            Buffer buffer = this.buffer;
            kotlin.jvm.internal.t.g(buffer);
            if (j6 == buffer.size()) {
                throw new IllegalStateException("no more bytes".toString());
            }
            long j10 = this.offset;
            return seek(j10 == -1 ? 0L : j10 + ((long) (this.end - this.start)));
        }

        public final long resizeBuffer(long j6) {
            Buffer buffer = this.buffer;
            if (buffer == null) {
                throw new IllegalStateException("not attached to a buffer".toString());
            }
            if (!this.readWrite) {
                throw new IllegalStateException("resizeBuffer() only permitted for read/write buffers".toString());
            }
            long size = buffer.size();
            if (j6 <= size) {
                if (j6 < 0) {
                    throw new IllegalArgumentException(("newSize < 0: " + j6).toString());
                }
                long j10 = size - j6;
                while (j10 > 0) {
                    Segment segment = buffer.head;
                    kotlin.jvm.internal.t.g(segment);
                    Segment segment2 = segment.prev;
                    kotlin.jvm.internal.t.g(segment2);
                    int i10 = segment2.limit;
                    long j11 = i10 - segment2.pos;
                    if (j11 > j10) {
                        segment2.limit = i10 - ((int) j10);
                        break;
                    }
                    buffer.head = segment2.pop();
                    SegmentPool.recycle(segment2);
                    j10 -= j11;
                }
                setSegment$okio(null);
                this.offset = j6;
                this.data = null;
                this.start = -1;
                this.end = -1;
            } else if (j6 > size) {
                long j12 = j6 - size;
                boolean z6 = true;
                while (j12 > 0) {
                    Segment segmentWritableSegment$okio = buffer.writableSegment$okio(1);
                    int iMin = (int) Math.min(j12, 8192 - segmentWritableSegment$okio.limit);
                    segmentWritableSegment$okio.limit += iMin;
                    j12 -= (long) iMin;
                    if (z6) {
                        setSegment$okio(segmentWritableSegment$okio);
                        this.offset = size;
                        this.data = segmentWritableSegment$okio.data;
                        int i11 = segmentWritableSegment$okio.limit;
                        this.start = i11 - iMin;
                        this.end = i11;
                        z6 = false;
                    }
                }
            }
            buffer.setSize$okio(j6);
            return size;
        }

        public final int seek(long j6) {
            Segment segmentPush;
            Buffer buffer = this.buffer;
            if (buffer == null) {
                throw new IllegalStateException("not attached to a buffer".toString());
            }
            if (j6 < -1 || j6 > buffer.size()) {
                throw new ArrayIndexOutOfBoundsException("offset=" + j6 + " > size=" + buffer.size());
            }
            if (j6 == -1 || j6 == buffer.size()) {
                setSegment$okio(null);
                this.offset = j6;
                this.data = null;
                this.start = -1;
                this.end = -1;
                return -1;
            }
            long size = buffer.size();
            Segment segment$okio = buffer.head;
            long j10 = 0;
            if (getSegment$okio() != null) {
                long j11 = this.offset;
                int i10 = this.start;
                Segment segment$okio2 = getSegment$okio();
                kotlin.jvm.internal.t.g(segment$okio2);
                long j12 = j11 - ((long) (i10 - segment$okio2.pos));
                if (j12 > j6) {
                    segmentPush = segment$okio;
                    segment$okio = getSegment$okio();
                    size = j12;
                } else {
                    segmentPush = getSegment$okio();
                    j10 = j12;
                }
            } else {
                segmentPush = segment$okio;
            }
            if (size - j6 > j6 - j10) {
                while (true) {
                    kotlin.jvm.internal.t.g(segmentPush);
                    int i11 = segmentPush.limit;
                    int i12 = segmentPush.pos;
                    if (j6 < ((long) (i11 - i12)) + j10) {
                        break;
                    }
                    j10 += (long) (i11 - i12);
                    segmentPush = segmentPush.next;
                }
            } else {
                while (size > j6) {
                    kotlin.jvm.internal.t.g(segment$okio);
                    segment$okio = segment$okio.prev;
                    kotlin.jvm.internal.t.g(segment$okio);
                    size -= (long) (segment$okio.limit - segment$okio.pos);
                }
                j10 = size;
                segmentPush = segment$okio;
            }
            if (this.readWrite) {
                kotlin.jvm.internal.t.g(segmentPush);
                if (segmentPush.shared) {
                    Segment segmentUnsharedCopy = segmentPush.unsharedCopy();
                    if (buffer.head == segmentPush) {
                        buffer.head = segmentUnsharedCopy;
                    }
                    segmentPush = segmentPush.push(segmentUnsharedCopy);
                    Segment segment = segmentPush.prev;
                    kotlin.jvm.internal.t.g(segment);
                    segment.pop();
                }
            }
            setSegment$okio(segmentPush);
            this.offset = j6;
            kotlin.jvm.internal.t.g(segmentPush);
            this.data = segmentPush.data;
            int i13 = segmentPush.pos + ((int) (j6 - j10));
            this.start = i13;
            int i14 = segmentPush.limit;
            this.end = i14;
            return i14 - i13;
        }
    }

    public static /* synthetic */ Buffer copyTo$default(Buffer buffer, OutputStream outputStream, long j6, long j10, int i10, Object obj) throws IOException {
        if ((i10 & 2) != 0) {
            j6 = 0;
        }
        long j11 = j6;
        if ((i10 & 4) != 0) {
            j10 = buffer.size - j11;
        }
        return buffer.copyTo(outputStream, j11, j10);
    }

    /* JADX INFO: renamed from: -deprecated_size, reason: not valid java name */
    public final long m1781deprecated_size() {
        return this.size;
    }

    @Override // okio.BufferedSource, okio.BufferedSink
    @NotNull
    public Buffer buffer() {
        return this;
    }

    @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    @NotNull
    public final Buffer copyTo(@NotNull OutputStream out) throws IOException {
        kotlin.jvm.internal.t.j(out, "out");
        return copyTo$default(this, out, 0L, 0L, 6, (Object) null);
    }

    @Override // okio.BufferedSink
    @NotNull
    public Buffer emit() {
        return this;
    }

    @Override // okio.BufferedSink
    @NotNull
    public Buffer emitCompleteSegments() {
        return this;
    }

    @Override // okio.BufferedSource
    public boolean exhausted() {
        return this.size == 0;
    }

    @Override // okio.BufferedSink, okio.Sink, java.io.Flushable
    public void flush() {
    }

    @Override // okio.BufferedSource, okio.BufferedSink
    @NotNull
    public Buffer getBuffer() {
        return this;
    }

    @Override // okio.BufferedSource
    public long indexOf(byte b7) {
        return indexOf(b7, 0L, Long.MAX_VALUE);
    }

    @Override // okio.BufferedSource
    public long indexOfElement(@NotNull ByteString targetBytes) {
        kotlin.jvm.internal.t.j(targetBytes, "targetBytes");
        return indexOfElement(targetBytes, 0L);
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return true;
    }

    @Override // okio.BufferedSource
    public boolean rangeEquals(long j6, @NotNull ByteString bytes) {
        kotlin.jvm.internal.t.j(bytes, "bytes");
        return rangeEquals(j6, bytes, 0, bytes.size());
    }

    @Override // java.nio.channels.ReadableByteChannel
    public int read(@NotNull ByteBuffer sink) throws IOException {
        kotlin.jvm.internal.t.j(sink, "sink");
        Segment segment = this.head;
        if (segment == null) {
            return -1;
        }
        int iMin = Math.min(sink.remaining(), segment.limit - segment.pos);
        sink.put(segment.data, segment.pos, iMin);
        int i10 = segment.pos + iMin;
        segment.pos = i10;
        this.size -= (long) iMin;
        if (i10 == segment.limit) {
            this.head = segment.pop();
            SegmentPool.recycle(segment);
        }
        return iMin;
    }

    @NotNull
    public final UnsafeCursor readAndWriteUnsafe() {
        return readAndWriteUnsafe$default(this, null, 1, null);
    }

    @Override // okio.BufferedSource
    @NotNull
    public byte[] readByteArray() {
        return readByteArray(size());
    }

    @Override // okio.BufferedSource
    @NotNull
    public ByteString readByteString() {
        return readByteString(size());
    }

    @NotNull
    public final Buffer readFrom(@NotNull InputStream input) throws IOException {
        kotlin.jvm.internal.t.j(input, "input");
        readFrom(input, Long.MAX_VALUE, true);
        return this;
    }

    @Override // okio.BufferedSource
    public void readFully(@NotNull Buffer sink, long j6) throws EOFException {
        kotlin.jvm.internal.t.j(sink, "sink");
        if (size() >= j6) {
            sink.write(this, j6);
        } else {
            sink.write(this, size());
            throw new EOFException();
        }
    }

    @Override // okio.BufferedSource
    @NotNull
    public String readString(@NotNull Charset charset) {
        kotlin.jvm.internal.t.j(charset, "charset");
        return readString(this.size, charset);
    }

    @NotNull
    public final UnsafeCursor readUnsafe() {
        return readUnsafe$default(this, null, 1, null);
    }

    @Override // okio.BufferedSource
    @NotNull
    public String readUtf8() {
        return readString(this.size, kotlin.text.d.UTF_8);
    }

    @Override // okio.BufferedSource
    @NotNull
    public String readUtf8LineStrict() throws EOFException {
        return readUtf8LineStrict(Long.MAX_VALUE);
    }

    @Override // okio.BufferedSource
    public boolean request(long j6) {
        return this.size >= j6;
    }

    public final void setSize$okio(long j6) {
        this.size = j6;
    }

    public final long size() {
        return this.size;
    }

    @NotNull
    public final ByteString snapshot() {
        if (size() <= 2147483647L) {
            return snapshot((int) size());
        }
        throw new IllegalStateException(("size > Int.MAX_VALUE: " + size()).toString());
    }

    @NotNull
    public final Segment writableSegment$okio(int i10) {
        if (i10 < 1 || i10 > 8192) {
            throw new IllegalArgumentException("unexpected capacity".toString());
        }
        Segment segment = this.head;
        if (segment != null) {
            kotlin.jvm.internal.t.g(segment);
            Segment segment2 = segment.prev;
            kotlin.jvm.internal.t.g(segment2);
            return (segment2.limit + i10 > 8192 || !segment2.owner) ? segment2.push(SegmentPool.take()) : segment2;
        }
        Segment segmentTake = SegmentPool.take();
        this.head = segmentTake;
        segmentTake.prev = segmentTake;
        segmentTake.next = segmentTake;
        return segmentTake;
    }

    @NotNull
    public final Buffer writeTo(@NotNull OutputStream out) throws IOException {
        kotlin.jvm.internal.t.j(out, "out");
        return writeTo$default(this, out, 0L, 2, null);
    }

    public static /* synthetic */ UnsafeCursor readAndWriteUnsafe$default(Buffer buffer, UnsafeCursor unsafeCursor, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            unsafeCursor = _UtilKt.getDEFAULT__new_UnsafeCursor();
        }
        return buffer.readAndWriteUnsafe(unsafeCursor);
    }

    public static /* synthetic */ UnsafeCursor readUnsafe$default(Buffer buffer, UnsafeCursor unsafeCursor, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            unsafeCursor = _UtilKt.getDEFAULT__new_UnsafeCursor();
        }
        return buffer.readUnsafe(unsafeCursor);
    }

    public static /* synthetic */ Buffer writeTo$default(Buffer buffer, OutputStream outputStream, long j6, int i10, Object obj) throws IOException {
        if ((i10 & 2) != 0) {
            j6 = buffer.size;
        }
        return buffer.writeTo(outputStream, j6);
    }

    @NotNull
    public Buffer clone() {
        return copy();
    }

    @NotNull
    public final Buffer copy() {
        Buffer buffer = new Buffer();
        if (size() != 0) {
            Segment segment = this.head;
            kotlin.jvm.internal.t.g(segment);
            Segment segmentSharedCopy = segment.sharedCopy();
            buffer.head = segmentSharedCopy;
            segmentSharedCopy.prev = segmentSharedCopy;
            segmentSharedCopy.next = segmentSharedCopy;
            for (Segment segment2 = segment.next; segment2 != segment; segment2 = segment2.next) {
                Segment segment3 = segmentSharedCopy.prev;
                kotlin.jvm.internal.t.g(segment3);
                kotlin.jvm.internal.t.g(segment2);
                segment3.push(segment2.sharedCopy());
            }
            buffer.setSize$okio(size());
        }
        return buffer;
    }

    @NotNull
    public final Buffer copyTo(@NotNull OutputStream out, long j6) throws IOException {
        kotlin.jvm.internal.t.j(out, "out");
        return copyTo$default(this, out, j6, 0L, 4, (Object) null);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Buffer) {
            Buffer buffer = (Buffer) obj;
            if (size() == buffer.size()) {
                if (size() == 0) {
                    return true;
                }
                Segment segment = this.head;
                kotlin.jvm.internal.t.g(segment);
                Segment segment2 = buffer.head;
                kotlin.jvm.internal.t.g(segment2);
                int i10 = segment.pos;
                int i11 = segment2.pos;
                long j6 = 0;
                while (j6 < size()) {
                    long jMin = Math.min(segment.limit - i10, segment2.limit - i11);
                    long j10 = 0;
                    while (j10 < jMin) {
                        int i12 = i10 + 1;
                        int i13 = i11 + 1;
                        if (segment.data[i10] == segment2.data[i11]) {
                            j10++;
                            i10 = i12;
                            i11 = i13;
                        }
                    }
                    if (i10 == segment.limit) {
                        segment = segment.next;
                        kotlin.jvm.internal.t.g(segment);
                        i10 = segment.pos;
                    }
                    if (i11 == segment2.limit) {
                        segment2 = segment2.next;
                        kotlin.jvm.internal.t.g(segment2);
                        i11 = segment2.pos;
                    }
                    j6 += jMin;
                }
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        Segment segment = this.head;
        if (segment == null) {
            return 0;
        }
        int i10 = 1;
        do {
            int i11 = segment.limit;
            for (int i12 = segment.pos; i12 < i11; i12++) {
                i10 = (i10 * 31) + segment.data[i12];
            }
            segment = segment.next;
            kotlin.jvm.internal.t.g(segment);
        } while (segment != this.head);
        return i10;
    }

    @NotNull
    public final ByteString hmacSha1(@NotNull ByteString key) {
        kotlin.jvm.internal.t.j(key, "key");
        return hmac("HmacSHA1", key);
    }

    @NotNull
    public final ByteString hmacSha256(@NotNull ByteString key) {
        kotlin.jvm.internal.t.j(key, "key");
        return hmac("HmacSHA256", key);
    }

    @NotNull
    public final ByteString hmacSha512(@NotNull ByteString key) {
        kotlin.jvm.internal.t.j(key, "key");
        return hmac("HmacSHA512", key);
    }

    @Override // okio.BufferedSource
    public long indexOf(byte b7, long j6) {
        return indexOf(b7, j6, Long.MAX_VALUE);
    }

    @Override // okio.BufferedSource
    public long indexOfElement(@NotNull ByteString targetBytes, long j6) {
        int i10;
        int i11;
        kotlin.jvm.internal.t.j(targetBytes, "targetBytes");
        long size = 0;
        if (j6 < 0) {
            throw new IllegalArgumentException(("fromIndex < 0: " + j6).toString());
        }
        Segment segment = this.head;
        if (segment == null) {
            return -1L;
        }
        if (size() - j6 < j6) {
            size = size();
            while (size > j6) {
                segment = segment.prev;
                kotlin.jvm.internal.t.g(segment);
                size -= (long) (segment.limit - segment.pos);
            }
            if (targetBytes.size() == 2) {
                byte b7 = targetBytes.getByte(0);
                byte b10 = targetBytes.getByte(1);
                while (size < size()) {
                    byte[] bArr = segment.data;
                    i10 = (int) ((((long) segment.pos) + j6) - size);
                    int i12 = segment.limit;
                    while (true) {
                        if (i10 >= i12) {
                            size += (long) (segment.limit - segment.pos);
                            segment = segment.next;
                            kotlin.jvm.internal.t.g(segment);
                            j6 = size;
                        } else {
                            byte b11 = bArr[i10];
                            if (b11 == b7 || b11 == b10) {
                                i11 = segment.pos;
                            } else {
                                i10++;
                            }
                        }
                    }
                }
                return -1L;
            }
            byte[] bArrInternalArray$okio = targetBytes.internalArray$okio();
            while (size < size()) {
                byte[] bArr2 = segment.data;
                i10 = (int) ((((long) segment.pos) + j6) - size);
                int i13 = segment.limit;
                while (true) {
                    if (i10 < i13) {
                        byte b12 = bArr2[i10];
                        int length = bArrInternalArray$okio.length;
                        int i14 = 0;
                        while (true) {
                            if (i14 >= length) {
                                i10++;
                            } else if (b12 == bArrInternalArray$okio[i14]) {
                                i11 = segment.pos;
                            } else {
                                i14++;
                            }
                        }
                    } else {
                        size += (long) (segment.limit - segment.pos);
                        segment = segment.next;
                        kotlin.jvm.internal.t.g(segment);
                        j6 = size;
                    }
                }
            }
            return -1L;
        }
        while (true) {
            long j10 = ((long) (segment.limit - segment.pos)) + size;
            if (j10 > j6) {
                break;
            }
            segment = segment.next;
            kotlin.jvm.internal.t.g(segment);
            size = j10;
        }
        if (targetBytes.size() == 2) {
            byte b13 = targetBytes.getByte(0);
            byte b14 = targetBytes.getByte(1);
            while (size < size()) {
                byte[] bArr3 = segment.data;
                i10 = (int) ((((long) segment.pos) + j6) - size);
                int i15 = segment.limit;
                while (true) {
                    if (i10 >= i15) {
                        size += (long) (segment.limit - segment.pos);
                        segment = segment.next;
                        kotlin.jvm.internal.t.g(segment);
                        j6 = size;
                    } else {
                        byte b15 = bArr3[i10];
                        if (b15 == b13 || b15 == b14) {
                            i11 = segment.pos;
                        } else {
                            i10++;
                        }
                    }
                }
            }
            return -1L;
        }
        byte[] bArrInternalArray$okio2 = targetBytes.internalArray$okio();
        while (size < size()) {
            byte[] bArr4 = segment.data;
            i10 = (int) ((((long) segment.pos) + j6) - size);
            int i16 = segment.limit;
            while (true) {
                if (i10 < i16) {
                    byte b16 = bArr4[i10];
                    int length2 = bArrInternalArray$okio2.length;
                    int i17 = 0;
                    while (true) {
                        if (i17 >= length2) {
                            i10++;
                        } else if (b16 == bArrInternalArray$okio2[i17]) {
                            i11 = segment.pos;
                        } else {
                            i17++;
                        }
                    }
                } else {
                    size += (long) (segment.limit - segment.pos);
                    segment = segment.next;
                    kotlin.jvm.internal.t.g(segment);
                    j6 = size;
                }
            }
        }
        return -1L;
        return ((long) (i10 - i11)) + size;
    }

    @Override // okio.BufferedSource
    @NotNull
    public InputStream inputStream() {
        return new InputStream() { // from class: okio.Buffer.inputStream.1
            @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() {
            }

            @Override // java.io.InputStream
            public int read() {
                if (Buffer.this.size() > 0) {
                    return Buffer.this.readByte() & 255;
                }
                return -1;
            }

            @Override // java.io.InputStream
            public int available() {
                return (int) Math.min(Buffer.this.size(), Integer.MAX_VALUE);
            }

            @NotNull
            public String toString() {
                return Buffer.this + ".inputStream()";
            }

            @Override // java.io.InputStream
            public int read(@NotNull byte[] sink, int i10, int i11) {
                kotlin.jvm.internal.t.j(sink, "sink");
                return Buffer.this.read(sink, i10, i11);
            }
        };
    }

    @NotNull
    public final ByteString md5() {
        return digest("MD5");
    }

    @Override // okio.BufferedSink
    @NotNull
    public OutputStream outputStream() {
        return new OutputStream() { // from class: okio.Buffer.outputStream.1
            @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() {
            }

            @Override // java.io.OutputStream, java.io.Flushable
            public void flush() {
            }

            @Override // java.io.OutputStream
            public void write(int i10) {
                Buffer.this.writeByte(i10);
            }

            @NotNull
            public String toString() {
                return Buffer.this + ".outputStream()";
            }

            @Override // java.io.OutputStream
            public void write(@NotNull byte[] data, int i10, int i11) {
                kotlin.jvm.internal.t.j(data, "data");
                Buffer.this.write(data, i10, i11);
            }
        };
    }

    @Override // okio.BufferedSource
    @NotNull
    public BufferedSource peek() {
        return Okio.buffer(new PeekSource(this));
    }

    @Override // okio.BufferedSource
    public boolean rangeEquals(long j6, @NotNull ByteString bytes, int i10, int i11) {
        kotlin.jvm.internal.t.j(bytes, "bytes");
        if (j6 < 0 || i10 < 0 || i11 < 0 || size() - j6 < i11 || bytes.size() - i10 < i11) {
            return false;
        }
        for (int i12 = 0; i12 < i11; i12++) {
            if (getByte(((long) i12) + j6) != bytes.getByte(i10 + i12)) {
                return false;
            }
        }
        return true;
    }

    @Override // okio.BufferedSource
    public long readAll(@NotNull Sink sink) throws IOException {
        kotlin.jvm.internal.t.j(sink, "sink");
        long size = size();
        if (size > 0) {
            sink.write(this, size);
        }
        return size;
    }

    @NotNull
    public final UnsafeCursor readAndWriteUnsafe(@NotNull UnsafeCursor unsafeCursor) {
        kotlin.jvm.internal.t.j(unsafeCursor, "unsafeCursor");
        return _BufferKt.commonReadAndWriteUnsafe(this, unsafeCursor);
    }

    @Override // okio.BufferedSource
    @NotNull
    public byte[] readByteArray(long j6) throws EOFException {
        if (j6 < 0 || j6 > 2147483647L) {
            throw new IllegalArgumentException(("byteCount: " + j6).toString());
        }
        if (size() < j6) {
            throw new EOFException();
        }
        byte[] bArr = new byte[(int) j6];
        readFully(bArr);
        return bArr;
    }

    @Override // okio.BufferedSource
    @NotNull
    public ByteString readByteString(long j6) throws EOFException {
        if (j6 < 0 || j6 > 2147483647L) {
            throw new IllegalArgumentException(("byteCount: " + j6).toString());
        }
        if (size() < j6) {
            throw new EOFException();
        }
        if (j6 < PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM) {
            return new ByteString(readByteArray(j6));
        }
        ByteString byteStringSnapshot = snapshot((int) j6);
        skip(j6);
        return byteStringSnapshot;
    }

    @Override // okio.BufferedSource
    public long readDecimalLong() throws EOFException {
        if (size() == 0) {
            throw new EOFException();
        }
        int i10 = 0;
        boolean z6 = false;
        long j6 = 0;
        long j10 = -7;
        boolean z10 = false;
        do {
            Segment segment = this.head;
            kotlin.jvm.internal.t.g(segment);
            byte[] bArr = segment.data;
            int i11 = segment.pos;
            int i12 = segment.limit;
            while (i11 < i12) {
                byte b7 = bArr[i11];
                byte b10 = (byte) 48;
                if (b7 >= b10 && b7 <= ((byte) 57)) {
                    int i13 = b10 - b7;
                    if (j6 < _BufferKt.OVERFLOW_ZONE || (j6 == _BufferKt.OVERFLOW_ZONE && i13 < j10)) {
                        Buffer bufferWriteByte = new Buffer().writeDecimalLong(j6).writeByte((int) b7);
                        if (!z6) {
                            bufferWriteByte.readByte();
                        }
                        throw new NumberFormatException("Number too large: " + bufferWriteByte.readUtf8());
                    }
                    j6 = (j6 * 10) + ((long) i13);
                } else {
                    if (b7 != ((byte) 45) || i10 != 0) {
                        z10 = true;
                        break;
                    }
                    j10--;
                    z6 = true;
                }
                i11++;
                i10++;
            }
            if (i11 == i12) {
                this.head = segment.pop();
                SegmentPool.recycle(segment);
            } else {
                segment.pos = i11;
            }
            if (z10) {
                break;
            }
        } while (this.head != null);
        setSize$okio(size() - ((long) i10));
        if (i10 >= (z6 ? 2 : 1)) {
            return z6 ? j6 : -j6;
        }
        if (size() == 0) {
            throw new EOFException();
        }
        throw new NumberFormatException((z6 ? "Expected a digit" : "Expected a digit or '-'") + " but was 0x" + _UtilKt.toHexString(getByte(0L)));
    }

    @NotNull
    public final Buffer readFrom(@NotNull InputStream input, long j6) throws IOException {
        kotlin.jvm.internal.t.j(input, "input");
        if (j6 >= 0) {
            readFrom(input, j6, false);
            return this;
        }
        throw new IllegalArgumentException(("byteCount < 0: " + j6).toString());
    }

    @Override // okio.BufferedSource
    @NotNull
    public String readString(long j6, @NotNull Charset charset) throws EOFException {
        kotlin.jvm.internal.t.j(charset, "charset");
        if (j6 < 0 || j6 > 2147483647L) {
            throw new IllegalArgumentException(("byteCount: " + j6).toString());
        }
        if (this.size < j6) {
            throw new EOFException();
        }
        if (j6 == 0) {
            return "";
        }
        Segment segment = this.head;
        kotlin.jvm.internal.t.g(segment);
        int i10 = segment.pos;
        if (((long) i10) + j6 > segment.limit) {
            return new String(readByteArray(j6), charset);
        }
        int i11 = (int) j6;
        String str = new String(segment.data, i10, i11, charset);
        int i12 = segment.pos + i11;
        segment.pos = i12;
        this.size -= j6;
        if (i12 == segment.limit) {
            this.head = segment.pop();
            SegmentPool.recycle(segment);
        }
        return str;
    }

    @NotNull
    public final UnsafeCursor readUnsafe(@NotNull UnsafeCursor unsafeCursor) {
        kotlin.jvm.internal.t.j(unsafeCursor, "unsafeCursor");
        return _BufferKt.commonReadUnsafe(this, unsafeCursor);
    }

    @Override // okio.BufferedSource
    @NotNull
    public String readUtf8(long j6) throws EOFException {
        return readString(j6, kotlin.text.d.UTF_8);
    }

    @Override // okio.BufferedSource
    @Nullable
    public String readUtf8Line() throws EOFException {
        long jIndexOf = indexOf((byte) 10);
        if (jIndexOf != -1) {
            return _BufferKt.readUtf8Line(this, jIndexOf);
        }
        if (size() != 0) {
            return readUtf8(size());
        }
        return null;
    }

    @Override // okio.BufferedSource
    @NotNull
    public String readUtf8LineStrict(long j6) throws EOFException {
        if (j6 < 0) {
            throw new IllegalArgumentException(("limit < 0: " + j6).toString());
        }
        long j10 = j6 != Long.MAX_VALUE ? j6 + 1 : Long.MAX_VALUE;
        byte b7 = (byte) 10;
        long jIndexOf = indexOf(b7, 0L, j10);
        if (jIndexOf != -1) {
            return _BufferKt.readUtf8Line(this, jIndexOf);
        }
        if (j10 < size() && getByte(j10 - 1) == ((byte) 13) && getByte(j10) == b7) {
            return _BufferKt.readUtf8Line(this, j10);
        }
        Buffer buffer = new Buffer();
        copyTo(buffer, 0L, Math.min(32, size()));
        throw new EOFException("\\n not found: limit=" + Math.min(size(), j6) + " content=" + buffer.readByteString().hex() + (char) 8230);
    }

    @Override // okio.BufferedSource
    public void require(long j6) throws EOFException {
        if (this.size < j6) {
            throw new EOFException();
        }
    }

    @Override // okio.BufferedSource
    public int select(@NotNull Options options) throws EOFException {
        kotlin.jvm.internal.t.j(options, "options");
        int iSelectPrefix$default = _BufferKt.selectPrefix$default(this, options, false, 2, null);
        if (iSelectPrefix$default == -1) {
            return -1;
        }
        skip(options.getByteStrings$okio()[iSelectPrefix$default].size());
        return iSelectPrefix$default;
    }

    @NotNull
    public final ByteString sha1() {
        return digest("SHA-1");
    }

    @NotNull
    public final ByteString sha256() {
        return digest(l9.p.SHA_256);
    }

    @NotNull
    public final ByteString sha512() {
        return digest(l9.p.SHA_512);
    }

    @Override // okio.BufferedSource
    public void skip(long j6) throws EOFException {
        while (j6 > 0) {
            Segment segment = this.head;
            if (segment == null) {
                throw new EOFException();
            }
            int iMin = (int) Math.min(j6, segment.limit - segment.pos);
            long j10 = iMin;
            setSize$okio(size() - j10);
            j6 -= j10;
            int i10 = segment.pos + iMin;
            segment.pos = i10;
            if (i10 == segment.limit) {
                this.head = segment.pop();
                SegmentPool.recycle(segment);
            }
        }
    }

    @Override // okio.Source
    @NotNull
    public Timeout timeout() {
        return Timeout.NONE;
    }

    @Override // okio.BufferedSink
    public long writeAll(@NotNull Source source) throws IOException {
        kotlin.jvm.internal.t.j(source, "source");
        long j6 = 0;
        while (true) {
            long j10 = source.read(this, PlaybackStateCompat.ACTION_PLAY_FROM_URI);
            if (j10 == -1) {
                return j6;
            }
            j6 += j10;
        }
    }

    @Override // okio.BufferedSink
    @NotNull
    public Buffer writeByte(int i10) {
        Segment segmentWritableSegment$okio = writableSegment$okio(1);
        byte[] bArr = segmentWritableSegment$okio.data;
        int i11 = segmentWritableSegment$okio.limit;
        segmentWritableSegment$okio.limit = i11 + 1;
        bArr[i11] = (byte) i10;
        setSize$okio(size() + 1);
        return this;
    }

    @Override // okio.BufferedSink
    @NotNull
    public Buffer writeDecimalLong(long j6) {
        boolean z6;
        if (j6 == 0) {
            return writeByte(48);
        }
        int i10 = 1;
        if (j6 < 0) {
            j6 = -j6;
            if (j6 < 0) {
                return writeUtf8("-9223372036854775808");
            }
            z6 = true;
        } else {
            z6 = false;
        }
        if (j6 < 100000000) {
            if (j6 < WorkRequest.MIN_BACKOFF_MILLIS) {
                if (j6 >= 100) {
                    i10 = j6 < 1000 ? 3 : 4;
                } else if (j6 >= 10) {
                    i10 = 2;
                }
            } else if (j6 < 1000000) {
                i10 = j6 < 100000 ? 5 : 6;
            } else {
                i10 = j6 < 10000000 ? 7 : 8;
            }
        } else if (j6 < 1000000000000L) {
            if (j6 < RealConnection.IDLE_CONNECTION_HEALTHY_NS) {
                i10 = j6 < 1000000000 ? 9 : 10;
            } else {
                i10 = j6 < 100000000000L ? 11 : 12;
            }
        } else if (j6 < 1000000000000000L) {
            if (j6 < 10000000000000L) {
                i10 = 13;
            } else {
                i10 = j6 < 100000000000000L ? 14 : 15;
            }
        } else if (j6 < 100000000000000000L) {
            i10 = j6 < 10000000000000000L ? 16 : 17;
        } else {
            i10 = j6 < 1000000000000000000L ? 18 : 19;
        }
        if (z6) {
            i10++;
        }
        Segment segmentWritableSegment$okio = writableSegment$okio(i10);
        byte[] bArr = segmentWritableSegment$okio.data;
        int i11 = segmentWritableSegment$okio.limit + i10;
        while (j6 != 0) {
            long j10 = 10;
            i11--;
            bArr[i11] = _BufferKt.getHEX_DIGIT_BYTES()[(int) (j6 % j10)];
            j6 /= j10;
        }
        if (z6) {
            bArr[i11 - 1] = (byte) 45;
        }
        segmentWritableSegment$okio.limit += i10;
        setSize$okio(size() + ((long) i10));
        return this;
    }

    @Override // okio.BufferedSink
    @NotNull
    public Buffer writeHexadecimalUnsignedLong(long j6) {
        if (j6 == 0) {
            return writeByte(48);
        }
        long j10 = (j6 >>> 1) | j6;
        long j11 = j10 | (j10 >>> 2);
        long j12 = j11 | (j11 >>> 4);
        long j13 = j12 | (j12 >>> 8);
        long j14 = j13 | (j13 >>> 16);
        long j15 = j14 | (j14 >>> 32);
        long j16 = j15 - ((j15 >>> 1) & 6148914691236517205L);
        long j17 = ((j16 >>> 2) & 3689348814741910323L) + (j16 & 3689348814741910323L);
        long j18 = ((j17 >>> 4) + j17) & 1085102592571150095L;
        long j19 = j18 + (j18 >>> 8);
        long j20 = j19 + (j19 >>> 16);
        int i10 = (int) ((((j20 & 63) + ((j20 >>> 32) & 63)) + ((long) 3)) / ((long) 4));
        Segment segmentWritableSegment$okio = writableSegment$okio(i10);
        byte[] bArr = segmentWritableSegment$okio.data;
        int i11 = segmentWritableSegment$okio.limit;
        for (int i12 = (i11 + i10) - 1; i12 >= i11; i12--) {
            bArr[i12] = _BufferKt.getHEX_DIGIT_BYTES()[(int) (15 & j6)];
            j6 >>>= 4;
        }
        segmentWritableSegment$okio.limit += i10;
        setSize$okio(size() + ((long) i10));
        return this;
    }

    @Override // okio.BufferedSink
    @NotNull
    public Buffer writeInt(int i10) {
        Segment segmentWritableSegment$okio = writableSegment$okio(4);
        byte[] bArr = segmentWritableSegment$okio.data;
        int i11 = segmentWritableSegment$okio.limit;
        bArr[i11] = (byte) ((i10 >>> 24) & 255);
        bArr[i11 + 1] = (byte) ((i10 >>> 16) & 255);
        bArr[i11 + 2] = (byte) ((i10 >>> 8) & 255);
        bArr[i11 + 3] = (byte) (i10 & 255);
        segmentWritableSegment$okio.limit = i11 + 4;
        setSize$okio(size() + 4);
        return this;
    }

    @Override // okio.BufferedSink
    @NotNull
    public Buffer writeIntLe(int i10) {
        return writeInt(_UtilKt.reverseBytes(i10));
    }

    @Override // okio.BufferedSink
    @NotNull
    public Buffer writeLong(long j6) {
        Segment segmentWritableSegment$okio = writableSegment$okio(8);
        byte[] bArr = segmentWritableSegment$okio.data;
        int i10 = segmentWritableSegment$okio.limit;
        bArr[i10] = (byte) ((j6 >>> 56) & 255);
        bArr[i10 + 1] = (byte) ((j6 >>> 48) & 255);
        bArr[i10 + 2] = (byte) ((j6 >>> 40) & 255);
        bArr[i10 + 3] = (byte) ((j6 >>> 32) & 255);
        bArr[i10 + 4] = (byte) ((j6 >>> 24) & 255);
        bArr[i10 + 5] = (byte) ((j6 >>> 16) & 255);
        bArr[i10 + 6] = (byte) ((j6 >>> 8) & 255);
        bArr[i10 + 7] = (byte) (j6 & 255);
        segmentWritableSegment$okio.limit = i10 + 8;
        setSize$okio(size() + 8);
        return this;
    }

    @Override // okio.BufferedSink
    @NotNull
    public Buffer writeLongLe(long j6) {
        return writeLong(_UtilKt.reverseBytes(j6));
    }

    @Override // okio.BufferedSink
    @NotNull
    public Buffer writeShort(int i10) {
        Segment segmentWritableSegment$okio = writableSegment$okio(2);
        byte[] bArr = segmentWritableSegment$okio.data;
        int i11 = segmentWritableSegment$okio.limit;
        bArr[i11] = (byte) ((i10 >>> 8) & 255);
        bArr[i11 + 1] = (byte) (i10 & 255);
        segmentWritableSegment$okio.limit = i11 + 2;
        setSize$okio(size() + 2);
        return this;
    }

    @Override // okio.BufferedSink
    @NotNull
    public Buffer writeShortLe(int i10) {
        return writeShort((int) _UtilKt.reverseBytes((short) i10));
    }

    @NotNull
    public final Buffer writeTo(@NotNull OutputStream out, long j6) throws IOException {
        kotlin.jvm.internal.t.j(out, "out");
        _UtilKt.checkOffsetAndCount(this.size, 0L, j6);
        Segment segment = this.head;
        while (j6 > 0) {
            kotlin.jvm.internal.t.g(segment);
            int iMin = (int) Math.min(j6, segment.limit - segment.pos);
            out.write(segment.data, segment.pos, iMin);
            int i10 = segment.pos + iMin;
            segment.pos = i10;
            long j10 = iMin;
            this.size -= j10;
            j6 -= j10;
            if (i10 == segment.limit) {
                Segment segmentPop = segment.pop();
                this.head = segmentPop;
                SegmentPool.recycle(segment);
                segment = segmentPop;
            }
        }
        return this;
    }

    @Override // okio.BufferedSink
    @NotNull
    public Buffer writeUtf8CodePoint(int i10) {
        if (i10 < 128) {
            writeByte(i10);
        } else if (i10 < 2048) {
            Segment segmentWritableSegment$okio = writableSegment$okio(2);
            byte[] bArr = segmentWritableSegment$okio.data;
            int i11 = segmentWritableSegment$okio.limit;
            bArr[i11] = (byte) ((i10 >> 6) | 192);
            bArr[i11 + 1] = (byte) ((i10 & 63) | 128);
            segmentWritableSegment$okio.limit = i11 + 2;
            setSize$okio(size() + 2);
        } else if (55296 <= i10 && i10 < 57344) {
            writeByte(63);
        } else if (i10 < 65536) {
            Segment segmentWritableSegment$okio2 = writableSegment$okio(3);
            byte[] bArr2 = segmentWritableSegment$okio2.data;
            int i12 = segmentWritableSegment$okio2.limit;
            bArr2[i12] = (byte) ((i10 >> 12) | 224);
            bArr2[i12 + 1] = (byte) (((i10 >> 6) & 63) | 128);
            bArr2[i12 + 2] = (byte) ((i10 & 63) | 128);
            segmentWritableSegment$okio2.limit = i12 + 3;
            setSize$okio(size() + 3);
        } else {
            if (i10 > 1114111) {
                throw new IllegalArgumentException("Unexpected code point: 0x" + _UtilKt.toHexString(i10));
            }
            Segment segmentWritableSegment$okio3 = writableSegment$okio(4);
            byte[] bArr3 = segmentWritableSegment$okio3.data;
            int i13 = segmentWritableSegment$okio3.limit;
            bArr3[i13] = (byte) ((i10 >> 18) | 240);
            bArr3[i13 + 1] = (byte) (((i10 >> 12) & 63) | 128);
            bArr3[i13 + 2] = (byte) (((i10 >> 6) & 63) | 128);
            bArr3[i13 + 3] = (byte) ((i10 & 63) | 128);
            segmentWritableSegment$okio3.limit = i13 + 4;
            setSize$okio(size() + 4);
        }
        return this;
    }

    public static /* synthetic */ Buffer copyTo$default(Buffer buffer, Buffer buffer2, long j6, long j10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            j6 = 0;
        }
        return buffer.copyTo(buffer2, j6, j10);
    }

    private final ByteString digest(String str) throws NoSuchAlgorithmException {
        MessageDigest messageDigest = MessageDigest.getInstance(str);
        Segment segment = this.head;
        if (segment != null) {
            byte[] bArr = segment.data;
            int i10 = segment.pos;
            messageDigest.update(bArr, i10, segment.limit - i10);
            Segment segment2 = segment.next;
            kotlin.jvm.internal.t.g(segment2);
            while (segment2 != segment) {
                byte[] bArr2 = segment2.data;
                int i11 = segment2.pos;
                messageDigest.update(bArr2, i11, segment2.limit - i11);
                segment2 = segment2.next;
                kotlin.jvm.internal.t.g(segment2);
            }
        }
        byte[] bArrDigest = messageDigest.digest();
        kotlin.jvm.internal.t.i(bArrDigest, "messageDigest.digest()");
        return new ByteString(bArrDigest);
    }

    private final ByteString hmac(String str, ByteString byteString) throws NoSuchAlgorithmException {
        try {
            Mac mac = Mac.getInstance(str);
            mac.init(new SecretKeySpec(byteString.internalArray$okio(), str));
            Segment segment = this.head;
            if (segment != null) {
                byte[] bArr = segment.data;
                int i10 = segment.pos;
                mac.update(bArr, i10, segment.limit - i10);
                Segment segment2 = segment.next;
                kotlin.jvm.internal.t.g(segment2);
                while (segment2 != segment) {
                    byte[] bArr2 = segment2.data;
                    int i11 = segment2.pos;
                    mac.update(bArr2, i11, segment2.limit - i11);
                    segment2 = segment2.next;
                    kotlin.jvm.internal.t.g(segment2);
                }
            }
            byte[] bArrDoFinal = mac.doFinal();
            kotlin.jvm.internal.t.i(bArrDoFinal, "mac.doFinal()");
            return new ByteString(bArrDoFinal);
        } catch (InvalidKeyException e) {
            throw new IllegalArgumentException(e);
        }
    }

    /* JADX INFO: renamed from: -deprecated_getByte, reason: not valid java name */
    public final byte m1780deprecated_getByte(long j6) {
        return getByte(j6);
    }

    public final void clear() throws EOFException {
        skip(size());
    }

    public final long completeSegmentByteCount() {
        long size = size();
        if (size == 0) {
            return 0L;
        }
        Segment segment = this.head;
        kotlin.jvm.internal.t.g(segment);
        Segment segment2 = segment.prev;
        kotlin.jvm.internal.t.g(segment2);
        int i10 = segment2.limit;
        if (i10 < 8192 && segment2.owner) {
            size -= (long) (i10 - segment2.pos);
        }
        return size;
    }

    @NotNull
    public final Buffer copyTo(@NotNull OutputStream out, long j6, long j10) throws IOException {
        kotlin.jvm.internal.t.j(out, "out");
        _UtilKt.checkOffsetAndCount(this.size, j6, j10);
        if (j10 == 0) {
            return this;
        }
        Segment segment = this.head;
        while (true) {
            kotlin.jvm.internal.t.g(segment);
            int i10 = segment.limit;
            int i11 = segment.pos;
            if (j6 < i10 - i11) {
                break;
            }
            j6 -= (long) (i10 - i11);
            segment = segment.next;
        }
        while (j10 > 0) {
            kotlin.jvm.internal.t.g(segment);
            int i12 = (int) (((long) segment.pos) + j6);
            int iMin = (int) Math.min(segment.limit - i12, j10);
            out.write(segment.data, i12, iMin);
            j10 -= (long) iMin;
            segment = segment.next;
            j6 = 0;
        }
        return this;
    }

    public final byte getByte(long j6) {
        _UtilKt.checkOffsetAndCount(size(), j6, 1L);
        Segment segment = this.head;
        if (segment != null) {
            if (size() - j6 < j6) {
                long size = size();
                while (size > j6) {
                    segment = segment.prev;
                    kotlin.jvm.internal.t.g(segment);
                    size -= (long) (segment.limit - segment.pos);
                }
                kotlin.jvm.internal.t.g(segment);
                return segment.data[(int) ((((long) segment.pos) + j6) - size)];
            }
            long j10 = 0;
            while (true) {
                long j11 = ((long) (segment.limit - segment.pos)) + j10;
                if (j11 <= j6) {
                    segment = segment.next;
                    kotlin.jvm.internal.t.g(segment);
                    j10 = j11;
                } else {
                    kotlin.jvm.internal.t.g(segment);
                    return segment.data[(int) ((((long) segment.pos) + j6) - j10)];
                }
            }
        } else {
            kotlin.jvm.internal.t.g(null);
            throw null;
        }
    }

    @Override // okio.BufferedSource
    public long indexOf(@NotNull ByteString bytes) throws IOException {
        kotlin.jvm.internal.t.j(bytes, "bytes");
        return indexOf(bytes, 0L);
    }

    @Override // okio.BufferedSource
    public byte readByte() throws EOFException {
        if (size() != 0) {
            Segment segment = this.head;
            kotlin.jvm.internal.t.g(segment);
            int i10 = segment.pos;
            int i11 = segment.limit;
            int i12 = i10 + 1;
            byte b7 = segment.data[i10];
            setSize$okio(size() - 1);
            if (i12 == i11) {
                this.head = segment.pop();
                SegmentPool.recycle(segment);
            } else {
                segment.pos = i12;
            }
            return b7;
        }
        throw new EOFException();
    }

    @Override // okio.BufferedSource
    public long readHexadecimalUnsignedLong() throws EOFException {
        int i10;
        if (size() != 0) {
            int i11 = 0;
            boolean z6 = false;
            long j6 = 0;
            do {
                Segment segment = this.head;
                kotlin.jvm.internal.t.g(segment);
                byte[] bArr = segment.data;
                int i12 = segment.pos;
                int i13 = segment.limit;
                while (i12 < i13) {
                    byte b7 = bArr[i12];
                    byte b10 = (byte) 48;
                    if (b7 >= b10 && b7 <= ((byte) 57)) {
                        i10 = b7 - b10;
                    } else {
                        byte b11 = (byte) 97;
                        if ((b7 >= b11 && b7 <= ((byte) 102)) || (b7 >= (b11 = (byte) 65) && b7 <= ((byte) 70))) {
                            i10 = (b7 - b11) + 10;
                        } else {
                            if (i11 != 0) {
                                z6 = true;
                                break;
                            }
                            throw new NumberFormatException("Expected leading [0-9a-fA-F] character but was 0x" + _UtilKt.toHexString(b7));
                        }
                    }
                    if (((-1152921504606846976L) & j6) == 0) {
                        j6 = (j6 << 4) | ((long) i10);
                        i12++;
                        i11++;
                    } else {
                        throw new NumberFormatException("Number too large: " + new Buffer().writeHexadecimalUnsignedLong(j6).writeByte((int) b7).readUtf8());
                    }
                }
                if (i12 == i13) {
                    this.head = segment.pop();
                    SegmentPool.recycle(segment);
                } else {
                    segment.pos = i12;
                }
                if (z6) {
                    break;
                }
            } while (this.head != null);
            setSize$okio(size() - ((long) i11));
            return j6;
        }
        throw new EOFException();
    }

    @Override // okio.BufferedSource
    public int readInt() throws EOFException {
        if (size() >= 4) {
            Segment segment = this.head;
            kotlin.jvm.internal.t.g(segment);
            int i10 = segment.pos;
            int i11 = segment.limit;
            if (i11 - i10 < 4) {
                return ((readByte() & 255) << 24) | ((readByte() & 255) << 16) | ((readByte() & 255) << 8) | (readByte() & 255);
            }
            byte[] bArr = segment.data;
            int i12 = i10 + 3;
            int i13 = ((bArr[i10 + 1] & 255) << 16) | ((bArr[i10] & 255) << 24) | ((bArr[i10 + 2] & 255) << 8);
            int i14 = i10 + 4;
            int i15 = (bArr[i12] & 255) | i13;
            setSize$okio(size() - 4);
            if (i14 == i11) {
                this.head = segment.pop();
                SegmentPool.recycle(segment);
            } else {
                segment.pos = i14;
            }
            return i15;
        }
        throw new EOFException();
    }

    @Override // okio.BufferedSource
    public int readIntLe() throws EOFException {
        return _UtilKt.reverseBytes(readInt());
    }

    @Override // okio.BufferedSource
    public long readLong() throws EOFException {
        if (size() >= 8) {
            Segment segment = this.head;
            kotlin.jvm.internal.t.g(segment);
            int i10 = segment.pos;
            int i11 = segment.limit;
            if (i11 - i10 < 8) {
                return ((((long) readInt()) & 4294967295L) << 32) | (4294967295L & ((long) readInt()));
            }
            byte[] bArr = segment.data;
            int i12 = i10 + 7;
            long j6 = ((((long) bArr[i10]) & 255) << 56) | ((((long) bArr[i10 + 1]) & 255) << 48) | ((((long) bArr[i10 + 2]) & 255) << 40) | ((((long) bArr[i10 + 3]) & 255) << 32) | ((((long) bArr[i10 + 4]) & 255) << 24) | ((((long) bArr[i10 + 5]) & 255) << 16) | ((((long) bArr[i10 + 6]) & 255) << 8);
            int i13 = i10 + 8;
            long j10 = j6 | (((long) bArr[i12]) & 255);
            setSize$okio(size() - 8);
            if (i13 == i11) {
                this.head = segment.pop();
                SegmentPool.recycle(segment);
            } else {
                segment.pos = i13;
            }
            return j10;
        }
        throw new EOFException();
    }

    @Override // okio.BufferedSource
    public long readLongLe() throws EOFException {
        return _UtilKt.reverseBytes(readLong());
    }

    @Override // okio.BufferedSource
    public short readShort() throws EOFException {
        if (size() >= 2) {
            Segment segment = this.head;
            kotlin.jvm.internal.t.g(segment);
            int i10 = segment.pos;
            int i11 = segment.limit;
            if (i11 - i10 < 2) {
                return (short) (((readByte() & 255) << 8) | (readByte() & 255));
            }
            byte[] bArr = segment.data;
            int i12 = i10 + 1;
            int i13 = (bArr[i10] & 255) << 8;
            int i14 = i10 + 2;
            int i15 = (bArr[i12] & 255) | i13;
            setSize$okio(size() - 2);
            if (i14 == i11) {
                this.head = segment.pop();
                SegmentPool.recycle(segment);
            } else {
                segment.pos = i14;
            }
            return (short) i15;
        }
        throw new EOFException();
    }

    @Override // okio.BufferedSource
    public short readShortLe() throws EOFException {
        return _UtilKt.reverseBytes(readShort());
    }

    @Override // okio.BufferedSource
    public int readUtf8CodePoint() throws EOFException {
        int i10;
        int i11;
        int i12;
        if (size() != 0) {
            byte b7 = getByte(0L);
            if ((b7 & 128) == 0) {
                i10 = b7 & 127;
                i12 = 0;
                i11 = 1;
            } else if ((b7 & 224) == 192) {
                i10 = b7 & com.google.common.base.c.US;
                i11 = 2;
                i12 = 128;
            } else if ((b7 & 240) == 224) {
                i10 = b7 & com.google.common.base.c.SI;
                i11 = 3;
                i12 = 2048;
            } else if ((b7 & 248) == 240) {
                i10 = b7 & 7;
                i11 = 4;
                i12 = 65536;
            } else {
                skip(1L);
                return Utf8.REPLACEMENT_CODE_POINT;
            }
            long j6 = i11;
            if (size() >= j6) {
                for (int i13 = 1; i13 < i11; i13++) {
                    long j10 = i13;
                    byte b10 = getByte(j10);
                    if ((b10 & 192) == 128) {
                        i10 = (i10 << 6) | (b10 & Utf8.REPLACEMENT_BYTE);
                    } else {
                        skip(j10);
                        return Utf8.REPLACEMENT_CODE_POINT;
                    }
                }
                skip(j6);
                if (i10 > 1114111) {
                    return Utf8.REPLACEMENT_CODE_POINT;
                }
                if ((55296 <= i10 && i10 < 57344) || i10 < i12) {
                    return Utf8.REPLACEMENT_CODE_POINT;
                }
                return i10;
            }
            throw new EOFException("size < " + i11 + ": " + size() + " (to read code point prefixed 0x" + _UtilKt.toHexString(b7) + ')');
        }
        throw new EOFException();
    }

    @NotNull
    public String toString() {
        return snapshot().toString();
    }

    @Override // okio.BufferedSink
    @NotNull
    public Buffer writeString(@NotNull String string, @NotNull Charset charset) {
        kotlin.jvm.internal.t.j(string, "string");
        kotlin.jvm.internal.t.j(charset, "charset");
        return writeString(string, 0, string.length(), charset);
    }

    @Override // okio.BufferedSink
    @NotNull
    public Buffer writeUtf8(@NotNull String string) {
        kotlin.jvm.internal.t.j(string, "string");
        return writeUtf8(string, 0, string.length());
    }

    public static /* synthetic */ Buffer copyTo$default(Buffer buffer, Buffer buffer2, long j6, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            j6 = 0;
        }
        return buffer.copyTo(buffer2, j6);
    }

    private final void readFrom(InputStream inputStream, long j6, boolean z6) throws IOException {
        while (true) {
            if (j6 <= 0 && !z6) {
                return;
            }
            Segment segmentWritableSegment$okio = writableSegment$okio(1);
            int i10 = inputStream.read(segmentWritableSegment$okio.data, segmentWritableSegment$okio.limit, (int) Math.min(j6, 8192 - segmentWritableSegment$okio.limit));
            if (i10 == -1) {
                if (segmentWritableSegment$okio.pos == segmentWritableSegment$okio.limit) {
                    this.head = segmentWritableSegment$okio.pop();
                    SegmentPool.recycle(segmentWritableSegment$okio);
                }
                if (!z6) {
                    throw new EOFException();
                }
                return;
            }
            segmentWritableSegment$okio.limit += i10;
            long j10 = i10;
            this.size += j10;
            j6 -= j10;
        }
    }

    @Override // okio.BufferedSource
    public long indexOf(byte b7, long j6, long j10) {
        Segment segment;
        int i10;
        long size = 0;
        if (0 > j6 || j6 > j10) {
            throw new IllegalArgumentException(("size=" + size() + " fromIndex=" + j6 + " toIndex=" + j10).toString());
        }
        if (j10 > size()) {
            j10 = size();
        }
        if (j6 == j10 || (segment = this.head) == null) {
            return -1L;
        }
        if (size() - j6 < j6) {
            size = size();
            while (size > j6) {
                segment = segment.prev;
                kotlin.jvm.internal.t.g(segment);
                size -= (long) (segment.limit - segment.pos);
            }
            while (size < j10) {
                byte[] bArr = segment.data;
                int iMin = (int) Math.min(segment.limit, (((long) segment.pos) + j10) - size);
                i10 = (int) ((((long) segment.pos) + j6) - size);
                while (i10 < iMin) {
                    if (bArr[i10] != b7) {
                        i10++;
                    }
                }
                size += (long) (segment.limit - segment.pos);
                segment = segment.next;
                kotlin.jvm.internal.t.g(segment);
                j6 = size;
            }
            return -1L;
        }
        while (true) {
            long j11 = ((long) (segment.limit - segment.pos)) + size;
            if (j11 > j6) {
                break;
            }
            segment = segment.next;
            kotlin.jvm.internal.t.g(segment);
            size = j11;
        }
        while (size < j10) {
            byte[] bArr2 = segment.data;
            int iMin2 = (int) Math.min(segment.limit, (((long) segment.pos) + j10) - size);
            i10 = (int) ((((long) segment.pos) + j6) - size);
            while (i10 < iMin2) {
                if (bArr2[i10] != b7) {
                    i10++;
                }
            }
            size += (long) (segment.limit - segment.pos);
            segment = segment.next;
            kotlin.jvm.internal.t.g(segment);
            j6 = size;
        }
        return -1L;
        return ((long) (i10 - segment.pos)) + size;
    }

    @NotNull
    public final ByteString snapshot(int i10) {
        if (i10 == 0) {
            return ByteString.EMPTY;
        }
        _UtilKt.checkOffsetAndCount(size(), 0L, i10);
        Segment segment = this.head;
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        while (i12 < i10) {
            kotlin.jvm.internal.t.g(segment);
            int i14 = segment.limit;
            int i15 = segment.pos;
            if (i14 != i15) {
                i12 += i14 - i15;
                i13++;
                segment = segment.next;
            } else {
                throw new AssertionError("s.limit == s.pos");
            }
        }
        byte[][] bArr = new byte[i13][];
        int[] iArr = new int[i13 * 2];
        Segment segment2 = this.head;
        int i16 = 0;
        while (i11 < i10) {
            kotlin.jvm.internal.t.g(segment2);
            bArr[i16] = segment2.data;
            i11 += segment2.limit - segment2.pos;
            iArr[i16] = Math.min(i11, i10);
            iArr[i16 + i13] = segment2.pos;
            segment2.shared = true;
            i16++;
            segment2 = segment2.next;
        }
        return new SegmentedByteString(bArr, iArr);
    }

    @Override // okio.BufferedSink
    @NotNull
    public Buffer writeUtf8(@NotNull String string, int i10, int i11) {
        char cCharAt;
        kotlin.jvm.internal.t.j(string, "string");
        if (i10 < 0) {
            throw new IllegalArgumentException(("beginIndex < 0: " + i10).toString());
        }
        if (i11 >= i10) {
            if (i11 > string.length()) {
                throw new IllegalArgumentException(("endIndex > string.length: " + i11 + " > " + string.length()).toString());
            }
            while (i10 < i11) {
                char cCharAt2 = string.charAt(i10);
                if (cCharAt2 < 128) {
                    Segment segmentWritableSegment$okio = writableSegment$okio(1);
                    byte[] bArr = segmentWritableSegment$okio.data;
                    int i12 = segmentWritableSegment$okio.limit - i10;
                    int iMin = Math.min(i11, 8192 - i12);
                    int i13 = i10 + 1;
                    bArr[i10 + i12] = (byte) cCharAt2;
                    while (true) {
                        i10 = i13;
                        if (i10 >= iMin || (cCharAt = string.charAt(i10)) >= 128) {
                            break;
                        }
                        i13 = i10 + 1;
                        bArr[i10 + i12] = (byte) cCharAt;
                    }
                    int i14 = segmentWritableSegment$okio.limit;
                    int i15 = (i12 + i10) - i14;
                    segmentWritableSegment$okio.limit = i14 + i15;
                    setSize$okio(size() + ((long) i15));
                } else {
                    if (cCharAt2 < 2048) {
                        Segment segmentWritableSegment$okio2 = writableSegment$okio(2);
                        byte[] bArr2 = segmentWritableSegment$okio2.data;
                        int i16 = segmentWritableSegment$okio2.limit;
                        bArr2[i16] = (byte) ((cCharAt2 >> 6) | 192);
                        bArr2[i16 + 1] = (byte) ((cCharAt2 & '?') | 128);
                        segmentWritableSegment$okio2.limit = i16 + 2;
                        setSize$okio(size() + 2);
                    } else if (cCharAt2 >= 55296 && cCharAt2 <= 57343) {
                        int i17 = i10 + 1;
                        char cCharAt3 = i17 < i11 ? string.charAt(i17) : (char) 0;
                        if (cCharAt2 <= 56319 && 56320 <= cCharAt3 && cCharAt3 < 57344) {
                            int i18 = (((cCharAt2 & 1023) << 10) | (cCharAt3 & 1023)) + 65536;
                            Segment segmentWritableSegment$okio3 = writableSegment$okio(4);
                            byte[] bArr3 = segmentWritableSegment$okio3.data;
                            int i19 = segmentWritableSegment$okio3.limit;
                            bArr3[i19] = (byte) ((i18 >> 18) | 240);
                            bArr3[i19 + 1] = (byte) (((i18 >> 12) & 63) | 128);
                            bArr3[i19 + 2] = (byte) (((i18 >> 6) & 63) | 128);
                            bArr3[i19 + 3] = (byte) ((i18 & 63) | 128);
                            segmentWritableSegment$okio3.limit = i19 + 4;
                            setSize$okio(size() + 4);
                            i10 += 2;
                        } else {
                            writeByte(63);
                            i10 = i17;
                        }
                    } else {
                        Segment segmentWritableSegment$okio4 = writableSegment$okio(3);
                        byte[] bArr4 = segmentWritableSegment$okio4.data;
                        int i20 = segmentWritableSegment$okio4.limit;
                        bArr4[i20] = (byte) ((cCharAt2 >> '\f') | 224);
                        bArr4[i20 + 1] = (byte) ((63 & (cCharAt2 >> 6)) | 128);
                        bArr4[i20 + 2] = (byte) ((cCharAt2 & '?') | 128);
                        segmentWritableSegment$okio4.limit = i20 + 3;
                        setSize$okio(size() + 3);
                    }
                    i10++;
                }
            }
            return this;
        }
        throw new IllegalArgumentException(("endIndex < beginIndex: " + i11 + " < " + i10).toString());
    }

    @Override // okio.BufferedSource
    public void readFully(@NotNull byte[] sink) throws EOFException {
        kotlin.jvm.internal.t.j(sink, "sink");
        int i10 = 0;
        while (i10 < sink.length) {
            int i11 = read(sink, i10, sink.length - i10);
            if (i11 == -1) {
                throw new EOFException();
            }
            i10 += i11;
        }
    }

    @Override // okio.BufferedSink
    @NotNull
    public Buffer writeString(@NotNull String string, int i10, int i11, @NotNull Charset charset) {
        kotlin.jvm.internal.t.j(string, "string");
        kotlin.jvm.internal.t.j(charset, "charset");
        if (i10 < 0) {
            throw new IllegalArgumentException(("beginIndex < 0: " + i10).toString());
        }
        if (i11 >= i10) {
            if (i11 <= string.length()) {
                if (kotlin.jvm.internal.t.e(charset, kotlin.text.d.UTF_8)) {
                    return writeUtf8(string, i10, i11);
                }
                String strSubstring = string.substring(i10, i11);
                kotlin.jvm.internal.t.i(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
                byte[] bytes = strSubstring.getBytes(charset);
                kotlin.jvm.internal.t.i(bytes, "this as java.lang.String).getBytes(charset)");
                return write(bytes, 0, bytes.length);
            }
            throw new IllegalArgumentException(("endIndex > string.length: " + i11 + " > " + string.length()).toString());
        }
        throw new IllegalArgumentException(("endIndex < beginIndex: " + i11 + " < " + i10).toString());
    }

    @Override // java.nio.channels.WritableByteChannel
    public int write(@NotNull ByteBuffer source) throws IOException {
        kotlin.jvm.internal.t.j(source, "source");
        int iRemaining = source.remaining();
        int i10 = iRemaining;
        while (i10 > 0) {
            Segment segmentWritableSegment$okio = writableSegment$okio(1);
            int iMin = Math.min(i10, 8192 - segmentWritableSegment$okio.limit);
            source.get(segmentWritableSegment$okio.data, segmentWritableSegment$okio.limit, iMin);
            i10 -= iMin;
            segmentWritableSegment$okio.limit += iMin;
        }
        this.size += (long) iRemaining;
        return iRemaining;
    }

    @Override // okio.BufferedSource
    public int read(@NotNull byte[] sink) {
        kotlin.jvm.internal.t.j(sink, "sink");
        return read(sink, 0, sink.length);
    }

    @Override // okio.BufferedSource
    public int read(@NotNull byte[] sink, int i10, int i11) {
        kotlin.jvm.internal.t.j(sink, "sink");
        _UtilKt.checkOffsetAndCount(sink.length, i10, i11);
        Segment segment = this.head;
        if (segment == null) {
            return -1;
        }
        int iMin = Math.min(i11, segment.limit - segment.pos);
        byte[] bArr = segment.data;
        int i12 = segment.pos;
        kotlin.collections.o.d(bArr, sink, i10, i12, i12 + iMin);
        segment.pos += iMin;
        setSize$okio(size() - ((long) iMin));
        if (segment.pos == segment.limit) {
            this.head = segment.pop();
            SegmentPool.recycle(segment);
        }
        return iMin;
    }

    @NotNull
    public final Buffer copyTo(@NotNull Buffer out, long j6) {
        kotlin.jvm.internal.t.j(out, "out");
        return copyTo(out, j6, this.size - j6);
    }

    @Override // okio.BufferedSink
    @NotNull
    public Buffer write(@NotNull ByteString byteString) {
        kotlin.jvm.internal.t.j(byteString, "byteString");
        byteString.write$okio(this, 0, byteString.size());
        return this;
    }

    @NotNull
    public final Buffer copyTo(@NotNull Buffer out, long j6, long j10) {
        kotlin.jvm.internal.t.j(out, "out");
        _UtilKt.checkOffsetAndCount(size(), j6, j10);
        if (j10 != 0) {
            out.setSize$okio(out.size() + j10);
            Segment segment = this.head;
            while (true) {
                kotlin.jvm.internal.t.g(segment);
                int i10 = segment.limit;
                int i11 = segment.pos;
                if (j6 < i10 - i11) {
                    break;
                }
                j6 -= (long) (i10 - i11);
                segment = segment.next;
            }
            while (j10 > 0) {
                kotlin.jvm.internal.t.g(segment);
                Segment segmentSharedCopy = segment.sharedCopy();
                int i12 = segmentSharedCopy.pos + ((int) j6);
                segmentSharedCopy.pos = i12;
                segmentSharedCopy.limit = Math.min(i12 + ((int) j10), segmentSharedCopy.limit);
                Segment segment2 = out.head;
                if (segment2 == null) {
                    segmentSharedCopy.prev = segmentSharedCopy;
                    segmentSharedCopy.next = segmentSharedCopy;
                    out.head = segmentSharedCopy;
                } else {
                    kotlin.jvm.internal.t.g(segment2);
                    Segment segment3 = segment2.prev;
                    kotlin.jvm.internal.t.g(segment3);
                    segment3.push(segmentSharedCopy);
                }
                j10 -= (long) (segmentSharedCopy.limit - segmentSharedCopy.pos);
                segment = segment.next;
                j6 = 0;
            }
        }
        return this;
    }

    @Override // okio.BufferedSink
    @NotNull
    public Buffer write(@NotNull ByteString byteString, int i10, int i11) {
        kotlin.jvm.internal.t.j(byteString, "byteString");
        byteString.write$okio(this, i10, i11);
        return this;
    }

    @Override // okio.BufferedSink
    @NotNull
    public Buffer write(@NotNull byte[] source) {
        kotlin.jvm.internal.t.j(source, "source");
        return write(source, 0, source.length);
    }

    @Override // okio.BufferedSink
    @NotNull
    public Buffer write(@NotNull byte[] source, int i10, int i11) {
        kotlin.jvm.internal.t.j(source, "source");
        long j6 = i11;
        _UtilKt.checkOffsetAndCount(source.length, i10, j6);
        int i12 = i11 + i10;
        while (i10 < i12) {
            Segment segmentWritableSegment$okio = writableSegment$okio(1);
            int iMin = Math.min(i12 - i10, 8192 - segmentWritableSegment$okio.limit);
            int i13 = i10 + iMin;
            kotlin.collections.o.d(source, segmentWritableSegment$okio.data, segmentWritableSegment$okio.limit, i10, i13);
            segmentWritableSegment$okio.limit += iMin;
            i10 = i13;
        }
        setSize$okio(size() + j6);
        return this;
    }

    @Override // okio.Source
    public long read(@NotNull Buffer sink, long j6) {
        kotlin.jvm.internal.t.j(sink, "sink");
        if (j6 < 0) {
            throw new IllegalArgumentException(("byteCount < 0: " + j6).toString());
        }
        if (size() == 0) {
            return -1L;
        }
        if (j6 > size()) {
            j6 = size();
        }
        sink.write(this, j6);
        return j6;
    }

    @Override // okio.BufferedSink
    @NotNull
    public Buffer write(@NotNull Source source, long j6) throws IOException {
        kotlin.jvm.internal.t.j(source, "source");
        while (j6 > 0) {
            long j10 = source.read(this, j6);
            if (j10 == -1) {
                throw new EOFException();
            }
            j6 -= j10;
        }
        return this;
    }

    @Override // okio.BufferedSource
    public long indexOf(@NotNull ByteString bytes, long j6) throws IOException {
        int i10;
        long j10 = j6;
        kotlin.jvm.internal.t.j(bytes, "bytes");
        if (bytes.size() <= 0) {
            throw new IllegalArgumentException("bytes is empty".toString());
        }
        long size = 0;
        if (j10 < 0) {
            throw new IllegalArgumentException(("fromIndex < 0: " + j10).toString());
        }
        Segment segment = this.head;
        if (segment != null) {
            if (size() - j10 < j10) {
                size = size();
                while (size > j10) {
                    segment = segment.prev;
                    kotlin.jvm.internal.t.g(segment);
                    size -= (long) (segment.limit - segment.pos);
                }
                byte[] bArrInternalArray$okio = bytes.internalArray$okio();
                byte b7 = bArrInternalArray$okio[0];
                int size2 = bytes.size();
                long size3 = (size() - ((long) size2)) + 1;
                while (size < size3) {
                    byte[] bArr = segment.data;
                    long j11 = size3;
                    int iMin = (int) Math.min(segment.limit, (((long) segment.pos) + size3) - size);
                    i10 = (int) ((((long) segment.pos) + j10) - size);
                    while (i10 < iMin) {
                        if (bArr[i10] == b7 && _BufferKt.rangeEquals(segment, i10 + 1, bArrInternalArray$okio, 1, size2)) {
                            return ((long) (i10 - segment.pos)) + size;
                        }
                        i10++;
                    }
                    size += (long) (segment.limit - segment.pos);
                    segment = segment.next;
                    kotlin.jvm.internal.t.g(segment);
                    j10 = size;
                    size3 = j11;
                }
            } else {
                while (true) {
                    long j12 = ((long) (segment.limit - segment.pos)) + size;
                    if (j12 > j10) {
                        break;
                    }
                    segment = segment.next;
                    kotlin.jvm.internal.t.g(segment);
                    size = j12;
                }
                byte[] bArrInternalArray$okio2 = bytes.internalArray$okio();
                byte b10 = bArrInternalArray$okio2[0];
                int size4 = bytes.size();
                long size5 = (size() - ((long) size4)) + 1;
                while (size < size5) {
                    byte[] bArr2 = segment.data;
                    int iMin2 = (int) Math.min(segment.limit, (((long) segment.pos) + size5) - size);
                    i10 = (int) ((((long) segment.pos) + j10) - size);
                    while (i10 < iMin2) {
                        if (bArr2[i10] == b10 && _BufferKt.rangeEquals(segment, i10 + 1, bArrInternalArray$okio2, 1, size4)) {
                            return ((long) (i10 - segment.pos)) + size;
                        }
                        i10++;
                    }
                    size += (long) (segment.limit - segment.pos);
                    segment = segment.next;
                    kotlin.jvm.internal.t.g(segment);
                    j10 = size;
                }
            }
        }
        return -1L;
    }

    @Override // okio.Sink
    public void write(@NotNull Buffer source, long j6) {
        Segment segment;
        kotlin.jvm.internal.t.j(source, "source");
        if (source != this) {
            _UtilKt.checkOffsetAndCount(source.size(), 0L, j6);
            while (j6 > 0) {
                Segment segment2 = source.head;
                kotlin.jvm.internal.t.g(segment2);
                int i10 = segment2.limit;
                Segment segment3 = source.head;
                kotlin.jvm.internal.t.g(segment3);
                if (j6 < i10 - segment3.pos) {
                    Segment segment4 = this.head;
                    if (segment4 != null) {
                        kotlin.jvm.internal.t.g(segment4);
                        segment = segment4.prev;
                    } else {
                        segment = null;
                    }
                    if (segment != null && segment.owner) {
                        if ((((long) segment.limit) + j6) - ((long) (segment.shared ? 0 : segment.pos)) <= PlaybackStateCompat.ACTION_PLAY_FROM_URI) {
                            Segment segment5 = source.head;
                            kotlin.jvm.internal.t.g(segment5);
                            segment5.writeTo(segment, (int) j6);
                            source.setSize$okio(source.size() - j6);
                            setSize$okio(size() + j6);
                            return;
                        }
                    }
                    Segment segment6 = source.head;
                    kotlin.jvm.internal.t.g(segment6);
                    source.head = segment6.split((int) j6);
                }
                Segment segment7 = source.head;
                kotlin.jvm.internal.t.g(segment7);
                long j10 = segment7.limit - segment7.pos;
                source.head = segment7.pop();
                Segment segment8 = this.head;
                if (segment8 == null) {
                    this.head = segment7;
                    segment7.prev = segment7;
                    segment7.next = segment7;
                } else {
                    kotlin.jvm.internal.t.g(segment8);
                    Segment segment9 = segment8.prev;
                    kotlin.jvm.internal.t.g(segment9);
                    segment9.push(segment7).compact();
                }
                source.setSize$okio(source.size() - j10);
                setSize$okio(size() + j10);
                j6 -= j10;
            }
            return;
        }
        throw new IllegalArgumentException("source == this".toString());
    }
}
