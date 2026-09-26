package com.google.android.exoplayer2.upstream;

import android.net.Uri;
import androidx.annotation.Nullable;
import androidx.browser.trusted.sharing.ShareTarget;
import com.google.android.exoplayer2.x1;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes10.dex */
public final class o {
    public static final int FLAG_ALLOW_CACHE_FRAGMENTATION = 4;
    public static final int FLAG_ALLOW_GZIP = 1;
    public static final int FLAG_DONT_CACHE_IF_LENGTH_UNKNOWN = 2;
    public static final int FLAG_MIGHT_NOT_USE_FULL_NETWORK_SPEED = 8;
    public static final int HTTP_METHOD_GET = 1;
    public static final int HTTP_METHOD_HEAD = 3;
    public static final int HTTP_METHOD_POST = 2;

    @Deprecated
    public final long absoluteStreamPosition;

    @Nullable
    public final Object customData;
    public final int flags;

    @Nullable
    public final byte[] httpBody;
    public final int httpMethod;
    public final Map<String, String> httpRequestHeaders;

    @Nullable
    public final String key;
    public final long length;
    public final long position;
    public final Uri uri;
    public final long uriPositionOffset;

    public static final class b {

        @Nullable
        private Object customData;
        private int flags;

        @Nullable
        private byte[] httpBody;
        private int httpMethod;
        private Map<String, String> httpRequestHeaders;

        @Nullable
        private String key;
        private long length;
        private long position;

        @Nullable
        private Uri uri;
        private long uriPositionOffset;

        public b b(int i10) {
            this.flags = i10;
            return this;
        }

        public b c(@Nullable byte[] bArr) {
            this.httpBody = bArr;
            return this;
        }

        public b d(int i10) {
            this.httpMethod = i10;
            return this;
        }

        public b e(Map<String, String> map) {
            this.httpRequestHeaders = map;
            return this;
        }

        public b f(@Nullable String str) {
            this.key = str;
            return this;
        }

        public b g(long j6) {
            this.position = j6;
            return this;
        }

        public b h(Uri uri) {
            this.uri = uri;
            return this;
        }

        public b() {
            this.httpMethod = 1;
            this.httpRequestHeaders = Collections.emptyMap();
            this.length = -1L;
        }

        public o a() {
            com.google.android.exoplayer2.util.a.j(this.uri, "The uri must be set.");
            return new o(this.uri, this.uriPositionOffset, this.httpMethod, this.httpBody, this.httpRequestHeaders, this.position, this.length, this.key, this.flags, this.customData);
        }

        public b i(String str) {
            this.uri = Uri.parse(str);
            return this;
        }

        private b(o oVar) {
            this.uri = oVar.uri;
            this.uriPositionOffset = oVar.uriPositionOffset;
            this.httpMethod = oVar.httpMethod;
            this.httpBody = oVar.httpBody;
            this.httpRequestHeaders = oVar.httpRequestHeaders;
            this.position = oVar.position;
            this.length = oVar.length;
            this.key = oVar.key;
            this.flags = oVar.flags;
            this.customData = oVar.customData;
        }
    }

    public static String c(int i10) {
        if (i10 == 1) {
            return ShareTarget.METHOD_GET;
        }
        if (i10 == 2) {
            return "POST";
        }
        if (i10 == 3) {
            return "HEAD";
        }
        throw new IllegalStateException();
    }

    public boolean d(int i10) {
        return (this.flags & i10) == i10;
    }

    static {
        x1.a("goog.exo.datasource");
    }

    public o(Uri uri) {
        this(uri, 0L, -1L);
    }

    public b a() {
        return new b();
    }

    public final String b() {
        return c(this.httpMethod);
    }

    public String toString() {
        return "DataSpec[" + b() + " " + this.uri + ", " + this.position + ", " + this.length + ", " + this.key + ", " + this.flags + "]";
    }

    public o(Uri uri, long j6, long j10) {
        this(uri, 0L, 1, null, Collections.emptyMap(), j6, j10, null, 0, null);
    }

    @Deprecated
    public o(Uri uri, int i10) {
        this(uri, 0L, -1L, null, i10);
    }

    @Deprecated
    public o(Uri uri, long j6, long j10, @Nullable String str) {
        this(uri, j6, j6, j10, str, 0);
    }

    @Deprecated
    public o(Uri uri, long j6, long j10, @Nullable String str, int i10) {
        this(uri, j6, j6, j10, str, i10);
    }

    @Deprecated
    public o(Uri uri, long j6, long j10, @Nullable String str, int i10, Map<String, String> map) {
        this(uri, 1, null, j6, j6, j10, str, i10, map);
    }

    @Deprecated
    public o(Uri uri, long j6, long j10, long j11, @Nullable String str, int i10) {
        this(uri, null, j6, j10, j11, str, i10);
    }

    @Deprecated
    public o(Uri uri, @Nullable byte[] bArr, long j6, long j10, long j11, @Nullable String str, int i10) {
        this(uri, bArr != null ? 2 : 1, bArr, j6, j10, j11, str, i10);
    }

    @Deprecated
    public o(Uri uri, int i10, @Nullable byte[] bArr, long j6, long j10, long j11, @Nullable String str, int i11) {
        this(uri, i10, bArr, j6, j10, j11, str, i11, Collections.emptyMap());
    }

    @Deprecated
    public o(Uri uri, int i10, @Nullable byte[] bArr, long j6, long j10, long j11, @Nullable String str, int i11, Map<String, String> map) {
        this(uri, j6 - j10, i10, bArr, map, j10, j11, str, i11, null);
    }

    private o(Uri uri, long j6, int i10, @Nullable byte[] bArr, Map<String, String> map, long j10, long j11, @Nullable String str, int i11, @Nullable Object obj) {
        byte[] bArr2 = bArr;
        long j12 = j6 + j10;
        boolean z6 = true;
        com.google.android.exoplayer2.util.a.a(j12 >= 0);
        com.google.android.exoplayer2.util.a.a(j10 >= 0);
        if (j11 <= 0 && j11 != -1) {
            z6 = false;
        }
        com.google.android.exoplayer2.util.a.a(z6);
        this.uri = uri;
        this.uriPositionOffset = j6;
        this.httpMethod = i10;
        this.httpBody = (bArr2 == null || bArr2.length == 0) ? null : bArr2;
        this.httpRequestHeaders = Collections.unmodifiableMap(new HashMap(map));
        this.position = j10;
        this.absoluteStreamPosition = j12;
        this.length = j11;
        this.key = str;
        this.flags = i11;
        this.customData = obj;
    }
}
