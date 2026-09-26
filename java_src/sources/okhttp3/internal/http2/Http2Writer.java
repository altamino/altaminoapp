package okhttp3.internal.http2;

import java.io.Closeable;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import okhttp3.internal.Util;
import okio.Buffer;
import okio.BufferedSink;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes5.dex */
public final class Http2Writer implements Closeable {

    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final Logger logger = Logger.getLogger(Http2.class.getName());
    private final boolean client;
    private boolean closed;

    @NotNull
    private final Buffer hpackBuffer;

    @NotNull
    private final Hpack.Writer hpackWriter;
    private int maxFrameSize;

    @NotNull
    private final BufferedSink sink;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }
    }

    public final synchronized void applyAndAckSettings(@NotNull Settings peerSettings) throws IOException {
        try {
            t.j(peerSettings, "peerSettings");
            if (this.closed) {
                throw new IOException("closed");
            }
            this.maxFrameSize = peerSettings.getMaxFrameSize(this.maxFrameSize);
            if (peerSettings.getHeaderTableSize() != -1) {
                this.hpackWriter.resizeHeaderTable(peerSettings.getHeaderTableSize());
            }
            frameHeader(0, 0, 4, 1);
            this.sink.flush();
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() throws IOException {
        this.closed = true;
        this.sink.close();
    }

    public final synchronized void connectionPreface() throws IOException {
        try {
            if (this.closed) {
                throw new IOException("closed");
            }
            if (this.client) {
                Logger logger2 = logger;
                if (logger2.isLoggable(Level.FINE)) {
                    logger2.fine(Util.format(t.s(">> CONNECTION ", Http2.CONNECTION_PREFACE.hex()), new Object[0]));
                }
                this.sink.write(Http2.CONNECTION_PREFACE);
                this.sink.flush();
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void data(boolean z6, int i10, @Nullable Buffer buffer, int i11) throws IOException {
        if (this.closed) {
            throw new IOException("closed");
        }
        dataFrame(i10, z6 ? 1 : 0, buffer, i11);
    }

    public final void dataFrame(int i10, int i11, @Nullable Buffer buffer, int i12) throws IOException {
        frameHeader(i10, i12, 0, i11);
        if (i12 > 0) {
            BufferedSink bufferedSink = this.sink;
            t.g(buffer);
            bufferedSink.write(buffer, i12);
        }
    }

    public final synchronized void flush() throws IOException {
        if (this.closed) {
            throw new IOException("closed");
        }
        this.sink.flush();
    }

    @NotNull
    public final Hpack.Writer getHpackWriter() {
        return this.hpackWriter;
    }

    public final synchronized void goAway(int i10, @NotNull ErrorCode errorCode, @NotNull byte[] debugData) throws IOException {
        try {
            t.j(errorCode, "errorCode");
            t.j(debugData, "debugData");
            if (this.closed) {
                throw new IOException("closed");
            }
            if (errorCode.getHttpCode() == -1) {
                throw new IllegalArgumentException("errorCode.httpCode == -1".toString());
            }
            frameHeader(0, debugData.length + 8, 7, 0);
            this.sink.writeInt(i10);
            this.sink.writeInt(errorCode.getHttpCode());
            if (!(debugData.length == 0)) {
                this.sink.write(debugData);
            }
            this.sink.flush();
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void headers(boolean z6, int i10, @NotNull List<Header> headerBlock) throws IOException {
        t.j(headerBlock, "headerBlock");
        if (this.closed) {
            throw new IOException("closed");
        }
        this.hpackWriter.writeHeaders(headerBlock);
        long size = this.hpackBuffer.size();
        long jMin = Math.min(this.maxFrameSize, size);
        int i11 = size == jMin ? 4 : 0;
        if (z6) {
            i11 |= 1;
        }
        frameHeader(i10, (int) jMin, 1, i11);
        this.sink.write(this.hpackBuffer, jMin);
        if (size > jMin) {
            writeContinuationFrames(i10, size - jMin);
        }
    }

    public final int maxDataLength() {
        return this.maxFrameSize;
    }

    public final synchronized void ping(boolean z6, int i10, int i11) throws IOException {
        if (this.closed) {
            throw new IOException("closed");
        }
        frameHeader(0, 8, 6, z6 ? 1 : 0);
        this.sink.writeInt(i10);
        this.sink.writeInt(i11);
        this.sink.flush();
    }

    public final synchronized void pushPromise(int i10, int i11, @NotNull List<Header> requestHeaders) throws IOException {
        t.j(requestHeaders, "requestHeaders");
        if (this.closed) {
            throw new IOException("closed");
        }
        this.hpackWriter.writeHeaders(requestHeaders);
        long size = this.hpackBuffer.size();
        int iMin = (int) Math.min(((long) this.maxFrameSize) - 4, size);
        long j6 = iMin;
        frameHeader(i10, iMin + 4, 5, size == j6 ? 4 : 0);
        this.sink.writeInt(i11 & Integer.MAX_VALUE);
        this.sink.write(this.hpackBuffer, j6);
        if (size > j6) {
            writeContinuationFrames(i10, size - j6);
        }
    }

    public final synchronized void rstStream(int i10, @NotNull ErrorCode errorCode) throws IOException {
        t.j(errorCode, "errorCode");
        if (this.closed) {
            throw new IOException("closed");
        }
        if (errorCode.getHttpCode() == -1) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        frameHeader(i10, 4, 3, 0);
        this.sink.writeInt(errorCode.getHttpCode());
        this.sink.flush();
    }

    public final synchronized void settings(@NotNull Settings settings) throws IOException {
        int i10;
        try {
            t.j(settings, "settings");
            if (this.closed) {
                throw new IOException("closed");
            }
            int i11 = 0;
            frameHeader(0, settings.size() * 6, 4, 0);
            while (i11 < 10) {
                int i12 = i11 + 1;
                if (settings.isSet(i11)) {
                    if (i11 != 4) {
                        i10 = i11 != 7 ? i11 : 4;
                    } else {
                        i10 = 3;
                    }
                    this.sink.writeShort(i10);
                    this.sink.writeInt(settings.get(i11));
                }
                i11 = i12;
            }
            this.sink.flush();
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void windowUpdate(int i10, long j6) throws IOException {
        if (this.closed) {
            throw new IOException("closed");
        }
        if (j6 == 0 || j6 > 2147483647L) {
            throw new IllegalArgumentException(t.s("windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: ", Long.valueOf(j6)).toString());
        }
        frameHeader(i10, 4, 8, 0);
        this.sink.writeInt((int) j6);
        this.sink.flush();
    }

    public Http2Writer(@NotNull BufferedSink sink, boolean z6) {
        t.j(sink, "sink");
        this.sink = sink;
        this.client = z6;
        Buffer buffer = new Buffer();
        this.hpackBuffer = buffer;
        this.maxFrameSize = 16384;
        this.hpackWriter = new Hpack.Writer(0, false, buffer, 3, null);
    }

    private final void writeContinuationFrames(int i10, long j6) throws IOException {
        while (j6 > 0) {
            long jMin = Math.min(this.maxFrameSize, j6);
            j6 -= jMin;
            frameHeader(i10, (int) jMin, 9, j6 == 0 ? 4 : 0);
            this.sink.write(this.hpackBuffer, jMin);
        }
    }

    public final void frameHeader(int i10, int i11, int i12, int i13) throws IOException {
        Logger logger2 = logger;
        if (logger2.isLoggable(Level.FINE)) {
            logger2.fine(Http2.INSTANCE.frameLog(false, i10, i11, i12, i13));
        }
        if (i11 > this.maxFrameSize) {
            throw new IllegalArgumentException(("FRAME_SIZE_ERROR length > " + this.maxFrameSize + ": " + i11).toString());
        }
        if ((Integer.MIN_VALUE & i10) != 0) {
            throw new IllegalArgumentException(t.s("reserved bit set: ", Integer.valueOf(i10)).toString());
        }
        Util.writeMedium(this.sink, i11);
        this.sink.writeByte(i12 & 255);
        this.sink.writeByte(i13 & 255);
        this.sink.writeInt(i10 & Integer.MAX_VALUE);
    }
}
