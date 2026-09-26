package okhttp3.internal.cache2;

import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.channels.FileChannel;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import okhttp3.internal.Util;
import okio.Buffer;
import okio.ByteString;
import okio.Source;
import okio.Timeout;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes5.dex */
public final class Relay {

    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final long FILE_HEADER_SIZE = 32;

    @NotNull
    public static final ByteString PREFIX_CLEAN;

    @NotNull
    public static final ByteString PREFIX_DIRTY;
    private static final int SOURCE_FILE = 2;
    private static final int SOURCE_UPSTREAM = 1;

    @NotNull
    private final Buffer buffer;
    private final long bufferMaxSize;
    private boolean complete;

    @Nullable
    private RandomAccessFile file;

    @NotNull
    private final ByteString metadata;
    private int sourceCount;

    @Nullable
    private Source upstream;

    @NotNull
    private final Buffer upstreamBuffer;
    private long upstreamPos;

    @Nullable
    private Thread upstreamReader;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        @NotNull
        public final Relay edit(@NotNull File file, @NotNull Source upstream, @NotNull ByteString metadata, long j6) throws IOException {
            t.j(file, "file");
            t.j(upstream, "upstream");
            t.j(metadata, "metadata");
            RandomAccessFile randomAccessFile = new RandomAccessFile(file, "rw");
            Relay relay = new Relay(randomAccessFile, upstream, 0L, metadata, j6, null);
            randomAccessFile.setLength(0L);
            relay.writeHeader(Relay.PREFIX_DIRTY, -1L, -1L);
            return relay;
        }

        @NotNull
        public final Relay read(@NotNull File file) throws IOException {
            t.j(file, "file");
            RandomAccessFile randomAccessFile = new RandomAccessFile(file, "rw");
            FileChannel channel = randomAccessFile.getChannel();
            t.i(channel, "randomAccessFile.channel");
            FileOperator fileOperator = new FileOperator(channel);
            Buffer buffer = new Buffer();
            fileOperator.read(0L, buffer, 32L);
            ByteString byteString = Relay.PREFIX_CLEAN;
            if (!t.e(buffer.readByteString(byteString.size()), byteString)) {
                throw new IOException("unreadable cache file");
            }
            long j6 = buffer.readLong();
            long j10 = buffer.readLong();
            Buffer buffer2 = new Buffer();
            fileOperator.read(j6 + 32, buffer2, j10);
            return new Relay(randomAccessFile, null, j6, buffer2.readByteString(), 0L, null);
        }
    }

    public final class RelaySource implements Source {

        @Nullable
        private FileOperator fileOperator;
        private long sourcePos;
        final /* synthetic */ Relay this$0;

        @NotNull
        private final Timeout timeout;

        @Override // okio.Source
        @NotNull
        public Timeout timeout() {
            return this.timeout;
        }

        public RelaySource(Relay this$0) {
            t.j(this$0, "this$0");
            this.this$0 = this$0;
            this.timeout = new Timeout();
            RandomAccessFile file = this$0.getFile();
            t.g(file);
            FileChannel channel = file.getChannel();
            t.i(channel, "file!!.channel");
            this.fileOperator = new FileOperator(channel);
        }

        @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (this.fileOperator == null) {
                return;
            }
            RandomAccessFile randomAccessFile = null;
            this.fileOperator = null;
            Relay relay = this.this$0;
            synchronized (relay) {
                try {
                    relay.setSourceCount(relay.getSourceCount() - 1);
                    if (relay.getSourceCount() == 0) {
                        RandomAccessFile file = relay.getFile();
                        relay.setFile(null);
                        randomAccessFile = file;
                    }
                    l0 l0Var = l0.INSTANCE;
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (randomAccessFile == null) {
                return;
            }
            Util.closeQuietly(randomAccessFile);
        }

        @Override // okio.Source
        public long read(@NotNull Buffer sink, long j6) throws IOException {
            char c7;
            t.j(sink, "sink");
            if (this.fileOperator == null) {
                throw new IllegalStateException("Check failed.".toString());
            }
            Relay relay = this.this$0;
            synchronized (relay) {
                while (true) {
                    if (this.sourcePos == relay.getUpstreamPos()) {
                        if (!relay.getComplete()) {
                            if (relay.getUpstreamReader() == null) {
                                relay.setUpstreamReader(Thread.currentThread());
                                c7 = 1;
                                break;
                            }
                            this.timeout.waitUntilNotified(relay);
                        } else {
                            return -1L;
                        }
                    } else {
                        long upstreamPos = relay.getUpstreamPos() - relay.getBuffer().size();
                        if (this.sourcePos < upstreamPos) {
                            c7 = 2;
                            break;
                        }
                        long jMin = Math.min(j6, relay.getUpstreamPos() - this.sourcePos);
                        relay.getBuffer().copyTo(sink, this.sourcePos - upstreamPos, jMin);
                        this.sourcePos += jMin;
                        return jMin;
                    }
                }
                if (c7 == 2) {
                    long jMin2 = Math.min(j6, this.this$0.getUpstreamPos() - this.sourcePos);
                    FileOperator fileOperator = this.fileOperator;
                    t.g(fileOperator);
                    fileOperator.read(this.sourcePos + 32, sink, jMin2);
                    this.sourcePos += jMin2;
                    return jMin2;
                }
                try {
                    Source upstream = this.this$0.getUpstream();
                    t.g(upstream);
                    long j10 = upstream.read(this.this$0.getUpstreamBuffer(), this.this$0.getBufferMaxSize());
                    if (j10 == -1) {
                        Relay relay2 = this.this$0;
                        relay2.commit(relay2.getUpstreamPos());
                        Relay relay3 = this.this$0;
                        synchronized (relay3) {
                            relay3.setUpstreamReader(null);
                            relay3.notifyAll();
                            l0 l0Var = l0.INSTANCE;
                        }
                        return -1L;
                    }
                    long jMin3 = Math.min(j10, j6);
                    this.this$0.getUpstreamBuffer().copyTo(sink, 0L, jMin3);
                    this.sourcePos += jMin3;
                    FileOperator fileOperator2 = this.fileOperator;
                    t.g(fileOperator2);
                    fileOperator2.write(this.this$0.getUpstreamPos() + 32, this.this$0.getUpstreamBuffer().clone(), j10);
                    Relay relay4 = this.this$0;
                    synchronized (relay4) {
                        try {
                            relay4.getBuffer().write(relay4.getUpstreamBuffer(), j10);
                            if (relay4.getBuffer().size() > relay4.getBufferMaxSize()) {
                                relay4.getBuffer().skip(relay4.getBuffer().size() - relay4.getBufferMaxSize());
                            }
                            relay4.setUpstreamPos(relay4.getUpstreamPos() + j10);
                            l0 l0Var2 = l0.INSTANCE;
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    Relay relay5 = this.this$0;
                    synchronized (relay5) {
                        relay5.setUpstreamReader(null);
                        relay5.notifyAll();
                    }
                    return jMin3;
                } catch (Throwable th2) {
                    Relay relay6 = this.this$0;
                    synchronized (relay6) {
                        relay6.setUpstreamReader(null);
                        relay6.notifyAll();
                        l0 l0Var3 = l0.INSTANCE;
                        throw th2;
                    }
                }
            }
        }
    }

    public /* synthetic */ Relay(RandomAccessFile randomAccessFile, Source source, long j6, ByteString byteString, long j10, k kVar) {
        this(randomAccessFile, source, j6, byteString, j10);
    }

    @NotNull
    public final Buffer getBuffer() {
        return this.buffer;
    }

    public final long getBufferMaxSize() {
        return this.bufferMaxSize;
    }

    public final boolean getComplete() {
        return this.complete;
    }

    @Nullable
    public final RandomAccessFile getFile() {
        return this.file;
    }

    public final int getSourceCount() {
        return this.sourceCount;
    }

    @Nullable
    public final Source getUpstream() {
        return this.upstream;
    }

    @NotNull
    public final Buffer getUpstreamBuffer() {
        return this.upstreamBuffer;
    }

    public final long getUpstreamPos() {
        return this.upstreamPos;
    }

    @Nullable
    public final Thread getUpstreamReader() {
        return this.upstreamReader;
    }

    public final boolean isClosed() {
        return this.file == null;
    }

    @NotNull
    public final ByteString metadata() {
        return this.metadata;
    }

    @Nullable
    public final Source newSource() {
        synchronized (this) {
            if (getFile() == null) {
                return null;
            }
            setSourceCount(getSourceCount() + 1);
            return new RelaySource(this);
        }
    }

    public final void setComplete(boolean z6) {
        this.complete = z6;
    }

    public final void setFile(@Nullable RandomAccessFile randomAccessFile) {
        this.file = randomAccessFile;
    }

    public final void setSourceCount(int i10) {
        this.sourceCount = i10;
    }

    public final void setUpstream(@Nullable Source source) {
        this.upstream = source;
    }

    public final void setUpstreamPos(long j6) {
        this.upstreamPos = j6;
    }

    public final void setUpstreamReader(@Nullable Thread thread) {
        this.upstreamReader = thread;
    }

    static {
        ByteString.Companion companion = ByteString.Companion;
        PREFIX_CLEAN = companion.encodeUtf8("OkHttp cache v1\n");
        PREFIX_DIRTY = companion.encodeUtf8("OkHttp DIRTY :(\n");
    }

    private Relay(RandomAccessFile randomAccessFile, Source source, long j6, ByteString byteString, long j10) {
        this.file = randomAccessFile;
        this.upstream = source;
        this.upstreamPos = j6;
        this.metadata = byteString;
        this.bufferMaxSize = j10;
        this.upstreamBuffer = new Buffer();
        this.complete = this.upstream == null;
        this.buffer = new Buffer();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void writeHeader(ByteString byteString, long j6, long j10) throws IOException {
        Buffer buffer = new Buffer();
        buffer.write(byteString);
        buffer.writeLong(j6);
        buffer.writeLong(j10);
        if (buffer.size() != 32) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        RandomAccessFile randomAccessFile = this.file;
        t.g(randomAccessFile);
        FileChannel channel = randomAccessFile.getChannel();
        t.i(channel, "file!!.channel");
        new FileOperator(channel).write(0L, buffer, 32L);
    }

    private final void writeMetadata(long j6) throws IOException {
        Buffer buffer = new Buffer();
        buffer.write(this.metadata);
        RandomAccessFile randomAccessFile = this.file;
        t.g(randomAccessFile);
        FileChannel channel = randomAccessFile.getChannel();
        t.i(channel, "file!!.channel");
        new FileOperator(channel).write(32 + j6, buffer, this.metadata.size());
    }

    public final void commit(long j6) throws IOException {
        writeMetadata(j6);
        RandomAccessFile randomAccessFile = this.file;
        t.g(randomAccessFile);
        randomAccessFile.getChannel().force(false);
        writeHeader(PREFIX_CLEAN, j6, this.metadata.size());
        RandomAccessFile randomAccessFile2 = this.file;
        t.g(randomAccessFile2);
        randomAccessFile2.getChannel().force(false);
        synchronized (this) {
            setComplete(true);
            l0 l0Var = l0.INSTANCE;
        }
        Source source = this.upstream;
        if (source != null) {
            Util.closeQuietly(source);
        }
        this.upstream = null;
    }
}
