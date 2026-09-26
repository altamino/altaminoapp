package okhttp3;

import android.support.v4.media.session.PlaybackStateCompat;
import com.safedk.android.internal.partials.OkHttpNetworkBridge;
import java.io.Closeable;
import java.io.IOException;
import java.net.ProtocolException;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import okhttp3.internal.http1.HeadersReader;
import okio.Buffer;
import okio.BufferedSource;
import okio.ByteString;
import okio.Okio;
import okio.Options;
import okio.Source;
import okio.Timeout;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes3.dex */
public final class MultipartReader implements Closeable {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    private static final Options afterBoundaryOptions;

    @NotNull
    private final String boundary;
    private boolean closed;

    @NotNull
    private final ByteString crlfDashDashBoundary;

    @Nullable
    private PartSource currentPart;

    @NotNull
    private final ByteString dashDashBoundary;
    private boolean noMoreParts;
    private int partCount;

    @NotNull
    private final BufferedSource source;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        @NotNull
        public final Options getAfterBoundaryOptions() {
            return MultipartReader.afterBoundaryOptions;
        }
    }

    public static final class Part implements Closeable {

        @NotNull
        private final BufferedSource body;

        @NotNull
        private final Headers headers;

        @NotNull
        public final BufferedSource body() {
            return this.body;
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            this.body.close();
        }

        @NotNull
        public final Headers headers() {
            return this.headers;
        }

        public Part(@NotNull Headers headers, @NotNull BufferedSource body) {
            t.j(headers, "headers");
            t.j(body, "body");
            this.headers = headers;
            this.body = body;
        }
    }

    private final class PartSource implements Source {
        final /* synthetic */ MultipartReader this$0;

        @NotNull
        private final Timeout timeout;

        @Override // okio.Source
        @NotNull
        public Timeout timeout() {
            return this.timeout;
        }

        public PartSource(MultipartReader this$0) {
            t.j(this$0, "this$0");
            this.this$0 = this$0;
            this.timeout = new Timeout();
        }

        @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            if (t.e(this.this$0.currentPart, this)) {
                this.this$0.currentPart = null;
            }
        }

        @Override // okio.Source
        public long read(@NotNull Buffer sink, long j6) {
            t.j(sink, "sink");
            if (j6 < 0) {
                throw new IllegalArgumentException(t.s("byteCount < 0: ", Long.valueOf(j6)).toString());
            }
            if (!t.e(this.this$0.currentPart, this)) {
                throw new IllegalStateException("closed".toString());
            }
            Timeout timeout = this.this$0.source.timeout();
            Timeout timeout2 = this.timeout;
            MultipartReader multipartReader = this.this$0;
            long jTimeoutNanos = timeout.timeoutNanos();
            timeout.timeout(Timeout.Companion.minTimeout(timeout2.timeoutNanos(), timeout.timeoutNanos()), TimeUnit.NANOSECONDS);
            if (!timeout.hasDeadline()) {
                if (timeout2.hasDeadline()) {
                    timeout.deadlineNanoTime(timeout2.deadlineNanoTime());
                }
                try {
                    long jCurrentPartBytesRemaining = multipartReader.currentPartBytesRemaining(j6);
                    return jCurrentPartBytesRemaining == 0 ? -1L : multipartReader.source.read(sink, jCurrentPartBytesRemaining);
                } finally {
                    timeout.timeout(jTimeoutNanos, TimeUnit.NANOSECONDS);
                    if (timeout2.hasDeadline()) {
                        timeout.clearDeadline();
                    }
                }
            }
            long jDeadlineNanoTime = timeout.deadlineNanoTime();
            if (timeout2.hasDeadline()) {
                timeout.deadlineNanoTime(Math.min(timeout.deadlineNanoTime(), timeout2.deadlineNanoTime()));
            }
            try {
                long jCurrentPartBytesRemaining2 = multipartReader.currentPartBytesRemaining(j6);
                return jCurrentPartBytesRemaining2 == 0 ? -1L : multipartReader.source.read(sink, jCurrentPartBytesRemaining2);
            } finally {
                timeout.timeout(jTimeoutNanos, TimeUnit.NANOSECONDS);
                if (timeout2.hasDeadline()) {
                    timeout.deadlineNanoTime(jDeadlineNanoTime);
                }
            }
        }
    }

    public MultipartReader(@NotNull BufferedSource source, @NotNull String boundary) throws IOException {
        t.j(source, "source");
        t.j(boundary, "boundary");
        this.source = source;
        this.boundary = boundary;
        this.dashDashBoundary = new Buffer().writeUtf8("--").writeUtf8(boundary).readByteString();
        this.crlfDashDashBoundary = new Buffer().writeUtf8("\r\n--").writeUtf8(boundary).readByteString();
    }

    @NotNull
    public final String boundary() {
        return this.boundary;
    }

    static {
        Options.Companion companion = Options.Companion;
        ByteString.Companion companion2 = ByteString.Companion;
        afterBoundaryOptions = companion.of(companion2.encodeUtf8("\r\n"), companion2.encodeUtf8("--"), companion2.encodeUtf8(" "), companion2.encodeUtf8("\t"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final long currentPartBytesRemaining(long j6) throws IOException {
        this.source.require(this.crlfDashDashBoundary.size());
        long jIndexOf = this.source.getBuffer().indexOf(this.crlfDashDashBoundary);
        return jIndexOf == -1 ? Math.min(j6, (this.source.getBuffer().size() - ((long) this.crlfDashDashBoundary.size())) + 1) : Math.min(j6, jIndexOf);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.closed) {
            return;
        }
        this.closed = true;
        this.currentPart = null;
        this.source.close();
    }

    @Nullable
    public final Part nextPart() throws IOException {
        if (!(!this.closed)) {
            throw new IllegalStateException("closed".toString());
        }
        if (this.noMoreParts) {
            return null;
        }
        if (this.partCount == 0 && this.source.rangeEquals(0L, this.dashDashBoundary)) {
            this.source.skip(this.dashDashBoundary.size());
        } else {
            while (true) {
                long jCurrentPartBytesRemaining = currentPartBytesRemaining(PlaybackStateCompat.ACTION_PLAY_FROM_URI);
                if (jCurrentPartBytesRemaining == 0) {
                    break;
                }
                this.source.skip(jCurrentPartBytesRemaining);
            }
            this.source.skip(this.crlfDashDashBoundary.size());
        }
        boolean z6 = false;
        while (true) {
            int iSelect = this.source.select(afterBoundaryOptions);
            if (iSelect == -1) {
                throw new ProtocolException("unexpected characters after boundary");
            }
            if (iSelect == 0) {
                this.partCount++;
                Headers headers = new HeadersReader(this.source).readHeaders();
                PartSource partSource = new PartSource(this);
                this.currentPart = partSource;
                return new Part(headers, Okio.buffer(partSource));
            }
            if (iSelect == 1) {
                if (z6) {
                    throw new ProtocolException("unexpected characters after boundary");
                }
                if (this.partCount == 0) {
                    throw new ProtocolException("expected at least 1 part");
                }
                this.noMoreParts = true;
                return null;
            }
            if (iSelect == 2 || iSelect == 3) {
                z6 = true;
            }
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public MultipartReader(@NotNull ResponseBody response) throws IOException {
        t.j(response, "response");
        BufferedSource bufferedSourceRetrofitExceptionCatchingRequestBody_source = OkHttpNetworkBridge.retrofitExceptionCatchingRequestBody_source(response);
        MediaType mediaTypeContentType = response.contentType();
        String strParameter = mediaTypeContentType == null ? null : mediaTypeContentType.parameter("boundary");
        if (strParameter != null) {
            this(bufferedSourceRetrofitExceptionCatchingRequestBody_source, strParameter);
            return;
        }
        throw new ProtocolException("expected the Content-Type to have a boundary parameter");
    }
}
