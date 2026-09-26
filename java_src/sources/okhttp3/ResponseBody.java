package okhttp3;

import com.safedk.android.internal.partials.OkHttpNetworkBridge;
import e8.l;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.nio.charset.Charset;
import kotlin.io.c;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.r;
import kotlin.jvm.internal.t;
import kotlin.text.d;
import okhttp3.internal.Util;
import okio.Buffer;
import okio.BufferedSource;
import okio.ByteString;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ResponseBody implements Closeable {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @Nullable
    private Reader reader;

    public static final class BomAwareReader extends Reader {

        @NotNull
        private final Charset charset;
        private boolean closed;

        @Nullable
        private Reader delegate;

        @NotNull
        private final BufferedSource source;

        @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            l0 l0Var;
            this.closed = true;
            Reader reader = this.delegate;
            if (reader == null) {
                l0Var = null;
            } else {
                reader.close();
                l0Var = l0.INSTANCE;
            }
            if (l0Var == null) {
                this.source.close();
            }
        }

        public BomAwareReader(@NotNull BufferedSource source, @NotNull Charset charset) {
            t.j(source, "source");
            t.j(charset, "charset");
            this.source = source;
            this.charset = charset;
        }

        @Override // java.io.Reader
        public int read(@NotNull char[] cbuf, int i10, int i11) throws IOException {
            t.j(cbuf, "cbuf");
            if (this.closed) {
                throw new IOException("Stream closed");
            }
            Reader inputStreamReader = this.delegate;
            if (inputStreamReader == null) {
                inputStreamReader = new InputStreamReader(this.source.inputStream(), Util.readBomAsCharset(this.source, this.charset));
                this.delegate = inputStreamReader;
            }
            return inputStreamReader.read(cbuf, i10, i11);
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        public static /* synthetic */ ResponseBody create$default(Companion companion, String str, MediaType mediaType, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                mediaType = null;
            }
            return companion.create(str, mediaType);
        }

        @NotNull
        public final ResponseBody create(@NotNull String str, @Nullable MediaType mediaType) {
            t.j(str, "<this>");
            Charset charset = d.UTF_8;
            if (mediaType != null) {
                Charset charsetCharset$default = MediaType.charset$default(mediaType, null, 1, null);
                if (charsetCharset$default == null) {
                    mediaType = MediaType.Companion.parse(mediaType + "; charset=utf-8");
                } else {
                    charset = charsetCharset$default;
                }
            }
            Buffer bufferWriteString = new Buffer().writeString(str, charset);
            return create(bufferWriteString, mediaType, bufferWriteString.size());
        }

        private Companion() {
        }

        public static /* synthetic */ ResponseBody create$default(Companion companion, byte[] bArr, MediaType mediaType, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                mediaType = null;
            }
            return companion.create(bArr, mediaType);
        }

        public static /* synthetic */ ResponseBody create$default(Companion companion, ByteString byteString, MediaType mediaType, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                mediaType = null;
            }
            return companion.create(byteString, mediaType);
        }

        public static /* synthetic */ ResponseBody create$default(Companion companion, BufferedSource bufferedSource, MediaType mediaType, long j6, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                mediaType = null;
            }
            if ((i10 & 2) != 0) {
                j6 = -1;
            }
            return companion.create(bufferedSource, mediaType, j6);
        }

        @NotNull
        public final ResponseBody create(@NotNull byte[] bArr, @Nullable MediaType mediaType) {
            t.j(bArr, "<this>");
            return create(new Buffer().write(bArr), mediaType, bArr.length);
        }

        @NotNull
        public final ResponseBody create(@NotNull ByteString byteString, @Nullable MediaType mediaType) {
            t.j(byteString, "<this>");
            return create(new Buffer().write(byteString), mediaType, byteString.size());
        }

        @NotNull
        public final ResponseBody create(@NotNull final BufferedSource bufferedSource, @Nullable final MediaType mediaType, final long j6) {
            t.j(bufferedSource, "<this>");
            return new ResponseBody() { // from class: okhttp3.ResponseBody$Companion$asResponseBody$1
                @Override // okhttp3.ResponseBody
                public long contentLength() {
                    return j6;
                }

                @Override // okhttp3.ResponseBody
                @Nullable
                public MediaType contentType() {
                    return mediaType;
                }

                @Override // okhttp3.ResponseBody
                @NotNull
                public BufferedSource source() {
                    return bufferedSource;
                }
            };
        }

        @NotNull
        public final ResponseBody create(@Nullable MediaType mediaType, @NotNull String content) {
            t.j(content, "content");
            return create(content, mediaType);
        }

        @NotNull
        public final ResponseBody create(@Nullable MediaType mediaType, @NotNull byte[] content) {
            t.j(content, "content");
            return create(content, mediaType);
        }

        @NotNull
        public final ResponseBody create(@Nullable MediaType mediaType, @NotNull ByteString content) {
            t.j(content, "content");
            return create(content, mediaType);
        }

        @NotNull
        public final ResponseBody create(@Nullable MediaType mediaType, long j6, @NotNull BufferedSource content) {
            t.j(content, "content");
            return create(content, mediaType, j6);
        }
    }

    @NotNull
    public static final ResponseBody create(@NotNull String str, @Nullable MediaType mediaType) {
        return Companion.create(str, mediaType);
    }

    public abstract long contentLength();

    @Nullable
    public abstract MediaType contentType();

    @NotNull
    public abstract BufferedSource source();

    @NotNull
    public static final ResponseBody create(@Nullable MediaType mediaType, long j6, @NotNull BufferedSource bufferedSource) {
        return Companion.create(mediaType, j6, bufferedSource);
    }

    @NotNull
    public final Reader charStream() {
        Reader reader = this.reader;
        if (reader != null) {
            return reader;
        }
        BomAwareReader bomAwareReader = new BomAwareReader(OkHttpNetworkBridge.retrofitExceptionCatchingRequestBody_source(this), charset());
        this.reader = bomAwareReader;
        return bomAwareReader;
    }

    private final Charset charset() {
        Charset charset;
        MediaType mediaTypeContentType = contentType();
        if (mediaTypeContentType == null) {
            charset = null;
        } else {
            charset = mediaTypeContentType.charset(d.UTF_8);
        }
        if (charset == null) {
            return d.UTF_8;
        }
        return charset;
    }

    /* JADX WARN: Type inference failed for: r6v3, types: [T, java.lang.Object] */
    private final <T> T consumeSource(l<? super BufferedSource, ? extends T> lVar, l<? super T, Integer> lVar2) throws IOException {
        long jContentLength = contentLength();
        if (jContentLength <= 2147483647L) {
            BufferedSource bufferedSourceRetrofitExceptionCatchingRequestBody_source = OkHttpNetworkBridge.retrofitExceptionCatchingRequestBody_source(this);
            try {
                T tInvoke = lVar.invoke(bufferedSourceRetrofitExceptionCatchingRequestBody_source);
                r.b(1);
                c.a(bufferedSourceRetrofitExceptionCatchingRequestBody_source, null);
                r.a(1);
                int iIntValue = lVar2.invoke(tInvoke).intValue();
                if (jContentLength != -1 && jContentLength != iIntValue) {
                    throw new IOException("Content-Length (" + jContentLength + ") and stream length (" + iIntValue + ") disagree");
                }
                return tInvoke;
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    r.b(1);
                    c.a(bufferedSourceRetrofitExceptionCatchingRequestBody_source, th);
                    r.a(1);
                    throw th2;
                }
            }
        }
        throw new IOException(t.s("Cannot buffer entire body for content length: ", Long.valueOf(jContentLength)));
    }

    @NotNull
    public static final ResponseBody create(@Nullable MediaType mediaType, @NotNull String str) {
        return Companion.create(mediaType, str);
    }

    @NotNull
    public final InputStream byteStream() {
        return OkHttpNetworkBridge.retrofitExceptionCatchingRequestBody_source(this).inputStream();
    }

    @NotNull
    public final ByteString byteString() throws IOException {
        long jContentLength = contentLength();
        if (jContentLength <= 2147483647L) {
            BufferedSource bufferedSourceRetrofitExceptionCatchingRequestBody_source = OkHttpNetworkBridge.retrofitExceptionCatchingRequestBody_source(this);
            try {
                ByteString byteString = bufferedSourceRetrofitExceptionCatchingRequestBody_source.readByteString();
                c.a(bufferedSourceRetrofitExceptionCatchingRequestBody_source, null);
                int size = byteString.size();
                if (jContentLength != -1 && jContentLength != size) {
                    throw new IOException("Content-Length (" + jContentLength + ") and stream length (" + size + ") disagree");
                }
                return byteString;
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    c.a(bufferedSourceRetrofitExceptionCatchingRequestBody_source, th);
                    throw th2;
                }
            }
        }
        throw new IOException(t.s("Cannot buffer entire body for content length: ", Long.valueOf(jContentLength)));
    }

    @NotNull
    public final byte[] bytes() throws IOException {
        long jContentLength = contentLength();
        if (jContentLength <= 2147483647L) {
            BufferedSource bufferedSourceRetrofitExceptionCatchingRequestBody_source = OkHttpNetworkBridge.retrofitExceptionCatchingRequestBody_source(this);
            try {
                byte[] byteArray = bufferedSourceRetrofitExceptionCatchingRequestBody_source.readByteArray();
                c.a(bufferedSourceRetrofitExceptionCatchingRequestBody_source, null);
                int length = byteArray.length;
                if (jContentLength != -1 && jContentLength != length) {
                    throw new IOException("Content-Length (" + jContentLength + ") and stream length (" + length + ") disagree");
                }
                return byteArray;
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    c.a(bufferedSourceRetrofitExceptionCatchingRequestBody_source, th);
                    throw th2;
                }
            }
        }
        throw new IOException(t.s("Cannot buffer entire body for content length: ", Long.valueOf(jContentLength)));
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        Util.closeQuietly(OkHttpNetworkBridge.retrofitExceptionCatchingRequestBody_source(this));
    }

    @NotNull
    public final String string() throws IOException {
        BufferedSource bufferedSourceRetrofitExceptionCatchingRequestBody_source = OkHttpNetworkBridge.retrofitExceptionCatchingRequestBody_source(this);
        try {
            String string = bufferedSourceRetrofitExceptionCatchingRequestBody_source.readString(Util.readBomAsCharset(bufferedSourceRetrofitExceptionCatchingRequestBody_source, charset()));
            c.a(bufferedSourceRetrofitExceptionCatchingRequestBody_source, null);
            return string;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                c.a(bufferedSourceRetrofitExceptionCatchingRequestBody_source, th);
                throw th2;
            }
        }
    }

    @NotNull
    public static final ResponseBody create(@Nullable MediaType mediaType, @NotNull ByteString byteString) {
        return Companion.create(mediaType, byteString);
    }

    @NotNull
    public static final ResponseBody create(@Nullable MediaType mediaType, @NotNull byte[] bArr) {
        return Companion.create(mediaType, bArr);
    }

    @NotNull
    public static final ResponseBody create(@NotNull BufferedSource bufferedSource, @Nullable MediaType mediaType, long j6) {
        return Companion.create(bufferedSource, mediaType, j6);
    }

    @NotNull
    public static final ResponseBody create(@NotNull ByteString byteString, @Nullable MediaType mediaType) {
        return Companion.create(byteString, mediaType);
    }

    @NotNull
    public static final ResponseBody create(@NotNull byte[] bArr, @Nullable MediaType mediaType) {
        return Companion.create(bArr, mediaType);
    }
}
