package okio;

import android.support.v4.media.session.PlaybackStateCompat;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import okio.internal._BufferKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
public final class RealBufferedSource implements BufferedSource {

    @NotNull
    public final Buffer bufferField;
    public boolean closed;

    @NotNull
    public final Source source;

    public static /* synthetic */ void getBuffer$annotations() {
    }

    @Override // okio.BufferedSource, okio.BufferedSink
    @NotNull
    public Buffer buffer() {
        return this.bufferField;
    }

    @Override // okio.BufferedSource, okio.BufferedSink
    @NotNull
    public Buffer getBuffer() {
        return this.bufferField;
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
        return !this.closed;
    }

    @Override // okio.BufferedSource
    public boolean rangeEquals(long j6, @NotNull ByteString bytes) {
        kotlin.jvm.internal.t.j(bytes, "bytes");
        return rangeEquals(j6, bytes, 0, bytes.size());
    }

    @Override // okio.BufferedSource
    public int read(@NotNull byte[] sink) {
        kotlin.jvm.internal.t.j(sink, "sink");
        return read(sink, 0, sink.length);
    }

    @Override // okio.BufferedSource
    @NotNull
    public byte[] readByteArray() throws IOException {
        this.bufferField.writeAll(this.source);
        return this.bufferField.readByteArray();
    }

    @Override // okio.BufferedSource
    @NotNull
    public ByteString readByteString() throws IOException {
        this.bufferField.writeAll(this.source);
        return this.bufferField.readByteString();
    }

    @Override // okio.BufferedSource
    public void readFully(@NotNull byte[] sink) throws EOFException {
        kotlin.jvm.internal.t.j(sink, "sink");
        try {
            require(sink.length);
            this.bufferField.readFully(sink);
        } catch (EOFException e) {
            int i10 = 0;
            while (this.bufferField.size() > 0) {
                Buffer buffer = this.bufferField;
                int i11 = buffer.read(sink, i10, (int) buffer.size());
                if (i11 == -1) {
                    throw new AssertionError();
                }
                i10 += i11;
            }
            throw e;
        }
    }

    @Override // okio.BufferedSource
    @NotNull
    public String readString(@NotNull Charset charset) throws IOException {
        kotlin.jvm.internal.t.j(charset, "charset");
        this.bufferField.writeAll(this.source);
        return this.bufferField.readString(charset);
    }

    @Override // okio.BufferedSource
    @NotNull
    public String readUtf8() throws IOException {
        this.bufferField.writeAll(this.source);
        return this.bufferField.readUtf8();
    }

    @Override // okio.BufferedSource
    @NotNull
    public String readUtf8LineStrict() {
        return readUtf8LineStrict(Long.MAX_VALUE);
    }

    public RealBufferedSource(@NotNull Source source) {
        kotlin.jvm.internal.t.j(source, "source");
        this.source = source;
        this.bufferField = new Buffer();
    }

    @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.closed) {
            return;
        }
        this.closed = true;
        this.source.close();
        this.bufferField.clear();
    }

    @Override // okio.BufferedSource
    public boolean exhausted() {
        if (!this.closed) {
            return this.bufferField.exhausted() && this.source.read(this.bufferField, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1;
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // okio.BufferedSource
    public long indexOf(byte b7, long j6) {
        return indexOf(b7, j6, Long.MAX_VALUE);
    }

    @Override // okio.BufferedSource
    public long indexOfElement(@NotNull ByteString targetBytes, long j6) {
        kotlin.jvm.internal.t.j(targetBytes, "targetBytes");
        if (!(!this.closed)) {
            throw new IllegalStateException("closed".toString());
        }
        while (true) {
            long jIndexOfElement = this.bufferField.indexOfElement(targetBytes, j6);
            if (jIndexOfElement != -1) {
                return jIndexOfElement;
            }
            long size = this.bufferField.size();
            if (this.source.read(this.bufferField, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
                return -1L;
            }
            j6 = Math.max(j6, size);
        }
    }

    @Override // okio.BufferedSource
    @NotNull
    public InputStream inputStream() {
        return new InputStream() { // from class: okio.RealBufferedSource.inputStream.1
            @Override // java.io.InputStream
            public int read() throws IOException {
                RealBufferedSource realBufferedSource = RealBufferedSource.this;
                if (realBufferedSource.closed) {
                    throw new IOException("closed");
                }
                if (realBufferedSource.bufferField.size() == 0) {
                    RealBufferedSource realBufferedSource2 = RealBufferedSource.this;
                    if (realBufferedSource2.source.read(realBufferedSource2.bufferField, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
                        return -1;
                    }
                }
                return RealBufferedSource.this.bufferField.readByte() & 255;
            }

            @Override // java.io.InputStream
            public int available() throws IOException {
                RealBufferedSource realBufferedSource = RealBufferedSource.this;
                if (realBufferedSource.closed) {
                    throw new IOException("closed");
                }
                return (int) Math.min(realBufferedSource.bufferField.size(), Integer.MAX_VALUE);
            }

            @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() throws IOException {
                RealBufferedSource.this.close();
            }

            @NotNull
            public String toString() {
                return RealBufferedSource.this + ".inputStream()";
            }

            @Override // java.io.InputStream
            public int read(@NotNull byte[] data, int i10, int i11) throws IOException {
                kotlin.jvm.internal.t.j(data, "data");
                if (!RealBufferedSource.this.closed) {
                    _UtilKt.checkOffsetAndCount(data.length, i10, i11);
                    if (RealBufferedSource.this.bufferField.size() == 0) {
                        RealBufferedSource realBufferedSource = RealBufferedSource.this;
                        if (realBufferedSource.source.read(realBufferedSource.bufferField, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
                            return -1;
                        }
                    }
                    return RealBufferedSource.this.bufferField.read(data, i10, i11);
                }
                throw new IOException("closed");
            }
        };
    }

    @Override // okio.BufferedSource
    @NotNull
    public BufferedSource peek() {
        return Okio.buffer(new PeekSource(this));
    }

    @Override // java.nio.channels.ReadableByteChannel
    public int read(@NotNull ByteBuffer sink) {
        kotlin.jvm.internal.t.j(sink, "sink");
        if (this.bufferField.size() == 0 && this.source.read(this.bufferField, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
            return -1;
        }
        return this.bufferField.read(sink);
    }

    @Override // okio.BufferedSource
    public long readAll(@NotNull Sink sink) throws IOException {
        kotlin.jvm.internal.t.j(sink, "sink");
        long j6 = 0;
        while (this.source.read(this.bufferField, PlaybackStateCompat.ACTION_PLAY_FROM_URI) != -1) {
            long jCompleteSegmentByteCount = this.bufferField.completeSegmentByteCount();
            if (jCompleteSegmentByteCount > 0) {
                j6 += jCompleteSegmentByteCount;
                sink.write(this.bufferField, jCompleteSegmentByteCount);
            }
        }
        if (this.bufferField.size() <= 0) {
            return j6;
        }
        long size = j6 + this.bufferField.size();
        Buffer buffer = this.bufferField;
        sink.write(buffer, buffer.size());
        return size;
    }

    @Override // okio.BufferedSource
    public byte readByte() throws EOFException {
        require(1L);
        return this.bufferField.readByte();
    }

    @Override // okio.BufferedSource
    public long readDecimalLong() throws EOFException {
        require(1L);
        long j6 = 0;
        while (true) {
            long j10 = j6 + 1;
            if (!request(j10)) {
                break;
            }
            byte b7 = this.bufferField.getByte(j6);
            if ((b7 < ((byte) 48) || b7 > ((byte) 57)) && !(j6 == 0 && b7 == ((byte) 45))) {
                if (j6 != 0) {
                    break;
                }
                StringBuilder sb = new StringBuilder();
                sb.append("Expected a digit or '-' but was 0x");
                String string = Integer.toString(b7, kotlin.text.b.a(kotlin.text.b.a(16)));
                kotlin.jvm.internal.t.i(string, "toString(this, checkRadix(radix))");
                sb.append(string);
                throw new NumberFormatException(sb.toString());
            }
            j6 = j10;
        }
        return this.bufferField.readDecimalLong();
    }

    @Override // okio.BufferedSource
    public long readHexadecimalUnsignedLong() throws EOFException {
        require(1L);
        int i10 = 0;
        while (true) {
            int i11 = i10 + 1;
            if (!request(i11)) {
                break;
            }
            byte b7 = this.bufferField.getByte(i10);
            if ((b7 < ((byte) 48) || b7 > ((byte) 57)) && ((b7 < ((byte) 97) || b7 > ((byte) 102)) && (b7 < ((byte) 65) || b7 > ((byte) 70)))) {
                if (i10 != 0) {
                    break;
                }
                StringBuilder sb = new StringBuilder();
                sb.append("Expected leading [0-9a-fA-F] character but was 0x");
                String string = Integer.toString(b7, kotlin.text.b.a(kotlin.text.b.a(16)));
                kotlin.jvm.internal.t.i(string, "toString(this, checkRadix(radix))");
                sb.append(string);
                throw new NumberFormatException(sb.toString());
            }
            i10 = i11;
        }
        return this.bufferField.readHexadecimalUnsignedLong();
    }

    @Override // okio.BufferedSource
    public int readInt() throws EOFException {
        require(4L);
        return this.bufferField.readInt();
    }

    @Override // okio.BufferedSource
    public int readIntLe() throws EOFException {
        require(4L);
        return this.bufferField.readIntLe();
    }

    @Override // okio.BufferedSource
    public long readLong() throws EOFException {
        require(8L);
        return this.bufferField.readLong();
    }

    @Override // okio.BufferedSource
    public long readLongLe() throws EOFException {
        require(8L);
        return this.bufferField.readLongLe();
    }

    @Override // okio.BufferedSource
    public short readShort() throws EOFException {
        require(2L);
        return this.bufferField.readShort();
    }

    @Override // okio.BufferedSource
    public short readShortLe() throws EOFException {
        require(2L);
        return this.bufferField.readShortLe();
    }

    @Override // okio.BufferedSource
    public int readUtf8CodePoint() throws EOFException {
        require(1L);
        byte b7 = this.bufferField.getByte(0L);
        if ((b7 & 224) == 192) {
            require(2L);
        } else if ((b7 & 240) == 224) {
            require(3L);
        } else if ((b7 & 248) == 240) {
            require(4L);
        }
        return this.bufferField.readUtf8CodePoint();
    }

    @Override // okio.BufferedSource
    @Nullable
    public String readUtf8Line() {
        long jIndexOf = indexOf((byte) 10);
        if (jIndexOf != -1) {
            return _BufferKt.readUtf8Line(this.bufferField, jIndexOf);
        }
        if (this.bufferField.size() != 0) {
            return readUtf8(this.bufferField.size());
        }
        return null;
    }

    @Override // okio.BufferedSource
    @NotNull
    public String readUtf8LineStrict(long j6) throws EOFException {
        if (j6 < 0) {
            throw new IllegalArgumentException(("limit < 0: " + j6).toString());
        }
        long j10 = j6 == Long.MAX_VALUE ? Long.MAX_VALUE : j6 + 1;
        byte b7 = (byte) 10;
        long jIndexOf = indexOf(b7, 0L, j10);
        if (jIndexOf != -1) {
            return _BufferKt.readUtf8Line(this.bufferField, jIndexOf);
        }
        if (j10 < Long.MAX_VALUE && request(j10) && this.bufferField.getByte(j10 - 1) == ((byte) 13) && request(1 + j10) && this.bufferField.getByte(j10) == b7) {
            return _BufferKt.readUtf8Line(this.bufferField, j10);
        }
        Buffer buffer = new Buffer();
        Buffer buffer2 = this.bufferField;
        buffer2.copyTo(buffer, 0L, Math.min(32, buffer2.size()));
        throw new EOFException("\\n not found: limit=" + Math.min(this.bufferField.size(), j6) + " content=" + buffer.readByteString().hex() + (char) 8230);
    }

    @Override // okio.BufferedSource
    public boolean request(long j6) {
        if (j6 < 0) {
            throw new IllegalArgumentException(("byteCount < 0: " + j6).toString());
        }
        if (!(!this.closed)) {
            throw new IllegalStateException("closed".toString());
        }
        while (this.bufferField.size() < j6) {
            if (this.source.read(this.bufferField, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
                return false;
            }
        }
        return true;
    }

    @Override // okio.BufferedSource
    public int select(@NotNull Options options) throws EOFException {
        kotlin.jvm.internal.t.j(options, "options");
        if (!(!this.closed)) {
            throw new IllegalStateException("closed".toString());
        }
        do {
            int iSelectPrefix = _BufferKt.selectPrefix(this.bufferField, options, true);
            if (iSelectPrefix != -2) {
                if (iSelectPrefix == -1) {
                    break;
                }
                this.bufferField.skip(options.getByteStrings$okio()[iSelectPrefix].size());
                return iSelectPrefix;
            }
        } while (this.source.read(this.bufferField, PlaybackStateCompat.ACTION_PLAY_FROM_URI) != -1);
        return -1;
    }

    @Override // okio.BufferedSource
    public void skip(long j6) throws EOFException {
        if (!(!this.closed)) {
            throw new IllegalStateException("closed".toString());
        }
        while (j6 > 0) {
            if (this.bufferField.size() == 0 && this.source.read(this.bufferField, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
                throw new EOFException();
            }
            long jMin = Math.min(j6, this.bufferField.size());
            this.bufferField.skip(jMin);
            j6 -= jMin;
        }
    }

    @Override // okio.Source
    @NotNull
    public Timeout timeout() {
        return this.source.timeout();
    }

    @NotNull
    public String toString() {
        return "buffer(" + this.source + ')';
    }

    @Override // okio.BufferedSource
    public long indexOf(@NotNull ByteString bytes) {
        kotlin.jvm.internal.t.j(bytes, "bytes");
        return indexOf(bytes, 0L);
    }

    @Override // okio.BufferedSource
    public boolean rangeEquals(long j6, @NotNull ByteString bytes, int i10, int i11) {
        kotlin.jvm.internal.t.j(bytes, "bytes");
        if (!this.closed) {
            if (j6 >= 0 && i10 >= 0 && i11 >= 0 && bytes.size() - i10 >= i11) {
                for (int i12 = 0; i12 < i11; i12++) {
                    long j10 = ((long) i12) + j6;
                    if (request(1 + j10) && this.bufferField.getByte(j10) == bytes.getByte(i10 + i12)) {
                    }
                }
                return true;
            }
            return false;
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // okio.BufferedSource
    @NotNull
    public byte[] readByteArray(long j6) throws EOFException {
        require(j6);
        return this.bufferField.readByteArray(j6);
    }

    @Override // okio.BufferedSource
    @NotNull
    public ByteString readByteString(long j6) throws EOFException {
        require(j6);
        return this.bufferField.readByteString(j6);
    }

    @Override // okio.BufferedSource
    @NotNull
    public String readString(long j6, @NotNull Charset charset) throws EOFException {
        kotlin.jvm.internal.t.j(charset, "charset");
        require(j6);
        return this.bufferField.readString(j6, charset);
    }

    @Override // okio.BufferedSource
    @NotNull
    public String readUtf8(long j6) throws EOFException {
        require(j6);
        return this.bufferField.readUtf8(j6);
    }

    @Override // okio.BufferedSource
    public void require(long j6) throws EOFException {
        if (request(j6)) {
        } else {
            throw new EOFException();
        }
    }

    @Override // okio.BufferedSource
    public long indexOf(byte b7, long j6, long j10) {
        if (!(!this.closed)) {
            throw new IllegalStateException("closed".toString());
        }
        if (0 > j6 || j6 > j10) {
            throw new IllegalArgumentException(("fromIndex=" + j6 + " toIndex=" + j10).toString());
        }
        while (j6 < j10) {
            long jIndexOf = this.bufferField.indexOf(b7, j6, j10);
            if (jIndexOf != -1) {
                return jIndexOf;
            }
            long size = this.bufferField.size();
            if (size >= j10 || this.source.read(this.bufferField, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
                return -1L;
            }
            j6 = Math.max(j6, size);
        }
        return -1L;
    }

    @Override // okio.Source
    public long read(@NotNull Buffer sink, long j6) {
        kotlin.jvm.internal.t.j(sink, "sink");
        if (j6 < 0) {
            throw new IllegalArgumentException(("byteCount < 0: " + j6).toString());
        }
        if (!(!this.closed)) {
            throw new IllegalStateException("closed".toString());
        }
        if (this.bufferField.size() == 0 && this.source.read(this.bufferField, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
            return -1L;
        }
        return this.bufferField.read(sink, Math.min(j6, this.bufferField.size()));
    }

    @Override // okio.BufferedSource
    public void readFully(@NotNull Buffer sink, long j6) throws IOException {
        kotlin.jvm.internal.t.j(sink, "sink");
        try {
            require(j6);
            this.bufferField.readFully(sink, j6);
        } catch (EOFException e) {
            sink.writeAll(this.bufferField);
            throw e;
        }
    }

    @Override // okio.BufferedSource
    public long indexOf(@NotNull ByteString bytes, long j6) throws IOException {
        kotlin.jvm.internal.t.j(bytes, "bytes");
        if (!(!this.closed)) {
            throw new IllegalStateException("closed".toString());
        }
        while (true) {
            long jIndexOf = this.bufferField.indexOf(bytes, j6);
            if (jIndexOf != -1) {
                return jIndexOf;
            }
            long size = this.bufferField.size();
            if (this.source.read(this.bufferField, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
                return -1L;
            }
            j6 = Math.max(j6, (size - ((long) bytes.size())) + 1);
        }
    }

    @Override // okio.BufferedSource
    public int read(@NotNull byte[] sink, int i10, int i11) {
        kotlin.jvm.internal.t.j(sink, "sink");
        long j6 = i11;
        _UtilKt.checkOffsetAndCount(sink.length, i10, j6);
        if (this.bufferField.size() == 0 && this.source.read(this.bufferField, PlaybackStateCompat.ACTION_PLAY_FROM_URI) == -1) {
            return -1;
        }
        return this.bufferField.read(sink, i10, (int) Math.min(j6, this.bufferField.size()));
    }
}
