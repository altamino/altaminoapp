package okhttp3.internal.http2;

import j8.g;
import j8.o;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import okhttp3.internal.Util;
import okio.Buffer;
import okio.BufferedSource;
import okio.ByteString;
import okio.Source;
import okio.Timeout;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
public final class Http2Reader implements Closeable {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    private static final Logger logger;
    private final boolean client;

    @NotNull
    private final ContinuationSource continuation;

    @NotNull
    private final Hpack.Reader hpackReader;

    @NotNull
    private final BufferedSource source;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        public final int lengthWithoutPadding(int i10, int i11, int i12) throws IOException {
            if ((i11 & 8) != 0) {
                i10--;
            }
            if (i12 <= i10) {
                return i10 - i12;
            }
            throw new IOException("PROTOCOL_ERROR padding " + i12 + " > remaining length " + i10);
        }

        @NotNull
        public final Logger getLogger() {
            return Http2Reader.logger;
        }
    }

    public static final class ContinuationSource implements Source {
        private int flags;
        private int left;
        private int length;
        private int padding;

        @NotNull
        private final BufferedSource source;
        private int streamId;

        @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
        }

        public final int getFlags() {
            return this.flags;
        }

        public final int getLeft() {
            return this.left;
        }

        public final int getLength() {
            return this.length;
        }

        public final int getPadding() {
            return this.padding;
        }

        public final int getStreamId() {
            return this.streamId;
        }

        public final void setFlags(int i10) {
            this.flags = i10;
        }

        public final void setLeft(int i10) {
            this.left = i10;
        }

        public final void setLength(int i10) {
            this.length = i10;
        }

        public final void setPadding(int i10) {
            this.padding = i10;
        }

        public final void setStreamId(int i10) {
            this.streamId = i10;
        }

        public ContinuationSource(@NotNull BufferedSource source) {
            t.j(source, "source");
            this.source = source;
        }

        private final void readContinuationHeader() throws IOException {
            int i10 = this.streamId;
            int medium = Util.readMedium(this.source);
            this.left = medium;
            this.length = medium;
            int iAnd = Util.and(this.source.readByte(), 255);
            this.flags = Util.and(this.source.readByte(), 255);
            Companion companion = Http2Reader.Companion;
            if (companion.getLogger().isLoggable(Level.FINE)) {
                companion.getLogger().fine(Http2.INSTANCE.frameLog(true, this.streamId, this.length, iAnd, this.flags));
            }
            int i11 = this.source.readInt() & Integer.MAX_VALUE;
            this.streamId = i11;
            if (iAnd == 9) {
                if (i11 != i10) {
                    throw new IOException("TYPE_CONTINUATION streamId changed");
                }
            } else {
                throw new IOException(iAnd + " != TYPE_CONTINUATION");
            }
        }

        @Override // okio.Source
        public long read(@NotNull Buffer sink, long j6) throws IOException {
            t.j(sink, "sink");
            while (true) {
                int i10 = this.left;
                if (i10 != 0) {
                    long j10 = this.source.read(sink, Math.min(j6, i10));
                    if (j10 == -1) {
                        return -1L;
                    }
                    this.left -= (int) j10;
                    return j10;
                }
                this.source.skip(this.padding);
                this.padding = 0;
                if ((this.flags & 4) != 0) {
                    return -1L;
                }
                readContinuationHeader();
            }
        }

        @Override // okio.Source
        @NotNull
        public Timeout timeout() {
            return this.source.timeout();
        }
    }

    public interface Handler {
        void ackSettings();

        void alternateService(int i10, @NotNull String str, @NotNull ByteString byteString, @NotNull String str2, int i11, long j6);

        void data(boolean z6, int i10, @NotNull BufferedSource bufferedSource, int i11) throws IOException;

        void goAway(int i10, @NotNull ErrorCode errorCode, @NotNull ByteString byteString);

        void headers(boolean z6, int i10, int i11, @NotNull List<Header> list);

        void ping(boolean z6, int i10, int i11);

        void priority(int i10, int i11, int i12, boolean z6);

        void pushPromise(int i10, int i11, @NotNull List<Header> list) throws IOException;

        void rstStream(int i10, @NotNull ErrorCode errorCode);

        void settings(boolean z6, @NotNull Settings settings);

        void windowUpdate(int i10, long j6);
    }

    private final void readPriority(Handler handler, int i10, int i11, int i12) throws IOException {
        if (i10 == 5) {
            if (i12 == 0) {
                throw new IOException("TYPE_PRIORITY streamId == 0");
            }
            readPriority(handler, i12);
        } else {
            throw new IOException("TYPE_PRIORITY length: " + i10 + " != 5");
        }
    }

    private final void readRstStream(Handler handler, int i10, int i11, int i12) throws IOException {
        if (i10 != 4) {
            throw new IOException("TYPE_RST_STREAM length: " + i10 + " != 4");
        }
        if (i12 == 0) {
            throw new IOException("TYPE_RST_STREAM streamId == 0");
        }
        int i13 = this.source.readInt();
        ErrorCode errorCodeFromHttp2 = ErrorCode.Companion.fromHttp2(i13);
        if (errorCodeFromHttp2 == null) {
            throw new IOException(t.s("TYPE_RST_STREAM unexpected error code: ", Integer.valueOf(i13)));
        }
        handler.rstStream(i12, errorCodeFromHttp2);
    }

    private final void readWindowUpdate(Handler handler, int i10, int i11, int i12) throws IOException {
        if (i10 != 4) {
            throw new IOException(t.s("TYPE_WINDOW_UPDATE length !=4: ", Integer.valueOf(i10)));
        }
        long jAnd = Util.and(this.source.readInt(), 2147483647L);
        if (jAnd == 0) {
            throw new IOException("windowSizeIncrement was 0");
        }
        handler.windowUpdate(i12, jAnd);
    }

    static {
        Logger logger2 = Logger.getLogger(Http2.class.getName());
        t.i(logger2, "getLogger(Http2::class.java.name)");
        logger = logger2;
    }

    public Http2Reader(@NotNull BufferedSource source, boolean z6) {
        t.j(source, "source");
        this.source = source;
        this.client = z6;
        ContinuationSource continuationSource = new ContinuationSource(source);
        this.continuation = continuationSource;
        this.hpackReader = new Hpack.Reader(continuationSource, 4096, 0, 4, null);
    }

    private final void readData(Handler handler, int i10, int i11, int i12) throws IOException {
        if (i12 == 0) {
            throw new IOException("PROTOCOL_ERROR: TYPE_DATA streamId == 0");
        }
        boolean z6 = (i11 & 1) != 0;
        if ((i11 & 32) != 0) {
            throw new IOException("PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA");
        }
        int iAnd = (i11 & 8) != 0 ? Util.and(this.source.readByte(), 255) : 0;
        handler.data(z6, i12, this.source, Companion.lengthWithoutPadding(i10, i11, iAnd));
        this.source.skip(iAnd);
    }

    private final void readGoAway(Handler handler, int i10, int i11, int i12) throws IOException {
        if (i10 < 8) {
            throw new IOException(t.s("TYPE_GOAWAY length < 8: ", Integer.valueOf(i10)));
        }
        if (i12 != 0) {
            throw new IOException("TYPE_GOAWAY streamId != 0");
        }
        int i13 = this.source.readInt();
        int i14 = this.source.readInt();
        int i15 = i10 - 8;
        ErrorCode errorCodeFromHttp2 = ErrorCode.Companion.fromHttp2(i14);
        if (errorCodeFromHttp2 == null) {
            throw new IOException(t.s("TYPE_GOAWAY unexpected error code: ", Integer.valueOf(i14)));
        }
        ByteString byteString = ByteString.EMPTY;
        if (i15 > 0) {
            byteString = this.source.readByteString(i15);
        }
        handler.goAway(i13, errorCodeFromHttp2, byteString);
    }

    private final List<Header> readHeaderBlock(int i10, int i11, int i12, int i13) throws IOException {
        this.continuation.setLeft(i10);
        ContinuationSource continuationSource = this.continuation;
        continuationSource.setLength(continuationSource.getLeft());
        this.continuation.setPadding(i11);
        this.continuation.setFlags(i12);
        this.continuation.setStreamId(i13);
        this.hpackReader.readHeaders();
        return this.hpackReader.getAndResetHeaderList();
    }

    private final void readHeaders(Handler handler, int i10, int i11, int i12) throws IOException {
        if (i12 == 0) {
            throw new IOException("PROTOCOL_ERROR: TYPE_HEADERS streamId == 0");
        }
        boolean z6 = (i11 & 1) != 0;
        int iAnd = (i11 & 8) != 0 ? Util.and(this.source.readByte(), 255) : 0;
        if ((i11 & 32) != 0) {
            readPriority(handler, i12);
            i10 -= 5;
        }
        handler.headers(z6, i12, -1, readHeaderBlock(Companion.lengthWithoutPadding(i10, i11, iAnd), iAnd, i11, i12));
    }

    private final void readPing(Handler handler, int i10, int i11, int i12) throws IOException {
        if (i10 != 8) {
            throw new IOException(t.s("TYPE_PING length != 8: ", Integer.valueOf(i10)));
        }
        if (i12 != 0) {
            throw new IOException("TYPE_PING streamId != 0");
        }
        handler.ping((i11 & 1) != 0, this.source.readInt(), this.source.readInt());
    }

    private final void readPushPromise(Handler handler, int i10, int i11, int i12) throws IOException {
        if (i12 == 0) {
            throw new IOException("PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0");
        }
        int iAnd = (i11 & 8) != 0 ? Util.and(this.source.readByte(), 255) : 0;
        handler.pushPromise(i12, this.source.readInt() & Integer.MAX_VALUE, readHeaderBlock(Companion.lengthWithoutPadding(i10 - 4, i11, iAnd), iAnd, i11, i12));
    }

    private final void readSettings(Handler handler, int i10, int i11, int i12) throws IOException {
        if (i12 != 0) {
            throw new IOException("TYPE_SETTINGS streamId != 0");
        }
        if ((i11 & 1) != 0) {
            if (i10 != 0) {
                throw new IOException("FRAME_SIZE_ERROR ack frame should be empty!");
            }
            handler.ackSettings();
            return;
        }
        if (i10 % 6 != 0) {
            throw new IOException(t.s("TYPE_SETTINGS length % 6 != 0: ", Integer.valueOf(i10)));
        }
        Settings settings = new Settings();
        g gVarU = o.u(o.v(0, i10), 6);
        int iE = gVarU.e();
        int iF = gVarU.f();
        int iG = gVarU.g();
        if ((iG > 0 && iE <= iF) || (iG < 0 && iF <= iE)) {
            while (true) {
                int i13 = iE + iG;
                int iAnd = Util.and(this.source.readShort(), 65535);
                int i14 = this.source.readInt();
                if (iAnd != 2) {
                    if (iAnd == 3) {
                        iAnd = 4;
                    } else if (iAnd != 4) {
                        if (iAnd == 5 && (i14 < 16384 || i14 > 16777215)) {
                            throw new IOException(t.s("PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: ", Integer.valueOf(i14)));
                        }
                    } else {
                        if (i14 < 0) {
                            throw new IOException("PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1");
                        }
                        iAnd = 7;
                    }
                } else if (i14 != 0 && i14 != 1) {
                    throw new IOException("PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1");
                }
                settings.set(iAnd, i14);
                if (iE != iF) {
                    iE = i13;
                }
            }
        }
        handler.settings(false, settings);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.source.close();
    }

    public final boolean nextFrame(boolean z6, @NotNull Handler handler) throws IOException {
        t.j(handler, "handler");
        try {
            this.source.require(9L);
            int medium = Util.readMedium(this.source);
            if (medium > 16384) {
                throw new IOException(t.s("FRAME_SIZE_ERROR: ", Integer.valueOf(medium)));
            }
            int iAnd = Util.and(this.source.readByte(), 255);
            int iAnd2 = Util.and(this.source.readByte(), 255);
            int i10 = this.source.readInt() & Integer.MAX_VALUE;
            Logger logger2 = logger;
            if (logger2.isLoggable(Level.FINE)) {
                logger2.fine(Http2.INSTANCE.frameLog(true, i10, medium, iAnd, iAnd2));
            }
            if (z6 && iAnd != 4) {
                throw new IOException(t.s("Expected a SETTINGS frame but was ", Http2.INSTANCE.formattedType$okhttp(iAnd)));
            }
            switch (iAnd) {
                case 0:
                    readData(handler, medium, iAnd2, i10);
                    return true;
                case 1:
                    readHeaders(handler, medium, iAnd2, i10);
                    return true;
                case 2:
                    readPriority(handler, medium, iAnd2, i10);
                    return true;
                case 3:
                    readRstStream(handler, medium, iAnd2, i10);
                    return true;
                case 4:
                    readSettings(handler, medium, iAnd2, i10);
                    return true;
                case 5:
                    readPushPromise(handler, medium, iAnd2, i10);
                    return true;
                case 6:
                    readPing(handler, medium, iAnd2, i10);
                    return true;
                case 7:
                    readGoAway(handler, medium, iAnd2, i10);
                    return true;
                case 8:
                    readWindowUpdate(handler, medium, iAnd2, i10);
                    return true;
                default:
                    this.source.skip(medium);
                    return true;
            }
        } catch (EOFException unused) {
            return false;
        }
    }

    public final void readConnectionPreface(@NotNull Handler handler) throws IOException {
        t.j(handler, "handler");
        if (this.client) {
            if (!nextFrame(true, handler)) {
                throw new IOException("Required SETTINGS preface not received");
            }
            return;
        }
        BufferedSource bufferedSource = this.source;
        ByteString byteString = Http2.CONNECTION_PREFACE;
        ByteString byteString2 = bufferedSource.readByteString(byteString.size());
        Logger logger2 = logger;
        if (logger2.isLoggable(Level.FINE)) {
            logger2.fine(Util.format(t.s("<< CONNECTION ", byteString2.hex()), new Object[0]));
        }
        if (!t.e(byteString, byteString2)) {
            throw new IOException(t.s("Expected a connection header but was ", byteString2.utf8()));
        }
    }

    private final void readPriority(Handler handler, int i10) throws IOException {
        int i11 = this.source.readInt();
        handler.priority(i10, i11 & Integer.MAX_VALUE, Util.and(this.source.readByte(), 255) + 1, (Integer.MIN_VALUE & i11) != 0);
    }
}
