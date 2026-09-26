package okhttp3;

import com.google.common.base.c;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import okhttp3.internal.Util;
import okio.Buffer;
import okio.BufferedSink;
import okio.ByteString;
import org.apache.http.entity.mime.MIME;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes5.dex */
public final class MultipartBody extends RequestBody {

    @NotNull
    public static final MediaType ALTERNATIVE;

    @NotNull
    private static final byte[] COLONSPACE;

    @NotNull
    private static final byte[] CRLF;

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    private static final byte[] DASHDASH;

    @NotNull
    public static final MediaType DIGEST;

    @NotNull
    public static final MediaType FORM;

    @NotNull
    public static final MediaType MIXED;

    @NotNull
    public static final MediaType PARALLEL;

    @NotNull
    private final ByteString boundaryByteString;
    private long contentLength;

    @NotNull
    private final MediaType contentType;

    @NotNull
    private final List<Part> parts;

    @NotNull
    private final MediaType type;

    public static final class Builder {

        @NotNull
        private final ByteString boundary;

        @NotNull
        private final List<Part> parts;

        @NotNull
        private MediaType type;

        /* JADX WARN: Multi-variable type inference failed */
        public Builder() {
            this(null, 1, 0 == true ? 1 : 0);
        }

        @NotNull
        public final Builder addFormDataPart(@NotNull String name, @NotNull String value) {
            t.j(name, "name");
            t.j(value, "value");
            addPart(Part.Companion.createFormData(name, value));
            return this;
        }

        @NotNull
        public final Builder addPart(@NotNull RequestBody body) {
            t.j(body, "body");
            addPart(Part.Companion.create(body));
            return this;
        }

        public Builder(@NotNull String boundary) {
            t.j(boundary, "boundary");
            this.boundary = ByteString.Companion.encodeUtf8(boundary);
            this.type = MultipartBody.MIXED;
            this.parts = new ArrayList();
        }

        @NotNull
        public final Builder addFormDataPart(@NotNull String name, @Nullable String str, @NotNull RequestBody body) {
            t.j(name, "name");
            t.j(body, "body");
            addPart(Part.Companion.createFormData(name, str, body));
            return this;
        }

        @NotNull
        public final Builder addPart(@Nullable Headers headers, @NotNull RequestBody body) {
            t.j(body, "body");
            addPart(Part.Companion.create(headers, body));
            return this;
        }

        @NotNull
        public final MultipartBody build() {
            if (!this.parts.isEmpty()) {
                return new MultipartBody(this.boundary, this.type, Util.toImmutableList(this.parts));
            }
            throw new IllegalStateException("Multipart body must have at least one part.".toString());
        }

        @NotNull
        public final Builder setType(@NotNull MediaType type) {
            t.j(type, "type");
            if (!t.e(type.type(), "multipart")) {
                throw new IllegalArgumentException(t.s("multipart != ", type).toString());
            }
            this.type = type;
            return this;
        }

        @NotNull
        public final Builder addPart(@NotNull Part part) {
            t.j(part, "part");
            this.parts.add(part);
            return this;
        }

        /* JADX WARN: Illegal instructions before constructor call */
        public /* synthetic */ Builder(String str, int i10, k kVar) {
            if ((i10 & 1) != 0) {
                str = UUID.randomUUID().toString();
                t.i(str, "randomUUID().toString()");
            }
            this(str);
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        public final void appendQuotedString$okhttp(@NotNull StringBuilder sb, @NotNull String key) {
            t.j(sb, "<this>");
            t.j(key, "key");
            sb.append(kotlinx.serialization.json.internal.b.STRING);
            int length = key.length();
            int i10 = 0;
            while (i10 < length) {
                int i11 = i10 + 1;
                char cCharAt = key.charAt(i10);
                if (cCharAt == '\n') {
                    sb.append("%0A");
                } else if (cCharAt == '\r') {
                    sb.append("%0D");
                } else if (cCharAt == '\"') {
                    sb.append("%22");
                } else {
                    sb.append(cCharAt);
                }
                i10 = i11;
            }
            sb.append(kotlinx.serialization.json.internal.b.STRING);
        }
    }

    public static final class Part {

        @NotNull
        public static final Companion Companion = new Companion(null);

        @NotNull
        private final RequestBody body;

        @Nullable
        private final Headers headers;

        public static final class Companion {
            public /* synthetic */ Companion(k kVar) {
                this();
            }

            @NotNull
            public final Part create(@NotNull RequestBody body) {
                t.j(body, "body");
                return create(null, body);
            }

            @NotNull
            public final Part createFormData(@NotNull String name, @NotNull String value) {
                t.j(name, "name");
                t.j(value, "value");
                return createFormData(name, null, RequestBody.Companion.create$default(RequestBody.Companion, value, (MediaType) null, 1, (Object) null));
            }

            private Companion() {
            }

            @NotNull
            public final Part create(@Nullable Headers headers, @NotNull RequestBody body) {
                t.j(body, "body");
                k kVar = null;
                if ((headers == null ? null : headers.get(MIME.CONTENT_TYPE)) != null) {
                    throw new IllegalArgumentException("Unexpected header: Content-Type".toString());
                }
                if ((headers == null ? null : headers.get("Content-Length")) == null) {
                    return new Part(headers, body, kVar);
                }
                throw new IllegalArgumentException("Unexpected header: Content-Length".toString());
            }

            @NotNull
            public final Part createFormData(@NotNull String name, @Nullable String str, @NotNull RequestBody body) {
                t.j(name, "name");
                t.j(body, "body");
                StringBuilder sb = new StringBuilder();
                sb.append("form-data; name=");
                Companion companion = MultipartBody.Companion;
                companion.appendQuotedString$okhttp(sb, name);
                if (str != null) {
                    sb.append("; filename=");
                    companion.appendQuotedString$okhttp(sb, str);
                }
                String string = sb.toString();
                t.i(string, "StringBuilder().apply(builderAction).toString()");
                return create(new Headers.Builder().addUnsafeNonAscii(MIME.CONTENT_DISPOSITION, string).build(), body);
            }
        }

        public /* synthetic */ Part(Headers headers, RequestBody requestBody, k kVar) {
            this(headers, requestBody);
        }

        @NotNull
        public static final Part create(@Nullable Headers headers, @NotNull RequestBody requestBody) {
            return Companion.create(headers, requestBody);
        }

        @NotNull
        public static final Part createFormData(@NotNull String str, @NotNull String str2) {
            return Companion.createFormData(str, str2);
        }

        @NotNull
        /* JADX INFO: renamed from: -deprecated_body, reason: not valid java name */
        public final RequestBody m1725deprecated_body() {
            return this.body;
        }

        @Nullable
        /* JADX INFO: renamed from: -deprecated_headers, reason: not valid java name */
        public final Headers m1726deprecated_headers() {
            return this.headers;
        }

        @NotNull
        public final RequestBody body() {
            return this.body;
        }

        @Nullable
        public final Headers headers() {
            return this.headers;
        }

        private Part(Headers headers, RequestBody requestBody) {
            this.headers = headers;
            this.body = requestBody;
        }

        @NotNull
        public static final Part create(@NotNull RequestBody requestBody) {
            return Companion.create(requestBody);
        }

        @NotNull
        public static final Part createFormData(@NotNull String str, @Nullable String str2, @NotNull RequestBody requestBody) {
            return Companion.createFormData(str, str2, requestBody);
        }
    }

    @NotNull
    /* JADX INFO: renamed from: -deprecated_parts, reason: not valid java name */
    public final List<Part> m1722deprecated_parts() {
        return this.parts;
    }

    @NotNull
    /* JADX INFO: renamed from: -deprecated_type, reason: not valid java name */
    public final MediaType m1724deprecated_type() {
        return this.type;
    }

    @Override // okhttp3.RequestBody
    @NotNull
    public MediaType contentType() {
        return this.contentType;
    }

    @NotNull
    public final List<Part> parts() {
        return this.parts;
    }

    @NotNull
    public final MediaType type() {
        return this.type;
    }

    static {
        MediaType.Companion companion = MediaType.Companion;
        MIXED = companion.get("multipart/mixed");
        ALTERNATIVE = companion.get("multipart/alternative");
        DIGEST = companion.get("multipart/digest");
        PARALLEL = companion.get("multipart/parallel");
        FORM = companion.get("multipart/form-data");
        COLONSPACE = new byte[]{58, 32};
        CRLF = new byte[]{c.CR, 10};
        DASHDASH = new byte[]{45, 45};
    }

    public MultipartBody(@NotNull ByteString boundaryByteString, @NotNull MediaType type, @NotNull List<Part> parts) {
        t.j(boundaryByteString, "boundaryByteString");
        t.j(type, "type");
        t.j(parts, "parts");
        this.boundaryByteString = boundaryByteString;
        this.type = type;
        this.parts = parts;
        this.contentType = MediaType.Companion.get(type + "; boundary=" + boundary());
        this.contentLength = -1L;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final long writeOrCountBytes(BufferedSink bufferedSink, boolean z6) throws IOException {
        Buffer buffer;
        if (z6) {
            bufferedSink = new Buffer();
            buffer = bufferedSink;
        } else {
            buffer = 0;
        }
        int size = this.parts.size();
        long j6 = 0;
        int i10 = 0;
        while (i10 < size) {
            int i11 = i10 + 1;
            Part part = this.parts.get(i10);
            Headers headers = part.headers();
            RequestBody requestBodyBody = part.body();
            t.g(bufferedSink);
            bufferedSink.write(DASHDASH);
            bufferedSink.write(this.boundaryByteString);
            bufferedSink.write(CRLF);
            if (headers != null) {
                int size2 = headers.size();
                for (int i12 = 0; i12 < size2; i12++) {
                    bufferedSink.writeUtf8(headers.name(i12)).write(COLONSPACE).writeUtf8(headers.value(i12)).write(CRLF);
                }
            }
            MediaType mediaTypeContentType = requestBodyBody.contentType();
            if (mediaTypeContentType != null) {
                bufferedSink.writeUtf8("Content-Type: ").writeUtf8(mediaTypeContentType.toString()).write(CRLF);
            }
            long jContentLength = requestBodyBody.contentLength();
            if (jContentLength != -1) {
                bufferedSink.writeUtf8("Content-Length: ").writeDecimalLong(jContentLength).write(CRLF);
            } else if (z6) {
                t.g(buffer);
                buffer.clear();
                return -1L;
            }
            byte[] bArr = CRLF;
            bufferedSink.write(bArr);
            if (z6) {
                j6 += jContentLength;
            } else {
                requestBodyBody.writeTo(bufferedSink);
            }
            bufferedSink.write(bArr);
            i10 = i11;
        }
        t.g(bufferedSink);
        byte[] bArr2 = DASHDASH;
        bufferedSink.write(bArr2);
        bufferedSink.write(this.boundaryByteString);
        bufferedSink.write(bArr2);
        bufferedSink.write(CRLF);
        if (!z6) {
            return j6;
        }
        t.g(buffer);
        long size3 = j6 + buffer.size();
        buffer.clear();
        return size3;
    }

    @NotNull
    public final String boundary() {
        return this.boundaryByteString.utf8();
    }

    @Override // okhttp3.RequestBody
    public long contentLength() throws IOException {
        long j6 = this.contentLength;
        if (j6 != -1) {
            return j6;
        }
        long jWriteOrCountBytes = writeOrCountBytes(null, true);
        this.contentLength = jWriteOrCountBytes;
        return jWriteOrCountBytes;
    }

    @NotNull
    public final Part part(int i10) {
        return this.parts.get(i10);
    }

    public final int size() {
        return this.parts.size();
    }

    @Override // okhttp3.RequestBody
    public void writeTo(@NotNull BufferedSink sink) throws IOException {
        t.j(sink, "sink");
        writeOrCountBytes(sink, false);
    }

    @NotNull
    /* JADX INFO: renamed from: -deprecated_boundary, reason: not valid java name */
    public final String m1721deprecated_boundary() {
        return boundary();
    }

    /* JADX INFO: renamed from: -deprecated_size, reason: not valid java name */
    public final int m1723deprecated_size() {
        return size();
    }
}
