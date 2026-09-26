package okhttp3.internal.http2;

import e8.a;
import java.io.Closeable;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.Socket;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.n0;
import kotlin.jvm.internal.p0;
import kotlin.jvm.internal.t;
import kotlinx.serialization.json.internal.b;
import okhttp3.internal.Util;
import okhttp3.internal.concurrent.Task;
import okhttp3.internal.concurrent.TaskQueue;
import okhttp3.internal.concurrent.TaskRunner;
import okhttp3.internal.platform.Platform;
import okio.Buffer;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.ByteString;
import okio.Okio;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes3.dex */
public final class Http2Connection implements Closeable {
    public static final int AWAIT_PING = 3;

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    private static final Settings DEFAULT_SETTINGS;
    public static final int DEGRADED_PING = 2;
    public static final int DEGRADED_PONG_TIMEOUT_NS = 1000000000;
    public static final int INTERVAL_PING = 1;
    public static final int OKHTTP_CLIENT_WINDOW_SIZE = 16777216;
    private long awaitPingsSent;
    private long awaitPongsReceived;
    private final boolean client;

    @NotNull
    private final String connectionName;

    @NotNull
    private final Set<Integer> currentPushRequests;
    private long degradedPingsSent;
    private long degradedPongDeadlineNs;
    private long degradedPongsReceived;
    private long intervalPingsSent;
    private long intervalPongsReceived;
    private boolean isShutdown;
    private int lastGoodStreamId;

    @NotNull
    private final Listener listener;
    private int nextStreamId;

    @NotNull
    private final Settings okHttpSettings;

    @NotNull
    private Settings peerSettings;

    @NotNull
    private final PushObserver pushObserver;

    @NotNull
    private final TaskQueue pushQueue;
    private long readBytesAcknowledged;
    private long readBytesTotal;

    @NotNull
    private final ReaderRunnable readerRunnable;

    @NotNull
    private final TaskQueue settingsListenerQueue;

    @NotNull
    private final Socket socket;

    @NotNull
    private final Map<Integer, Http2Stream> streams;

    @NotNull
    private final TaskRunner taskRunner;
    private long writeBytesMaximum;
    private long writeBytesTotal;

    @NotNull
    private final Http2Writer writer;

    @NotNull
    private final TaskQueue writerQueue;

    public static final class Builder {
        private boolean client;
        public String connectionName;

        @NotNull
        private Listener listener;
        private int pingIntervalMillis;

        @NotNull
        private PushObserver pushObserver;
        public BufferedSink sink;
        public Socket socket;
        public BufferedSource source;

        @NotNull
        private final TaskRunner taskRunner;

        public final boolean getClient$okhttp() {
            return this.client;
        }

        @NotNull
        public final Listener getListener$okhttp() {
            return this.listener;
        }

        public final int getPingIntervalMillis$okhttp() {
            return this.pingIntervalMillis;
        }

        @NotNull
        public final PushObserver getPushObserver$okhttp() {
            return this.pushObserver;
        }

        @NotNull
        public final TaskRunner getTaskRunner$okhttp() {
            return this.taskRunner;
        }

        public final void setClient$okhttp(boolean z6) {
            this.client = z6;
        }

        public final void setConnectionName$okhttp(@NotNull String str) {
            t.j(str, "<set-?>");
            this.connectionName = str;
        }

        public final void setListener$okhttp(@NotNull Listener listener) {
            t.j(listener, "<set-?>");
            this.listener = listener;
        }

        public final void setPingIntervalMillis$okhttp(int i10) {
            this.pingIntervalMillis = i10;
        }

        public final void setPushObserver$okhttp(@NotNull PushObserver pushObserver) {
            t.j(pushObserver, "<set-?>");
            this.pushObserver = pushObserver;
        }

        public final void setSink$okhttp(@NotNull BufferedSink bufferedSink) {
            t.j(bufferedSink, "<set-?>");
            this.sink = bufferedSink;
        }

        public final void setSocket$okhttp(@NotNull Socket socket) {
            t.j(socket, "<set-?>");
            this.socket = socket;
        }

        public final void setSource$okhttp(@NotNull BufferedSource bufferedSource) {
            t.j(bufferedSource, "<set-?>");
            this.source = bufferedSource;
        }

        @NotNull
        public final Builder socket(@NotNull Socket socket) throws IOException {
            t.j(socket, "socket");
            return socket$default(this, socket, null, null, null, 14, null);
        }

        public Builder(boolean z6, @NotNull TaskRunner taskRunner) {
            t.j(taskRunner, "taskRunner");
            this.client = z6;
            this.taskRunner = taskRunner;
            this.listener = Listener.REFUSE_INCOMING_STREAMS;
            this.pushObserver = PushObserver.CANCEL;
        }

        public static /* synthetic */ Builder socket$default(Builder builder, Socket socket, String str, BufferedSource bufferedSource, BufferedSink bufferedSink, int i10, Object obj) throws IOException {
            if ((i10 & 2) != 0) {
                str = Util.peerName(socket);
            }
            if ((i10 & 4) != 0) {
                bufferedSource = Okio.buffer(Okio.source(socket));
            }
            if ((i10 & 8) != 0) {
                bufferedSink = Okio.buffer(Okio.sink(socket));
            }
            return builder.socket(socket, str, bufferedSource, bufferedSink);
        }

        @NotNull
        public final Http2Connection build() {
            return new Http2Connection(this);
        }

        @NotNull
        public final String getConnectionName$okhttp() {
            String str = this.connectionName;
            if (str != null) {
                return str;
            }
            t.B("connectionName");
            return null;
        }

        @NotNull
        public final BufferedSink getSink$okhttp() {
            BufferedSink bufferedSink = this.sink;
            if (bufferedSink != null) {
                return bufferedSink;
            }
            t.B("sink");
            return null;
        }

        @NotNull
        public final Socket getSocket$okhttp() {
            Socket socket = this.socket;
            if (socket != null) {
                return socket;
            }
            t.B("socket");
            return null;
        }

        @NotNull
        public final BufferedSource getSource$okhttp() {
            BufferedSource bufferedSource = this.source;
            if (bufferedSource != null) {
                return bufferedSource;
            }
            t.B("source");
            return null;
        }

        @NotNull
        public final Builder listener(@NotNull Listener listener) {
            t.j(listener, "listener");
            setListener$okhttp(listener);
            return this;
        }

        @NotNull
        public final Builder pushObserver(@NotNull PushObserver pushObserver) {
            t.j(pushObserver, "pushObserver");
            setPushObserver$okhttp(pushObserver);
            return this;
        }

        @NotNull
        public final Builder socket(@NotNull Socket socket, @NotNull String peerName) throws IOException {
            t.j(socket, "socket");
            t.j(peerName, "peerName");
            return socket$default(this, socket, peerName, null, null, 12, null);
        }

        @NotNull
        public final Builder pingIntervalMillis(int i10) {
            setPingIntervalMillis$okhttp(i10);
            return this;
        }

        @NotNull
        public final Builder socket(@NotNull Socket socket, @NotNull String peerName, @NotNull BufferedSource source) throws IOException {
            t.j(socket, "socket");
            t.j(peerName, "peerName");
            t.j(source, "source");
            return socket$default(this, socket, peerName, source, null, 8, null);
        }

        @NotNull
        public final Builder socket(@NotNull Socket socket, @NotNull String peerName, @NotNull BufferedSource source, @NotNull BufferedSink sink) throws IOException {
            String strS;
            t.j(socket, "socket");
            t.j(peerName, "peerName");
            t.j(source, "source");
            t.j(sink, "sink");
            setSocket$okhttp(socket);
            if (getClient$okhttp()) {
                strS = Util.okHttpName + ' ' + peerName;
            } else {
                strS = t.s("MockWebServer ", peerName);
            }
            setConnectionName$okhttp(strS);
            setSource$okhttp(source);
            setSink$okhttp(sink);
            return this;
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        @NotNull
        public final Settings getDEFAULT_SETTINGS() {
            return Http2Connection.DEFAULT_SETTINGS;
        }
    }

    public static abstract class Listener {

        @NotNull
        public static final Companion Companion = new Companion(null);

        @NotNull
        public static final Listener REFUSE_INCOMING_STREAMS = new Listener() { // from class: okhttp3.internal.http2.Http2Connection$Listener$Companion$REFUSE_INCOMING_STREAMS$1
            @Override // okhttp3.internal.http2.Http2Connection.Listener
            public void onStream(@NotNull Http2Stream stream) throws IOException {
                t.j(stream, "stream");
                stream.close(ErrorCode.REFUSED_STREAM, null);
            }
        };

        public static final class Companion {
            public /* synthetic */ Companion(k kVar) {
                this();
            }

            private Companion() {
            }
        }

        public void onSettings(@NotNull Http2Connection connection, @NotNull Settings settings) {
            t.j(connection, "connection");
            t.j(settings, "settings");
        }

        public abstract void onStream(@NotNull Http2Stream http2Stream) throws IOException;
    }

    public final class ReaderRunnable implements Http2Reader.Handler, a<l0> {

        @NotNull
        private final Http2Reader reader;
        final /* synthetic */ Http2Connection this$0;

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void ackSettings() {
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void alternateService(int i10, @NotNull String origin, @NotNull ByteString protocol, @NotNull String host, int i11, long j6) {
            t.j(origin, "origin");
            t.j(protocol, "protocol");
            t.j(host, "host");
        }

        @NotNull
        public final Http2Reader getReader$okhttp() {
            return this.reader;
        }

        @Override // e8.a
        public /* bridge */ /* synthetic */ l0 invoke() throws Throwable {
            invoke2();
            return l0.INSTANCE;
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void priority(int i10, int i11, int i12, boolean z6) {
        }

        public ReaderRunnable(@NotNull Http2Connection this$0, Http2Reader reader) {
            t.j(this$0, "this$0");
            t.j(reader, "reader");
            this.this$0 = this$0;
            this.reader = reader;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r13v1 */
        /* JADX WARN: Type inference failed for: r13v2, types: [T, okhttp3.internal.http2.Settings] */
        /* JADX WARN: Type inference failed for: r13v3 */
        public final void applyAndAckSettings(boolean z6, @NotNull Settings settings) {
            ?? r13;
            long initialWindowSize;
            int i10;
            Http2Stream[] http2StreamArr;
            t.j(settings, "settings");
            final p0 p0Var = new p0();
            Http2Writer writer = this.this$0.getWriter();
            final Http2Connection http2Connection = this.this$0;
            synchronized (writer) {
                synchronized (http2Connection) {
                    try {
                        Settings peerSettings = http2Connection.getPeerSettings();
                        if (z6) {
                            r13 = settings;
                        } else {
                            Settings settings2 = new Settings();
                            settings2.merge(peerSettings);
                            settings2.merge(settings);
                            r13 = settings2;
                        }
                        p0Var.element = r13;
                        initialWindowSize = ((long) r13.getInitialWindowSize()) - ((long) peerSettings.getInitialWindowSize());
                        i10 = 0;
                        if (initialWindowSize == 0 || http2Connection.getStreams$okhttp().isEmpty()) {
                            http2StreamArr = null;
                        } else {
                            Object[] array = http2Connection.getStreams$okhttp().values().toArray(new Http2Stream[0]);
                            if (array == null) {
                                throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
                            }
                            http2StreamArr = (Http2Stream[]) array;
                        }
                        http2Connection.setPeerSettings((Settings) p0Var.element);
                        TaskQueue taskQueue = http2Connection.settingsListenerQueue;
                        final String strS = t.s(http2Connection.getConnectionName$okhttp(), " onSettings");
                        final boolean z10 = true;
                        taskQueue.schedule(new Task(strS, z10, http2Connection, p0Var) { // from class: okhttp3.internal.http2.Http2Connection$ReaderRunnable$applyAndAckSettings$lambda-7$lambda-6$$inlined$execute$default$1
                            final /* synthetic */ boolean $cancelable;
                            final /* synthetic */ String $name;
                            final /* synthetic */ p0 $newPeerSettings$inlined;
                            final /* synthetic */ Http2Connection this$0;

                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(strS, z10);
                                this.$name = strS;
                                this.$cancelable = z10;
                                this.this$0 = http2Connection;
                                this.$newPeerSettings$inlined = p0Var;
                            }

                            /* JADX WARN: Multi-variable type inference failed */
                            @Override // okhttp3.internal.concurrent.Task
                            public long runOnce() {
                                this.this$0.getListener$okhttp().onSettings(this.this$0, (Settings) this.$newPeerSettings$inlined.element);
                                return -1L;
                            }
                        }, 0L);
                        l0 l0Var = l0.INSTANCE;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                try {
                    http2Connection.getWriter().applyAndAckSettings((Settings) p0Var.element);
                } catch (IOException e) {
                    http2Connection.failConnection(e);
                }
                l0 l0Var2 = l0.INSTANCE;
            }
            if (http2StreamArr != null) {
                int length = http2StreamArr.length;
                while (i10 < length) {
                    Http2Stream http2Stream = http2StreamArr[i10];
                    i10++;
                    synchronized (http2Stream) {
                        http2Stream.addBytesToWriteWindow(initialWindowSize);
                        l0 l0Var3 = l0.INSTANCE;
                    }
                }
            }
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void data(boolean z6, int i10, @NotNull BufferedSource source, int i11) throws IOException {
            t.j(source, "source");
            if (this.this$0.pushedStream$okhttp(i10)) {
                this.this$0.pushDataLater$okhttp(i10, source, i11, z6);
                return;
            }
            Http2Stream stream = this.this$0.getStream(i10);
            if (stream == null) {
                this.this$0.writeSynResetLater$okhttp(i10, ErrorCode.PROTOCOL_ERROR);
                long j6 = i11;
                this.this$0.updateConnectionFlowControl$okhttp(j6);
                source.skip(j6);
                return;
            }
            stream.receiveData(source, i11);
            if (z6) {
                stream.receiveHeaders(Util.EMPTY_HEADERS, true);
            }
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void goAway(int i10, @NotNull ErrorCode errorCode, @NotNull ByteString debugData) {
            int i11;
            Object[] array;
            t.j(errorCode, "errorCode");
            t.j(debugData, "debugData");
            debugData.size();
            Http2Connection http2Connection = this.this$0;
            synchronized (http2Connection) {
                i11 = 0;
                array = http2Connection.getStreams$okhttp().values().toArray(new Http2Stream[0]);
                if (array == null) {
                    throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
                }
                http2Connection.isShutdown = true;
                l0 l0Var = l0.INSTANCE;
            }
            Http2Stream[] http2StreamArr = (Http2Stream[]) array;
            int length = http2StreamArr.length;
            while (i11 < length) {
                Http2Stream http2Stream = http2StreamArr[i11];
                i11++;
                if (http2Stream.getId() > i10 && http2Stream.isLocallyInitiated()) {
                    http2Stream.receiveRstStream(ErrorCode.REFUSED_STREAM);
                    this.this$0.removeStream$okhttp(http2Stream.getId());
                }
            }
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void headers(boolean z6, int i10, int i11, @NotNull List<Header> headerBlock) {
            t.j(headerBlock, "headerBlock");
            if (this.this$0.pushedStream$okhttp(i10)) {
                this.this$0.pushHeadersLater$okhttp(i10, headerBlock, z6);
                return;
            }
            final Http2Connection http2Connection = this.this$0;
            synchronized (http2Connection) {
                Http2Stream stream = http2Connection.getStream(i10);
                if (stream != null) {
                    l0 l0Var = l0.INSTANCE;
                    stream.receiveHeaders(Util.toHeaders(headerBlock), z6);
                    return;
                }
                if (http2Connection.isShutdown) {
                    return;
                }
                if (i10 <= http2Connection.getLastGoodStreamId$okhttp()) {
                    return;
                }
                if (i10 % 2 == http2Connection.getNextStreamId$okhttp() % 2) {
                    return;
                }
                final Http2Stream http2Stream = new Http2Stream(i10, http2Connection, false, z6, Util.toHeaders(headerBlock));
                http2Connection.setLastGoodStreamId$okhttp(i10);
                http2Connection.getStreams$okhttp().put(Integer.valueOf(i10), http2Stream);
                TaskQueue taskQueueNewQueue = http2Connection.taskRunner.newQueue();
                final String str = http2Connection.getConnectionName$okhttp() + b.BEGIN_LIST + i10 + "] onStream";
                final boolean z10 = true;
                taskQueueNewQueue.schedule(new Task(str, z10, http2Connection, http2Stream) { // from class: okhttp3.internal.http2.Http2Connection$ReaderRunnable$headers$lambda-2$$inlined$execute$default$1
                    final /* synthetic */ boolean $cancelable;
                    final /* synthetic */ String $name;
                    final /* synthetic */ Http2Stream $newStream$inlined;
                    final /* synthetic */ Http2Connection this$0;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(str, z10);
                        this.$name = str;
                        this.$cancelable = z10;
                        this.this$0 = http2Connection;
                        this.$newStream$inlined = http2Stream;
                    }

                    @Override // okhttp3.internal.concurrent.Task
                    public long runOnce() {
                        try {
                            this.this$0.getListener$okhttp().onStream(this.$newStream$inlined);
                            return -1L;
                        } catch (IOException e) {
                            Platform.Companion.get().log(t.s("Http2Connection.Listener failure for ", this.this$0.getConnectionName$okhttp()), 4, e);
                            try {
                                this.$newStream$inlined.close(ErrorCode.PROTOCOL_ERROR, e);
                                return -1L;
                            } catch (IOException unused) {
                                return -1L;
                            }
                        }
                    }
                }, 0L);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v0, types: [okhttp3.internal.http2.ErrorCode] */
        /* JADX WARN: Type inference failed for: r0v3 */
        /* JADX WARN: Type inference failed for: r0v5, types: [java.io.Closeable, okhttp3.internal.http2.Http2Reader] */
        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public void invoke2() throws Throwable {
            ErrorCode errorCode;
            ErrorCode errorCode2 = ErrorCode.INTERNAL_ERROR;
            IOException e = null;
            try {
                try {
                    this.reader.readConnectionPreface(this);
                    while (this.reader.nextFrame(false, this)) {
                    }
                    ErrorCode errorCode3 = ErrorCode.NO_ERROR;
                    try {
                        this.this$0.close$okhttp(errorCode3, ErrorCode.CANCEL, null);
                        errorCode = errorCode3;
                    } catch (IOException e2) {
                        e = e2;
                        ErrorCode errorCode4 = ErrorCode.PROTOCOL_ERROR;
                        Http2Connection http2Connection = this.this$0;
                        http2Connection.close$okhttp(errorCode4, errorCode4, e);
                        errorCode = http2Connection;
                    }
                } catch (Throwable th) {
                    th = th;
                    this.this$0.close$okhttp(errorCode, errorCode2, e);
                    Util.closeQuietly(this.reader);
                    throw th;
                }
            } catch (IOException e6) {
                e = e6;
            } catch (Throwable th2) {
                th = th2;
                errorCode = errorCode2;
                this.this$0.close$okhttp(errorCode, errorCode2, e);
                Util.closeQuietly(this.reader);
                throw th;
            }
            errorCode2 = this.reader;
            Util.closeQuietly((Closeable) errorCode2);
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void ping(boolean z6, final int i10, final int i11) {
            if (!z6) {
                TaskQueue taskQueue = this.this$0.writerQueue;
                final String strS = t.s(this.this$0.getConnectionName$okhttp(), " ping");
                final Http2Connection http2Connection = this.this$0;
                final boolean z10 = true;
                taskQueue.schedule(new Task(strS, z10, http2Connection, i10, i11) { // from class: okhttp3.internal.http2.Http2Connection$ReaderRunnable$ping$$inlined$execute$default$1
                    final /* synthetic */ boolean $cancelable;
                    final /* synthetic */ String $name;
                    final /* synthetic */ int $payload1$inlined;
                    final /* synthetic */ int $payload2$inlined;
                    final /* synthetic */ Http2Connection this$0;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(strS, z10);
                        this.$name = strS;
                        this.$cancelable = z10;
                        this.this$0 = http2Connection;
                        this.$payload1$inlined = i10;
                        this.$payload2$inlined = i11;
                    }

                    @Override // okhttp3.internal.concurrent.Task
                    public long runOnce() {
                        this.this$0.writePing(true, this.$payload1$inlined, this.$payload2$inlined);
                        return -1L;
                    }
                }, 0L);
                return;
            }
            Http2Connection http2Connection2 = this.this$0;
            synchronized (http2Connection2) {
                try {
                    if (i10 == 1) {
                        http2Connection2.intervalPongsReceived++;
                    } else if (i10 != 2) {
                        if (i10 == 3) {
                            http2Connection2.awaitPongsReceived++;
                            http2Connection2.notifyAll();
                        }
                        l0 l0Var = l0.INSTANCE;
                    } else {
                        http2Connection2.degradedPongsReceived++;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void pushPromise(int i10, int i11, @NotNull List<Header> requestHeaders) {
            t.j(requestHeaders, "requestHeaders");
            this.this$0.pushRequestLater$okhttp(i11, requestHeaders);
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void rstStream(int i10, @NotNull ErrorCode errorCode) {
            t.j(errorCode, "errorCode");
            if (this.this$0.pushedStream$okhttp(i10)) {
                this.this$0.pushResetLater$okhttp(i10, errorCode);
                return;
            }
            Http2Stream http2StreamRemoveStream$okhttp = this.this$0.removeStream$okhttp(i10);
            if (http2StreamRemoveStream$okhttp == null) {
                return;
            }
            http2StreamRemoveStream$okhttp.receiveRstStream(errorCode);
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void settings(final boolean z6, @NotNull final Settings settings) {
            t.j(settings, "settings");
            TaskQueue taskQueue = this.this$0.writerQueue;
            final String strS = t.s(this.this$0.getConnectionName$okhttp(), " applyAndAckSettings");
            final boolean z10 = true;
            taskQueue.schedule(new Task(strS, z10, this, z6, settings) { // from class: okhttp3.internal.http2.Http2Connection$ReaderRunnable$settings$$inlined$execute$default$1
                final /* synthetic */ boolean $cancelable;
                final /* synthetic */ boolean $clearPrevious$inlined;
                final /* synthetic */ String $name;
                final /* synthetic */ Settings $settings$inlined;
                final /* synthetic */ Http2Connection.ReaderRunnable this$0;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(strS, z10);
                    this.$name = strS;
                    this.$cancelable = z10;
                    this.this$0 = this;
                    this.$clearPrevious$inlined = z6;
                    this.$settings$inlined = settings;
                }

                @Override // okhttp3.internal.concurrent.Task
                public long runOnce() {
                    this.this$0.applyAndAckSettings(this.$clearPrevious$inlined, this.$settings$inlined);
                    return -1L;
                }
            }, 0L);
        }

        @Override // okhttp3.internal.http2.Http2Reader.Handler
        public void windowUpdate(int i10, long j6) {
            if (i10 == 0) {
                Http2Connection http2Connection = this.this$0;
                synchronized (http2Connection) {
                    http2Connection.writeBytesMaximum = http2Connection.getWriteBytesMaximum() + j6;
                    http2Connection.notifyAll();
                    l0 l0Var = l0.INSTANCE;
                }
                return;
            }
            Http2Stream stream = this.this$0.getStream(i10);
            if (stream != null) {
                synchronized (stream) {
                    stream.addBytesToWriteWindow(j6);
                    l0 l0Var2 = l0.INSTANCE;
                }
            }
        }
    }

    public final synchronized void awaitPong() throws InterruptedException {
        while (this.awaitPongsReceived < this.awaitPingsSent) {
            wait();
        }
    }

    public final boolean getClient$okhttp() {
        return this.client;
    }

    @NotNull
    public final String getConnectionName$okhttp() {
        return this.connectionName;
    }

    public final int getLastGoodStreamId$okhttp() {
        return this.lastGoodStreamId;
    }

    @NotNull
    public final Listener getListener$okhttp() {
        return this.listener;
    }

    public final int getNextStreamId$okhttp() {
        return this.nextStreamId;
    }

    @NotNull
    public final Settings getOkHttpSettings() {
        return this.okHttpSettings;
    }

    @NotNull
    public final Settings getPeerSettings() {
        return this.peerSettings;
    }

    public final long getReadBytesAcknowledged() {
        return this.readBytesAcknowledged;
    }

    public final long getReadBytesTotal() {
        return this.readBytesTotal;
    }

    @NotNull
    public final ReaderRunnable getReaderRunnable() {
        return this.readerRunnable;
    }

    @NotNull
    public final Socket getSocket$okhttp() {
        return this.socket;
    }

    @Nullable
    public final synchronized Http2Stream getStream(int i10) {
        return this.streams.get(Integer.valueOf(i10));
    }

    @NotNull
    public final Map<Integer, Http2Stream> getStreams$okhttp() {
        return this.streams;
    }

    public final long getWriteBytesMaximum() {
        return this.writeBytesMaximum;
    }

    public final long getWriteBytesTotal() {
        return this.writeBytesTotal;
    }

    @NotNull
    public final Http2Writer getWriter() {
        return this.writer;
    }

    public final synchronized boolean isHealthy(long j6) {
        if (this.isShutdown) {
            return false;
        }
        return this.degradedPongsReceived >= this.degradedPingsSent || j6 < this.degradedPongDeadlineNs;
    }

    @NotNull
    public final Http2Stream newStream(@NotNull List<Header> requestHeaders, boolean z6) throws IOException {
        t.j(requestHeaders, "requestHeaders");
        return newStream(0, requestHeaders, z6);
    }

    public final synchronized int openStreamCount() {
        return this.streams.size();
    }

    public final boolean pushedStream$okhttp(int i10) {
        return i10 != 0 && (i10 & 1) == 0;
    }

    @Nullable
    public final synchronized Http2Stream removeStream$okhttp(int i10) {
        Http2Stream http2StreamRemove;
        http2StreamRemove = this.streams.remove(Integer.valueOf(i10));
        notifyAll();
        return http2StreamRemove;
    }

    public final void sendDegradedPingLater$okhttp() {
        synchronized (this) {
            long j6 = this.degradedPongsReceived;
            long j10 = this.degradedPingsSent;
            if (j6 < j10) {
                return;
            }
            this.degradedPingsSent = j10 + 1;
            this.degradedPongDeadlineNs = System.nanoTime() + ((long) DEGRADED_PONG_TIMEOUT_NS);
            l0 l0Var = l0.INSTANCE;
            TaskQueue taskQueue = this.writerQueue;
            final String strS = t.s(this.connectionName, " ping");
            final boolean z6 = true;
            taskQueue.schedule(new Task(strS, z6, this) { // from class: okhttp3.internal.http2.Http2Connection$sendDegradedPingLater$$inlined$execute$default$1
                final /* synthetic */ boolean $cancelable;
                final /* synthetic */ String $name;
                final /* synthetic */ Http2Connection this$0;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(strS, z6);
                    this.$name = strS;
                    this.$cancelable = z6;
                    this.this$0 = this;
                }

                @Override // okhttp3.internal.concurrent.Task
                public long runOnce() {
                    this.this$0.writePing(false, 2, 0);
                    return -1L;
                }
            }, 0L);
        }
    }

    public final void setLastGoodStreamId$okhttp(int i10) {
        this.lastGoodStreamId = i10;
    }

    public final void setNextStreamId$okhttp(int i10) {
        this.nextStreamId = i10;
    }

    public final void setPeerSettings(@NotNull Settings settings) {
        t.j(settings, "<set-?>");
        this.peerSettings = settings;
    }

    public final void start() throws IOException {
        start$default(this, false, null, 3, null);
    }

    public final synchronized void updateConnectionFlowControl$okhttp(long j6) {
        long j10 = this.readBytesTotal + j6;
        this.readBytesTotal = j10;
        long j11 = j10 - this.readBytesAcknowledged;
        if (j11 >= this.okHttpSettings.getInitialWindowSize() / 2) {
            writeWindowUpdateLater$okhttp(0, j11);
            this.readBytesAcknowledged += j11;
        }
    }

    public final void writePing(boolean z6, int i10, int i11) {
        try {
            this.writer.ping(z6, i10, i11);
        } catch (IOException e) {
            failConnection(e);
        }
    }

    static {
        Settings settings = new Settings();
        settings.set(7, 65535);
        settings.set(5, 16384);
        DEFAULT_SETTINGS = settings;
    }

    public Http2Connection(@NotNull Builder builder) {
        t.j(builder, "builder");
        boolean client$okhttp = builder.getClient$okhttp();
        this.client = client$okhttp;
        this.listener = builder.getListener$okhttp();
        this.streams = new LinkedHashMap();
        String connectionName$okhttp = builder.getConnectionName$okhttp();
        this.connectionName = connectionName$okhttp;
        this.nextStreamId = builder.getClient$okhttp() ? 3 : 2;
        TaskRunner taskRunner$okhttp = builder.getTaskRunner$okhttp();
        this.taskRunner = taskRunner$okhttp;
        TaskQueue taskQueueNewQueue = taskRunner$okhttp.newQueue();
        this.writerQueue = taskQueueNewQueue;
        this.pushQueue = taskRunner$okhttp.newQueue();
        this.settingsListenerQueue = taskRunner$okhttp.newQueue();
        this.pushObserver = builder.getPushObserver$okhttp();
        Settings settings = new Settings();
        if (builder.getClient$okhttp()) {
            settings.set(7, 16777216);
        }
        this.okHttpSettings = settings;
        Settings settings2 = DEFAULT_SETTINGS;
        this.peerSettings = settings2;
        this.writeBytesMaximum = settings2.getInitialWindowSize();
        this.socket = builder.getSocket$okhttp();
        this.writer = new Http2Writer(builder.getSink$okhttp(), client$okhttp);
        this.readerRunnable = new ReaderRunnable(this, new Http2Reader(builder.getSource$okhttp(), client$okhttp));
        this.currentPushRequests = new LinkedHashSet();
        if (builder.getPingIntervalMillis$okhttp() != 0) {
            final long nanos = TimeUnit.MILLISECONDS.toNanos(builder.getPingIntervalMillis$okhttp());
            final String strS = t.s(connectionName$okhttp, " ping");
            taskQueueNewQueue.schedule(new Task(strS, this, nanos) { // from class: okhttp3.internal.http2.Http2Connection$special$$inlined$schedule$1
                final /* synthetic */ String $name;
                final /* synthetic */ long $pingIntervalNanos$inlined;
                final /* synthetic */ Http2Connection this$0;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(strS, false, 2, null);
                    this.$name = strS;
                    this.this$0 = this;
                    this.$pingIntervalNanos$inlined = nanos;
                }

                @Override // okhttp3.internal.concurrent.Task
                public long runOnce() {
                    boolean z6;
                    synchronized (this.this$0) {
                        if (this.this$0.intervalPongsReceived < this.this$0.intervalPingsSent) {
                            z6 = true;
                        } else {
                            this.this$0.intervalPingsSent++;
                            z6 = false;
                        }
                    }
                    if (z6) {
                        this.this$0.failConnection(null);
                        return -1L;
                    }
                    this.this$0.writePing(false, 1, 0);
                    return this.$pingIntervalNanos$inlined;
                }
            }, nanos);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void failConnection(IOException iOException) {
        ErrorCode errorCode = ErrorCode.PROTOCOL_ERROR;
        close$okhttp(errorCode, errorCode, iOException);
    }

    private final Http2Stream newStream(int i10, List<Header> list, boolean z6) throws IOException {
        int nextStreamId$okhttp;
        Http2Stream http2Stream;
        boolean z10;
        boolean z11 = !z6;
        synchronized (this.writer) {
            try {
                synchronized (this) {
                    try {
                        if (getNextStreamId$okhttp() > 1073741823) {
                            shutdown(ErrorCode.REFUSED_STREAM);
                        }
                        if (this.isShutdown) {
                            throw new ConnectionShutdownException();
                        }
                        nextStreamId$okhttp = getNextStreamId$okhttp();
                        setNextStreamId$okhttp(getNextStreamId$okhttp() + 2);
                        http2Stream = new Http2Stream(nextStreamId$okhttp, this, z11, false, null);
                        z10 = !z6 || getWriteBytesTotal() >= getWriteBytesMaximum() || http2Stream.getWriteBytesTotal() >= http2Stream.getWriteBytesMaximum();
                        if (http2Stream.isOpen()) {
                            getStreams$okhttp().put(Integer.valueOf(nextStreamId$okhttp), http2Stream);
                        }
                        l0 l0Var = l0.INSTANCE;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                if (i10 == 0) {
                    getWriter().headers(z11, nextStreamId$okhttp, list);
                } else {
                    if (!(true ^ getClient$okhttp())) {
                        throw new IllegalArgumentException("client streams shouldn't have associated stream IDs".toString());
                    }
                    getWriter().pushPromise(i10, nextStreamId$okhttp, list);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (z10) {
            this.writer.flush();
        }
        return http2Stream;
    }

    public static /* synthetic */ void start$default(Http2Connection http2Connection, boolean z6, TaskRunner taskRunner, int i10, Object obj) throws IOException {
        if ((i10 & 1) != 0) {
            z6 = true;
        }
        if ((i10 & 2) != 0) {
            taskRunner = TaskRunner.INSTANCE;
        }
        http2Connection.start(z6, taskRunner);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        close$okhttp(ErrorCode.NO_ERROR, ErrorCode.CANCEL, null);
    }

    public final void close$okhttp(@NotNull ErrorCode connectionCode, @NotNull ErrorCode streamCode, @Nullable IOException iOException) {
        int i10;
        Object[] array;
        t.j(connectionCode, "connectionCode");
        t.j(streamCode, "streamCode");
        if (Util.assertionsEnabled && Thread.holdsLock(this)) {
            throw new AssertionError("Thread " + ((Object) Thread.currentThread().getName()) + " MUST NOT hold lock on " + this);
        }
        try {
            shutdown(connectionCode);
        } catch (IOException unused) {
        }
        synchronized (this) {
            try {
                if (!getStreams$okhttp().isEmpty()) {
                    array = getStreams$okhttp().values().toArray(new Http2Stream[0]);
                    if (array == null) {
                        throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
                    }
                    getStreams$okhttp().clear();
                } else {
                    array = null;
                }
                l0 l0Var = l0.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
        Http2Stream[] http2StreamArr = (Http2Stream[]) array;
        if (http2StreamArr != null) {
            for (Http2Stream http2Stream : http2StreamArr) {
                try {
                    http2Stream.close(streamCode, iOException);
                } catch (IOException unused2) {
                }
            }
        }
        try {
            getWriter().close();
        } catch (IOException unused3) {
        }
        try {
            getSocket$okhttp().close();
        } catch (IOException unused4) {
        }
        this.writerQueue.shutdown();
        this.pushQueue.shutdown();
        this.settingsListenerQueue.shutdown();
    }

    public final void flush() throws IOException {
        this.writer.flush();
    }

    public final void pushDataLater$okhttp(final int i10, @NotNull BufferedSource source, final int i11, final boolean z6) throws IOException {
        t.j(source, "source");
        final Buffer buffer = new Buffer();
        long j6 = i11;
        source.require(j6);
        source.read(buffer, j6);
        TaskQueue taskQueue = this.pushQueue;
        final String str = this.connectionName + b.BEGIN_LIST + i10 + "] onData";
        final boolean z10 = true;
        taskQueue.schedule(new Task(str, z10, this, i10, buffer, i11, z6) { // from class: okhttp3.internal.http2.Http2Connection$pushDataLater$$inlined$execute$default$1
            final /* synthetic */ Buffer $buffer$inlined;
            final /* synthetic */ int $byteCount$inlined;
            final /* synthetic */ boolean $cancelable;
            final /* synthetic */ boolean $inFinished$inlined;
            final /* synthetic */ String $name;
            final /* synthetic */ int $streamId$inlined;
            final /* synthetic */ Http2Connection this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(str, z10);
                this.$name = str;
                this.$cancelable = z10;
                this.this$0 = this;
                this.$streamId$inlined = i10;
                this.$buffer$inlined = buffer;
                this.$byteCount$inlined = i11;
                this.$inFinished$inlined = z6;
            }

            @Override // okhttp3.internal.concurrent.Task
            public long runOnce() {
                try {
                    boolean zOnData = this.this$0.pushObserver.onData(this.$streamId$inlined, this.$buffer$inlined, this.$byteCount$inlined, this.$inFinished$inlined);
                    if (zOnData) {
                        this.this$0.getWriter().rstStream(this.$streamId$inlined, ErrorCode.CANCEL);
                    }
                    if (!zOnData && !this.$inFinished$inlined) {
                        return -1L;
                    }
                    synchronized (this.this$0) {
                        this.this$0.currentPushRequests.remove(Integer.valueOf(this.$streamId$inlined));
                    }
                    return -1L;
                } catch (IOException unused) {
                    return -1L;
                }
            }
        }, 0L);
    }

    public final void pushHeadersLater$okhttp(final int i10, @NotNull final List<Header> requestHeaders, final boolean z6) {
        t.j(requestHeaders, "requestHeaders");
        TaskQueue taskQueue = this.pushQueue;
        final String str = this.connectionName + b.BEGIN_LIST + i10 + "] onHeaders";
        final boolean z10 = true;
        taskQueue.schedule(new Task(str, z10, this, i10, requestHeaders, z6) { // from class: okhttp3.internal.http2.Http2Connection$pushHeadersLater$$inlined$execute$default$1
            final /* synthetic */ boolean $cancelable;
            final /* synthetic */ boolean $inFinished$inlined;
            final /* synthetic */ String $name;
            final /* synthetic */ List $requestHeaders$inlined;
            final /* synthetic */ int $streamId$inlined;
            final /* synthetic */ Http2Connection this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(str, z10);
                this.$name = str;
                this.$cancelable = z10;
                this.this$0 = this;
                this.$streamId$inlined = i10;
                this.$requestHeaders$inlined = requestHeaders;
                this.$inFinished$inlined = z6;
            }

            @Override // okhttp3.internal.concurrent.Task
            public long runOnce() {
                boolean zOnHeaders = this.this$0.pushObserver.onHeaders(this.$streamId$inlined, this.$requestHeaders$inlined, this.$inFinished$inlined);
                if (zOnHeaders) {
                    try {
                        this.this$0.getWriter().rstStream(this.$streamId$inlined, ErrorCode.CANCEL);
                    } catch (IOException unused) {
                        return -1L;
                    }
                }
                if (!zOnHeaders && !this.$inFinished$inlined) {
                    return -1L;
                }
                synchronized (this.this$0) {
                    this.this$0.currentPushRequests.remove(Integer.valueOf(this.$streamId$inlined));
                }
                return -1L;
            }
        }, 0L);
    }

    public final void pushRequestLater$okhttp(final int i10, @NotNull final List<Header> requestHeaders) {
        t.j(requestHeaders, "requestHeaders");
        synchronized (this) {
            if (this.currentPushRequests.contains(Integer.valueOf(i10))) {
                writeSynResetLater$okhttp(i10, ErrorCode.PROTOCOL_ERROR);
                return;
            }
            this.currentPushRequests.add(Integer.valueOf(i10));
            TaskQueue taskQueue = this.pushQueue;
            final String str = this.connectionName + b.BEGIN_LIST + i10 + "] onRequest";
            final boolean z6 = true;
            taskQueue.schedule(new Task(str, z6, this, i10, requestHeaders) { // from class: okhttp3.internal.http2.Http2Connection$pushRequestLater$$inlined$execute$default$1
                final /* synthetic */ boolean $cancelable;
                final /* synthetic */ String $name;
                final /* synthetic */ List $requestHeaders$inlined;
                final /* synthetic */ int $streamId$inlined;
                final /* synthetic */ Http2Connection this$0;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(str, z6);
                    this.$name = str;
                    this.$cancelable = z6;
                    this.this$0 = this;
                    this.$streamId$inlined = i10;
                    this.$requestHeaders$inlined = requestHeaders;
                }

                @Override // okhttp3.internal.concurrent.Task
                public long runOnce() {
                    if (!this.this$0.pushObserver.onRequest(this.$streamId$inlined, this.$requestHeaders$inlined)) {
                        return -1L;
                    }
                    try {
                        this.this$0.getWriter().rstStream(this.$streamId$inlined, ErrorCode.CANCEL);
                        synchronized (this.this$0) {
                            this.this$0.currentPushRequests.remove(Integer.valueOf(this.$streamId$inlined));
                        }
                        return -1L;
                    } catch (IOException unused) {
                        return -1L;
                    }
                }
            }, 0L);
        }
    }

    public final void pushResetLater$okhttp(final int i10, @NotNull final ErrorCode errorCode) {
        t.j(errorCode, "errorCode");
        TaskQueue taskQueue = this.pushQueue;
        final String str = this.connectionName + b.BEGIN_LIST + i10 + "] onReset";
        final boolean z6 = true;
        taskQueue.schedule(new Task(str, z6, this, i10, errorCode) { // from class: okhttp3.internal.http2.Http2Connection$pushResetLater$$inlined$execute$default$1
            final /* synthetic */ boolean $cancelable;
            final /* synthetic */ ErrorCode $errorCode$inlined;
            final /* synthetic */ String $name;
            final /* synthetic */ int $streamId$inlined;
            final /* synthetic */ Http2Connection this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(str, z6);
                this.$name = str;
                this.$cancelable = z6;
                this.this$0 = this;
                this.$streamId$inlined = i10;
                this.$errorCode$inlined = errorCode;
            }

            @Override // okhttp3.internal.concurrent.Task
            public long runOnce() {
                this.this$0.pushObserver.onReset(this.$streamId$inlined, this.$errorCode$inlined);
                synchronized (this.this$0) {
                    this.this$0.currentPushRequests.remove(Integer.valueOf(this.$streamId$inlined));
                    l0 l0Var = l0.INSTANCE;
                }
                return -1L;
            }
        }, 0L);
    }

    @NotNull
    public final Http2Stream pushStream(int i10, @NotNull List<Header> requestHeaders, boolean z6) throws IOException {
        t.j(requestHeaders, "requestHeaders");
        if (!this.client) {
            return newStream(i10, requestHeaders, z6);
        }
        throw new IllegalStateException("Client cannot push requests.".toString());
    }

    public final void setSettings(@NotNull Settings settings) throws IOException {
        t.j(settings, "settings");
        synchronized (this.writer) {
            synchronized (this) {
                if (this.isShutdown) {
                    throw new ConnectionShutdownException();
                }
                getOkHttpSettings().merge(settings);
                l0 l0Var = l0.INSTANCE;
            }
            getWriter().settings(settings);
        }
    }

    public final void shutdown(@NotNull ErrorCode statusCode) throws IOException {
        t.j(statusCode, "statusCode");
        synchronized (this.writer) {
            n0 n0Var = new n0();
            synchronized (this) {
                if (this.isShutdown) {
                    return;
                }
                this.isShutdown = true;
                n0Var.element = getLastGoodStreamId$okhttp();
                l0 l0Var = l0.INSTANCE;
                getWriter().goAway(n0Var.element, statusCode, Util.EMPTY_BYTE_ARRAY);
            }
        }
    }

    public final void start(boolean z6) throws IOException {
        start$default(this, z6, null, 2, null);
    }

    public final void writeData(int i10, boolean z6, @Nullable Buffer buffer, long j6) throws IOException {
        int iMin;
        long j10;
        if (j6 == 0) {
            this.writer.data(z6, i10, buffer, 0);
            return;
        }
        while (j6 > 0) {
            synchronized (this) {
                while (getWriteBytesTotal() >= getWriteBytesMaximum()) {
                    try {
                        try {
                            if (!getStreams$okhttp().containsKey(Integer.valueOf(i10))) {
                                throw new IOException("stream closed");
                            }
                            wait();
                        } catch (InterruptedException unused) {
                            Thread.currentThread().interrupt();
                            throw new InterruptedIOException();
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                iMin = Math.min((int) Math.min(j6, getWriteBytesMaximum() - getWriteBytesTotal()), getWriter().maxDataLength());
                j10 = iMin;
                this.writeBytesTotal = getWriteBytesTotal() + j10;
                l0 l0Var = l0.INSTANCE;
            }
            j6 -= j10;
            this.writer.data(z6 && j6 == 0, i10, buffer, iMin);
        }
    }

    public final void writeHeaders$okhttp(int i10, boolean z6, @NotNull List<Header> alternating) throws IOException {
        t.j(alternating, "alternating");
        this.writer.headers(z6, i10, alternating);
    }

    public final void writeSynReset$okhttp(int i10, @NotNull ErrorCode statusCode) throws IOException {
        t.j(statusCode, "statusCode");
        this.writer.rstStream(i10, statusCode);
    }

    public final void writeSynResetLater$okhttp(final int i10, @NotNull final ErrorCode errorCode) {
        t.j(errorCode, "errorCode");
        TaskQueue taskQueue = this.writerQueue;
        final String str = this.connectionName + b.BEGIN_LIST + i10 + "] writeSynReset";
        final boolean z6 = true;
        taskQueue.schedule(new Task(str, z6, this, i10, errorCode) { // from class: okhttp3.internal.http2.Http2Connection$writeSynResetLater$$inlined$execute$default$1
            final /* synthetic */ boolean $cancelable;
            final /* synthetic */ ErrorCode $errorCode$inlined;
            final /* synthetic */ String $name;
            final /* synthetic */ int $streamId$inlined;
            final /* synthetic */ Http2Connection this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(str, z6);
                this.$name = str;
                this.$cancelable = z6;
                this.this$0 = this;
                this.$streamId$inlined = i10;
                this.$errorCode$inlined = errorCode;
            }

            @Override // okhttp3.internal.concurrent.Task
            public long runOnce() {
                try {
                    this.this$0.writeSynReset$okhttp(this.$streamId$inlined, this.$errorCode$inlined);
                    return -1L;
                } catch (IOException e) {
                    this.this$0.failConnection(e);
                    return -1L;
                }
            }
        }, 0L);
    }

    public final void writeWindowUpdateLater$okhttp(final int i10, final long j6) {
        TaskQueue taskQueue = this.writerQueue;
        final String str = this.connectionName + b.BEGIN_LIST + i10 + "] windowUpdate";
        final boolean z6 = true;
        taskQueue.schedule(new Task(str, z6, this, i10, j6) { // from class: okhttp3.internal.http2.Http2Connection$writeWindowUpdateLater$$inlined$execute$default$1
            final /* synthetic */ boolean $cancelable;
            final /* synthetic */ String $name;
            final /* synthetic */ int $streamId$inlined;
            final /* synthetic */ long $unacknowledgedBytesRead$inlined;
            final /* synthetic */ Http2Connection this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(str, z6);
                this.$name = str;
                this.$cancelable = z6;
                this.this$0 = this;
                this.$streamId$inlined = i10;
                this.$unacknowledgedBytesRead$inlined = j6;
            }

            @Override // okhttp3.internal.concurrent.Task
            public long runOnce() {
                try {
                    this.this$0.getWriter().windowUpdate(this.$streamId$inlined, this.$unacknowledgedBytesRead$inlined);
                    return -1L;
                } catch (IOException e) {
                    this.this$0.failConnection(e);
                    return -1L;
                }
            }
        }, 0L);
    }

    public final void start(boolean z6, @NotNull TaskRunner taskRunner) throws IOException {
        t.j(taskRunner, "taskRunner");
        if (z6) {
            this.writer.connectionPreface();
            this.writer.settings(this.okHttpSettings);
            int initialWindowSize = this.okHttpSettings.getInitialWindowSize();
            if (initialWindowSize != 65535) {
                this.writer.windowUpdate(0, initialWindowSize - 65535);
            }
        }
        taskRunner.newQueue().schedule(new TaskQueue.AnonymousClass1(this.connectionName, true, this.readerRunnable), 0L);
    }

    public final void writePing() throws InterruptedException {
        synchronized (this) {
            this.awaitPingsSent++;
        }
        writePing(false, 3, 1330343787);
    }

    public final void writePingAndAwaitPong() throws InterruptedException {
        writePing();
        awaitPong();
    }
}
