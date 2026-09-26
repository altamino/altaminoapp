package okio.internal;

import android.support.v4.media.session.PlaybackStateCompat;
import androidx.work.WorkRequest;
import com.google.common.base.c;
import e8.p;
import java.io.EOFException;
import java.io.IOException;
import kotlin.collections.o;
import kotlin.jvm.internal.t;
import okhttp3.internal.connection.RealConnection;
import okio.Buffer;
import okio.ByteString;
import okio.Options;
import okio.Segment;
import okio.SegmentPool;
import okio.SegmentedByteString;
import okio.Sink;
import okio.Source;
import okio.Utf8;
import okio._JvmPlatformKt;
import okio._UtilKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
public final class _BufferKt {

    @NotNull
    private static final byte[] HEX_DIGIT_BYTES = _JvmPlatformKt.asUtf8ToByteArray("0123456789abcdef");
    public static final long OVERFLOW_DIGIT_START = -7;
    public static final long OVERFLOW_ZONE = -922337203685477580L;
    public static final int SEGMENTING_THRESHOLD = 4096;

    public static final long commonIndexOf(@NotNull Buffer buffer, byte b7, long j6, long j10) {
        Segment segment;
        int i10;
        t.j(buffer, "<this>");
        long size = 0;
        if (0 > j6 || j6 > j10) {
            throw new IllegalArgumentException(("size=" + buffer.size() + " fromIndex=" + j6 + " toIndex=" + j10).toString());
        }
        if (j10 > buffer.size()) {
            j10 = buffer.size();
        }
        if (j6 == j10 || (segment = buffer.head) == null) {
            return -1L;
        }
        if (buffer.size() - j6 < j6) {
            size = buffer.size();
            while (size > j6) {
                segment = segment.prev;
                t.g(segment);
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
                t.g(segment);
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
            t.g(segment);
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
            t.g(segment);
            j6 = size;
        }
        return -1L;
        return ((long) (i10 - segment.pos)) + size;
    }

    public static final int commonRead(@NotNull Buffer buffer, @NotNull byte[] sink) {
        t.j(buffer, "<this>");
        t.j(sink, "sink");
        return buffer.read(sink, 0, sink.length);
    }

    @NotNull
    public static final byte[] commonReadByteArray(@NotNull Buffer buffer) {
        t.j(buffer, "<this>");
        return buffer.readByteArray(buffer.size());
    }

    @NotNull
    public static final ByteString commonReadByteString(@NotNull Buffer buffer) {
        t.j(buffer, "<this>");
        return buffer.readByteString(buffer.size());
    }

    public static final void commonReadFully(@NotNull Buffer buffer, @NotNull byte[] sink) throws EOFException {
        t.j(buffer, "<this>");
        t.j(sink, "sink");
        int i10 = 0;
        while (i10 < sink.length) {
            int i11 = buffer.read(sink, i10, sink.length - i10);
            if (i11 == -1) {
                throw new EOFException();
            }
            i10 += i11;
        }
    }

    @NotNull
    public static final ByteString commonSnapshot(@NotNull Buffer buffer) {
        t.j(buffer, "<this>");
        if (buffer.size() <= 2147483647L) {
            return buffer.snapshot((int) buffer.size());
        }
        throw new IllegalStateException(("size > Int.MAX_VALUE: " + buffer.size()).toString());
    }

    @NotNull
    public static final Buffer commonWrite(@NotNull Buffer buffer, @NotNull ByteString byteString, int i10, int i11) {
        t.j(buffer, "<this>");
        t.j(byteString, "byteString");
        byteString.write$okio(buffer, i10, i11);
        return buffer;
    }

    @NotNull
    public static final byte[] getHEX_DIGIT_BYTES() {
        return HEX_DIGIT_BYTES;
    }

    public static /* synthetic */ void getHEX_DIGIT_BYTES$annotations() {
    }

    public static final void commonClear(@NotNull Buffer buffer) throws EOFException {
        t.j(buffer, "<this>");
        buffer.skip(buffer.size());
    }

    public static final void commonClose(@NotNull Buffer.UnsafeCursor unsafeCursor) {
        t.j(unsafeCursor, "<this>");
        if (unsafeCursor.buffer == null) {
            throw new IllegalStateException("not attached to a buffer".toString());
        }
        unsafeCursor.buffer = null;
        unsafeCursor.setSegment$okio(null);
        unsafeCursor.offset = -1L;
        unsafeCursor.data = null;
        unsafeCursor.start = -1;
        unsafeCursor.end = -1;
    }

    public static final long commonCompleteSegmentByteCount(@NotNull Buffer buffer) {
        t.j(buffer, "<this>");
        long size = buffer.size();
        if (size == 0) {
            return 0L;
        }
        Segment segment = buffer.head;
        t.g(segment);
        Segment segment2 = segment.prev;
        t.g(segment2);
        int i10 = segment2.limit;
        return (i10 >= 8192 || !segment2.owner) ? size : size - ((long) (i10 - segment2.pos));
    }

    @NotNull
    public static final Buffer commonCopy(@NotNull Buffer buffer) {
        t.j(buffer, "<this>");
        Buffer buffer2 = new Buffer();
        if (buffer.size() == 0) {
            return buffer2;
        }
        Segment segment = buffer.head;
        t.g(segment);
        Segment segmentSharedCopy = segment.sharedCopy();
        buffer2.head = segmentSharedCopy;
        segmentSharedCopy.prev = segmentSharedCopy;
        segmentSharedCopy.next = segmentSharedCopy;
        for (Segment segment2 = segment.next; segment2 != segment; segment2 = segment2.next) {
            Segment segment3 = segmentSharedCopy.prev;
            t.g(segment3);
            t.g(segment2);
            segment3.push(segment2.sharedCopy());
        }
        buffer2.setSize$okio(buffer.size());
        return buffer2;
    }

    @NotNull
    public static final Buffer commonCopyTo(@NotNull Buffer buffer, @NotNull Buffer out, long j6, long j10) {
        t.j(buffer, "<this>");
        t.j(out, "out");
        _UtilKt.checkOffsetAndCount(buffer.size(), j6, j10);
        if (j10 == 0) {
            return buffer;
        }
        out.setSize$okio(out.size() + j10);
        Segment segment = buffer.head;
        while (true) {
            t.g(segment);
            int i10 = segment.limit;
            int i11 = segment.pos;
            if (j6 < i10 - i11) {
                break;
            }
            j6 -= (long) (i10 - i11);
            segment = segment.next;
        }
        while (j10 > 0) {
            t.g(segment);
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
                t.g(segment2);
                Segment segment3 = segment2.prev;
                t.g(segment3);
                segment3.push(segmentSharedCopy);
            }
            j10 -= (long) (segmentSharedCopy.limit - segmentSharedCopy.pos);
            segment = segment.next;
            j6 = 0;
        }
        return buffer;
    }

    public static final boolean commonEquals(@NotNull Buffer buffer, @Nullable Object obj) {
        t.j(buffer, "<this>");
        if (buffer == obj) {
            return true;
        }
        if (!(obj instanceof Buffer)) {
            return false;
        }
        Buffer buffer2 = (Buffer) obj;
        if (buffer.size() != buffer2.size()) {
            return false;
        }
        if (buffer.size() == 0) {
            return true;
        }
        Segment segment = buffer.head;
        t.g(segment);
        Segment segment2 = buffer2.head;
        t.g(segment2);
        int i10 = segment.pos;
        int i11 = segment2.pos;
        long j6 = 0;
        while (j6 < buffer.size()) {
            long jMin = Math.min(segment.limit - i10, segment2.limit - i11);
            long j10 = 0;
            while (j10 < jMin) {
                int i12 = i10 + 1;
                int i13 = i11 + 1;
                if (segment.data[i10] != segment2.data[i11]) {
                    return false;
                }
                j10++;
                i10 = i12;
                i11 = i13;
            }
            if (i10 == segment.limit) {
                segment = segment.next;
                t.g(segment);
                i10 = segment.pos;
            }
            if (i11 == segment2.limit) {
                segment2 = segment2.next;
                t.g(segment2);
                i11 = segment2.pos;
            }
            j6 += jMin;
        }
        return true;
    }

    public static final long commonExpandBuffer(@NotNull Buffer.UnsafeCursor unsafeCursor, int i10) {
        t.j(unsafeCursor, "<this>");
        if (i10 <= 0) {
            throw new IllegalArgumentException(("minByteCount <= 0: " + i10).toString());
        }
        if (i10 > 8192) {
            throw new IllegalArgumentException(("minByteCount > Segment.SIZE: " + i10).toString());
        }
        Buffer buffer = unsafeCursor.buffer;
        if (buffer == null) {
            throw new IllegalStateException("not attached to a buffer".toString());
        }
        if (!unsafeCursor.readWrite) {
            throw new IllegalStateException("expandBuffer() only permitted for read/write buffers".toString());
        }
        long size = buffer.size();
        Segment segmentWritableSegment$okio = buffer.writableSegment$okio(i10);
        int i11 = 8192 - segmentWritableSegment$okio.limit;
        segmentWritableSegment$okio.limit = 8192;
        long j6 = i11;
        buffer.setSize$okio(size + j6);
        unsafeCursor.setSegment$okio(segmentWritableSegment$okio);
        unsafeCursor.offset = size;
        unsafeCursor.data = segmentWritableSegment$okio.data;
        unsafeCursor.start = 8192 - i11;
        unsafeCursor.end = 8192;
        return j6;
    }

    public static final byte commonGet(@NotNull Buffer buffer, long j6) {
        t.j(buffer, "<this>");
        _UtilKt.checkOffsetAndCount(buffer.size(), j6, 1L);
        Segment segment = buffer.head;
        if (segment == null) {
            t.g(null);
            throw null;
        }
        if (buffer.size() - j6 < j6) {
            long size = buffer.size();
            while (size > j6) {
                segment = segment.prev;
                t.g(segment);
                size -= (long) (segment.limit - segment.pos);
            }
            t.g(segment);
            return segment.data[(int) ((((long) segment.pos) + j6) - size)];
        }
        long j10 = 0;
        while (true) {
            long j11 = ((long) (segment.limit - segment.pos)) + j10;
            if (j11 > j6) {
                t.g(segment);
                return segment.data[(int) ((((long) segment.pos) + j6) - j10)];
            }
            segment = segment.next;
            t.g(segment);
            j10 = j11;
        }
    }

    public static final int commonHashCode(@NotNull Buffer buffer) {
        t.j(buffer, "<this>");
        Segment segment = buffer.head;
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
            t.g(segment);
        } while (segment != buffer.head);
        return i10;
    }

    public static final long commonIndexOfElement(@NotNull Buffer buffer, @NotNull ByteString targetBytes, long j6) {
        int i10;
        int i11;
        t.j(buffer, "<this>");
        t.j(targetBytes, "targetBytes");
        long size = 0;
        if (j6 < 0) {
            throw new IllegalArgumentException(("fromIndex < 0: " + j6).toString());
        }
        Segment segment = buffer.head;
        if (segment == null) {
            return -1L;
        }
        if (buffer.size() - j6 < j6) {
            size = buffer.size();
            while (size > j6) {
                segment = segment.prev;
                t.g(segment);
                size -= (long) (segment.limit - segment.pos);
            }
            if (targetBytes.size() == 2) {
                byte b7 = targetBytes.getByte(0);
                byte b10 = targetBytes.getByte(1);
                while (size < buffer.size()) {
                    byte[] bArr = segment.data;
                    i10 = (int) ((((long) segment.pos) + j6) - size);
                    int i12 = segment.limit;
                    while (true) {
                        if (i10 >= i12) {
                            size += (long) (segment.limit - segment.pos);
                            segment = segment.next;
                            t.g(segment);
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
            } else {
                byte[] bArrInternalArray$okio = targetBytes.internalArray$okio();
                while (size < buffer.size()) {
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
                            t.g(segment);
                            j6 = size;
                        }
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
            t.g(segment);
            size = j10;
        }
        if (targetBytes.size() == 2) {
            byte b13 = targetBytes.getByte(0);
            byte b14 = targetBytes.getByte(1);
            while (size < buffer.size()) {
                byte[] bArr3 = segment.data;
                i10 = (int) ((((long) segment.pos) + j6) - size);
                int i15 = segment.limit;
                while (true) {
                    if (i10 >= i15) {
                        size += (long) (segment.limit - segment.pos);
                        segment = segment.next;
                        t.g(segment);
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
        } else {
            byte[] bArrInternalArray$okio2 = targetBytes.internalArray$okio();
            while (size < buffer.size()) {
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
                        t.g(segment);
                        j6 = size;
                    }
                }
            }
        }
        return -1L;
        return ((long) (i10 - i11)) + size;
    }

    public static final int commonNext(@NotNull Buffer.UnsafeCursor unsafeCursor) {
        t.j(unsafeCursor, "<this>");
        long j6 = unsafeCursor.offset;
        Buffer buffer = unsafeCursor.buffer;
        t.g(buffer);
        if (j6 == buffer.size()) {
            throw new IllegalStateException("no more bytes".toString());
        }
        long j10 = unsafeCursor.offset;
        return unsafeCursor.seek(j10 == -1 ? 0L : j10 + ((long) (unsafeCursor.end - unsafeCursor.start)));
    }

    public static final boolean commonRangeEquals(@NotNull Buffer buffer, long j6, @NotNull ByteString bytes, int i10, int i11) {
        t.j(buffer, "<this>");
        t.j(bytes, "bytes");
        if (j6 < 0 || i10 < 0 || i11 < 0 || buffer.size() - j6 < i11 || bytes.size() - i10 < i11) {
            return false;
        }
        for (int i12 = 0; i12 < i11; i12++) {
            if (buffer.getByte(((long) i12) + j6) != bytes.getByte(i10 + i12)) {
                return false;
            }
        }
        return true;
    }

    public static final int commonRead(@NotNull Buffer buffer, @NotNull byte[] sink, int i10, int i11) {
        t.j(buffer, "<this>");
        t.j(sink, "sink");
        _UtilKt.checkOffsetAndCount(sink.length, i10, i11);
        Segment segment = buffer.head;
        if (segment == null) {
            return -1;
        }
        int iMin = Math.min(i11, segment.limit - segment.pos);
        byte[] bArr = segment.data;
        int i12 = segment.pos;
        o.d(bArr, sink, i10, i12, i12 + iMin);
        segment.pos += iMin;
        buffer.setSize$okio(buffer.size() - ((long) iMin));
        if (segment.pos == segment.limit) {
            buffer.head = segment.pop();
            SegmentPool.recycle(segment);
        }
        return iMin;
    }

    public static final long commonReadAll(@NotNull Buffer buffer, @NotNull Sink sink) throws IOException {
        t.j(buffer, "<this>");
        t.j(sink, "sink");
        long size = buffer.size();
        if (size > 0) {
            sink.write(buffer, size);
        }
        return size;
    }

    @NotNull
    public static final Buffer.UnsafeCursor commonReadAndWriteUnsafe(@NotNull Buffer buffer, @NotNull Buffer.UnsafeCursor unsafeCursor) {
        t.j(buffer, "<this>");
        t.j(unsafeCursor, "unsafeCursor");
        Buffer.UnsafeCursor unsafeCursorResolveDefaultParameter = _UtilKt.resolveDefaultParameter(unsafeCursor);
        if (unsafeCursorResolveDefaultParameter.buffer != null) {
            throw new IllegalStateException("already attached to a buffer".toString());
        }
        unsafeCursorResolveDefaultParameter.buffer = buffer;
        unsafeCursorResolveDefaultParameter.readWrite = true;
        return unsafeCursorResolveDefaultParameter;
    }

    public static final byte commonReadByte(@NotNull Buffer buffer) throws EOFException {
        t.j(buffer, "<this>");
        if (buffer.size() == 0) {
            throw new EOFException();
        }
        Segment segment = buffer.head;
        t.g(segment);
        int i10 = segment.pos;
        int i11 = segment.limit;
        int i12 = i10 + 1;
        byte b7 = segment.data[i10];
        buffer.setSize$okio(buffer.size() - 1);
        if (i12 == i11) {
            buffer.head = segment.pop();
            SegmentPool.recycle(segment);
        } else {
            segment.pos = i12;
        }
        return b7;
    }

    @NotNull
    public static final byte[] commonReadByteArray(@NotNull Buffer buffer, long j6) throws EOFException {
        t.j(buffer, "<this>");
        if (j6 < 0 || j6 > 2147483647L) {
            throw new IllegalArgumentException(("byteCount: " + j6).toString());
        }
        if (buffer.size() < j6) {
            throw new EOFException();
        }
        byte[] bArr = new byte[(int) j6];
        buffer.readFully(bArr);
        return bArr;
    }

    @NotNull
    public static final ByteString commonReadByteString(@NotNull Buffer buffer, long j6) throws EOFException {
        t.j(buffer, "<this>");
        if (j6 < 0 || j6 > 2147483647L) {
            throw new IllegalArgumentException(("byteCount: " + j6).toString());
        }
        if (buffer.size() < j6) {
            throw new EOFException();
        }
        if (j6 < PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM) {
            return new ByteString(buffer.readByteArray(j6));
        }
        ByteString byteStringSnapshot = buffer.snapshot((int) j6);
        buffer.skip(j6);
        return byteStringSnapshot;
    }

    public static final long commonReadDecimalLong(@NotNull Buffer buffer) throws EOFException {
        t.j(buffer, "<this>");
        if (buffer.size() == 0) {
            throw new EOFException();
        }
        int i10 = 0;
        boolean z6 = false;
        long j6 = 0;
        long j10 = -7;
        boolean z10 = false;
        do {
            Segment segment = buffer.head;
            t.g(segment);
            byte[] bArr = segment.data;
            int i11 = segment.pos;
            int i12 = segment.limit;
            while (i11 < i12) {
                byte b7 = bArr[i11];
                byte b10 = (byte) 48;
                if (b7 >= b10 && b7 <= ((byte) 57)) {
                    int i13 = b10 - b7;
                    if (j6 < OVERFLOW_ZONE || (j6 == OVERFLOW_ZONE && i13 < j10)) {
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
                buffer.head = segment.pop();
                SegmentPool.recycle(segment);
            } else {
                segment.pos = i11;
            }
            if (z10) {
                break;
            }
        } while (buffer.head != null);
        buffer.setSize$okio(buffer.size() - ((long) i10));
        if (i10 >= (z6 ? 2 : 1)) {
            return z6 ? j6 : -j6;
        }
        if (buffer.size() == 0) {
            throw new EOFException();
        }
        throw new NumberFormatException((z6 ? "Expected a digit" : "Expected a digit or '-'") + " but was 0x" + _UtilKt.toHexString(buffer.getByte(0L)));
    }

    public static final long commonReadHexadecimalUnsignedLong(@NotNull Buffer buffer) throws EOFException {
        int i10;
        t.j(buffer, "<this>");
        if (buffer.size() == 0) {
            throw new EOFException();
        }
        int i11 = 0;
        boolean z6 = false;
        long j6 = 0;
        do {
            Segment segment = buffer.head;
            t.g(segment);
            byte[] bArr = segment.data;
            int i12 = segment.pos;
            int i13 = segment.limit;
            while (i12 < i13) {
                byte b7 = bArr[i12];
                byte b10 = (byte) 48;
                if (b7 < b10 || b7 > ((byte) 57)) {
                    byte b11 = (byte) 97;
                    if ((b7 < b11 || b7 > ((byte) 102)) && (b7 < (b11 = (byte) 65) || b7 > ((byte) 70))) {
                        if (i11 != 0) {
                            z6 = true;
                            break;
                        }
                        throw new NumberFormatException("Expected leading [0-9a-fA-F] character but was 0x" + _UtilKt.toHexString(b7));
                    }
                    i10 = (b7 - b11) + 10;
                } else {
                    i10 = b7 - b10;
                }
                if (((-1152921504606846976L) & j6) != 0) {
                    throw new NumberFormatException("Number too large: " + new Buffer().writeHexadecimalUnsignedLong(j6).writeByte((int) b7).readUtf8());
                }
                j6 = (j6 << 4) | ((long) i10);
                i12++;
                i11++;
            }
            if (i12 == i13) {
                buffer.head = segment.pop();
                SegmentPool.recycle(segment);
            } else {
                segment.pos = i12;
            }
            if (z6) {
                break;
            }
        } while (buffer.head != null);
        buffer.setSize$okio(buffer.size() - ((long) i11));
        return j6;
    }

    public static final int commonReadInt(@NotNull Buffer buffer) throws EOFException {
        t.j(buffer, "<this>");
        if (buffer.size() < 4) {
            throw new EOFException();
        }
        Segment segment = buffer.head;
        t.g(segment);
        int i10 = segment.pos;
        int i11 = segment.limit;
        if (i11 - i10 < 4) {
            return (buffer.readByte() & 255) | ((buffer.readByte() & 255) << 24) | ((buffer.readByte() & 255) << 16) | ((buffer.readByte() & 255) << 8);
        }
        byte[] bArr = segment.data;
        int i12 = i10 + 3;
        int i13 = ((bArr[i10 + 1] & 255) << 16) | ((bArr[i10] & 255) << 24) | ((bArr[i10 + 2] & 255) << 8);
        int i14 = i10 + 4;
        int i15 = (bArr[i12] & 255) | i13;
        buffer.setSize$okio(buffer.size() - 4);
        if (i14 == i11) {
            buffer.head = segment.pop();
            SegmentPool.recycle(segment);
        } else {
            segment.pos = i14;
        }
        return i15;
    }

    public static final long commonReadLong(@NotNull Buffer buffer) throws EOFException {
        t.j(buffer, "<this>");
        if (buffer.size() < 8) {
            throw new EOFException();
        }
        Segment segment = buffer.head;
        t.g(segment);
        int i10 = segment.pos;
        int i11 = segment.limit;
        if (i11 - i10 < 8) {
            return ((((long) buffer.readInt()) & 4294967295L) << 32) | (4294967295L & ((long) buffer.readInt()));
        }
        byte[] bArr = segment.data;
        int i12 = i10 + 7;
        long j6 = ((((long) bArr[i10]) & 255) << 56) | ((((long) bArr[i10 + 1]) & 255) << 48) | ((((long) bArr[i10 + 2]) & 255) << 40) | ((((long) bArr[i10 + 3]) & 255) << 32) | ((((long) bArr[i10 + 4]) & 255) << 24) | ((((long) bArr[i10 + 5]) & 255) << 16) | ((((long) bArr[i10 + 6]) & 255) << 8);
        int i13 = i10 + 8;
        long j10 = j6 | (((long) bArr[i12]) & 255);
        buffer.setSize$okio(buffer.size() - 8);
        if (i13 == i11) {
            buffer.head = segment.pop();
            SegmentPool.recycle(segment);
        } else {
            segment.pos = i13;
        }
        return j10;
    }

    public static final short commonReadShort(@NotNull Buffer buffer) throws EOFException {
        t.j(buffer, "<this>");
        if (buffer.size() < 2) {
            throw new EOFException();
        }
        Segment segment = buffer.head;
        t.g(segment);
        int i10 = segment.pos;
        int i11 = segment.limit;
        if (i11 - i10 < 2) {
            return (short) ((buffer.readByte() & 255) | ((buffer.readByte() & 255) << 8));
        }
        byte[] bArr = segment.data;
        int i12 = i10 + 1;
        int i13 = (bArr[i10] & 255) << 8;
        int i14 = i10 + 2;
        int i15 = (bArr[i12] & 255) | i13;
        buffer.setSize$okio(buffer.size() - 2);
        if (i14 == i11) {
            buffer.head = segment.pop();
            SegmentPool.recycle(segment);
        } else {
            segment.pos = i14;
        }
        return (short) i15;
    }

    @NotNull
    public static final Buffer.UnsafeCursor commonReadUnsafe(@NotNull Buffer buffer, @NotNull Buffer.UnsafeCursor unsafeCursor) {
        t.j(buffer, "<this>");
        t.j(unsafeCursor, "unsafeCursor");
        Buffer.UnsafeCursor unsafeCursorResolveDefaultParameter = _UtilKt.resolveDefaultParameter(unsafeCursor);
        if (unsafeCursorResolveDefaultParameter.buffer != null) {
            throw new IllegalStateException("already attached to a buffer".toString());
        }
        unsafeCursorResolveDefaultParameter.buffer = buffer;
        unsafeCursorResolveDefaultParameter.readWrite = false;
        return unsafeCursorResolveDefaultParameter;
    }

    @NotNull
    public static final String commonReadUtf8(@NotNull Buffer buffer, long j6) throws EOFException {
        t.j(buffer, "<this>");
        if (j6 < 0 || j6 > 2147483647L) {
            throw new IllegalArgumentException(("byteCount: " + j6).toString());
        }
        if (buffer.size() < j6) {
            throw new EOFException();
        }
        if (j6 == 0) {
            return "";
        }
        Segment segment = buffer.head;
        t.g(segment);
        int i10 = segment.pos;
        if (((long) i10) + j6 > segment.limit) {
            return _Utf8Kt.commonToUtf8String$default(buffer.readByteArray(j6), 0, 0, 3, null);
        }
        int i11 = (int) j6;
        String strCommonToUtf8String = _Utf8Kt.commonToUtf8String(segment.data, i10, i10 + i11);
        segment.pos += i11;
        buffer.setSize$okio(buffer.size() - j6);
        if (segment.pos == segment.limit) {
            buffer.head = segment.pop();
            SegmentPool.recycle(segment);
        }
        return strCommonToUtf8String;
    }

    public static final int commonReadUtf8CodePoint(@NotNull Buffer buffer) throws EOFException {
        int i10;
        int i11;
        int i12;
        t.j(buffer, "<this>");
        if (buffer.size() == 0) {
            throw new EOFException();
        }
        byte b7 = buffer.getByte(0L);
        if ((b7 & 128) == 0) {
            i10 = b7 & 127;
            i12 = 0;
            i11 = 1;
        } else if ((b7 & 224) == 192) {
            i10 = b7 & c.US;
            i11 = 2;
            i12 = 128;
        } else if ((b7 & 240) == 224) {
            i10 = b7 & c.SI;
            i11 = 3;
            i12 = 2048;
        } else {
            if ((b7 & 248) != 240) {
                buffer.skip(1L);
                return Utf8.REPLACEMENT_CODE_POINT;
            }
            i10 = b7 & 7;
            i11 = 4;
            i12 = 65536;
        }
        long j6 = i11;
        if (buffer.size() < j6) {
            throw new EOFException("size < " + i11 + ": " + buffer.size() + " (to read code point prefixed 0x" + _UtilKt.toHexString(b7) + ')');
        }
        for (int i13 = 1; i13 < i11; i13++) {
            long j10 = i13;
            byte b10 = buffer.getByte(j10);
            if ((b10 & 192) != 128) {
                buffer.skip(j10);
                return Utf8.REPLACEMENT_CODE_POINT;
            }
            i10 = (i10 << 6) | (b10 & Utf8.REPLACEMENT_BYTE);
        }
        buffer.skip(j6);
        if (i10 > 1114111) {
            return Utf8.REPLACEMENT_CODE_POINT;
        }
        return ((55296 > i10 || i10 >= 57344) && i10 >= i12) ? i10 : Utf8.REPLACEMENT_CODE_POINT;
    }

    @Nullable
    public static final String commonReadUtf8Line(@NotNull Buffer buffer) {
        t.j(buffer, "<this>");
        long jIndexOf = buffer.indexOf((byte) 10);
        if (jIndexOf != -1) {
            return readUtf8Line(buffer, jIndexOf);
        }
        if (buffer.size() != 0) {
            return buffer.readUtf8(buffer.size());
        }
        return null;
    }

    @NotNull
    public static final String commonReadUtf8LineStrict(@NotNull Buffer buffer, long j6) throws EOFException {
        t.j(buffer, "<this>");
        if (j6 < 0) {
            throw new IllegalArgumentException(("limit < 0: " + j6).toString());
        }
        long j10 = j6 != Long.MAX_VALUE ? j6 + 1 : Long.MAX_VALUE;
        byte b7 = (byte) 10;
        long jIndexOf = buffer.indexOf(b7, 0L, j10);
        if (jIndexOf != -1) {
            return readUtf8Line(buffer, jIndexOf);
        }
        if (j10 < buffer.size() && buffer.getByte(j10 - 1) == ((byte) 13) && buffer.getByte(j10) == b7) {
            return readUtf8Line(buffer, j10);
        }
        Buffer buffer2 = new Buffer();
        buffer.copyTo(buffer2, 0L, Math.min(32, buffer.size()));
        throw new EOFException("\\n not found: limit=" + Math.min(buffer.size(), j6) + " content=" + buffer2.readByteString().hex() + (char) 8230);
    }

    public static final long commonResizeBuffer(@NotNull Buffer.UnsafeCursor unsafeCursor, long j6) {
        t.j(unsafeCursor, "<this>");
        Buffer buffer = unsafeCursor.buffer;
        if (buffer == null) {
            throw new IllegalStateException("not attached to a buffer".toString());
        }
        if (!unsafeCursor.readWrite) {
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
                t.g(segment);
                Segment segment2 = segment.prev;
                t.g(segment2);
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
            unsafeCursor.setSegment$okio(null);
            unsafeCursor.offset = j6;
            unsafeCursor.data = null;
            unsafeCursor.start = -1;
            unsafeCursor.end = -1;
        } else if (j6 > size) {
            long j12 = j6 - size;
            boolean z6 = true;
            while (j12 > 0) {
                Segment segmentWritableSegment$okio = buffer.writableSegment$okio(1);
                int iMin = (int) Math.min(j12, 8192 - segmentWritableSegment$okio.limit);
                segmentWritableSegment$okio.limit += iMin;
                j12 -= (long) iMin;
                if (z6) {
                    unsafeCursor.setSegment$okio(segmentWritableSegment$okio);
                    unsafeCursor.offset = size;
                    unsafeCursor.data = segmentWritableSegment$okio.data;
                    int i11 = segmentWritableSegment$okio.limit;
                    unsafeCursor.start = i11 - iMin;
                    unsafeCursor.end = i11;
                    z6 = false;
                }
            }
        }
        buffer.setSize$okio(j6);
        return size;
    }

    public static final int commonSeek(@NotNull Buffer.UnsafeCursor unsafeCursor, long j6) {
        Segment segmentPush;
        t.j(unsafeCursor, "<this>");
        Buffer buffer = unsafeCursor.buffer;
        if (buffer == null) {
            throw new IllegalStateException("not attached to a buffer".toString());
        }
        if (j6 < -1 || j6 > buffer.size()) {
            throw new ArrayIndexOutOfBoundsException("offset=" + j6 + " > size=" + buffer.size());
        }
        if (j6 == -1 || j6 == buffer.size()) {
            unsafeCursor.setSegment$okio(null);
            unsafeCursor.offset = j6;
            unsafeCursor.data = null;
            unsafeCursor.start = -1;
            unsafeCursor.end = -1;
            return -1;
        }
        long size = buffer.size();
        Segment segment$okio = buffer.head;
        long j10 = 0;
        if (unsafeCursor.getSegment$okio() != null) {
            long j11 = unsafeCursor.offset;
            int i10 = unsafeCursor.start;
            Segment segment$okio2 = unsafeCursor.getSegment$okio();
            t.g(segment$okio2);
            long j12 = j11 - ((long) (i10 - segment$okio2.pos));
            if (j12 > j6) {
                segmentPush = segment$okio;
                segment$okio = unsafeCursor.getSegment$okio();
                size = j12;
            } else {
                segmentPush = unsafeCursor.getSegment$okio();
                j10 = j12;
            }
        } else {
            segmentPush = segment$okio;
        }
        if (size - j6 > j6 - j10) {
            while (true) {
                t.g(segmentPush);
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
                t.g(segment$okio);
                segment$okio = segment$okio.prev;
                t.g(segment$okio);
                size -= (long) (segment$okio.limit - segment$okio.pos);
            }
            j10 = size;
            segmentPush = segment$okio;
        }
        if (unsafeCursor.readWrite) {
            t.g(segmentPush);
            if (segmentPush.shared) {
                Segment segmentUnsharedCopy = segmentPush.unsharedCopy();
                if (buffer.head == segmentPush) {
                    buffer.head = segmentUnsharedCopy;
                }
                segmentPush = segmentPush.push(segmentUnsharedCopy);
                Segment segment = segmentPush.prev;
                t.g(segment);
                segment.pop();
            }
        }
        unsafeCursor.setSegment$okio(segmentPush);
        unsafeCursor.offset = j6;
        t.g(segmentPush);
        unsafeCursor.data = segmentPush.data;
        int i13 = segmentPush.pos + ((int) (j6 - j10));
        unsafeCursor.start = i13;
        int i14 = segmentPush.limit;
        unsafeCursor.end = i14;
        return i14 - i13;
    }

    public static final int commonSelect(@NotNull Buffer buffer, @NotNull Options options) throws EOFException {
        t.j(buffer, "<this>");
        t.j(options, "options");
        int iSelectPrefix$default = selectPrefix$default(buffer, options, false, 2, null);
        if (iSelectPrefix$default == -1) {
            return -1;
        }
        buffer.skip(options.getByteStrings$okio()[iSelectPrefix$default].size());
        return iSelectPrefix$default;
    }

    public static final void commonSkip(@NotNull Buffer buffer, long j6) throws EOFException {
        t.j(buffer, "<this>");
        while (j6 > 0) {
            Segment segment = buffer.head;
            if (segment == null) {
                throw new EOFException();
            }
            int iMin = (int) Math.min(j6, segment.limit - segment.pos);
            long j10 = iMin;
            buffer.setSize$okio(buffer.size() - j10);
            j6 -= j10;
            int i10 = segment.pos + iMin;
            segment.pos = i10;
            if (i10 == segment.limit) {
                buffer.head = segment.pop();
                SegmentPool.recycle(segment);
            }
        }
    }

    @NotNull
    public static final Segment commonWritableSegment(@NotNull Buffer buffer, int i10) {
        t.j(buffer, "<this>");
        if (i10 < 1 || i10 > 8192) {
            throw new IllegalArgumentException("unexpected capacity".toString());
        }
        Segment segment = buffer.head;
        if (segment != null) {
            t.g(segment);
            Segment segment2 = segment.prev;
            t.g(segment2);
            return (segment2.limit + i10 > 8192 || !segment2.owner) ? segment2.push(SegmentPool.take()) : segment2;
        }
        Segment segmentTake = SegmentPool.take();
        buffer.head = segmentTake;
        segmentTake.prev = segmentTake;
        segmentTake.next = segmentTake;
        return segmentTake;
    }

    @NotNull
    public static final Buffer commonWrite(@NotNull Buffer buffer, @NotNull byte[] source) {
        t.j(buffer, "<this>");
        t.j(source, "source");
        return buffer.write(source, 0, source.length);
    }

    public static /* synthetic */ Buffer commonWrite$default(Buffer buffer, ByteString byteString, int i10, int i11, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i10 = 0;
        }
        if ((i12 & 4) != 0) {
            i11 = byteString.size();
        }
        t.j(buffer, "<this>");
        t.j(byteString, "byteString");
        byteString.write$okio(buffer, i10, i11);
        return buffer;
    }

    public static final long commonWriteAll(@NotNull Buffer buffer, @NotNull Source source) throws IOException {
        t.j(buffer, "<this>");
        t.j(source, "source");
        long j6 = 0;
        while (true) {
            long j10 = source.read(buffer, PlaybackStateCompat.ACTION_PLAY_FROM_URI);
            if (j10 == -1) {
                return j6;
            }
            j6 += j10;
        }
    }

    @NotNull
    public static final Buffer commonWriteByte(@NotNull Buffer buffer, int i10) {
        t.j(buffer, "<this>");
        Segment segmentWritableSegment$okio = buffer.writableSegment$okio(1);
        byte[] bArr = segmentWritableSegment$okio.data;
        int i11 = segmentWritableSegment$okio.limit;
        segmentWritableSegment$okio.limit = i11 + 1;
        bArr[i11] = (byte) i10;
        buffer.setSize$okio(buffer.size() + 1);
        return buffer;
    }

    @NotNull
    public static final Buffer commonWriteDecimalLong(@NotNull Buffer buffer, long j6) {
        boolean z6;
        t.j(buffer, "<this>");
        if (j6 == 0) {
            return buffer.writeByte(48);
        }
        int i10 = 1;
        if (j6 < 0) {
            j6 = -j6;
            if (j6 < 0) {
                return buffer.writeUtf8("-9223372036854775808");
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
        Segment segmentWritableSegment$okio = buffer.writableSegment$okio(i10);
        byte[] bArr = segmentWritableSegment$okio.data;
        int i11 = segmentWritableSegment$okio.limit + i10;
        while (j6 != 0) {
            long j10 = 10;
            i11--;
            bArr[i11] = getHEX_DIGIT_BYTES()[(int) (j6 % j10)];
            j6 /= j10;
        }
        if (z6) {
            bArr[i11 - 1] = (byte) 45;
        }
        segmentWritableSegment$okio.limit += i10;
        buffer.setSize$okio(buffer.size() + ((long) i10));
        return buffer;
    }

    @NotNull
    public static final Buffer commonWriteHexadecimalUnsignedLong(@NotNull Buffer buffer, long j6) {
        t.j(buffer, "<this>");
        if (j6 == 0) {
            return buffer.writeByte(48);
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
        Segment segmentWritableSegment$okio = buffer.writableSegment$okio(i10);
        byte[] bArr = segmentWritableSegment$okio.data;
        int i11 = segmentWritableSegment$okio.limit;
        for (int i12 = (i11 + i10) - 1; i12 >= i11; i12--) {
            bArr[i12] = getHEX_DIGIT_BYTES()[(int) (15 & j6)];
            j6 >>>= 4;
        }
        segmentWritableSegment$okio.limit += i10;
        buffer.setSize$okio(buffer.size() + ((long) i10));
        return buffer;
    }

    @NotNull
    public static final Buffer commonWriteInt(@NotNull Buffer buffer, int i10) {
        t.j(buffer, "<this>");
        Segment segmentWritableSegment$okio = buffer.writableSegment$okio(4);
        byte[] bArr = segmentWritableSegment$okio.data;
        int i11 = segmentWritableSegment$okio.limit;
        bArr[i11] = (byte) ((i10 >>> 24) & 255);
        bArr[i11 + 1] = (byte) ((i10 >>> 16) & 255);
        bArr[i11 + 2] = (byte) ((i10 >>> 8) & 255);
        bArr[i11 + 3] = (byte) (i10 & 255);
        segmentWritableSegment$okio.limit = i11 + 4;
        buffer.setSize$okio(buffer.size() + 4);
        return buffer;
    }

    @NotNull
    public static final Buffer commonWriteLong(@NotNull Buffer buffer, long j6) {
        t.j(buffer, "<this>");
        Segment segmentWritableSegment$okio = buffer.writableSegment$okio(8);
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
        buffer.setSize$okio(buffer.size() + 8);
        return buffer;
    }

    @NotNull
    public static final Buffer commonWriteShort(@NotNull Buffer buffer, int i10) {
        t.j(buffer, "<this>");
        Segment segmentWritableSegment$okio = buffer.writableSegment$okio(2);
        byte[] bArr = segmentWritableSegment$okio.data;
        int i11 = segmentWritableSegment$okio.limit;
        bArr[i11] = (byte) ((i10 >>> 8) & 255);
        bArr[i11 + 1] = (byte) (i10 & 255);
        segmentWritableSegment$okio.limit = i11 + 2;
        buffer.setSize$okio(buffer.size() + 2);
        return buffer;
    }

    @NotNull
    public static final Buffer commonWriteUtf8(@NotNull Buffer buffer, @NotNull String string, int i10, int i11) {
        char cCharAt;
        t.j(buffer, "<this>");
        t.j(string, "string");
        if (i10 < 0) {
            throw new IllegalArgumentException(("beginIndex < 0: " + i10).toString());
        }
        if (i11 < i10) {
            throw new IllegalArgumentException(("endIndex < beginIndex: " + i11 + " < " + i10).toString());
        }
        if (i11 > string.length()) {
            throw new IllegalArgumentException(("endIndex > string.length: " + i11 + " > " + string.length()).toString());
        }
        while (i10 < i11) {
            char cCharAt2 = string.charAt(i10);
            if (cCharAt2 < 128) {
                Segment segmentWritableSegment$okio = buffer.writableSegment$okio(1);
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
                buffer.setSize$okio(buffer.size() + ((long) i15));
            } else {
                if (cCharAt2 < 2048) {
                    Segment segmentWritableSegment$okio2 = buffer.writableSegment$okio(2);
                    byte[] bArr2 = segmentWritableSegment$okio2.data;
                    int i16 = segmentWritableSegment$okio2.limit;
                    bArr2[i16] = (byte) ((cCharAt2 >> 6) | 192);
                    bArr2[i16 + 1] = (byte) ((cCharAt2 & '?') | 128);
                    segmentWritableSegment$okio2.limit = i16 + 2;
                    buffer.setSize$okio(buffer.size() + 2);
                } else if (cCharAt2 < 55296 || cCharAt2 > 57343) {
                    Segment segmentWritableSegment$okio3 = buffer.writableSegment$okio(3);
                    byte[] bArr3 = segmentWritableSegment$okio3.data;
                    int i17 = segmentWritableSegment$okio3.limit;
                    bArr3[i17] = (byte) ((cCharAt2 >> '\f') | 224);
                    bArr3[i17 + 1] = (byte) ((63 & (cCharAt2 >> 6)) | 128);
                    bArr3[i17 + 2] = (byte) ((cCharAt2 & '?') | 128);
                    segmentWritableSegment$okio3.limit = i17 + 3;
                    buffer.setSize$okio(buffer.size() + 3);
                } else {
                    int i18 = i10 + 1;
                    char cCharAt3 = i18 < i11 ? string.charAt(i18) : (char) 0;
                    if (cCharAt2 > 56319 || 56320 > cCharAt3 || cCharAt3 >= 57344) {
                        buffer.writeByte(63);
                        i10 = i18;
                    } else {
                        int i19 = (((cCharAt2 & 1023) << 10) | (cCharAt3 & 1023)) + 65536;
                        Segment segmentWritableSegment$okio4 = buffer.writableSegment$okio(4);
                        byte[] bArr4 = segmentWritableSegment$okio4.data;
                        int i20 = segmentWritableSegment$okio4.limit;
                        bArr4[i20] = (byte) ((i19 >> 18) | 240);
                        bArr4[i20 + 1] = (byte) (((i19 >> 12) & 63) | 128);
                        bArr4[i20 + 2] = (byte) (((i19 >> 6) & 63) | 128);
                        bArr4[i20 + 3] = (byte) ((i19 & 63) | 128);
                        segmentWritableSegment$okio4.limit = i20 + 4;
                        buffer.setSize$okio(buffer.size() + 4);
                        i10 += 2;
                    }
                }
                i10++;
            }
        }
        return buffer;
    }

    @NotNull
    public static final Buffer commonWriteUtf8CodePoint(@NotNull Buffer buffer, int i10) {
        t.j(buffer, "<this>");
        if (i10 < 128) {
            buffer.writeByte(i10);
        } else if (i10 < 2048) {
            Segment segmentWritableSegment$okio = buffer.writableSegment$okio(2);
            byte[] bArr = segmentWritableSegment$okio.data;
            int i11 = segmentWritableSegment$okio.limit;
            bArr[i11] = (byte) ((i10 >> 6) | 192);
            bArr[i11 + 1] = (byte) ((i10 & 63) | 128);
            segmentWritableSegment$okio.limit = i11 + 2;
            buffer.setSize$okio(buffer.size() + 2);
        } else if (55296 <= i10 && i10 < 57344) {
            buffer.writeByte(63);
        } else if (i10 < 65536) {
            Segment segmentWritableSegment$okio2 = buffer.writableSegment$okio(3);
            byte[] bArr2 = segmentWritableSegment$okio2.data;
            int i12 = segmentWritableSegment$okio2.limit;
            bArr2[i12] = (byte) ((i10 >> 12) | 224);
            bArr2[i12 + 1] = (byte) (((i10 >> 6) & 63) | 128);
            bArr2[i12 + 2] = (byte) ((i10 & 63) | 128);
            segmentWritableSegment$okio2.limit = i12 + 3;
            buffer.setSize$okio(buffer.size() + 3);
        } else {
            if (i10 > 1114111) {
                throw new IllegalArgumentException("Unexpected code point: 0x" + _UtilKt.toHexString(i10));
            }
            Segment segmentWritableSegment$okio3 = buffer.writableSegment$okio(4);
            byte[] bArr3 = segmentWritableSegment$okio3.data;
            int i13 = segmentWritableSegment$okio3.limit;
            bArr3[i13] = (byte) ((i10 >> 18) | 240);
            bArr3[i13 + 1] = (byte) (((i10 >> 12) & 63) | 128);
            bArr3[i13 + 2] = (byte) (((i10 >> 6) & 63) | 128);
            bArr3[i13 + 3] = (byte) ((i10 & 63) | 128);
            segmentWritableSegment$okio3.limit = i13 + 4;
            buffer.setSize$okio(buffer.size() + 4);
        }
        return buffer;
    }

    public static final boolean rangeEquals(@NotNull Segment segment, int i10, @NotNull byte[] bytes, int i11, int i12) {
        t.j(segment, "segment");
        t.j(bytes, "bytes");
        int i13 = segment.limit;
        byte[] bArr = segment.data;
        while (i11 < i12) {
            if (i10 == i13) {
                segment = segment.next;
                t.g(segment);
                byte[] bArr2 = segment.data;
                bArr = bArr2;
                i10 = segment.pos;
                i13 = segment.limit;
            }
            if (bArr[i10] != bytes[i11]) {
                return false;
            }
            i10++;
            i11++;
        }
        return true;
    }

    @NotNull
    public static final String readUtf8Line(@NotNull Buffer buffer, long j6) throws EOFException {
        t.j(buffer, "<this>");
        if (j6 > 0) {
            long j10 = j6 - 1;
            if (buffer.getByte(j10) == ((byte) 13)) {
                String utf8 = buffer.readUtf8(j10);
                buffer.skip(2L);
                return utf8;
            }
        }
        String utf9 = buffer.readUtf8(j6);
        buffer.skip(1L);
        return utf9;
    }

    public static final <T> T seek(@NotNull Buffer buffer, long j6, @NotNull p<? super Segment, ? super Long, ? extends T> lambda) {
        t.j(buffer, "<this>");
        t.j(lambda, "lambda");
        Segment segment = buffer.head;
        if (segment == null) {
            return lambda.invoke(null, -1L);
        }
        if (buffer.size() - j6 < j6) {
            long size = buffer.size();
            while (size > j6) {
                segment = segment.prev;
                t.g(segment);
                size -= (long) (segment.limit - segment.pos);
            }
            return lambda.invoke(segment, Long.valueOf(size));
        }
        long j10 = 0;
        while (true) {
            long j11 = ((long) (segment.limit - segment.pos)) + j10;
            if (j11 > j6) {
                return lambda.invoke(segment, Long.valueOf(j10));
            }
            segment = segment.next;
            t.g(segment);
            j10 = j11;
        }
    }

    public static final int selectPrefix(@NotNull Buffer buffer, @NotNull Options options, boolean z6) {
        int i10;
        int i11;
        Segment segment;
        int i12;
        int i13;
        t.j(buffer, "<this>");
        t.j(options, "options");
        Segment segment2 = buffer.head;
        if (segment2 == null) {
            return z6 ? -2 : -1;
        }
        byte[] bArr = segment2.data;
        int i14 = segment2.pos;
        int i15 = segment2.limit;
        int[] trie$okio = options.getTrie$okio();
        Segment segment3 = segment2;
        int i16 = -1;
        int i17 = 0;
        loop0: while (true) {
            int i18 = i17 + 1;
            int i19 = trie$okio[i17];
            int i20 = i17 + 2;
            int i21 = trie$okio[i18];
            if (i21 != -1) {
                i16 = i21;
            }
            if (segment3 == null) {
                break;
            }
            if (i19 >= 0) {
                i10 = i14 + 1;
                int i22 = bArr[i14] & 255;
                int i23 = i20 + i19;
                while (i20 != i23) {
                    if (i22 == trie$okio[i20]) {
                        i11 = trie$okio[i20 + i19];
                        if (i10 == i15) {
                            segment3 = segment3.next;
                            t.g(segment3);
                            i10 = segment3.pos;
                            bArr = segment3.data;
                            i15 = segment3.limit;
                            if (segment3 == segment2) {
                                segment3 = null;
                            }
                        }
                    } else {
                        i20++;
                    }
                }
                return i16;
            }
            int i24 = i20 + (i19 * (-1));
            while (true) {
                int i25 = i14 + 1;
                int i26 = i20 + 1;
                if ((bArr[i14] & 255) != trie$okio[i20]) {
                    return i16;
                }
                boolean z10 = i26 == i24;
                if (i25 == i15) {
                    t.g(segment3);
                    Segment segment4 = segment3.next;
                    t.g(segment4);
                    i13 = segment4.pos;
                    byte[] bArr2 = segment4.data;
                    i12 = segment4.limit;
                    if (segment4 != segment2) {
                        segment = segment4;
                        bArr = bArr2;
                    } else {
                        if (!z10) {
                            break loop0;
                        }
                        bArr = bArr2;
                        segment = null;
                    }
                } else {
                    segment = segment3;
                    i12 = i15;
                    i13 = i25;
                }
                if (z10) {
                    i11 = trie$okio[i26];
                    i10 = i13;
                    i15 = i12;
                    segment3 = segment;
                    break;
                }
                i14 = i13;
                i15 = i12;
                segment3 = segment;
                i20 = i26;
            }
            if (i11 >= 0) {
                return i11;
            }
            i17 = -i11;
            i14 = i10;
        }
        if (z6) {
            return -2;
        }
        return i16;
    }

    public static /* synthetic */ int selectPrefix$default(Buffer buffer, Options options, boolean z6, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z6 = false;
        }
        return selectPrefix(buffer, options, z6);
    }

    @NotNull
    public static final Buffer commonWrite(@NotNull Buffer buffer, @NotNull byte[] source, int i10, int i11) {
        t.j(buffer, "<this>");
        t.j(source, "source");
        long j6 = i11;
        _UtilKt.checkOffsetAndCount(source.length, i10, j6);
        int i12 = i11 + i10;
        while (i10 < i12) {
            Segment segmentWritableSegment$okio = buffer.writableSegment$okio(1);
            int iMin = Math.min(i12 - i10, 8192 - segmentWritableSegment$okio.limit);
            int i13 = i10 + iMin;
            o.d(source, segmentWritableSegment$okio.data, segmentWritableSegment$okio.limit, i10, i13);
            segmentWritableSegment$okio.limit += iMin;
            i10 = i13;
        }
        buffer.setSize$okio(buffer.size() + j6);
        return buffer;
    }

    public static final void commonReadFully(@NotNull Buffer buffer, @NotNull Buffer sink, long j6) throws EOFException {
        t.j(buffer, "<this>");
        t.j(sink, "sink");
        if (buffer.size() >= j6) {
            sink.write(buffer, j6);
        } else {
            sink.write(buffer, buffer.size());
            throw new EOFException();
        }
    }

    @NotNull
    public static final ByteString commonSnapshot(@NotNull Buffer buffer, int i10) {
        t.j(buffer, "<this>");
        if (i10 == 0) {
            return ByteString.EMPTY;
        }
        _UtilKt.checkOffsetAndCount(buffer.size(), 0L, i10);
        Segment segment = buffer.head;
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        while (i12 < i10) {
            t.g(segment);
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
        Segment segment2 = buffer.head;
        int i16 = 0;
        while (i11 < i10) {
            t.g(segment2);
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

    @NotNull
    public static final Buffer commonWrite(@NotNull Buffer buffer, @NotNull Source source, long j6) throws IOException {
        t.j(buffer, "<this>");
        t.j(source, "source");
        while (j6 > 0) {
            long j10 = source.read(buffer, j6);
            if (j10 == -1) {
                throw new EOFException();
            }
            j6 -= j10;
        }
        return buffer;
    }

    public static final long commonRead(@NotNull Buffer buffer, @NotNull Buffer sink, long j6) {
        t.j(buffer, "<this>");
        t.j(sink, "sink");
        if (j6 < 0) {
            throw new IllegalArgumentException(("byteCount < 0: " + j6).toString());
        }
        if (buffer.size() == 0) {
            return -1L;
        }
        if (j6 > buffer.size()) {
            j6 = buffer.size();
        }
        sink.write(buffer, j6);
        return j6;
    }

    public static final void commonWrite(@NotNull Buffer buffer, @NotNull Buffer source, long j6) {
        Segment segment;
        t.j(buffer, "<this>");
        t.j(source, "source");
        if (source != buffer) {
            _UtilKt.checkOffsetAndCount(source.size(), 0L, j6);
            while (j6 > 0) {
                Segment segment2 = source.head;
                t.g(segment2);
                int i10 = segment2.limit;
                Segment segment3 = source.head;
                t.g(segment3);
                if (j6 < i10 - segment3.pos) {
                    Segment segment4 = buffer.head;
                    if (segment4 != null) {
                        t.g(segment4);
                        segment = segment4.prev;
                    } else {
                        segment = null;
                    }
                    if (segment != null && segment.owner) {
                        if ((((long) segment.limit) + j6) - ((long) (segment.shared ? 0 : segment.pos)) <= PlaybackStateCompat.ACTION_PLAY_FROM_URI) {
                            Segment segment5 = source.head;
                            t.g(segment5);
                            segment5.writeTo(segment, (int) j6);
                            source.setSize$okio(source.size() - j6);
                            buffer.setSize$okio(buffer.size() + j6);
                            return;
                        }
                    }
                    Segment segment6 = source.head;
                    t.g(segment6);
                    source.head = segment6.split((int) j6);
                }
                Segment segment7 = source.head;
                t.g(segment7);
                long j10 = segment7.limit - segment7.pos;
                source.head = segment7.pop();
                Segment segment8 = buffer.head;
                if (segment8 == null) {
                    buffer.head = segment7;
                    segment7.prev = segment7;
                    segment7.next = segment7;
                } else {
                    t.g(segment8);
                    Segment segment9 = segment8.prev;
                    t.g(segment9);
                    segment9.push(segment7).compact();
                }
                source.setSize$okio(source.size() - j10);
                buffer.setSize$okio(buffer.size() + j10);
                j6 -= j10;
            }
            return;
        }
        throw new IllegalArgumentException("source == this".toString());
    }

    public static final long commonIndexOf(@NotNull Buffer buffer, @NotNull ByteString bytes, long j6) {
        long size;
        int i10;
        long j10 = j6;
        t.j(buffer, "<this>");
        t.j(bytes, "bytes");
        if (bytes.size() <= 0) {
            throw new IllegalArgumentException("bytes is empty".toString());
        }
        long j11 = 0;
        if (j10 >= 0) {
            Segment segment = buffer.head;
            if (segment == null) {
                return -1L;
            }
            if (buffer.size() - j10 < j10) {
                size = buffer.size();
                while (size > j10) {
                    segment = segment.prev;
                    t.g(segment);
                    size -= (long) (segment.limit - segment.pos);
                }
                byte[] bArrInternalArray$okio = bytes.internalArray$okio();
                byte b7 = bArrInternalArray$okio[0];
                int size2 = bytes.size();
                long size3 = (buffer.size() - ((long) size2)) + 1;
                while (size < size3) {
                    byte[] bArr = segment.data;
                    int iMin = (int) Math.min(segment.limit, (((long) segment.pos) + size3) - size);
                    i10 = (int) ((((long) segment.pos) + j10) - size);
                    while (i10 < iMin) {
                        if (bArr[i10] != b7 || !rangeEquals(segment, i10 + 1, bArrInternalArray$okio, 1, size2)) {
                            i10++;
                        }
                    }
                    size += (long) (segment.limit - segment.pos);
                    segment = segment.next;
                    t.g(segment);
                    j10 = size;
                }
                return -1L;
            }
            while (true) {
                long j12 = ((long) (segment.limit - segment.pos)) + j11;
                if (j12 > j10) {
                    break;
                }
                segment = segment.next;
                t.g(segment);
                j11 = j12;
            }
            byte[] bArrInternalArray$okio2 = bytes.internalArray$okio();
            byte b10 = bArrInternalArray$okio2[0];
            int size4 = bytes.size();
            long size5 = (buffer.size() - ((long) size4)) + 1;
            size = j11;
            while (size < size5) {
                byte[] bArr2 = segment.data;
                long j13 = size5;
                int iMin2 = (int) Math.min(segment.limit, (((long) segment.pos) + size5) - size);
                i10 = (int) ((((long) segment.pos) + j10) - size);
                while (i10 < iMin2) {
                    if (bArr2[i10] == b10 && rangeEquals(segment, i10 + 1, bArrInternalArray$okio2, 1, size4)) {
                    }
                    i10++;
                }
                size += (long) (segment.limit - segment.pos);
                segment = segment.next;
                t.g(segment);
                size5 = j13;
                j10 = size;
            }
            return -1L;
            return ((long) (i10 - segment.pos)) + size;
        }
        throw new IllegalArgumentException(("fromIndex < 0: " + j10).toString());
    }
}
