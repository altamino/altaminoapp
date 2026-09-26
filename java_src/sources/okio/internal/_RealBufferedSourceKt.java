package okio.internal;

import android.support.v4.media.session.PlaybackStateCompat;
import java.io.EOFException;
import java.io.IOException;
import kotlin.jvm.internal.t;
import kotlin.text.b;
import okio.Buffer;
import okio.BufferedSource;
import okio.ByteString;
import okio.Okio;
import okio.Options;
import okio.PeekSource;
import okio.RealBufferedSource;
import okio.Sink;
import okio.Timeout;
import okio._UtilKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes2.dex */
public final class _RealBufferedSourceKt {
    public static final long commonIndexOf(@NotNull RealBufferedSource realBufferedSource, byte b7, long j6, long j10) {
        t.j(realBufferedSource, "<this>");
        if (!(!realBufferedSource.closed)) {
            throw new IllegalStateException("closed".toString());
        }
        if (0 > j6 || j6 > j10) {
            throw new IllegalArgumentException(("fromIndex=" + j6 + " toIndex=" + j10).toString());
        }
        while (j6 < j10) {
            long jIndexOf = realBufferedSource.bufferField.indexOf(b7, j6, j10);
            if (jIndexOf != -1) {
                return jIndexOf;
            }
            long size = realBufferedSource.bufferField.size();
            if (size >= j10 || realBufferedSource.source.read(realBufferedSource.bufferField, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
                break;
            }
            j6 = Math.max(j6, size);
        }
        return -1L;
    }

    public static final long commonRead(@NotNull RealBufferedSource realBufferedSource, @NotNull Buffer sink, long j6) {
        t.j(realBufferedSource, "<this>");
        t.j(sink, "sink");
        if (j6 < 0) {
            throw new IllegalArgumentException(("byteCount < 0: " + j6).toString());
        }
        if (!(!realBufferedSource.closed)) {
            throw new IllegalStateException("closed".toString());
        }
        if (realBufferedSource.bufferField.size() == 0 && realBufferedSource.source.read(realBufferedSource.bufferField, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
            return -1L;
        }
        return realBufferedSource.bufferField.read(sink, Math.min(j6, realBufferedSource.bufferField.size()));
    }

    @NotNull
    public static final byte[] commonReadByteArray(@NotNull RealBufferedSource realBufferedSource, long j6) throws EOFException {
        t.j(realBufferedSource, "<this>");
        realBufferedSource.require(j6);
        return realBufferedSource.bufferField.readByteArray(j6);
    }

    @NotNull
    public static final ByteString commonReadByteString(@NotNull RealBufferedSource realBufferedSource, long j6) throws EOFException {
        t.j(realBufferedSource, "<this>");
        realBufferedSource.require(j6);
        return realBufferedSource.bufferField.readByteString(j6);
    }

    public static final void commonReadFully(@NotNull RealBufferedSource realBufferedSource, @NotNull byte[] sink) throws EOFException {
        t.j(realBufferedSource, "<this>");
        t.j(sink, "sink");
        try {
            realBufferedSource.require(sink.length);
            realBufferedSource.bufferField.readFully(sink);
        } catch (EOFException e) {
            int i10 = 0;
            while (realBufferedSource.bufferField.size() > 0) {
                Buffer buffer = realBufferedSource.bufferField;
                int i11 = buffer.read(sink, i10, (int) buffer.size());
                if (i11 == -1) {
                    throw new AssertionError();
                }
                i10 += i11;
            }
            throw e;
        }
    }

    @NotNull
    public static final String commonReadUtf8(@NotNull RealBufferedSource realBufferedSource, long j6) throws EOFException {
        t.j(realBufferedSource, "<this>");
        realBufferedSource.require(j6);
        return realBufferedSource.bufferField.readUtf8(j6);
    }

    public static final void commonClose(@NotNull RealBufferedSource realBufferedSource) throws IOException {
        t.j(realBufferedSource, "<this>");
        if (realBufferedSource.closed) {
            return;
        }
        realBufferedSource.closed = true;
        realBufferedSource.source.close();
        realBufferedSource.bufferField.clear();
    }

    public static final boolean commonExhausted(@NotNull RealBufferedSource realBufferedSource) {
        t.j(realBufferedSource, "<this>");
        if (!realBufferedSource.closed) {
            return realBufferedSource.bufferField.exhausted() && realBufferedSource.source.read(realBufferedSource.bufferField, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1;
        }
        throw new IllegalStateException("closed".toString());
    }

    public static final long commonIndexOfElement(@NotNull RealBufferedSource realBufferedSource, @NotNull ByteString targetBytes, long j6) {
        t.j(realBufferedSource, "<this>");
        t.j(targetBytes, "targetBytes");
        if (!(!realBufferedSource.closed)) {
            throw new IllegalStateException("closed".toString());
        }
        while (true) {
            long jIndexOfElement = realBufferedSource.bufferField.indexOfElement(targetBytes, j6);
            if (jIndexOfElement != -1) {
                return jIndexOfElement;
            }
            long size = realBufferedSource.bufferField.size();
            if (realBufferedSource.source.read(realBufferedSource.bufferField, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
                return -1L;
            }
            j6 = Math.max(j6, size);
        }
    }

    @NotNull
    public static final BufferedSource commonPeek(@NotNull RealBufferedSource realBufferedSource) {
        t.j(realBufferedSource, "<this>");
        return Okio.buffer(new PeekSource(realBufferedSource));
    }

    public static final boolean commonRangeEquals(@NotNull RealBufferedSource realBufferedSource, long j6, @NotNull ByteString bytes, int i10, int i11) {
        t.j(realBufferedSource, "<this>");
        t.j(bytes, "bytes");
        if (!(!realBufferedSource.closed)) {
            throw new IllegalStateException("closed".toString());
        }
        if (j6 < 0 || i10 < 0 || i11 < 0 || bytes.size() - i10 < i11) {
            return false;
        }
        for (int i12 = 0; i12 < i11; i12++) {
            long j10 = ((long) i12) + j6;
            if (!realBufferedSource.request(1 + j10) || realBufferedSource.bufferField.getByte(j10) != bytes.getByte(i10 + i12)) {
                return false;
            }
        }
        return true;
    }

    public static final long commonReadAll(@NotNull RealBufferedSource realBufferedSource, @NotNull Sink sink) throws IOException {
        t.j(realBufferedSource, "<this>");
        t.j(sink, "sink");
        long j6 = 0;
        while (realBufferedSource.source.read(realBufferedSource.bufferField, PlaybackStateCompat.ACTION_PLAY_FROM_URI) != -1) {
            long jCompleteSegmentByteCount = realBufferedSource.bufferField.completeSegmentByteCount();
            if (jCompleteSegmentByteCount > 0) {
                j6 += jCompleteSegmentByteCount;
                sink.write(realBufferedSource.bufferField, jCompleteSegmentByteCount);
            }
        }
        if (realBufferedSource.bufferField.size() <= 0) {
            return j6;
        }
        long size = j6 + realBufferedSource.bufferField.size();
        Buffer buffer = realBufferedSource.bufferField;
        sink.write(buffer, buffer.size());
        return size;
    }

    public static final byte commonReadByte(@NotNull RealBufferedSource realBufferedSource) throws EOFException {
        t.j(realBufferedSource, "<this>");
        realBufferedSource.require(1L);
        return realBufferedSource.bufferField.readByte();
    }

    public static final long commonReadDecimalLong(@NotNull RealBufferedSource realBufferedSource) throws EOFException {
        t.j(realBufferedSource, "<this>");
        realBufferedSource.require(1L);
        long j6 = 0;
        while (true) {
            long j10 = j6 + 1;
            if (!realBufferedSource.request(j10)) {
                break;
            }
            byte b7 = realBufferedSource.bufferField.getByte(j6);
            if ((b7 < ((byte) 48) || b7 > ((byte) 57)) && !(j6 == 0 && b7 == ((byte) 45))) {
                if (j6 != 0) {
                    break;
                }
                StringBuilder sb = new StringBuilder();
                sb.append("Expected a digit or '-' but was 0x");
                String string = Integer.toString(b7, b.a(b.a(16)));
                t.i(string, "toString(this, checkRadix(radix))");
                sb.append(string);
                throw new NumberFormatException(sb.toString());
            }
            j6 = j10;
        }
        return realBufferedSource.bufferField.readDecimalLong();
    }

    public static final long commonReadHexadecimalUnsignedLong(@NotNull RealBufferedSource realBufferedSource) throws EOFException {
        t.j(realBufferedSource, "<this>");
        realBufferedSource.require(1L);
        int i10 = 0;
        while (true) {
            int i11 = i10 + 1;
            if (!realBufferedSource.request(i11)) {
                break;
            }
            byte b7 = realBufferedSource.bufferField.getByte(i10);
            if ((b7 < ((byte) 48) || b7 > ((byte) 57)) && ((b7 < ((byte) 97) || b7 > ((byte) 102)) && (b7 < ((byte) 65) || b7 > ((byte) 70)))) {
                if (i10 != 0) {
                    break;
                }
                StringBuilder sb = new StringBuilder();
                sb.append("Expected leading [0-9a-fA-F] character but was 0x");
                String string = Integer.toString(b7, b.a(b.a(16)));
                t.i(string, "toString(this, checkRadix(radix))");
                sb.append(string);
                throw new NumberFormatException(sb.toString());
            }
            i10 = i11;
        }
        return realBufferedSource.bufferField.readHexadecimalUnsignedLong();
    }

    public static final int commonReadInt(@NotNull RealBufferedSource realBufferedSource) throws EOFException {
        t.j(realBufferedSource, "<this>");
        realBufferedSource.require(4L);
        return realBufferedSource.bufferField.readInt();
    }

    public static final int commonReadIntLe(@NotNull RealBufferedSource realBufferedSource) throws EOFException {
        t.j(realBufferedSource, "<this>");
        realBufferedSource.require(4L);
        return realBufferedSource.bufferField.readIntLe();
    }

    public static final long commonReadLong(@NotNull RealBufferedSource realBufferedSource) throws EOFException {
        t.j(realBufferedSource, "<this>");
        realBufferedSource.require(8L);
        return realBufferedSource.bufferField.readLong();
    }

    public static final long commonReadLongLe(@NotNull RealBufferedSource realBufferedSource) throws EOFException {
        t.j(realBufferedSource, "<this>");
        realBufferedSource.require(8L);
        return realBufferedSource.bufferField.readLongLe();
    }

    public static final short commonReadShort(@NotNull RealBufferedSource realBufferedSource) throws EOFException {
        t.j(realBufferedSource, "<this>");
        realBufferedSource.require(2L);
        return realBufferedSource.bufferField.readShort();
    }

    public static final short commonReadShortLe(@NotNull RealBufferedSource realBufferedSource) throws EOFException {
        t.j(realBufferedSource, "<this>");
        realBufferedSource.require(2L);
        return realBufferedSource.bufferField.readShortLe();
    }

    public static final int commonReadUtf8CodePoint(@NotNull RealBufferedSource realBufferedSource) throws EOFException {
        t.j(realBufferedSource, "<this>");
        realBufferedSource.require(1L);
        byte b7 = realBufferedSource.bufferField.getByte(0L);
        if ((b7 & 224) == 192) {
            realBufferedSource.require(2L);
        } else if ((b7 & 240) == 224) {
            realBufferedSource.require(3L);
        } else if ((b7 & 248) == 240) {
            realBufferedSource.require(4L);
        }
        return realBufferedSource.bufferField.readUtf8CodePoint();
    }

    @Nullable
    public static final String commonReadUtf8Line(@NotNull RealBufferedSource realBufferedSource) {
        t.j(realBufferedSource, "<this>");
        long jIndexOf = realBufferedSource.indexOf((byte) 10);
        if (jIndexOf != -1) {
            return _BufferKt.readUtf8Line(realBufferedSource.bufferField, jIndexOf);
        }
        if (realBufferedSource.bufferField.size() != 0) {
            return realBufferedSource.readUtf8(realBufferedSource.bufferField.size());
        }
        return null;
    }

    @NotNull
    public static final String commonReadUtf8LineStrict(@NotNull RealBufferedSource realBufferedSource, long j6) throws EOFException {
        t.j(realBufferedSource, "<this>");
        if (j6 < 0) {
            throw new IllegalArgumentException(("limit < 0: " + j6).toString());
        }
        long j10 = j6 == Long.MAX_VALUE ? Long.MAX_VALUE : j6 + 1;
        byte b7 = (byte) 10;
        long jIndexOf = realBufferedSource.indexOf(b7, 0L, j10);
        if (jIndexOf != -1) {
            return _BufferKt.readUtf8Line(realBufferedSource.bufferField, jIndexOf);
        }
        if (j10 < Long.MAX_VALUE && realBufferedSource.request(j10) && realBufferedSource.bufferField.getByte(j10 - 1) == ((byte) 13) && realBufferedSource.request(1 + j10) && realBufferedSource.bufferField.getByte(j10) == b7) {
            return _BufferKt.readUtf8Line(realBufferedSource.bufferField, j10);
        }
        Buffer buffer = new Buffer();
        Buffer buffer2 = realBufferedSource.bufferField;
        buffer2.copyTo(buffer, 0L, Math.min(32, buffer2.size()));
        throw new EOFException("\\n not found: limit=" + Math.min(realBufferedSource.bufferField.size(), j6) + " content=" + buffer.readByteString().hex() + (char) 8230);
    }

    public static final boolean commonRequest(@NotNull RealBufferedSource realBufferedSource, long j6) {
        t.j(realBufferedSource, "<this>");
        if (j6 < 0) {
            throw new IllegalArgumentException(("byteCount < 0: " + j6).toString());
        }
        if (!(!realBufferedSource.closed)) {
            throw new IllegalStateException("closed".toString());
        }
        while (realBufferedSource.bufferField.size() < j6) {
            if (realBufferedSource.source.read(realBufferedSource.bufferField, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
                return false;
            }
        }
        return true;
    }

    public static final void commonRequire(@NotNull RealBufferedSource realBufferedSource, long j6) throws EOFException {
        t.j(realBufferedSource, "<this>");
        if (!realBufferedSource.request(j6)) {
            throw new EOFException();
        }
    }

    public static final int commonSelect(@NotNull RealBufferedSource realBufferedSource, @NotNull Options options) throws EOFException {
        t.j(realBufferedSource, "<this>");
        t.j(options, "options");
        if (!(!realBufferedSource.closed)) {
            throw new IllegalStateException("closed".toString());
        }
        do {
            int iSelectPrefix = _BufferKt.selectPrefix(realBufferedSource.bufferField, options, true);
            if (iSelectPrefix != -2) {
                if (iSelectPrefix == -1) {
                    return -1;
                }
                realBufferedSource.bufferField.skip(options.getByteStrings$okio()[iSelectPrefix].size());
                return iSelectPrefix;
            }
        } while (realBufferedSource.source.read(realBufferedSource.bufferField, PlaybackStateCompat.ACTION_PLAY_FROM_URI) != -1);
        return -1;
    }

    public static final void commonSkip(@NotNull RealBufferedSource realBufferedSource, long j6) throws EOFException {
        t.j(realBufferedSource, "<this>");
        if (!(!realBufferedSource.closed)) {
            throw new IllegalStateException("closed".toString());
        }
        while (j6 > 0) {
            if (realBufferedSource.bufferField.size() == 0 && realBufferedSource.source.read(realBufferedSource.bufferField, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
                throw new EOFException();
            }
            long jMin = Math.min(j6, realBufferedSource.bufferField.size());
            realBufferedSource.bufferField.skip(jMin);
            j6 -= jMin;
        }
    }

    @NotNull
    public static final Timeout commonTimeout(@NotNull RealBufferedSource realBufferedSource) {
        t.j(realBufferedSource, "<this>");
        return realBufferedSource.source.timeout();
    }

    @NotNull
    public static final String commonToString(@NotNull RealBufferedSource realBufferedSource) {
        t.j(realBufferedSource, "<this>");
        return "buffer(" + realBufferedSource.source + ')';
    }

    @NotNull
    public static final byte[] commonReadByteArray(@NotNull RealBufferedSource realBufferedSource) throws IOException {
        t.j(realBufferedSource, "<this>");
        realBufferedSource.bufferField.writeAll(realBufferedSource.source);
        return realBufferedSource.bufferField.readByteArray();
    }

    @NotNull
    public static final ByteString commonReadByteString(@NotNull RealBufferedSource realBufferedSource) throws IOException {
        t.j(realBufferedSource, "<this>");
        realBufferedSource.bufferField.writeAll(realBufferedSource.source);
        return realBufferedSource.bufferField.readByteString();
    }

    @NotNull
    public static final String commonReadUtf8(@NotNull RealBufferedSource realBufferedSource) throws IOException {
        t.j(realBufferedSource, "<this>");
        realBufferedSource.bufferField.writeAll(realBufferedSource.source);
        return realBufferedSource.bufferField.readUtf8();
    }

    public static final void commonReadFully(@NotNull RealBufferedSource realBufferedSource, @NotNull Buffer sink, long j6) throws IOException {
        t.j(realBufferedSource, "<this>");
        t.j(sink, "sink");
        try {
            realBufferedSource.require(j6);
            realBufferedSource.bufferField.readFully(sink, j6);
        } catch (EOFException e) {
            sink.writeAll(realBufferedSource.bufferField);
            throw e;
        }
    }

    public static final long commonIndexOf(@NotNull RealBufferedSource realBufferedSource, @NotNull ByteString bytes, long j6) throws IOException {
        t.j(realBufferedSource, "<this>");
        t.j(bytes, "bytes");
        if (!(!realBufferedSource.closed)) {
            throw new IllegalStateException("closed".toString());
        }
        while (true) {
            long jIndexOf = realBufferedSource.bufferField.indexOf(bytes, j6);
            if (jIndexOf != -1) {
                return jIndexOf;
            }
            long size = realBufferedSource.bufferField.size();
            if (realBufferedSource.source.read(realBufferedSource.bufferField, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
                return -1L;
            }
            j6 = Math.max(j6, (size - ((long) bytes.size())) + 1);
        }
    }

    public static final int commonRead(@NotNull RealBufferedSource realBufferedSource, @NotNull byte[] sink, int i10, int i11) {
        t.j(realBufferedSource, "<this>");
        t.j(sink, "sink");
        long j6 = i11;
        _UtilKt.checkOffsetAndCount(sink.length, i10, j6);
        if (realBufferedSource.bufferField.size() == 0 && realBufferedSource.source.read(realBufferedSource.bufferField, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
            return -1;
        }
        return realBufferedSource.bufferField.read(sink, i10, (int) Math.min(j6, realBufferedSource.bufferField.size()));
    }
}
