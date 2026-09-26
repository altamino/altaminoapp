package coil.network;

import coil.util.i;
import java.io.IOException;
import kotlin.jvm.internal.v;
import okhttp3.CacheControl;
import okhttp3.Headers;
import okhttp3.MediaType;
import okhttp3.Response;
import okio.BufferedSink;
import okio.BufferedSource;
import org.apache.http.entity.mime.MIME;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.m;
import w7.o;
import w7.q;

/* JADX INFO: loaded from: classes5.dex */
public final class a {

    @NotNull
    private final m cacheControl$delegate;

    @NotNull
    private final m contentType$delegate;
    private final boolean isTls;
    private final long receivedResponseAtMillis;

    @NotNull
    private final Headers responseHeaders;
    private final long sentRequestAtMillis;

    /* JADX INFO: renamed from: coil.network.a$a, reason: collision with other inner class name */
    static final class C0103a extends v implements e8.a<CacheControl> {
        C0103a() {
            super(0);
        }

        @Override // e8.a
        @NotNull
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final CacheControl invoke() {
            return CacheControl.Companion.parse(a.this.d());
        }
    }

    static final class b extends v implements e8.a<MediaType> {
        b() {
            super(0);
        }

        @Override // e8.a
        @Nullable
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final MediaType invoke() {
            String str = a.this.d().get(MIME.CONTENT_TYPE);
            if (str != null) {
                return MediaType.Companion.parse(str);
            }
            return null;
        }
    }

    public a(@NotNull BufferedSource bufferedSource) {
        q qVar = q.NONE;
        this.cacheControl$delegate = o.b(qVar, new C0103a());
        this.contentType$delegate = o.b(qVar, new b());
        this.sentRequestAtMillis = Long.parseLong(bufferedSource.readUtf8LineStrict());
        this.receivedResponseAtMillis = Long.parseLong(bufferedSource.readUtf8LineStrict());
        this.isTls = Integer.parseInt(bufferedSource.readUtf8LineStrict()) > 0;
        int i10 = Integer.parseInt(bufferedSource.readUtf8LineStrict());
        Headers.Builder builder = new Headers.Builder();
        for (int i11 = 0; i11 < i10; i11++) {
            i.b(builder, bufferedSource.readUtf8LineStrict());
        }
        this.responseHeaders = builder.build();
    }

    public final long c() {
        return this.receivedResponseAtMillis;
    }

    @NotNull
    public final Headers d() {
        return this.responseHeaders;
    }

    public final long e() {
        return this.sentRequestAtMillis;
    }

    public final boolean f() {
        return this.isTls;
    }

    @NotNull
    public final CacheControl a() {
        return (CacheControl) this.cacheControl$delegate.getValue();
    }

    @Nullable
    public final MediaType b() {
        return (MediaType) this.contentType$delegate.getValue();
    }

    public final void g(@NotNull BufferedSink bufferedSink) throws IOException {
        bufferedSink.writeDecimalLong(this.sentRequestAtMillis).writeByte(10);
        bufferedSink.writeDecimalLong(this.receivedResponseAtMillis).writeByte(10);
        bufferedSink.writeDecimalLong(this.isTls ? 1L : 0L).writeByte(10);
        bufferedSink.writeDecimalLong(this.responseHeaders.size()).writeByte(10);
        int size = this.responseHeaders.size();
        for (int i10 = 0; i10 < size; i10++) {
            bufferedSink.writeUtf8(this.responseHeaders.name(i10)).writeUtf8(": ").writeUtf8(this.responseHeaders.value(i10)).writeByte(10);
        }
    }

    public a(@NotNull Response response) {
        q qVar = q.NONE;
        this.cacheControl$delegate = o.b(qVar, new C0103a());
        this.contentType$delegate = o.b(qVar, new b());
        this.sentRequestAtMillis = response.sentRequestAtMillis();
        this.receivedResponseAtMillis = response.receivedResponseAtMillis();
        this.isTls = response.handshake() != null;
        this.responseHeaders = response.headers();
    }
}
