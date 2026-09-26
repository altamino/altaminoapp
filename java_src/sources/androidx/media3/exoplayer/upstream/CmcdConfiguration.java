package androidx.media3.exoplayer.upstream;

import androidx.annotation.Nullable;
import androidx.media3.common.MediaItem;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import com.google.common.collect.b0;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* JADX INFO: loaded from: classes3.dex */
@UnstableApi
public final class CmcdConfiguration {
    public static final String KEY_BITRATE = "br";
    public static final String KEY_BUFFER_LENGTH = "bl";
    public static final String KEY_CMCD_OBJECT = "CMCD-Object";
    public static final String KEY_CMCD_REQUEST = "CMCD-Request";
    public static final String KEY_CMCD_SESSION = "CMCD-Session";
    public static final String KEY_CMCD_STATUS = "CMCD-Status";
    public static final String KEY_CONTENT_ID = "cid";
    public static final String KEY_MAXIMUM_REQUESTED_BITRATE = "rtp";
    public static final String KEY_MEASURED_THROUGHPUT = "mtp";
    public static final String KEY_OBJECT_DURATION = "d";
    public static final String KEY_OBJECT_TYPE = "ot";
    public static final String KEY_SESSION_ID = "sid";
    public static final String KEY_STREAMING_FORMAT = "sf";
    public static final String KEY_STREAM_TYPE = "st";
    public static final String KEY_TOP_BITRATE = "tb";
    public static final String KEY_VERSION = "v";
    public static final int MAX_ID_LENGTH = 64;

    @Nullable
    public final String contentId;
    public final RequestConfig requestConfig;

    @Nullable
    public final String sessionId;

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface CmcdKey {
    }

    public interface Factory {
        public static final Factory DEFAULT = new Factory() { // from class: androidx.media3.exoplayer.upstream.c
            @Override // androidx.media3.exoplayer.upstream.CmcdConfiguration.Factory
            public final CmcdConfiguration a(MediaItem mediaItem) {
                return d.a(mediaItem);
            }
        };

        CmcdConfiguration a(MediaItem mediaItem);
    }

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface HeaderKey {
    }

    public interface RequestConfig {
        boolean a(String str);

        b0<String, String> b();

        int c(int i10);
    }

    public boolean a() {
        return this.requestConfig.a("br");
    }

    public boolean b() {
        return this.requestConfig.a(KEY_BUFFER_LENGTH);
    }

    public boolean c() {
        return this.requestConfig.a(KEY_CONTENT_ID);
    }

    public boolean d() {
        return this.requestConfig.a(KEY_MAXIMUM_REQUESTED_BITRATE);
    }

    public boolean e() {
        return this.requestConfig.a(KEY_MEASURED_THROUGHPUT);
    }

    public boolean f() {
        return this.requestConfig.a("d");
    }

    public boolean g() {
        return this.requestConfig.a(KEY_OBJECT_TYPE);
    }

    public boolean h() {
        return this.requestConfig.a(KEY_SESSION_ID);
    }

    public boolean i() {
        return this.requestConfig.a(KEY_STREAM_TYPE);
    }

    public boolean j() {
        return this.requestConfig.a(KEY_STREAMING_FORMAT);
    }

    public boolean k() {
        return this.requestConfig.a("tb");
    }

    public CmcdConfiguration(@Nullable String str, @Nullable String str2, RequestConfig requestConfig) {
        boolean z6;
        if (str != null && str.length() > 64) {
            z6 = false;
        } else {
            z6 = true;
        }
        Assertions.a(z6);
        Assertions.a(str2 == null || str2.length() <= 64);
        Assertions.e(requestConfig);
        this.sessionId = str;
        this.contentId = str2;
        this.requestConfig = requestConfig;
    }
}
