package okhttp3;

import java.io.File;
import java.io.IOException;
import java.nio.charset.Charset;
import kotlin.io.c;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import kotlin.text.d;
import okhttp3.internal.Util;
import okio.BufferedSink;
import okio.ByteString;
import okio.Okio;
import okio.Source;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
public abstract class RequestBody {

    @NotNull
    public static final Companion Companion = new Companion(null);

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        public static /* synthetic */ RequestBody create$default(Companion companion, String str, MediaType mediaType, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                mediaType = null;
            }
            return companion.create(str, mediaType);
        }

        @NotNull
        public final RequestBody create(@Nullable MediaType mediaType, @NotNull byte[] content) {
            t.j(content, "content");
            return create$default(this, mediaType, content, 0, 0, 12, (Object) null);
        }

        private Companion() {
        }

        public static /* synthetic */ RequestBody create$default(Companion companion, ByteString byteString, MediaType mediaType, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                mediaType = null;
            }
            return companion.create(byteString, mediaType);
        }

        @NotNull
        public final RequestBody create(@Nullable MediaType mediaType, @NotNull byte[] content, int i10) {
            t.j(content, "content");
            return create$default(this, mediaType, content, i10, 0, 8, (Object) null);
        }

        public static /* synthetic */ RequestBody create$default(Companion companion, byte[] bArr, MediaType mediaType, int i10, int i11, int i12, Object obj) {
            if ((i12 & 1) != 0) {
                mediaType = null;
            }
            if ((i12 & 2) != 0) {
                i10 = 0;
            }
            if ((i12 & 4) != 0) {
                i11 = bArr.length;
            }
            return companion.create(bArr, mediaType, i10, i11);
        }

        @NotNull
        public final RequestBody create(@NotNull byte[] bArr) {
            t.j(bArr, "<this>");
            return create$default(this, bArr, (MediaType) null, 0, 0, 7, (Object) null);
        }

        @NotNull
        public final RequestBody create(@NotNull byte[] bArr, @Nullable MediaType mediaType) {
            t.j(bArr, "<this>");
            return create$default(this, bArr, mediaType, 0, 0, 6, (Object) null);
        }

        public static /* synthetic */ RequestBody create$default(Companion companion, File file, MediaType mediaType, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                mediaType = null;
            }
            return companion.create(file, mediaType);
        }

        @NotNull
        public final RequestBody create(@NotNull byte[] bArr, @Nullable MediaType mediaType, int i10) {
            t.j(bArr, "<this>");
            return create$default(this, bArr, mediaType, i10, 0, 4, (Object) null);
        }

        public static /* synthetic */ RequestBody create$default(Companion companion, MediaType mediaType, byte[] bArr, int i10, int i11, int i12, Object obj) {
            if ((i12 & 4) != 0) {
                i10 = 0;
            }
            if ((i12 & 8) != 0) {
                i11 = bArr.length;
            }
            return companion.create(mediaType, bArr, i10, i11);
        }

        @NotNull
        public final RequestBody create(@NotNull String str, @Nullable MediaType mediaType) {
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
            byte[] bytes = str.getBytes(charset);
            t.i(bytes, "this as java.lang.String).getBytes(charset)");
            return create(bytes, mediaType, 0, bytes.length);
        }

        @NotNull
        public final RequestBody create(@NotNull final ByteString byteString, @Nullable final MediaType mediaType) {
            t.j(byteString, "<this>");
            return new RequestBody() { // from class: okhttp3.RequestBody$Companion$toRequestBody$1
                @Override // okhttp3.RequestBody
                @Nullable
                public MediaType contentType() {
                    return mediaType;
                }

                @Override // okhttp3.RequestBody
                public long contentLength() {
                    return byteString.size();
                }

                @Override // okhttp3.RequestBody
                public void writeTo(@NotNull BufferedSink sink) throws IOException {
                    t.j(sink, "sink");
                    sink.write(byteString);
                }
            };
        }

        @NotNull
        public final RequestBody create(@NotNull final byte[] bArr, @Nullable final MediaType mediaType, final int i10, final int i11) {
            t.j(bArr, "<this>");
            Util.checkOffsetAndCount(bArr.length, i10, i11);
            return new RequestBody() { // from class: okhttp3.RequestBody$Companion$toRequestBody$2
                @Override // okhttp3.RequestBody
                public long contentLength() {
                    return i11;
                }

                @Override // okhttp3.RequestBody
                @Nullable
                public MediaType contentType() {
                    return mediaType;
                }

                @Override // okhttp3.RequestBody
                public void writeTo(@NotNull BufferedSink sink) throws IOException {
                    t.j(sink, "sink");
                    sink.write(bArr, i10, i11);
                }
            };
        }

        @NotNull
        public final RequestBody create(@NotNull final File file, @Nullable final MediaType mediaType) {
            t.j(file, "<this>");
            return new RequestBody() { // from class: okhttp3.RequestBody$Companion$asRequestBody$1
                @Override // okhttp3.RequestBody
                @Nullable
                public MediaType contentType() {
                    return mediaType;
                }

                @Override // okhttp3.RequestBody
                public long contentLength() {
                    return file.length();
                }

                @Override // okhttp3.RequestBody
                public void writeTo(@NotNull BufferedSink sink) throws IOException {
                    t.j(sink, "sink");
                    Source source = Okio.source(file);
                    try {
                        sink.writeAll(source);
                        c.a(source, null);
                    } catch (Throwable th) {
                        try {
                            throw th;
                        } catch (Throwable th2) {
                            c.a(source, th);
                            throw th2;
                        }
                    }
                }
            };
        }

        @NotNull
        public final RequestBody create(@Nullable MediaType mediaType, @NotNull String content) {
            t.j(content, "content");
            return create(content, mediaType);
        }

        @NotNull
        public final RequestBody create(@Nullable MediaType mediaType, @NotNull ByteString content) {
            t.j(content, "content");
            return create(content, mediaType);
        }

        @NotNull
        public final RequestBody create(@Nullable MediaType mediaType, @NotNull byte[] content, int i10, int i11) {
            t.j(content, "content");
            return create(content, mediaType, i10, i11);
        }

        @NotNull
        public final RequestBody create(@Nullable MediaType mediaType, @NotNull File file) {
            t.j(file, "file");
            return create(file, mediaType);
        }
    }

    @NotNull
    public static final RequestBody create(@NotNull File file, @Nullable MediaType mediaType) {
        return Companion.create(file, mediaType);
    }

    public long contentLength() throws IOException {
        return -1L;
    }

    @Nullable
    public abstract MediaType contentType();

    public boolean isDuplex() {
        return false;
    }

    public boolean isOneShot() {
        return false;
    }

    public abstract void writeTo(@NotNull BufferedSink bufferedSink) throws IOException;

    @NotNull
    public static final RequestBody create(@NotNull String str, @Nullable MediaType mediaType) {
        return Companion.create(str, mediaType);
    }

    @NotNull
    public static final RequestBody create(@Nullable MediaType mediaType, @NotNull File file) {
        return Companion.create(mediaType, file);
    }

    @NotNull
    public static final RequestBody create(@Nullable MediaType mediaType, @NotNull String str) {
        return Companion.create(mediaType, str);
    }

    @NotNull
    public static final RequestBody create(@Nullable MediaType mediaType, @NotNull ByteString byteString) {
        return Companion.create(mediaType, byteString);
    }

    @NotNull
    public static final RequestBody create(@Nullable MediaType mediaType, @NotNull byte[] bArr) {
        return Companion.create(mediaType, bArr);
    }

    @NotNull
    public static final RequestBody create(@Nullable MediaType mediaType, @NotNull byte[] bArr, int i10) {
        return Companion.create(mediaType, bArr, i10);
    }

    @NotNull
    public static final RequestBody create(@Nullable MediaType mediaType, @NotNull byte[] bArr, int i10, int i11) {
        return Companion.create(mediaType, bArr, i10, i11);
    }

    @NotNull
    public static final RequestBody create(@NotNull ByteString byteString, @Nullable MediaType mediaType) {
        return Companion.create(byteString, mediaType);
    }

    @NotNull
    public static final RequestBody create(@NotNull byte[] bArr) {
        return Companion.create(bArr);
    }

    @NotNull
    public static final RequestBody create(@NotNull byte[] bArr, @Nullable MediaType mediaType) {
        return Companion.create(bArr, mediaType);
    }

    @NotNull
    public static final RequestBody create(@NotNull byte[] bArr, @Nullable MediaType mediaType, int i10) {
        return Companion.create(bArr, mediaType, i10);
    }

    @NotNull
    public static final RequestBody create(@NotNull byte[] bArr, @Nullable MediaType mediaType, int i10, int i11) {
        return Companion.create(bArr, mediaType, i10, i11);
    }
}
