package androidx.media3.exoplayer.upstream;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.TrackGroup;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.trackselection.ExoTrackSelection;
import com.google.common.collect.b0;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* JADX INFO: loaded from: classes3.dex */
@UnstableApi
public final class CmcdHeadersFactory {
    public static final String OBJECT_TYPE_AUDIO_ONLY = "a";
    public static final String OBJECT_TYPE_INIT_SEGMENT = "i";
    public static final String OBJECT_TYPE_MUXED_AUDIO_AND_VIDEO = "av";
    public static final String OBJECT_TYPE_VIDEO_ONLY = "v";
    public static final String STREAMING_FORMAT_DASH = "d";
    public static final String STREAMING_FORMAT_HLS = "h";
    public static final String STREAMING_FORMAT_SS = "s";
    public static final String STREAM_TYPE_LIVE = "l";
    public static final String STREAM_TYPE_VOD = "v";
    private final long bufferedDurationUs;
    private long chunkDurationUs;
    private final CmcdConfiguration cmcdConfiguration;
    private final boolean isLive;

    @Nullable
    private String objectType;
    private final String streamingFormat;
    private final ExoTrackSelection trackSelection;

    private static final class CmcdObject {
        public final int bitrateKbps;

        @Nullable
        public final String customData;
        public final long objectDurationMs;

        @Nullable
        public final String objectType;
        public final int topBitrateKbps;

        public static final class Builder {

            @Nullable
            private String customData;

            @Nullable
            private String objectType;
            private int bitrateKbps = -2147483647;
            private int topBitrateKbps = -2147483647;
            private long objectDurationMs = -9223372036854775807L;

            public Builder g(int i10) {
                this.bitrateKbps = i10;
                return this;
            }

            public Builder h(@Nullable String str) {
                this.customData = str;
                return this;
            }

            public Builder j(@Nullable String str) {
                this.objectType = str;
                return this;
            }

            public Builder k(int i10) {
                this.topBitrateKbps = i10;
                return this;
            }

            public CmcdObject f() {
                return new CmcdObject(this);
            }

            public Builder i(long j6) {
                Assertions.a(j6 >= 0);
                this.objectDurationMs = j6;
                return this;
            }
        }

        private CmcdObject(Builder builder) {
            this.bitrateKbps = builder.bitrateKbps;
            this.topBitrateKbps = builder.topBitrateKbps;
            this.objectDurationMs = builder.objectDurationMs;
            this.objectType = builder.objectType;
            this.customData = builder.customData;
        }

        public void a(b0.a<String, String> aVar) {
            StringBuilder sb = new StringBuilder();
            int i10 = this.bitrateKbps;
            if (i10 != -2147483647) {
                sb.append(Util.D("%s=%d,", "br", Integer.valueOf(i10)));
            }
            int i11 = this.topBitrateKbps;
            if (i11 != -2147483647) {
                sb.append(Util.D("%s=%d,", "tb", Integer.valueOf(i11)));
            }
            long j6 = this.objectDurationMs;
            if (j6 != -9223372036854775807L) {
                sb.append(Util.D("%s=%d,", "d", Long.valueOf(j6)));
            }
            if (!TextUtils.isEmpty(this.objectType)) {
                sb.append(Util.D("%s=%s,", CmcdConfiguration.KEY_OBJECT_TYPE, this.objectType));
            }
            if (!TextUtils.isEmpty(this.customData)) {
                sb.append(Util.D("%s,", this.customData));
            }
            if (sb.length() == 0) {
                return;
            }
            sb.setLength(sb.length() - 1);
            aVar.f(CmcdConfiguration.KEY_CMCD_OBJECT, sb.toString());
        }
    }

    private static final class CmcdRequest {
        public final long bufferLengthMs;

        @Nullable
        public final String customData;
        public final long measuredThroughputInKbps;

        public static final class Builder {

            @Nullable
            private String customData;
            private long bufferLengthMs = -9223372036854775807L;
            private long measuredThroughputInKbps = Long.MIN_VALUE;

            public Builder f(@Nullable String str) {
                this.customData = str;
                return this;
            }

            public CmcdRequest d() {
                return new CmcdRequest(this);
            }

            public Builder e(long j6) {
                Assertions.a(j6 >= 0);
                this.bufferLengthMs = ((j6 + 50) / 100) * 100;
                return this;
            }

            public Builder g(long j6) {
                Assertions.a(j6 >= 0);
                this.measuredThroughputInKbps = ((j6 + 50) / 100) * 100;
                return this;
            }
        }

        private CmcdRequest(Builder builder) {
            this.bufferLengthMs = builder.bufferLengthMs;
            this.measuredThroughputInKbps = builder.measuredThroughputInKbps;
            this.customData = builder.customData;
        }

        public void a(b0.a<String, String> aVar) {
            StringBuilder sb = new StringBuilder();
            long j6 = this.bufferLengthMs;
            if (j6 != -9223372036854775807L) {
                sb.append(Util.D("%s=%d,", CmcdConfiguration.KEY_BUFFER_LENGTH, Long.valueOf(j6)));
            }
            long j10 = this.measuredThroughputInKbps;
            if (j10 != Long.MIN_VALUE) {
                sb.append(Util.D("%s=%d,", CmcdConfiguration.KEY_MEASURED_THROUGHPUT, Long.valueOf(j10)));
            }
            if (!TextUtils.isEmpty(this.customData)) {
                sb.append(Util.D("%s,", this.customData));
            }
            if (sb.length() == 0) {
                return;
            }
            sb.setLength(sb.length() - 1);
            aVar.f(CmcdConfiguration.KEY_CMCD_REQUEST, sb.toString());
        }
    }

    private static final class CmcdSession {
        public static final int VERSION = 1;

        @Nullable
        public final String contentId;

        @Nullable
        public final String customData;

        @Nullable
        public final String sessionId;

        @Nullable
        public final String streamType;

        @Nullable
        public final String streamingFormat;

        public static final class Builder {

            @Nullable
            private String contentId;

            @Nullable
            private String customData;

            @Nullable
            private String sessionId;

            @Nullable
            private String streamType;

            @Nullable
            private String streamingFormat;

            public Builder h(@Nullable String str) {
                this.customData = str;
                return this;
            }

            public Builder j(@Nullable String str) {
                this.streamType = str;
                return this;
            }

            public Builder k(@Nullable String str) {
                this.streamingFormat = str;
                return this;
            }

            public CmcdSession f() {
                return new CmcdSession(this);
            }

            public Builder g(@Nullable String str) {
                Assertions.a(str == null || str.length() <= 64);
                this.contentId = str;
                return this;
            }

            public Builder i(@Nullable String str) {
                Assertions.a(str == null || str.length() <= 64);
                this.sessionId = str;
                return this;
            }
        }

        private CmcdSession(Builder builder) {
            this.contentId = builder.contentId;
            this.sessionId = builder.sessionId;
            this.streamingFormat = builder.streamingFormat;
            this.streamType = builder.streamType;
            this.customData = builder.customData;
        }

        public void a(b0.a<String, String> aVar) {
            StringBuilder sb = new StringBuilder();
            if (!TextUtils.isEmpty(this.contentId)) {
                sb.append(Util.D("%s=\"%s\",", CmcdConfiguration.KEY_CONTENT_ID, this.contentId));
            }
            if (!TextUtils.isEmpty(this.sessionId)) {
                sb.append(Util.D("%s=\"%s\",", CmcdConfiguration.KEY_SESSION_ID, this.sessionId));
            }
            if (!TextUtils.isEmpty(this.streamingFormat)) {
                sb.append(Util.D("%s=%s,", CmcdConfiguration.KEY_STREAMING_FORMAT, this.streamingFormat));
            }
            if (!TextUtils.isEmpty(this.streamType)) {
                sb.append(Util.D("%s=%s,", CmcdConfiguration.KEY_STREAM_TYPE, this.streamType));
            }
            if (!TextUtils.isEmpty(this.customData)) {
                sb.append(Util.D("%s,", this.customData));
            }
            if (sb.length() == 0) {
                return;
            }
            sb.setLength(sb.length() - 1);
            aVar.f(CmcdConfiguration.KEY_CMCD_SESSION, sb.toString());
        }
    }

    private static final class CmcdStatus {

        @Nullable
        public final String customData;
        public final int maximumRequestedThroughputKbps;

        public static final class Builder {

            @Nullable
            private String customData;
            private int maximumRequestedThroughputKbps = -2147483647;

            public Builder d(@Nullable String str) {
                this.customData = str;
                return this;
            }

            public CmcdStatus c() {
                return new CmcdStatus(this);
            }

            public Builder e(int i10) {
                boolean z6;
                if (i10 != -2147483647 && i10 < 0) {
                    z6 = false;
                } else {
                    z6 = true;
                }
                Assertions.a(z6);
                if (i10 != -2147483647) {
                    i10 = ((i10 + 50) / 100) * 100;
                }
                this.maximumRequestedThroughputKbps = i10;
                return this;
            }
        }

        private CmcdStatus(Builder builder) {
            this.maximumRequestedThroughputKbps = builder.maximumRequestedThroughputKbps;
            this.customData = builder.customData;
        }

        public void a(b0.a<String, String> aVar) {
            StringBuilder sb = new StringBuilder();
            int i10 = this.maximumRequestedThroughputKbps;
            if (i10 != -2147483647) {
                sb.append(Util.D("%s=%d,", CmcdConfiguration.KEY_MAXIMUM_REQUESTED_BITRATE, Integer.valueOf(i10)));
            }
            if (!TextUtils.isEmpty(this.customData)) {
                sb.append(Util.D("%s,", this.customData));
            }
            if (sb.length() == 0) {
                return;
            }
            sb.setLength(sb.length() - 1);
            aVar.f(CmcdConfiguration.KEY_CMCD_STATUS, sb.toString());
        }
    }

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface ObjectType {
    }

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface StreamType {
    }

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface StreamingFormat {
    }

    @Nullable
    public static String c(ExoTrackSelection exoTrackSelection) {
        Assertions.a(exoTrackSelection != null);
        int iK = MimeTypes.k(exoTrackSelection.getSelectedFormat().sampleMimeType);
        if (iK == -1) {
            iK = MimeTypes.k(exoTrackSelection.getSelectedFormat().containerMimeType);
        }
        if (iK == 1) {
            return OBJECT_TYPE_AUDIO_ONLY;
        }
        if (iK == 2) {
            return "v";
        }
        return null;
    }

    public CmcdHeadersFactory e(@Nullable String str) {
        this.objectType = str;
        return this;
    }

    private boolean b() {
        String str = this.objectType;
        return str != null && str.equals(OBJECT_TYPE_INIT_SEGMENT);
    }

    public b0<String, String> a() {
        b0<String, String> b0VarB = this.cmcdConfiguration.requestConfig.b();
        int iL = Util.l(this.trackSelection.getSelectedFormat().bitrate, 1000);
        CmcdObject.Builder builderH = new CmcdObject.Builder().h(b0VarB.get(CmcdConfiguration.KEY_CMCD_OBJECT));
        if (!b()) {
            if (this.cmcdConfiguration.a()) {
                builderH.g(iL);
            }
            if (this.cmcdConfiguration.k()) {
                TrackGroup trackGroup = this.trackSelection.getTrackGroup();
                int iMax = this.trackSelection.getSelectedFormat().bitrate;
                for (int i10 = 0; i10 < trackGroup.length; i10++) {
                    iMax = Math.max(iMax, trackGroup.c(i10).bitrate);
                }
                builderH.k(Util.l(iMax, 1000));
            }
            if (this.cmcdConfiguration.f()) {
                long j6 = this.chunkDurationUs;
                if (j6 != -9223372036854775807L) {
                    builderH.i(j6 / 1000);
                }
            }
        }
        if (this.cmcdConfiguration.g()) {
            builderH.j(this.objectType);
        }
        CmcdRequest.Builder builderF = new CmcdRequest.Builder().f(b0VarB.get(CmcdConfiguration.KEY_CMCD_REQUEST));
        if (!b() && this.cmcdConfiguration.b()) {
            builderF.e(this.bufferedDurationUs / 1000);
        }
        if (this.cmcdConfiguration.e() && this.trackSelection.d() != Long.MIN_VALUE) {
            builderF.g(Util.m(this.trackSelection.d(), 1000L));
        }
        CmcdSession.Builder builderH2 = new CmcdSession.Builder().h(b0VarB.get(CmcdConfiguration.KEY_CMCD_SESSION));
        if (this.cmcdConfiguration.c()) {
            builderH2.g(this.cmcdConfiguration.contentId);
        }
        if (this.cmcdConfiguration.h()) {
            builderH2.i(this.cmcdConfiguration.sessionId);
        }
        if (this.cmcdConfiguration.j()) {
            builderH2.k(this.streamingFormat);
        }
        if (this.cmcdConfiguration.i()) {
            builderH2.j(this.isLive ? STREAM_TYPE_LIVE : "v");
        }
        CmcdStatus.Builder builderD = new CmcdStatus.Builder().d(b0VarB.get(CmcdConfiguration.KEY_CMCD_STATUS));
        if (this.cmcdConfiguration.d()) {
            builderD.e(this.cmcdConfiguration.requestConfig.c(iL));
        }
        b0.a<String, String> aVarA = b0.a();
        builderH.f().a(aVarA);
        builderF.d().a(aVarA);
        builderH2.f().a(aVarA);
        builderD.c().a(aVarA);
        return aVarA.c();
    }

    public CmcdHeadersFactory d(long j6) {
        Assertions.a(j6 >= 0);
        this.chunkDurationUs = j6;
        return this;
    }

    public CmcdHeadersFactory(CmcdConfiguration cmcdConfiguration, ExoTrackSelection exoTrackSelection, long j6, String str, boolean z6) {
        boolean z10;
        if (j6 >= 0) {
            z10 = true;
        } else {
            z10 = false;
        }
        Assertions.a(z10);
        this.cmcdConfiguration = cmcdConfiguration;
        this.trackSelection = exoTrackSelection;
        this.bufferedDurationUs = j6;
        this.streamingFormat = str;
        this.isLive = z6;
        this.chunkDurationUs = -9223372036854775807L;
    }
}
