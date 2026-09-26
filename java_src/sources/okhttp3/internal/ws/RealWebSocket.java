package okhttp3.internal.ws;

import androidx.browser.trusted.sharing.ShareTarget;
import com.narvii.util.ws.WsService;
import j8.i;
import java.io.Closeable;
import java.io.IOException;
import java.net.ProtocolException;
import java.net.SocketTimeoutException;
import java.util.ArrayDeque;
import java.util.List;
import java.util.Random;
import java.util.concurrent.TimeUnit;
import kotlin.collections.u;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.EventListener;
import okhttp3.OkHttpClient;
import okhttp3.Protocol;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.WebSocket;
import okhttp3.WebSocketListener;
import okhttp3.internal.Util;
import okhttp3.internal.concurrent.Task;
import okhttp3.internal.concurrent.TaskQueue;
import okhttp3.internal.concurrent.TaskRunner;
import okhttp3.internal.connection.Exchange;
import okhttp3.internal.connection.RealCall;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.ByteString;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes4.dex */
public final class RealWebSocket implements WebSocket, WebSocketReader.FrameCallback {
    private static final long CANCEL_AFTER_CLOSE_MILLIS = 60000;
    public static final long DEFAULT_MINIMUM_DEFLATE_SIZE = 1024;
    private static final long MAX_QUEUE_SIZE = 16777216;
    private boolean awaitingPong;

    @Nullable
    private Call call;
    private boolean enqueuedClose;

    @Nullable
    private WebSocketExtensions extensions;
    private boolean failed;

    @NotNull
    private final String key;

    @NotNull
    private final WebSocketListener listener;

    @NotNull
    private final ArrayDeque<Object> messageAndCloseQueue;
    private long minimumDeflateSize;

    @Nullable
    private String name;

    @NotNull
    private final Request originalRequest;
    private final long pingIntervalMillis;

    @NotNull
    private final ArrayDeque<ByteString> pongQueue;
    private long queueSize;

    @NotNull
    private final Random random;

    @Nullable
    private WebSocketReader reader;
    private int receivedCloseCode;

    @Nullable
    private String receivedCloseReason;
    private int receivedPingCount;
    private int receivedPongCount;
    private int sentPingCount;

    @Nullable
    private Streams streams;

    @NotNull
    private TaskQueue taskQueue;

    @Nullable
    private WebSocketWriter writer;

    @Nullable
    private Task writerTask;

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    private static final List<Protocol> ONLY_HTTP1 = u.e(Protocol.HTTP_1_1);

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }
    }

    public static final class Message {

        @NotNull
        private final ByteString data;
        private final int formatOpcode;

        @NotNull
        public final ByteString getData() {
            return this.data;
        }

        public final int getFormatOpcode() {
            return this.formatOpcode;
        }

        public Message(int i10, @NotNull ByteString data) {
            t.j(data, "data");
            this.formatOpcode = i10;
            this.data = data;
        }
    }

    public static abstract class Streams implements Closeable {
        private final boolean client;

        @NotNull
        private final BufferedSink sink;

        @NotNull
        private final BufferedSource source;

        public final boolean getClient() {
            return this.client;
        }

        @NotNull
        public final BufferedSink getSink() {
            return this.sink;
        }

        @NotNull
        public final BufferedSource getSource() {
            return this.source;
        }

        public Streams(boolean z6, @NotNull BufferedSource source, @NotNull BufferedSink sink) {
            t.j(source, "source");
            t.j(sink, "sink");
            this.client = z6;
            this.source = source;
            this.sink = sink;
        }
    }

    private final class WriterTask extends Task {
        final /* synthetic */ RealWebSocket this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public WriterTask(RealWebSocket this$0) {
            super(t.s(this$0.name, " writer"), false, 2, null);
            t.j(this$0, "this$0");
            this.this$0 = this$0;
        }

        @Override // okhttp3.internal.concurrent.Task
        public long runOnce() {
            try {
                return this.this$0.writeOneFrame$okhttp() ? 0L : -1L;
            } catch (IOException e) {
                this.this$0.failWebSocket(e, null);
                return -1L;
            }
        }
    }

    @Override // okhttp3.WebSocket
    public boolean close(int i10, @Nullable String str) {
        return close(i10, str, 60000L);
    }

    @NotNull
    public final WebSocketListener getListener$okhttp() {
        return this.listener;
    }

    @Override // okhttp3.internal.ws.WebSocketReader.FrameCallback
    public void onReadMessage(@NotNull String text) throws IOException {
        t.j(text, "text");
        this.listener.onMessage(this, text);
    }

    @Override // okhttp3.internal.ws.WebSocketReader.FrameCallback
    public synchronized void onReadPing(@NotNull ByteString payload) {
        try {
            t.j(payload, "payload");
            if (!this.failed && (!this.enqueuedClose || !this.messageAndCloseQueue.isEmpty())) {
                this.pongQueue.add(payload);
                runWriter();
                this.receivedPingCount++;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // okhttp3.internal.ws.WebSocketReader.FrameCallback
    public synchronized void onReadPong(@NotNull ByteString payload) {
        t.j(payload, "payload");
        this.receivedPongCount++;
        this.awaitingPong = false;
    }

    public final synchronized boolean pong(@NotNull ByteString payload) {
        try {
            t.j(payload, "payload");
            if (!this.failed && (!this.enqueuedClose || !this.messageAndCloseQueue.isEmpty())) {
                this.pongQueue.add(payload);
                runWriter();
                return true;
            }
            return false;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final boolean processNextFrame() throws IOException {
        try {
            WebSocketReader webSocketReader = this.reader;
            t.g(webSocketReader);
            webSocketReader.processNextFrame();
            return this.receivedCloseCode == -1;
        } catch (Exception e) {
            failWebSocket(e, null);
            return false;
        }
    }

    @Override // okhttp3.WebSocket
    public synchronized long queueSize() {
        return this.queueSize;
    }

    public final synchronized int receivedPingCount() {
        return this.receivedPingCount;
    }

    public final synchronized int receivedPongCount() {
        return this.receivedPongCount;
    }

    @Override // okhttp3.WebSocket
    @NotNull
    public Request request() {
        return this.originalRequest;
    }

    @Override // okhttp3.WebSocket
    public boolean send(@NotNull String text) {
        t.j(text, "text");
        return send(ByteString.Companion.encodeUtf8(text), 1);
    }

    public final synchronized int sentPingCount() {
        return this.sentPingCount;
    }

    public final boolean writeOneFrame$okhttp() throws IOException {
        String str;
        WebSocketReader webSocketReader;
        WebSocketWriter webSocketWriter;
        int i10;
        Streams streams;
        synchronized (this) {
            try {
                if (this.failed) {
                    return false;
                }
                WebSocketWriter webSocketWriter2 = this.writer;
                ByteString byteStringPoll = this.pongQueue.poll();
                final boolean z6 = true;
                Object obj = null;
                if (byteStringPoll == null) {
                    Object objPoll = this.messageAndCloseQueue.poll();
                    if (objPoll instanceof Close) {
                        i10 = this.receivedCloseCode;
                        str = this.receivedCloseReason;
                        if (i10 != -1) {
                            streams = this.streams;
                            this.streams = null;
                            webSocketReader = this.reader;
                            this.reader = null;
                            webSocketWriter = this.writer;
                            this.writer = null;
                            this.taskQueue.shutdown();
                        } else {
                            long cancelAfterCloseMillis = ((Close) objPoll).getCancelAfterCloseMillis();
                            TaskQueue taskQueue = this.taskQueue;
                            final String strS = t.s(this.name, " cancel");
                            taskQueue.schedule(new Task(strS, z6, this) { // from class: okhttp3.internal.ws.RealWebSocket$writeOneFrame$lambda-8$$inlined$execute$default$1
                                final /* synthetic */ boolean $cancelable;
                                final /* synthetic */ String $name;
                                final /* synthetic */ RealWebSocket this$0;

                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(strS, z6);
                                    this.$name = strS;
                                    this.$cancelable = z6;
                                    this.this$0 = this;
                                }

                                @Override // okhttp3.internal.concurrent.Task
                                public long runOnce() {
                                    this.this$0.cancel();
                                    return -1L;
                                }
                            }, TimeUnit.MILLISECONDS.toNanos(cancelAfterCloseMillis));
                            streams = null;
                            webSocketReader = null;
                            webSocketWriter = null;
                        }
                    } else {
                        if (objPoll == null) {
                            return false;
                        }
                        str = null;
                        webSocketReader = null;
                        webSocketWriter = null;
                        i10 = -1;
                        streams = null;
                    }
                    obj = objPoll;
                } else {
                    str = null;
                    webSocketReader = null;
                    webSocketWriter = null;
                    i10 = -1;
                    streams = null;
                }
                l0 l0Var = l0.INSTANCE;
                try {
                    if (byteStringPoll != null) {
                        t.g(webSocketWriter2);
                        webSocketWriter2.writePong(byteStringPoll);
                    } else if (obj instanceof Message) {
                        Message message = (Message) obj;
                        t.g(webSocketWriter2);
                        webSocketWriter2.writeMessageFrame(message.getFormatOpcode(), message.getData());
                        synchronized (this) {
                            this.queueSize -= (long) message.getData().size();
                        }
                    } else {
                        if (!(obj instanceof Close)) {
                            throw new AssertionError();
                        }
                        Close close = (Close) obj;
                        t.g(webSocketWriter2);
                        webSocketWriter2.writeClose(close.getCode(), close.getReason());
                        if (streams != null) {
                            WebSocketListener webSocketListener = this.listener;
                            t.g(str);
                            webSocketListener.onClosed(this, i10, str);
                        }
                    }
                    if (streams != null) {
                        Util.closeQuietly(streams);
                    }
                    if (webSocketReader != null) {
                        Util.closeQuietly(webSocketReader);
                    }
                    if (webSocketWriter != null) {
                        Util.closeQuietly(webSocketWriter);
                    }
                    return true;
                } catch (Throwable th) {
                    if (streams != null) {
                        Util.closeQuietly(streams);
                    }
                    if (webSocketReader != null) {
                        Util.closeQuietly(webSocketReader);
                    }
                    if (webSocketWriter != null) {
                        Util.closeQuietly(webSocketWriter);
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void writePingFrame$okhttp() {
        synchronized (this) {
            try {
                if (this.failed) {
                    return;
                }
                WebSocketWriter webSocketWriter = this.writer;
                if (webSocketWriter == null) {
                    return;
                }
                int i10 = this.awaitingPong ? this.sentPingCount : -1;
                this.sentPingCount++;
                this.awaitingPong = true;
                l0 l0Var = l0.INSTANCE;
                if (i10 == -1) {
                    try {
                        webSocketWriter.writePing(ByteString.EMPTY);
                        return;
                    } catch (IOException e) {
                        failWebSocket(e, null);
                        return;
                    }
                }
                failWebSocket(new SocketTimeoutException("sent ping but didn't receive pong within " + this.pingIntervalMillis + "ms (after " + (i10 - 1) + " successful ping/pongs)"), null);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static final class Close {
        private final long cancelAfterCloseMillis;
        private final int code;

        @Nullable
        private final ByteString reason;

        public final long getCancelAfterCloseMillis() {
            return this.cancelAfterCloseMillis;
        }

        public final int getCode() {
            return this.code;
        }

        @Nullable
        public final ByteString getReason() {
            return this.reason;
        }

        public Close(int i10, @Nullable ByteString byteString, long j6) {
            this.code = i10;
            this.reason = byteString;
            this.cancelAfterCloseMillis = j6;
        }
    }

    public RealWebSocket(@NotNull TaskRunner taskRunner, @NotNull Request originalRequest, @NotNull WebSocketListener listener, @NotNull Random random, long j6, @Nullable WebSocketExtensions webSocketExtensions, long j10) {
        t.j(taskRunner, "taskRunner");
        t.j(originalRequest, "originalRequest");
        t.j(listener, "listener");
        t.j(random, "random");
        this.originalRequest = originalRequest;
        this.listener = listener;
        this.random = random;
        this.pingIntervalMillis = j6;
        this.extensions = webSocketExtensions;
        this.minimumDeflateSize = j10;
        this.taskQueue = taskRunner.newQueue();
        this.pongQueue = new ArrayDeque<>();
        this.messageAndCloseQueue = new ArrayDeque<>();
        this.receivedCloseCode = -1;
        if (!t.e(ShareTarget.METHOD_GET, originalRequest.method())) {
            throw new IllegalArgumentException(t.s("Request must be GET: ", originalRequest.method()).toString());
        }
        ByteString.Companion companion = ByteString.Companion;
        byte[] bArr = new byte[16];
        random.nextBytes(bArr);
        l0 l0Var = l0.INSTANCE;
        this.key = ByteString.Companion.of$default(companion, bArr, 0, 0, 3, null).base64();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean isValid(WebSocketExtensions webSocketExtensions) {
        if (!webSocketExtensions.unknownValues && webSocketExtensions.clientMaxWindowBits == null) {
            return webSocketExtensions.serverMaxWindowBits == null || new i(8, 15).p(webSocketExtensions.serverMaxWindowBits.intValue());
        }
        return false;
    }

    private final void runWriter() {
        if (!Util.assertionsEnabled || Thread.holdsLock(this)) {
            Task task = this.writerTask;
            if (task != null) {
                TaskQueue.schedule$default(this.taskQueue, task, 0L, 2, null);
                return;
            }
            return;
        }
        throw new AssertionError("Thread " + ((Object) Thread.currentThread().getName()) + " MUST hold lock on " + this);
    }

    public final void awaitTermination(long j6, @NotNull TimeUnit timeUnit) throws InterruptedException {
        t.j(timeUnit, "timeUnit");
        this.taskQueue.idleLatch().await(j6, timeUnit);
    }

    @Override // okhttp3.WebSocket
    public void cancel() {
        Call call = this.call;
        t.g(call);
        call.cancel();
    }

    public final void checkUpgradeSuccess$okhttp(@NotNull Response response, @Nullable Exchange exchange) throws IOException {
        t.j(response, "response");
        if (response.code() != 101) {
            throw new ProtocolException("Expected HTTP 101 response but was '" + response.code() + ' ' + response.message() + '\'');
        }
        String strHeader$default = Response.header$default(response, "Connection", null, 2, null);
        if (!kotlin.text.t.w("Upgrade", strHeader$default, true)) {
            throw new ProtocolException("Expected 'Connection' header value 'Upgrade' but was '" + ((Object) strHeader$default) + '\'');
        }
        String strHeader$default2 = Response.header$default(response, "Upgrade", null, 2, null);
        if (!kotlin.text.t.w(WsService.TAG, strHeader$default2, true)) {
            throw new ProtocolException("Expected 'Upgrade' header value 'websocket' but was '" + ((Object) strHeader$default2) + '\'');
        }
        String strHeader$default3 = Response.header$default(response, "Sec-WebSocket-Accept", null, 2, null);
        String strBase64 = ByteString.Companion.encodeUtf8(t.s(this.key, WebSocketProtocol.ACCEPT_MAGIC)).sha1().base64();
        if (t.e(strBase64, strHeader$default3)) {
            if (exchange == null) {
                throw new ProtocolException("Web Socket exchange missing: bad interceptor?");
            }
            return;
        }
        throw new ProtocolException("Expected 'Sec-WebSocket-Accept' header value '" + strBase64 + "' but was '" + ((Object) strHeader$default3) + '\'');
    }

    public final synchronized boolean close(int i10, @Nullable String str, long j6) {
        ByteString byteStringEncodeUtf8;
        try {
            WebSocketProtocol.INSTANCE.validateCloseCode(i10);
            if (str != null) {
                byteStringEncodeUtf8 = ByteString.Companion.encodeUtf8(str);
                if (byteStringEncodeUtf8.size() > 123) {
                    throw new IllegalArgumentException(t.s("reason.size() > 123: ", str).toString());
                }
            } else {
                byteStringEncodeUtf8 = null;
            }
            if (!this.failed && !this.enqueuedClose) {
                this.enqueuedClose = true;
                this.messageAndCloseQueue.add(new Close(i10, byteStringEncodeUtf8, j6));
                runWriter();
                return true;
            }
            return false;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final void connect(@NotNull OkHttpClient client) {
        t.j(client, "client");
        if (this.originalRequest.header("Sec-WebSocket-Extensions") != null) {
            failWebSocket(new ProtocolException("Request header not permitted: 'Sec-WebSocket-Extensions'"), null);
            return;
        }
        OkHttpClient okHttpClientBuild = client.newBuilder().eventListener(EventListener.NONE).protocols(ONLY_HTTP1).build();
        final Request requestBuild = this.originalRequest.newBuilder().header("Upgrade", WsService.TAG).header("Connection", "Upgrade").header("Sec-WebSocket-Key", this.key).header("Sec-WebSocket-Version", "13").header("Sec-WebSocket-Extensions", "permessage-deflate").build();
        RealCall realCall = new RealCall(okHttpClientBuild, requestBuild, true);
        this.call = realCall;
        t.g(realCall);
        realCall.enqueue(new Callback() { // from class: okhttp3.internal.ws.RealWebSocket.connect.1
            @Override // okhttp3.Callback
            public void onFailure(@NotNull Call call, @NotNull IOException e) {
                t.j(call, "call");
                t.j(e, "e");
                RealWebSocket.this.failWebSocket(e, null);
            }

            @Override // okhttp3.Callback
            public void onResponse(@NotNull Call call, @NotNull Response response) throws IOException {
                t.j(call, "call");
                t.j(response, "response");
                Exchange exchange = response.exchange();
                try {
                    RealWebSocket.this.checkUpgradeSuccess$okhttp(response, exchange);
                    t.g(exchange);
                    Streams streamsNewWebSocketStreams = exchange.newWebSocketStreams();
                    WebSocketExtensions webSocketExtensions = WebSocketExtensions.Companion.parse(response.headers());
                    RealWebSocket.this.extensions = webSocketExtensions;
                    if (!RealWebSocket.this.isValid(webSocketExtensions)) {
                        RealWebSocket realWebSocket = RealWebSocket.this;
                        synchronized (realWebSocket) {
                            realWebSocket.messageAndCloseQueue.clear();
                            realWebSocket.close(1010, "unexpected Sec-WebSocket-Extensions in response header");
                        }
                    }
                    try {
                        RealWebSocket.this.initReaderAndWriter(Util.okHttpName + " WebSocket " + requestBuild.url().redact(), streamsNewWebSocketStreams);
                        RealWebSocket.this.getListener$okhttp().onOpen(RealWebSocket.this, response);
                        RealWebSocket.this.loopReader();
                    } catch (Exception e) {
                        RealWebSocket.this.failWebSocket(e, null);
                    }
                } catch (IOException e2) {
                    if (exchange != null) {
                        exchange.webSocketUpgradeFailed();
                    }
                    RealWebSocket.this.failWebSocket(e2, response);
                    Util.closeQuietly(response);
                }
            }
        });
    }

    public final void failWebSocket(@NotNull Exception e, @Nullable Response response) {
        t.j(e, "e");
        synchronized (this) {
            if (this.failed) {
                return;
            }
            this.failed = true;
            Streams streams = this.streams;
            this.streams = null;
            WebSocketReader webSocketReader = this.reader;
            this.reader = null;
            WebSocketWriter webSocketWriter = this.writer;
            this.writer = null;
            this.taskQueue.shutdown();
            l0 l0Var = l0.INSTANCE;
            try {
                this.listener.onFailure(this, e, response);
            } finally {
                if (streams != null) {
                    Util.closeQuietly(streams);
                }
                if (webSocketReader != null) {
                    Util.closeQuietly(webSocketReader);
                }
                if (webSocketWriter != null) {
                    Util.closeQuietly(webSocketWriter);
                }
            }
        }
    }

    public final void initReaderAndWriter(@NotNull String name, @NotNull Streams streams) throws IOException {
        t.j(name, "name");
        t.j(streams, "streams");
        WebSocketExtensions webSocketExtensions = this.extensions;
        t.g(webSocketExtensions);
        synchronized (this) {
            try {
                this.name = name;
                this.streams = streams;
                this.writer = new WebSocketWriter(streams.getClient(), streams.getSink(), this.random, webSocketExtensions.perMessageDeflate, webSocketExtensions.noContextTakeover(streams.getClient()), this.minimumDeflateSize);
                this.writerTask = new WriterTask(this);
                long j6 = this.pingIntervalMillis;
                if (j6 != 0) {
                    final long nanos = TimeUnit.MILLISECONDS.toNanos(j6);
                    TaskQueue taskQueue = this.taskQueue;
                    final String strS = t.s(name, " ping");
                    taskQueue.schedule(new Task(strS, this, nanos) { // from class: okhttp3.internal.ws.RealWebSocket$initReaderAndWriter$lambda-3$$inlined$schedule$1
                        final /* synthetic */ String $name;
                        final /* synthetic */ long $pingIntervalNanos$inlined;
                        final /* synthetic */ RealWebSocket this$0;

                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(strS, false, 2, null);
                            this.$name = strS;
                            this.this$0 = this;
                            this.$pingIntervalNanos$inlined = nanos;
                        }

                        @Override // okhttp3.internal.concurrent.Task
                        public long runOnce() {
                            this.this$0.writePingFrame$okhttp();
                            return this.$pingIntervalNanos$inlined;
                        }
                    }, nanos);
                }
                if (!this.messageAndCloseQueue.isEmpty()) {
                    runWriter();
                }
                l0 l0Var = l0.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
        this.reader = new WebSocketReader(streams.getClient(), streams.getSource(), this, webSocketExtensions.perMessageDeflate, webSocketExtensions.noContextTakeover(!streams.getClient()));
    }

    public final void loopReader() throws IOException {
        while (this.receivedCloseCode == -1) {
            WebSocketReader webSocketReader = this.reader;
            t.g(webSocketReader);
            webSocketReader.processNextFrame();
        }
    }

    @Override // okhttp3.internal.ws.WebSocketReader.FrameCallback
    public void onReadClose(int i10, @NotNull String reason) {
        Streams streams;
        WebSocketReader webSocketReader;
        WebSocketWriter webSocketWriter;
        t.j(reason, "reason");
        if (i10 == -1) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        synchronized (this) {
            try {
                if (this.receivedCloseCode != -1) {
                    throw new IllegalStateException("already closed".toString());
                }
                this.receivedCloseCode = i10;
                this.receivedCloseReason = reason;
                streams = null;
                if (this.enqueuedClose && this.messageAndCloseQueue.isEmpty()) {
                    Streams streams2 = this.streams;
                    this.streams = null;
                    webSocketReader = this.reader;
                    this.reader = null;
                    webSocketWriter = this.writer;
                    this.writer = null;
                    this.taskQueue.shutdown();
                    streams = streams2;
                } else {
                    webSocketReader = null;
                    webSocketWriter = null;
                }
                l0 l0Var = l0.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
        try {
            this.listener.onClosing(this, i10, reason);
            if (streams != null) {
                this.listener.onClosed(this, i10, reason);
            }
        } finally {
            if (streams != null) {
                Util.closeQuietly(streams);
            }
            if (webSocketReader != null) {
                Util.closeQuietly(webSocketReader);
            }
            if (webSocketWriter != null) {
                Util.closeQuietly(webSocketWriter);
            }
        }
    }

    @Override // okhttp3.internal.ws.WebSocketReader.FrameCallback
    public void onReadMessage(@NotNull ByteString bytes) throws IOException {
        t.j(bytes, "bytes");
        this.listener.onMessage(this, bytes);
    }

    @Override // okhttp3.WebSocket
    public boolean send(@NotNull ByteString bytes) {
        t.j(bytes, "bytes");
        return send(bytes, 2);
    }

    public final void tearDown() throws InterruptedException {
        this.taskQueue.shutdown();
        this.taskQueue.idleLatch().await(10L, TimeUnit.SECONDS);
    }

    private final synchronized boolean send(ByteString byteString, int i10) {
        if (!this.failed && !this.enqueuedClose) {
            if (this.queueSize + ((long) byteString.size()) > MAX_QUEUE_SIZE) {
                close(1001, null);
                return false;
            }
            this.queueSize += (long) byteString.size();
            this.messageAndCloseQueue.add(new Message(i10, byteString));
            runWriter();
            return true;
        }
        return false;
    }
}
