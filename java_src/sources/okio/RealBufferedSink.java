package okio;

import android.support.v4.media.session.PlaybackStateCompat;
import java.io.EOFException;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public final class RealBufferedSink implements BufferedSink {

    @NotNull
    public final Buffer bufferField;
    public boolean closed;

    @NotNull
    public final Sink sink;

    public static /* synthetic */ void getBuffer$annotations() {
    }

    @Override // okio.BufferedSink
    @NotNull
    public Buffer buffer() {
        return this.bufferField;
    }

    @Override // okio.BufferedSink
    @NotNull
    public Buffer getBuffer() {
        return this.bufferField;
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return !this.closed;
    }

    @Override // java.nio.channels.WritableByteChannel
    public int write(@NotNull ByteBuffer source) throws IOException {
        kotlin.jvm.internal.t.j(source, "source");
        if (!(!this.closed)) {
            throw new IllegalStateException("closed".toString());
        }
        int iWrite = this.bufferField.write(source);
        emitCompleteSegments();
        return iWrite;
    }

    @Override // okio.BufferedSink
    @NotNull
    public BufferedSink writeString(@NotNull String string, @NotNull Charset charset) {
        kotlin.jvm.internal.t.j(string, "string");
        kotlin.jvm.internal.t.j(charset, "charset");
        if (!(!this.closed)) {
            throw new IllegalStateException("closed".toString());
        }
        this.bufferField.writeString(string, charset);
        return emitCompleteSegments();
    }

    @Override // okio.BufferedSink
    @NotNull
    public BufferedSink writeUtf8(@NotNull String string) {
        kotlin.jvm.internal.t.j(string, "string");
        if (!(!this.closed)) {
            throw new IllegalStateException("closed".toString());
        }
        this.bufferField.writeUtf8(string);
        return emitCompleteSegments();
    }

    public RealBufferedSink(@NotNull Sink sink) {
        kotlin.jvm.internal.t.j(sink, "sink");
        this.sink = sink;
        this.bufferField = new Buffer();
    }

    @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws Throwable {
        if (this.closed) {
            return;
        }
        if (this.bufferField.size() > 0) {
            Sink sink = this.sink;
            Buffer buffer = this.bufferField;
            sink.write(buffer, buffer.size());
        }
        th = null;
        try {
            this.sink.close();
        } catch (Throwable th) {
            if (th == null) {
                th = th;
            }
        }
        this.closed = true;
        if (th != null) {
            throw th;
        }
    }

    @Override // okio.BufferedSink
    @NotNull
    public BufferedSink emit() throws IOException {
        if (!(!this.closed)) {
            throw new IllegalStateException("closed".toString());
        }
        long size = this.bufferField.size();
        if (size > 0) {
            this.sink.write(this.bufferField, size);
        }
        return this;
    }

    @Override // okio.BufferedSink
    @NotNull
    public BufferedSink emitCompleteSegments() throws IOException {
        if (!(!this.closed)) {
            throw new IllegalStateException("closed".toString());
        }
        long jCompleteSegmentByteCount = this.bufferField.completeSegmentByteCount();
        if (jCompleteSegmentByteCount > 0) {
            this.sink.write(this.bufferField, jCompleteSegmentByteCount);
        }
        return this;
    }

    @Override // okio.BufferedSink, okio.Sink, java.io.Flushable
    public void flush() throws IOException {
        if (!(!this.closed)) {
            throw new IllegalStateException("closed".toString());
        }
        if (this.bufferField.size() > 0) {
            Sink sink = this.sink;
            Buffer buffer = this.bufferField;
            sink.write(buffer, buffer.size());
        }
        this.sink.flush();
    }

    @Override // okio.BufferedSink
    @NotNull
    public OutputStream outputStream() {
        return new OutputStream() { // from class: okio.RealBufferedSink.outputStream.1
            @Override // java.io.OutputStream
            public void write(int i10) throws IOException {
                RealBufferedSink realBufferedSink = RealBufferedSink.this;
                if (realBufferedSink.closed) {
                    throw new IOException("closed");
                }
                realBufferedSink.bufferField.writeByte((int) ((byte) i10));
                RealBufferedSink.this.emitCompleteSegments();
            }

            @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() throws Throwable {
                RealBufferedSink.this.close();
            }

            @Override // java.io.OutputStream, java.io.Flushable
            public void flush() throws IOException {
                RealBufferedSink realBufferedSink = RealBufferedSink.this;
                if (realBufferedSink.closed) {
                    return;
                }
                realBufferedSink.flush();
            }

            @NotNull
            public String toString() {
                return RealBufferedSink.this + ".outputStream()";
            }

            @Override // java.io.OutputStream
            public void write(@NotNull byte[] data, int i10, int i11) throws IOException {
                kotlin.jvm.internal.t.j(data, "data");
                RealBufferedSink realBufferedSink = RealBufferedSink.this;
                if (!realBufferedSink.closed) {
                    realBufferedSink.bufferField.write(data, i10, i11);
                    RealBufferedSink.this.emitCompleteSegments();
                    return;
                }
                throw new IOException("closed");
            }
        };
    }

    @Override // okio.Sink
    @NotNull
    public Timeout timeout() {
        return this.sink.timeout();
    }

    @NotNull
    public String toString() {
        return "buffer(" + this.sink + ')';
    }

    @Override // okio.BufferedSink
    public long writeAll(@NotNull Source source) throws IOException {
        kotlin.jvm.internal.t.j(source, "source");
        long j6 = 0;
        while (true) {
            long j10 = source.read(this.bufferField, PlaybackStateCompat.ACTION_PLAY_FROM_URI);
            if (j10 == -1) {
                return j6;
            }
            j6 += j10;
            emitCompleteSegments();
        }
    }

    @Override // okio.BufferedSink
    @NotNull
    public BufferedSink writeByte(int i10) {
        if (!(!this.closed)) {
            throw new IllegalStateException("closed".toString());
        }
        this.bufferField.writeByte(i10);
        return emitCompleteSegments();
    }

    @Override // okio.BufferedSink
    @NotNull
    public BufferedSink writeDecimalLong(long j6) {
        if (!(!this.closed)) {
            throw new IllegalStateException("closed".toString());
        }
        this.bufferField.writeDecimalLong(j6);
        return emitCompleteSegments();
    }

    @Override // okio.BufferedSink
    @NotNull
    public BufferedSink writeHexadecimalUnsignedLong(long j6) {
        if (!(!this.closed)) {
            throw new IllegalStateException("closed".toString());
        }
        this.bufferField.writeHexadecimalUnsignedLong(j6);
        return emitCompleteSegments();
    }

    @Override // okio.BufferedSink
    @NotNull
    public BufferedSink writeInt(int i10) {
        if (!(!this.closed)) {
            throw new IllegalStateException("closed".toString());
        }
        this.bufferField.writeInt(i10);
        return emitCompleteSegments();
    }

    @Override // okio.BufferedSink
    @NotNull
    public BufferedSink writeIntLe(int i10) {
        if (!(!this.closed)) {
            throw new IllegalStateException("closed".toString());
        }
        this.bufferField.writeIntLe(i10);
        return emitCompleteSegments();
    }

    @Override // okio.BufferedSink
    @NotNull
    public BufferedSink writeLong(long j6) {
        if (!(!this.closed)) {
            throw new IllegalStateException("closed".toString());
        }
        this.bufferField.writeLong(j6);
        return emitCompleteSegments();
    }

    @Override // okio.BufferedSink
    @NotNull
    public BufferedSink writeLongLe(long j6) {
        if (!(!this.closed)) {
            throw new IllegalStateException("closed".toString());
        }
        this.bufferField.writeLongLe(j6);
        return emitCompleteSegments();
    }

    @Override // okio.BufferedSink
    @NotNull
    public BufferedSink writeShort(int i10) {
        if (!(!this.closed)) {
            throw new IllegalStateException("closed".toString());
        }
        this.bufferField.writeShort(i10);
        return emitCompleteSegments();
    }

    @Override // okio.BufferedSink
    @NotNull
    public BufferedSink writeShortLe(int i10) {
        if (!(!this.closed)) {
            throw new IllegalStateException("closed".toString());
        }
        this.bufferField.writeShortLe(i10);
        return emitCompleteSegments();
    }

    @Override // okio.BufferedSink
    @NotNull
    public BufferedSink writeUtf8CodePoint(int i10) {
        if (!(!this.closed)) {
            throw new IllegalStateException("closed".toString());
        }
        this.bufferField.writeUtf8CodePoint(i10);
        return emitCompleteSegments();
    }

    @Override // okio.Sink
    public void write(@NotNull Buffer source, long j6) throws IOException {
        kotlin.jvm.internal.t.j(source, "source");
        if (!this.closed) {
            this.bufferField.write(source, j6);
            emitCompleteSegments();
            return;
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // okio.BufferedSink
    @NotNull
    public BufferedSink writeString(@NotNull String string, int i10, int i11, @NotNull Charset charset) {
        kotlin.jvm.internal.t.j(string, "string");
        kotlin.jvm.internal.t.j(charset, "charset");
        if (!this.closed) {
            this.bufferField.writeString(string, i10, i11, charset);
            return emitCompleteSegments();
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // okio.BufferedSink
    @NotNull
    public BufferedSink writeUtf8(@NotNull String string, int i10, int i11) {
        kotlin.jvm.internal.t.j(string, "string");
        if (!this.closed) {
            this.bufferField.writeUtf8(string, i10, i11);
            return emitCompleteSegments();
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // okio.BufferedSink
    @NotNull
    public BufferedSink write(@NotNull ByteString byteString) {
        kotlin.jvm.internal.t.j(byteString, "byteString");
        if (!this.closed) {
            this.bufferField.write(byteString);
            return emitCompleteSegments();
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // okio.BufferedSink
    @NotNull
    public BufferedSink write(@NotNull ByteString byteString, int i10, int i11) {
        kotlin.jvm.internal.t.j(byteString, "byteString");
        if (!this.closed) {
            this.bufferField.write(byteString, i10, i11);
            return emitCompleteSegments();
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // okio.BufferedSink
    @NotNull
    public BufferedSink write(@NotNull byte[] source) {
        kotlin.jvm.internal.t.j(source, "source");
        if (!this.closed) {
            this.bufferField.write(source);
            return emitCompleteSegments();
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // okio.BufferedSink
    @NotNull
    public BufferedSink write(@NotNull byte[] source, int i10, int i11) {
        kotlin.jvm.internal.t.j(source, "source");
        if (!this.closed) {
            this.bufferField.write(source, i10, i11);
            return emitCompleteSegments();
        }
        throw new IllegalStateException("closed".toString());
    }

    @Override // okio.BufferedSink
    @NotNull
    public BufferedSink write(@NotNull Source source, long j6) throws IOException {
        kotlin.jvm.internal.t.j(source, "source");
        while (j6 > 0) {
            long j10 = source.read(this.bufferField, j6);
            if (j10 != -1) {
                j6 -= j10;
                emitCompleteSegments();
            } else {
                throw new EOFException();
            }
        }
        return this;
    }
}
