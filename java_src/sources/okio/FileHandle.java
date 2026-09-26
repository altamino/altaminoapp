package okio;

import java.io.Closeable;
import java.io.IOException;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes7.dex */
public abstract class FileHandle implements Closeable {
    private boolean closed;
    private int openStreamCount;
    private final boolean readWrite;

    private static final class FileHandleSink implements Sink {
        private boolean closed;

        @NotNull
        private final FileHandle fileHandle;
        private long position;

        public final boolean getClosed() {
            return this.closed;
        }

        @NotNull
        public final FileHandle getFileHandle() {
            return this.fileHandle;
        }

        public final long getPosition() {
            return this.position;
        }

        public final void setClosed(boolean z6) {
            this.closed = z6;
        }

        public final void setPosition(long j6) {
            this.position = j6;
        }

        public FileHandleSink(@NotNull FileHandle fileHandle, long j6) {
            kotlin.jvm.internal.t.j(fileHandle, "fileHandle");
            this.fileHandle = fileHandle;
            this.position = j6;
        }

        @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (this.closed) {
                return;
            }
            this.closed = true;
            synchronized (this.fileHandle) {
                this.fileHandle.openStreamCount--;
                if (this.fileHandle.openStreamCount == 0 && this.fileHandle.closed) {
                    l0 l0Var = l0.INSTANCE;
                    this.fileHandle.protectedClose();
                }
            }
        }

        @Override // okio.Sink, java.io.Flushable
        public void flush() throws IOException {
            if (!(!this.closed)) {
                throw new IllegalStateException("closed".toString());
            }
            this.fileHandle.protectedFlush();
        }

        @Override // okio.Sink
        @NotNull
        public Timeout timeout() {
            return Timeout.NONE;
        }

        @Override // okio.Sink
        public void write(@NotNull Buffer source, long j6) throws IOException {
            kotlin.jvm.internal.t.j(source, "source");
            if (!(!this.closed)) {
                throw new IllegalStateException("closed".toString());
            }
            this.fileHandle.writeNoCloseCheck(this.position, source, j6);
            this.position += j6;
        }
    }

    private static final class FileHandleSource implements Source {
        private boolean closed;

        @NotNull
        private final FileHandle fileHandle;
        private long position;

        public final boolean getClosed() {
            return this.closed;
        }

        @NotNull
        public final FileHandle getFileHandle() {
            return this.fileHandle;
        }

        public final long getPosition() {
            return this.position;
        }

        public final void setClosed(boolean z6) {
            this.closed = z6;
        }

        public final void setPosition(long j6) {
            this.position = j6;
        }

        public FileHandleSource(@NotNull FileHandle fileHandle, long j6) {
            kotlin.jvm.internal.t.j(fileHandle, "fileHandle");
            this.fileHandle = fileHandle;
            this.position = j6;
        }

        @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (this.closed) {
                return;
            }
            this.closed = true;
            synchronized (this.fileHandle) {
                this.fileHandle.openStreamCount--;
                if (this.fileHandle.openStreamCount == 0 && this.fileHandle.closed) {
                    l0 l0Var = l0.INSTANCE;
                    this.fileHandle.protectedClose();
                }
            }
        }

        @Override // okio.Source
        public long read(@NotNull Buffer sink, long j6) throws IOException {
            kotlin.jvm.internal.t.j(sink, "sink");
            if (!(!this.closed)) {
                throw new IllegalStateException("closed".toString());
            }
            long noCloseCheck = this.fileHandle.readNoCloseCheck(this.position, sink, j6);
            if (noCloseCheck != -1) {
                this.position += noCloseCheck;
            }
            return noCloseCheck;
        }

        @Override // okio.Source
        @NotNull
        public Timeout timeout() {
            return Timeout.NONE;
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        synchronized (this) {
            if (this.closed) {
                return;
            }
            this.closed = true;
            if (this.openStreamCount != 0) {
                return;
            }
            l0 l0Var = l0.INSTANCE;
            protectedClose();
        }
    }

    public final boolean getReadWrite() {
        return this.readWrite;
    }

    public final long position(@NotNull Source source) throws IOException {
        long size;
        kotlin.jvm.internal.t.j(source, "source");
        if (source instanceof RealBufferedSource) {
            RealBufferedSource realBufferedSource = (RealBufferedSource) source;
            size = realBufferedSource.bufferField.size();
            source = realBufferedSource.source;
        } else {
            size = 0;
        }
        if (!(source instanceof FileHandleSource) || ((FileHandleSource) source).getFileHandle() != this) {
            throw new IllegalArgumentException("source was not created by this FileHandle".toString());
        }
        FileHandleSource fileHandleSource = (FileHandleSource) source;
        if (!fileHandleSource.getClosed()) {
            return fileHandleSource.getPosition() - size;
        }
        throw new IllegalStateException("closed".toString());
    }

    protected abstract void protectedClose() throws IOException;

    protected abstract void protectedFlush() throws IOException;

    protected abstract int protectedRead(long j6, @NotNull byte[] bArr, int i10, int i11) throws IOException;

    protected abstract void protectedResize(long j6) throws IOException;

    protected abstract long protectedSize() throws IOException;

    protected abstract void protectedWrite(long j6, @NotNull byte[] bArr, int i10, int i11) throws IOException;

    public final int read(long j6, @NotNull byte[] array, int i10, int i11) throws IOException {
        kotlin.jvm.internal.t.j(array, "array");
        synchronized (this) {
            if (!(!this.closed)) {
                throw new IllegalStateException("closed".toString());
            }
            l0 l0Var = l0.INSTANCE;
        }
        return protectedRead(j6, array, i10, i11);
    }

    public final void reposition(@NotNull Source source, long j6) throws IOException {
        kotlin.jvm.internal.t.j(source, "source");
        if (!(source instanceof RealBufferedSource)) {
            if (!(source instanceof FileHandleSource) || ((FileHandleSource) source).getFileHandle() != this) {
                throw new IllegalArgumentException("source was not created by this FileHandle".toString());
            }
            FileHandleSource fileHandleSource = (FileHandleSource) source;
            if (!(!fileHandleSource.getClosed())) {
                throw new IllegalStateException("closed".toString());
            }
            fileHandleSource.setPosition(j6);
            return;
        }
        RealBufferedSource realBufferedSource = (RealBufferedSource) source;
        Source source2 = realBufferedSource.source;
        if (!(source2 instanceof FileHandleSource) || ((FileHandleSource) source2).getFileHandle() != this) {
            throw new IllegalArgumentException("source was not created by this FileHandle".toString());
        }
        FileHandleSource fileHandleSource2 = (FileHandleSource) source2;
        if (!(!fileHandleSource2.getClosed())) {
            throw new IllegalStateException("closed".toString());
        }
        long size = realBufferedSource.bufferField.size();
        long position = j6 - (fileHandleSource2.getPosition() - size);
        if (0 <= position && position < size) {
            realBufferedSource.skip(position);
        } else {
            realBufferedSource.bufferField.clear();
            fileHandleSource2.setPosition(j6);
        }
    }

    public final long size() throws IOException {
        synchronized (this) {
            if (!(!this.closed)) {
                throw new IllegalStateException("closed".toString());
            }
            l0 l0Var = l0.INSTANCE;
        }
        return protectedSize();
    }

    @NotNull
    public final Source source(long j6) throws IOException {
        synchronized (this) {
            if (!(!this.closed)) {
                throw new IllegalStateException("closed".toString());
            }
            this.openStreamCount++;
        }
        return new FileHandleSource(this, j6);
    }

    public final void write(long j6, @NotNull byte[] array, int i10, int i11) throws IOException {
        kotlin.jvm.internal.t.j(array, "array");
        if (!this.readWrite) {
            throw new IllegalStateException("file handle is read-only".toString());
        }
        synchronized (this) {
            if (!(!this.closed)) {
                throw new IllegalStateException("closed".toString());
            }
            l0 l0Var = l0.INSTANCE;
        }
        protectedWrite(j6, array, i10, i11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final long readNoCloseCheck(long j6, Buffer buffer, long j10) throws IOException {
        if (j10 < 0) {
            throw new IllegalArgumentException(("byteCount < 0: " + j10).toString());
        }
        long j11 = j10 + j6;
        long j12 = j6;
        while (j12 < j11) {
            Segment segmentWritableSegment$okio = buffer.writableSegment$okio(1);
            byte[] bArr = segmentWritableSegment$okio.data;
            int i10 = segmentWritableSegment$okio.limit;
            int iProtectedRead = protectedRead(j12, bArr, i10, (int) Math.min(j11 - j12, 8192 - i10));
            if (iProtectedRead == -1) {
                if (segmentWritableSegment$okio.pos == segmentWritableSegment$okio.limit) {
                    buffer.head = segmentWritableSegment$okio.pop();
                    SegmentPool.recycle(segmentWritableSegment$okio);
                }
                if (j6 != j12) {
                    break;
                }
                return -1L;
            }
            segmentWritableSegment$okio.limit += iProtectedRead;
            long j13 = iProtectedRead;
            j12 += j13;
            buffer.setSize$okio(buffer.size() + j13);
        }
        return j12 - j6;
    }

    public static /* synthetic */ Sink sink$default(FileHandle fileHandle, long j6, int i10, Object obj) throws IOException {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: sink");
        }
        if ((i10 & 1) != 0) {
            j6 = 0;
        }
        return fileHandle.sink(j6);
    }

    public static /* synthetic */ Source source$default(FileHandle fileHandle, long j6, int i10, Object obj) throws IOException {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: source");
        }
        if ((i10 & 1) != 0) {
            j6 = 0;
        }
        return fileHandle.source(j6);
    }

    public final void flush() throws IOException {
        if (!this.readWrite) {
            throw new IllegalStateException("file handle is read-only".toString());
        }
        synchronized (this) {
            if (!(!this.closed)) {
                throw new IllegalStateException("closed".toString());
            }
            l0 l0Var = l0.INSTANCE;
        }
        protectedFlush();
    }

    public final void resize(long j6) throws IOException {
        if (!this.readWrite) {
            throw new IllegalStateException("file handle is read-only".toString());
        }
        synchronized (this) {
            if (!(!this.closed)) {
                throw new IllegalStateException("closed".toString());
            }
            l0 l0Var = l0.INSTANCE;
        }
        protectedResize(j6);
    }

    @NotNull
    public final Sink sink(long j6) throws IOException {
        if (!this.readWrite) {
            throw new IllegalStateException("file handle is read-only".toString());
        }
        synchronized (this) {
            if (!(!this.closed)) {
                throw new IllegalStateException("closed".toString());
            }
            this.openStreamCount++;
        }
        return new FileHandleSink(this, j6);
    }

    public FileHandle(boolean z6) {
        this.readWrite = z6;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void writeNoCloseCheck(long j6, Buffer buffer, long j10) throws IOException {
        _UtilKt.checkOffsetAndCount(buffer.size(), 0L, j10);
        long j11 = j10 + j6;
        while (j6 < j11) {
            Segment segment = buffer.head;
            kotlin.jvm.internal.t.g(segment);
            int iMin = (int) Math.min(j11 - j6, segment.limit - segment.pos);
            protectedWrite(j6, segment.data, segment.pos, iMin);
            segment.pos += iMin;
            long j12 = iMin;
            j6 += j12;
            buffer.setSize$okio(buffer.size() - j12);
            if (segment.pos == segment.limit) {
                buffer.head = segment.pop();
                SegmentPool.recycle(segment);
            }
        }
    }

    @NotNull
    public final Sink appendingSink() throws IOException {
        return sink(size());
    }

    public final long read(long j6, @NotNull Buffer sink, long j10) throws IOException {
        kotlin.jvm.internal.t.j(sink, "sink");
        synchronized (this) {
            if (!this.closed) {
                l0 l0Var = l0.INSTANCE;
            } else {
                throw new IllegalStateException("closed".toString());
            }
        }
        return readNoCloseCheck(j6, sink, j10);
    }

    public final void write(long j6, @NotNull Buffer source, long j10) throws IOException {
        kotlin.jvm.internal.t.j(source, "source");
        if (this.readWrite) {
            synchronized (this) {
                if (!this.closed) {
                    l0 l0Var = l0.INSTANCE;
                } else {
                    throw new IllegalStateException("closed".toString());
                }
            }
            writeNoCloseCheck(j6, source, j10);
            return;
        }
        throw new IllegalStateException("file handle is read-only".toString());
    }

    public final long position(@NotNull Sink sink) throws IOException {
        long size;
        kotlin.jvm.internal.t.j(sink, "sink");
        if (sink instanceof RealBufferedSink) {
            RealBufferedSink realBufferedSink = (RealBufferedSink) sink;
            size = realBufferedSink.bufferField.size();
            sink = realBufferedSink.sink;
        } else {
            size = 0;
        }
        if ((sink instanceof FileHandleSink) && ((FileHandleSink) sink).getFileHandle() == this) {
            FileHandleSink fileHandleSink = (FileHandleSink) sink;
            if (!fileHandleSink.getClosed()) {
                return fileHandleSink.getPosition() + size;
            }
            throw new IllegalStateException("closed".toString());
        }
        throw new IllegalArgumentException("sink was not created by this FileHandle".toString());
    }

    public final void reposition(@NotNull Sink sink, long j6) throws IOException {
        kotlin.jvm.internal.t.j(sink, "sink");
        if (sink instanceof RealBufferedSink) {
            RealBufferedSink realBufferedSink = (RealBufferedSink) sink;
            Sink sink2 = realBufferedSink.sink;
            if ((sink2 instanceof FileHandleSink) && ((FileHandleSink) sink2).getFileHandle() == this) {
                FileHandleSink fileHandleSink = (FileHandleSink) sink2;
                if (!fileHandleSink.getClosed()) {
                    realBufferedSink.emit();
                    fileHandleSink.setPosition(j6);
                    return;
                }
                throw new IllegalStateException("closed".toString());
            }
            throw new IllegalArgumentException("sink was not created by this FileHandle".toString());
        }
        if ((sink instanceof FileHandleSink) && ((FileHandleSink) sink).getFileHandle() == this) {
            FileHandleSink fileHandleSink2 = (FileHandleSink) sink;
            if (!fileHandleSink2.getClosed()) {
                fileHandleSink2.setPosition(j6);
                return;
            }
            throw new IllegalStateException("closed".toString());
        }
        throw new IllegalArgumentException("sink was not created by this FileHandle".toString());
    }
}
