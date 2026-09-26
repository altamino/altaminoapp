package androidx.media3.common;

import android.net.Uri;
import android.os.Bundle;
import androidx.annotation.IntRange;
import androidx.annotation.Nullable;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.BundleableUtil;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.UUID;

/* JADX INFO: loaded from: classes2.dex */
public final class MediaItem implements Bundleable {
    public static final String DEFAULT_MEDIA_ID = "";
    public final ClippingConfiguration clippingConfiguration;

    @UnstableApi
    @Deprecated
    public final ClippingProperties clippingProperties;
    public final LiveConfiguration liveConfiguration;

    @Nullable
    public final LocalConfiguration localConfiguration;
    public final String mediaId;
    public final MediaMetadata mediaMetadata;

    @Nullable
    @UnstableApi
    @Deprecated
    public final LocalConfiguration playbackProperties;
    public final RequestMetadata requestMetadata;
    public static final MediaItem EMPTY = new Builder().a();
    private static final String FIELD_MEDIA_ID = Util.z0(0);
    private static final String FIELD_LIVE_CONFIGURATION = Util.z0(1);
    private static final String FIELD_MEDIA_METADATA = Util.z0(2);
    private static final String FIELD_CLIPPING_PROPERTIES = Util.z0(3);
    private static final String FIELD_REQUEST_METADATA = Util.z0(4);
    private static final String FIELD_LOCAL_CONFIGURATION = Util.z0(5);

    @UnstableApi
    public static final Bundleable.Creator<MediaItem> CREATOR = new Bundleable.Creator() { // from class: androidx.media3.common.m
        @Override // androidx.media3.common.Bundleable.Creator
        public final Bundleable a(Bundle bundle) {
            return MediaItem.c(bundle);
        }
    };

    public static final class AdsConfiguration implements Bundleable {
        public final Uri adTagUri;

        @Nullable
        public final Object adsId;
        private static final String FIELD_AD_TAG_URI = Util.z0(0);

        @UnstableApi
        public static final Bundleable.Creator<AdsConfiguration> CREATOR = new Bundleable.Creator() { // from class: androidx.media3.common.n
            @Override // androidx.media3.common.Bundleable.Creator
            public final Bundleable a(Bundle bundle) {
                return MediaItem.AdsConfiguration.b(bundle);
            }
        };

        public static final class Builder {
            private Uri adTagUri;

            @Nullable
            private Object adsId;

            public AdsConfiguration c() {
                return new AdsConfiguration(this);
            }

            public Builder(Uri uri) {
                this.adTagUri = uri;
            }
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof AdsConfiguration)) {
                return false;
            }
            AdsConfiguration adsConfiguration = (AdsConfiguration) obj;
            return this.adTagUri.equals(adsConfiguration.adTagUri) && Util.c(this.adsId, adsConfiguration.adsId);
        }

        private AdsConfiguration(Builder builder) {
            this.adTagUri = builder.adTagUri;
            this.adsId = builder.adsId;
        }

        /* JADX INFO: Access modifiers changed from: private */
        @UnstableApi
        public static AdsConfiguration b(Bundle bundle) {
            Uri uri = (Uri) bundle.getParcelable(FIELD_AD_TAG_URI);
            Assertions.e(uri);
            return new Builder(uri).c();
        }

        public int hashCode() {
            int iHashCode = this.adTagUri.hashCode() * 31;
            Object obj = this.adsId;
            return iHashCode + (obj != null ? obj.hashCode() : 0);
        }

        @Override // androidx.media3.common.Bundleable
        @UnstableApi
        public Bundle toBundle() {
            Bundle bundle = new Bundle();
            bundle.putParcelable(FIELD_AD_TAG_URI, this.adTagUri);
            return bundle;
        }
    }

    public static final class Builder {

        @Nullable
        private AdsConfiguration adsConfiguration;
        private ClippingConfiguration.Builder clippingConfiguration;

        @Nullable
        private String customCacheKey;
        private DrmConfiguration.Builder drmConfiguration;
        private LiveConfiguration.Builder liveConfiguration;

        @Nullable
        private String mediaId;

        @Nullable
        private MediaMetadata mediaMetadata;

        @Nullable
        private String mimeType;
        private RequestMetadata requestMetadata;
        private List<StreamKey> streamKeys;
        private com.google.common.collect.a0<SubtitleConfiguration> subtitleConfigurations;

        @Nullable
        private Object tag;

        @Nullable
        private Uri uri;

        @UnstableApi
        public Builder b(@Nullable String str) {
            this.customCacheKey = str;
            return this;
        }

        public Builder f(@Nullable String str) {
            this.mimeType = str;
            return this;
        }

        public Builder i(@Nullable Object obj) {
            this.tag = obj;
            return this;
        }

        public Builder j(@Nullable Uri uri) {
            this.uri = uri;
            return this;
        }

        public Builder() {
            this.clippingConfiguration = new ClippingConfiguration.Builder();
            this.drmConfiguration = new DrmConfiguration.Builder();
            this.streamKeys = Collections.emptyList();
            this.subtitleConfigurations = com.google.common.collect.a0.x();
            this.liveConfiguration = new LiveConfiguration.Builder();
            this.requestMetadata = RequestMetadata.EMPTY;
        }

        public MediaItem a() {
            LocalConfiguration localConfiguration;
            Assertions.g(this.drmConfiguration.licenseUri == null || this.drmConfiguration.scheme != null);
            Uri uri = this.uri;
            if (uri != null) {
                localConfiguration = new LocalConfiguration(uri, this.mimeType, this.drmConfiguration.scheme != null ? this.drmConfiguration.i() : null, this.adsConfiguration, this.streamKeys, this.customCacheKey, this.subtitleConfigurations, this.tag);
            } else {
                localConfiguration = null;
            }
            String str = this.mediaId;
            if (str == null) {
                str = "";
            }
            String str2 = str;
            ClippingProperties clippingPropertiesG = this.clippingConfiguration.g();
            LiveConfiguration liveConfigurationF = this.liveConfiguration.f();
            MediaMetadata mediaMetadata = this.mediaMetadata;
            if (mediaMetadata == null) {
                mediaMetadata = MediaMetadata.EMPTY;
            }
            return new MediaItem(str2, clippingPropertiesG, localConfiguration, liveConfigurationF, mediaMetadata, this.requestMetadata);
        }

        public Builder c(@Nullable DrmConfiguration drmConfiguration) {
            this.drmConfiguration = drmConfiguration != null ? drmConfiguration.c() : new DrmConfiguration.Builder();
            return this;
        }

        @UnstableApi
        public Builder g(@Nullable List<StreamKey> list) {
            this.streamKeys = (list == null || list.isEmpty()) ? Collections.emptyList() : Collections.unmodifiableList(new ArrayList(list));
            return this;
        }

        public Builder k(@Nullable String str) {
            return j(str == null ? null : Uri.parse(str));
        }

        public Builder d(LiveConfiguration liveConfiguration) {
            this.liveConfiguration = liveConfiguration.b();
            return this;
        }

        public Builder e(String str) {
            this.mediaId = (String) Assertions.e(str);
            return this;
        }

        public Builder h(List<SubtitleConfiguration> list) {
            this.subtitleConfigurations = com.google.common.collect.a0.t(list);
            return this;
        }

        private Builder(MediaItem mediaItem) {
            DrmConfiguration.Builder builder;
            this();
            this.clippingConfiguration = mediaItem.clippingConfiguration.b();
            this.mediaId = mediaItem.mediaId;
            this.mediaMetadata = mediaItem.mediaMetadata;
            this.liveConfiguration = mediaItem.liveConfiguration.b();
            this.requestMetadata = mediaItem.requestMetadata;
            LocalConfiguration localConfiguration = mediaItem.localConfiguration;
            if (localConfiguration != null) {
                this.customCacheKey = localConfiguration.customCacheKey;
                this.mimeType = localConfiguration.mimeType;
                this.uri = localConfiguration.uri;
                this.streamKeys = localConfiguration.streamKeys;
                this.subtitleConfigurations = localConfiguration.subtitleConfigurations;
                this.tag = localConfiguration.tag;
                DrmConfiguration drmConfiguration = localConfiguration.drmConfiguration;
                if (drmConfiguration != null) {
                    builder = drmConfiguration.c();
                } else {
                    builder = new DrmConfiguration.Builder();
                }
                this.drmConfiguration = builder;
                this.adsConfiguration = localConfiguration.adsConfiguration;
            }
        }
    }

    public static class ClippingConfiguration implements Bundleable {
        public final long endPositionMs;
        public final boolean relativeToDefaultPosition;
        public final boolean relativeToLiveWindow;

        @IntRange
        public final long startPositionMs;
        public final boolean startsAtKeyFrame;
        public static final ClippingConfiguration UNSET = new Builder().f();
        private static final String FIELD_START_POSITION_MS = Util.z0(0);
        private static final String FIELD_END_POSITION_MS = Util.z0(1);
        private static final String FIELD_RELATIVE_TO_LIVE_WINDOW = Util.z0(2);
        private static final String FIELD_RELATIVE_TO_DEFAULT_POSITION = Util.z0(3);
        private static final String FIELD_STARTS_AT_KEY_FRAME = Util.z0(4);

        @UnstableApi
        public static final Bundleable.Creator<ClippingProperties> CREATOR = new Bundleable.Creator() { // from class: androidx.media3.common.o
            @Override // androidx.media3.common.Bundleable.Creator
            public final Bundleable a(Bundle bundle) {
                return MediaItem.ClippingConfiguration.c(bundle);
            }
        };

        public static final class Builder {
            private long endPositionMs;
            private boolean relativeToDefaultPosition;
            private boolean relativeToLiveWindow;
            private long startPositionMs;
            private boolean startsAtKeyFrame;

            public Builder i(boolean z6) {
                this.relativeToDefaultPosition = z6;
                return this;
            }

            public Builder j(boolean z6) {
                this.relativeToLiveWindow = z6;
                return this;
            }

            public Builder l(boolean z6) {
                this.startsAtKeyFrame = z6;
                return this;
            }

            public Builder() {
                this.endPositionMs = Long.MIN_VALUE;
            }

            @UnstableApi
            @Deprecated
            public ClippingProperties g() {
                return new ClippingProperties(this);
            }

            public Builder h(long j6) {
                Assertions.a(j6 == Long.MIN_VALUE || j6 >= 0);
                this.endPositionMs = j6;
                return this;
            }

            public Builder k(@IntRange long j6) {
                Assertions.a(j6 >= 0);
                this.startPositionMs = j6;
                return this;
            }

            private Builder(ClippingConfiguration clippingConfiguration) {
                this.startPositionMs = clippingConfiguration.startPositionMs;
                this.endPositionMs = clippingConfiguration.endPositionMs;
                this.relativeToLiveWindow = clippingConfiguration.relativeToLiveWindow;
                this.relativeToDefaultPosition = clippingConfiguration.relativeToDefaultPosition;
                this.startsAtKeyFrame = clippingConfiguration.startsAtKeyFrame;
            }

            public ClippingConfiguration f() {
                return g();
            }
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ClippingConfiguration)) {
                return false;
            }
            ClippingConfiguration clippingConfiguration = (ClippingConfiguration) obj;
            return this.startPositionMs == clippingConfiguration.startPositionMs && this.endPositionMs == clippingConfiguration.endPositionMs && this.relativeToLiveWindow == clippingConfiguration.relativeToLiveWindow && this.relativeToDefaultPosition == clippingConfiguration.relativeToDefaultPosition && this.startsAtKeyFrame == clippingConfiguration.startsAtKeyFrame;
        }

        public int hashCode() {
            long j6 = this.startPositionMs;
            int i10 = ((int) (j6 ^ (j6 >>> 32))) * 31;
            long j10 = this.endPositionMs;
            return ((((((i10 + ((int) ((j10 >>> 32) ^ j10))) * 31) + (this.relativeToLiveWindow ? 1 : 0)) * 31) + (this.relativeToDefaultPosition ? 1 : 0)) * 31) + (this.startsAtKeyFrame ? 1 : 0);
        }

        private ClippingConfiguration(Builder builder) {
            this.startPositionMs = builder.startPositionMs;
            this.endPositionMs = builder.endPositionMs;
            this.relativeToLiveWindow = builder.relativeToLiveWindow;
            this.relativeToDefaultPosition = builder.relativeToDefaultPosition;
            this.startsAtKeyFrame = builder.startsAtKeyFrame;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ ClippingProperties c(Bundle bundle) {
            Builder builder = new Builder();
            String str = FIELD_START_POSITION_MS;
            ClippingConfiguration clippingConfiguration = UNSET;
            return builder.k(bundle.getLong(str, clippingConfiguration.startPositionMs)).h(bundle.getLong(FIELD_END_POSITION_MS, clippingConfiguration.endPositionMs)).j(bundle.getBoolean(FIELD_RELATIVE_TO_LIVE_WINDOW, clippingConfiguration.relativeToLiveWindow)).i(bundle.getBoolean(FIELD_RELATIVE_TO_DEFAULT_POSITION, clippingConfiguration.relativeToDefaultPosition)).l(bundle.getBoolean(FIELD_STARTS_AT_KEY_FRAME, clippingConfiguration.startsAtKeyFrame)).g();
        }

        public Builder b() {
            return new Builder();
        }

        @Override // androidx.media3.common.Bundleable
        @UnstableApi
        public Bundle toBundle() {
            Bundle bundle = new Bundle();
            long j6 = this.startPositionMs;
            ClippingConfiguration clippingConfiguration = UNSET;
            if (j6 != clippingConfiguration.startPositionMs) {
                bundle.putLong(FIELD_START_POSITION_MS, j6);
            }
            long j10 = this.endPositionMs;
            if (j10 != clippingConfiguration.endPositionMs) {
                bundle.putLong(FIELD_END_POSITION_MS, j10);
            }
            boolean z6 = this.relativeToLiveWindow;
            if (z6 != clippingConfiguration.relativeToLiveWindow) {
                bundle.putBoolean(FIELD_RELATIVE_TO_LIVE_WINDOW, z6);
            }
            boolean z10 = this.relativeToDefaultPosition;
            if (z10 != clippingConfiguration.relativeToDefaultPosition) {
                bundle.putBoolean(FIELD_RELATIVE_TO_DEFAULT_POSITION, z10);
            }
            boolean z11 = this.startsAtKeyFrame;
            if (z11 != clippingConfiguration.startsAtKeyFrame) {
                bundle.putBoolean(FIELD_STARTS_AT_KEY_FRAME, z11);
            }
            return bundle;
        }
    }

    @UnstableApi
    @Deprecated
    public static final class ClippingProperties extends ClippingConfiguration {
        public static final ClippingProperties UNSET = new ClippingConfiguration.Builder().g();

        private ClippingProperties(ClippingConfiguration.Builder builder) {
            super(builder);
        }
    }

    public static final class DrmConfiguration implements Bundleable {
        public final boolean forceDefaultLicenseUri;
        public final com.google.common.collect.a0<Integer> forcedSessionTrackTypes;

        @Nullable
        private final byte[] keySetId;
        public final com.google.common.collect.b0<String, String> licenseRequestHeaders;

        @Nullable
        public final Uri licenseUri;
        public final boolean multiSession;
        public final boolean playClearContentWithoutKey;

        @UnstableApi
        @Deprecated
        public final com.google.common.collect.b0<String, String> requestHeaders;
        public final UUID scheme;

        @UnstableApi
        @Deprecated
        public final com.google.common.collect.a0<Integer> sessionForClearTypes;

        @UnstableApi
        @Deprecated
        public final UUID uuid;
        private static final String FIELD_SCHEME = Util.z0(0);
        private static final String FIELD_LICENSE_URI = Util.z0(1);
        private static final String FIELD_LICENSE_REQUEST_HEADERS = Util.z0(2);
        private static final String FIELD_MULTI_SESSION = Util.z0(3);
        private static final String FIELD_PLAY_CLEAR_CONTENT_WITHOUT_KEY = Util.z0(4);
        private static final String FIELD_FORCE_DEFAULT_LICENSE_URI = Util.z0(5);
        private static final String FIELD_FORCED_SESSION_TRACK_TYPES = Util.z0(6);
        private static final String FIELD_KEY_SET_ID = Util.z0(7);

        @UnstableApi
        public static final Bundleable.Creator<DrmConfiguration> CREATOR = new Bundleable.Creator() { // from class: androidx.media3.common.p
            @Override // androidx.media3.common.Bundleable.Creator
            public final Bundleable a(Bundle bundle) {
                return MediaItem.DrmConfiguration.d(bundle);
            }
        };

        public static final class Builder {
            private boolean forceDefaultLicenseUri;
            private com.google.common.collect.a0<Integer> forcedSessionTrackTypes;

            @Nullable
            private byte[] keySetId;
            private com.google.common.collect.b0<String, String> licenseRequestHeaders;

            @Nullable
            private Uri licenseUri;
            private boolean multiSession;
            private boolean playClearContentWithoutKey;

            @Nullable
            private UUID scheme;

            public Builder j(boolean z6) {
                this.forceDefaultLicenseUri = z6;
                return this;
            }

            public Builder n(@Nullable Uri uri) {
                this.licenseUri = uri;
                return this;
            }

            public Builder o(boolean z6) {
                this.multiSession = z6;
                return this;
            }

            public Builder p(boolean z6) {
                this.playClearContentWithoutKey = z6;
                return this;
            }

            public DrmConfiguration i() {
                return new DrmConfiguration(this);
            }

            public Builder l(@Nullable byte[] bArr) {
                this.keySetId = bArr != null ? Arrays.copyOf(bArr, bArr.length) : null;
                return this;
            }

            public Builder(UUID uuid) {
                this.scheme = uuid;
                this.licenseRequestHeaders = com.google.common.collect.b0.m();
                this.forcedSessionTrackTypes = com.google.common.collect.a0.x();
            }

            public Builder k(List<Integer> list) {
                this.forcedSessionTrackTypes = com.google.common.collect.a0.t(list);
                return this;
            }

            public Builder m(Map<String, String> map) {
                this.licenseRequestHeaders = com.google.common.collect.b0.f(map);
                return this;
            }

            @Deprecated
            private Builder() {
                this.licenseRequestHeaders = com.google.common.collect.b0.m();
                this.forcedSessionTrackTypes = com.google.common.collect.a0.x();
            }

            private Builder(DrmConfiguration drmConfiguration) {
                this.scheme = drmConfiguration.scheme;
                this.licenseUri = drmConfiguration.licenseUri;
                this.licenseRequestHeaders = drmConfiguration.licenseRequestHeaders;
                this.multiSession = drmConfiguration.multiSession;
                this.playClearContentWithoutKey = drmConfiguration.playClearContentWithoutKey;
                this.forceDefaultLicenseUri = drmConfiguration.forceDefaultLicenseUri;
                this.forcedSessionTrackTypes = drmConfiguration.forcedSessionTrackTypes;
                this.keySetId = drmConfiguration.keySetId;
            }
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof DrmConfiguration)) {
                return false;
            }
            DrmConfiguration drmConfiguration = (DrmConfiguration) obj;
            return this.scheme.equals(drmConfiguration.scheme) && Util.c(this.licenseUri, drmConfiguration.licenseUri) && Util.c(this.licenseRequestHeaders, drmConfiguration.licenseRequestHeaders) && this.multiSession == drmConfiguration.multiSession && this.forceDefaultLicenseUri == drmConfiguration.forceDefaultLicenseUri && this.playClearContentWithoutKey == drmConfiguration.playClearContentWithoutKey && this.forcedSessionTrackTypes.equals(drmConfiguration.forcedSessionTrackTypes) && Arrays.equals(this.keySetId, drmConfiguration.keySetId);
        }

        private DrmConfiguration(Builder builder) {
            Assertions.g((builder.forceDefaultLicenseUri && builder.licenseUri == null) ? false : true);
            UUID uuid = (UUID) Assertions.e(builder.scheme);
            this.scheme = uuid;
            this.uuid = uuid;
            this.licenseUri = builder.licenseUri;
            this.requestHeaders = builder.licenseRequestHeaders;
            this.licenseRequestHeaders = builder.licenseRequestHeaders;
            this.multiSession = builder.multiSession;
            this.forceDefaultLicenseUri = builder.forceDefaultLicenseUri;
            this.playClearContentWithoutKey = builder.playClearContentWithoutKey;
            this.sessionForClearTypes = builder.forcedSessionTrackTypes;
            this.forcedSessionTrackTypes = builder.forcedSessionTrackTypes;
            this.keySetId = builder.keySetId != null ? Arrays.copyOf(builder.keySetId, builder.keySetId.length) : null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        @UnstableApi
        public static DrmConfiguration d(Bundle bundle) {
            UUID uuidFromString = UUID.fromString((String) Assertions.e(bundle.getString(FIELD_SCHEME)));
            Uri uri = (Uri) bundle.getParcelable(FIELD_LICENSE_URI);
            com.google.common.collect.b0<String, String> b0VarB = BundleableUtil.b(BundleableUtil.f(bundle, FIELD_LICENSE_REQUEST_HEADERS, Bundle.EMPTY));
            boolean z6 = bundle.getBoolean(FIELD_MULTI_SESSION, false);
            boolean z10 = bundle.getBoolean(FIELD_PLAY_CLEAR_CONTENT_WITHOUT_KEY, false);
            boolean z11 = bundle.getBoolean(FIELD_FORCE_DEFAULT_LICENSE_URI, false);
            com.google.common.collect.a0 a0VarT = com.google.common.collect.a0.t(BundleableUtil.g(bundle, FIELD_FORCED_SESSION_TRACK_TYPES, new ArrayList()));
            return new Builder(uuidFromString).n(uri).m(b0VarB).o(z6).j(z11).p(z10).k(a0VarT).l(bundle.getByteArray(FIELD_KEY_SET_ID)).i();
        }

        public Builder c() {
            return new Builder();
        }

        @Nullable
        public byte[] e() {
            byte[] bArr = this.keySetId;
            if (bArr != null) {
                return Arrays.copyOf(bArr, bArr.length);
            }
            return null;
        }

        public int hashCode() {
            int iHashCode = this.scheme.hashCode() * 31;
            Uri uri = this.licenseUri;
            return ((((((((((((iHashCode + (uri != null ? uri.hashCode() : 0)) * 31) + this.licenseRequestHeaders.hashCode()) * 31) + (this.multiSession ? 1 : 0)) * 31) + (this.forceDefaultLicenseUri ? 1 : 0)) * 31) + (this.playClearContentWithoutKey ? 1 : 0)) * 31) + this.forcedSessionTrackTypes.hashCode()) * 31) + Arrays.hashCode(this.keySetId);
        }

        @Override // androidx.media3.common.Bundleable
        @UnstableApi
        public Bundle toBundle() {
            Bundle bundle = new Bundle();
            bundle.putString(FIELD_SCHEME, this.scheme.toString());
            Uri uri = this.licenseUri;
            if (uri != null) {
                bundle.putParcelable(FIELD_LICENSE_URI, uri);
            }
            if (!this.licenseRequestHeaders.isEmpty()) {
                bundle.putBundle(FIELD_LICENSE_REQUEST_HEADERS, BundleableUtil.h(this.licenseRequestHeaders));
            }
            boolean z6 = this.multiSession;
            if (z6) {
                bundle.putBoolean(FIELD_MULTI_SESSION, z6);
            }
            boolean z10 = this.playClearContentWithoutKey;
            if (z10) {
                bundle.putBoolean(FIELD_PLAY_CLEAR_CONTENT_WITHOUT_KEY, z10);
            }
            boolean z11 = this.forceDefaultLicenseUri;
            if (z11) {
                bundle.putBoolean(FIELD_FORCE_DEFAULT_LICENSE_URI, z11);
            }
            if (!this.forcedSessionTrackTypes.isEmpty()) {
                bundle.putIntegerArrayList(FIELD_FORCED_SESSION_TRACK_TYPES, new ArrayList<>(this.forcedSessionTrackTypes));
            }
            byte[] bArr = this.keySetId;
            if (bArr != null) {
                bundle.putByteArray(FIELD_KEY_SET_ID, bArr);
            }
            return bundle;
        }
    }

    public static final class LiveConfiguration implements Bundleable {
        public final long maxOffsetMs;
        public final float maxPlaybackSpeed;
        public final long minOffsetMs;
        public final float minPlaybackSpeed;
        public final long targetOffsetMs;
        public static final LiveConfiguration UNSET = new Builder().f();
        private static final String FIELD_TARGET_OFFSET_MS = Util.z0(0);
        private static final String FIELD_MIN_OFFSET_MS = Util.z0(1);
        private static final String FIELD_MAX_OFFSET_MS = Util.z0(2);
        private static final String FIELD_MIN_PLAYBACK_SPEED = Util.z0(3);
        private static final String FIELD_MAX_PLAYBACK_SPEED = Util.z0(4);

        @UnstableApi
        public static final Bundleable.Creator<LiveConfiguration> CREATOR = new Bundleable.Creator() { // from class: androidx.media3.common.q
            @Override // androidx.media3.common.Bundleable.Creator
            public final Bundleable a(Bundle bundle) {
                return MediaItem.LiveConfiguration.c(bundle);
            }
        };

        public static final class Builder {
            private long maxOffsetMs;
            private float maxPlaybackSpeed;
            private long minOffsetMs;
            private float minPlaybackSpeed;
            private long targetOffsetMs;

            public Builder g(long j6) {
                this.maxOffsetMs = j6;
                return this;
            }

            public Builder h(float f) {
                this.maxPlaybackSpeed = f;
                return this;
            }

            public Builder i(long j6) {
                this.minOffsetMs = j6;
                return this;
            }

            public Builder j(float f) {
                this.minPlaybackSpeed = f;
                return this;
            }

            public Builder k(long j6) {
                this.targetOffsetMs = j6;
                return this;
            }

            public Builder() {
                this.targetOffsetMs = -9223372036854775807L;
                this.minOffsetMs = -9223372036854775807L;
                this.maxOffsetMs = -9223372036854775807L;
                this.minPlaybackSpeed = -3.4028235E38f;
                this.maxPlaybackSpeed = -3.4028235E38f;
            }

            public LiveConfiguration f() {
                return new LiveConfiguration(this);
            }

            private Builder(LiveConfiguration liveConfiguration) {
                this.targetOffsetMs = liveConfiguration.targetOffsetMs;
                this.minOffsetMs = liveConfiguration.minOffsetMs;
                this.maxOffsetMs = liveConfiguration.maxOffsetMs;
                this.minPlaybackSpeed = liveConfiguration.minPlaybackSpeed;
                this.maxPlaybackSpeed = liveConfiguration.maxPlaybackSpeed;
            }
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof LiveConfiguration)) {
                return false;
            }
            LiveConfiguration liveConfiguration = (LiveConfiguration) obj;
            return this.targetOffsetMs == liveConfiguration.targetOffsetMs && this.minOffsetMs == liveConfiguration.minOffsetMs && this.maxOffsetMs == liveConfiguration.maxOffsetMs && this.minPlaybackSpeed == liveConfiguration.minPlaybackSpeed && this.maxPlaybackSpeed == liveConfiguration.maxPlaybackSpeed;
        }

        private LiveConfiguration(Builder builder) {
            this(builder.targetOffsetMs, builder.minOffsetMs, builder.maxOffsetMs, builder.minPlaybackSpeed, builder.maxPlaybackSpeed);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ LiveConfiguration c(Bundle bundle) {
            String str = FIELD_TARGET_OFFSET_MS;
            LiveConfiguration liveConfiguration = UNSET;
            return new LiveConfiguration(bundle.getLong(str, liveConfiguration.targetOffsetMs), bundle.getLong(FIELD_MIN_OFFSET_MS, liveConfiguration.minOffsetMs), bundle.getLong(FIELD_MAX_OFFSET_MS, liveConfiguration.maxOffsetMs), bundle.getFloat(FIELD_MIN_PLAYBACK_SPEED, liveConfiguration.minPlaybackSpeed), bundle.getFloat(FIELD_MAX_PLAYBACK_SPEED, liveConfiguration.maxPlaybackSpeed));
        }

        public Builder b() {
            return new Builder();
        }

        public int hashCode() {
            long j6 = this.targetOffsetMs;
            long j10 = this.minOffsetMs;
            int i10 = ((((int) (j6 ^ (j6 >>> 32))) * 31) + ((int) (j10 ^ (j10 >>> 32)))) * 31;
            long j11 = this.maxOffsetMs;
            int i11 = (i10 + ((int) ((j11 >>> 32) ^ j11))) * 31;
            float f = this.minPlaybackSpeed;
            int iFloatToIntBits = (i11 + (f != 0.0f ? Float.floatToIntBits(f) : 0)) * 31;
            float f6 = this.maxPlaybackSpeed;
            return iFloatToIntBits + (f6 != 0.0f ? Float.floatToIntBits(f6) : 0);
        }

        @Override // androidx.media3.common.Bundleable
        @UnstableApi
        public Bundle toBundle() {
            Bundle bundle = new Bundle();
            long j6 = this.targetOffsetMs;
            LiveConfiguration liveConfiguration = UNSET;
            if (j6 != liveConfiguration.targetOffsetMs) {
                bundle.putLong(FIELD_TARGET_OFFSET_MS, j6);
            }
            long j10 = this.minOffsetMs;
            if (j10 != liveConfiguration.minOffsetMs) {
                bundle.putLong(FIELD_MIN_OFFSET_MS, j10);
            }
            long j11 = this.maxOffsetMs;
            if (j11 != liveConfiguration.maxOffsetMs) {
                bundle.putLong(FIELD_MAX_OFFSET_MS, j11);
            }
            float f = this.minPlaybackSpeed;
            if (f != liveConfiguration.minPlaybackSpeed) {
                bundle.putFloat(FIELD_MIN_PLAYBACK_SPEED, f);
            }
            float f6 = this.maxPlaybackSpeed;
            if (f6 != liveConfiguration.maxPlaybackSpeed) {
                bundle.putFloat(FIELD_MAX_PLAYBACK_SPEED, f6);
            }
            return bundle;
        }

        @UnstableApi
        @Deprecated
        public LiveConfiguration(long j6, long j10, long j11, float f, float f6) {
            this.targetOffsetMs = j6;
            this.minOffsetMs = j10;
            this.maxOffsetMs = j11;
            this.minPlaybackSpeed = f;
            this.maxPlaybackSpeed = f6;
        }
    }

    public static final class LocalConfiguration implements Bundleable {

        @Nullable
        public final AdsConfiguration adsConfiguration;

        @Nullable
        @UnstableApi
        public final String customCacheKey;

        @Nullable
        public final DrmConfiguration drmConfiguration;

        @Nullable
        public final String mimeType;

        @UnstableApi
        public final List<StreamKey> streamKeys;
        public final com.google.common.collect.a0<SubtitleConfiguration> subtitleConfigurations;

        @UnstableApi
        @Deprecated
        public final List<Subtitle> subtitles;

        @Nullable
        public final Object tag;
        public final Uri uri;
        private static final String FIELD_URI = Util.z0(0);
        private static final String FIELD_MIME_TYPE = Util.z0(1);
        private static final String FIELD_DRM_CONFIGURATION = Util.z0(2);
        private static final String FIELD_ADS_CONFIGURATION = Util.z0(3);
        private static final String FIELD_STREAM_KEYS = Util.z0(4);
        private static final String FIELD_CUSTOM_CACHE_KEY = Util.z0(5);
        private static final String FIELD_SUBTITLE_CONFIGURATION = Util.z0(6);

        @UnstableApi
        public static final Bundleable.Creator<LocalConfiguration> CREATOR = new Bundleable.Creator() { // from class: androidx.media3.common.s
            @Override // androidx.media3.common.Bundleable.Creator
            public final Bundleable a(Bundle bundle) {
                return MediaItem.LocalConfiguration.b(bundle);
            }
        };

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof LocalConfiguration)) {
                return false;
            }
            LocalConfiguration localConfiguration = (LocalConfiguration) obj;
            return this.uri.equals(localConfiguration.uri) && Util.c(this.mimeType, localConfiguration.mimeType) && Util.c(this.drmConfiguration, localConfiguration.drmConfiguration) && Util.c(this.adsConfiguration, localConfiguration.adsConfiguration) && this.streamKeys.equals(localConfiguration.streamKeys) && Util.c(this.customCacheKey, localConfiguration.customCacheKey) && this.subtitleConfigurations.equals(localConfiguration.subtitleConfigurations) && Util.c(this.tag, localConfiguration.tag);
        }

        private LocalConfiguration(Uri uri, @Nullable String str, @Nullable DrmConfiguration drmConfiguration, @Nullable AdsConfiguration adsConfiguration, List<StreamKey> list, @Nullable String str2, com.google.common.collect.a0<SubtitleConfiguration> a0Var, @Nullable Object obj) {
            this.uri = uri;
            this.mimeType = str;
            this.drmConfiguration = drmConfiguration;
            this.adsConfiguration = adsConfiguration;
            this.streamKeys = list;
            this.customCacheKey = str2;
            this.subtitleConfigurations = a0Var;
            com.google.common.collect.a0.a aVarR = com.google.common.collect.a0.r();
            for (int i10 = 0; i10 < a0Var.size(); i10++) {
                aVarR.d(a0Var.get(i10).b().j());
            }
            this.subtitles = aVarR.k();
            this.tag = obj;
        }

        /* JADX INFO: Access modifiers changed from: private */
        @UnstableApi
        public static LocalConfiguration b(Bundle bundle) {
            Bundle bundle2 = bundle.getBundle(FIELD_DRM_CONFIGURATION);
            DrmConfiguration drmConfiguration = bundle2 == null ? null : (DrmConfiguration) DrmConfiguration.CREATOR.a(bundle2);
            Bundle bundle3 = bundle.getBundle(FIELD_ADS_CONFIGURATION);
            AdsConfiguration adsConfiguration = bundle3 != null ? (AdsConfiguration) AdsConfiguration.CREATOR.a(bundle3) : null;
            ArrayList parcelableArrayList = bundle.getParcelableArrayList(FIELD_STREAM_KEYS);
            com.google.common.collect.a0 a0VarX = parcelableArrayList == null ? com.google.common.collect.a0.x() : BundleableUtil.d(new Bundleable.Creator() { // from class: androidx.media3.common.t
                @Override // androidx.media3.common.Bundleable.Creator
                public final Bundleable a(Bundle bundle4) {
                    return StreamKey.c(bundle4);
                }
            }, parcelableArrayList);
            ArrayList parcelableArrayList2 = bundle.getParcelableArrayList(FIELD_SUBTITLE_CONFIGURATION);
            return new LocalConfiguration((Uri) Assertions.e((Uri) bundle.getParcelable(FIELD_URI)), bundle.getString(FIELD_MIME_TYPE), drmConfiguration, adsConfiguration, a0VarX, bundle.getString(FIELD_CUSTOM_CACHE_KEY), parcelableArrayList2 == null ? com.google.common.collect.a0.x() : BundleableUtil.d(SubtitleConfiguration.CREATOR, parcelableArrayList2), null);
        }

        public int hashCode() {
            int iHashCode = this.uri.hashCode() * 31;
            String str = this.mimeType;
            int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
            DrmConfiguration drmConfiguration = this.drmConfiguration;
            int iHashCode3 = (iHashCode2 + (drmConfiguration == null ? 0 : drmConfiguration.hashCode())) * 31;
            AdsConfiguration adsConfiguration = this.adsConfiguration;
            int iHashCode4 = (((iHashCode3 + (adsConfiguration == null ? 0 : adsConfiguration.hashCode())) * 31) + this.streamKeys.hashCode()) * 31;
            String str2 = this.customCacheKey;
            int iHashCode5 = (((iHashCode4 + (str2 == null ? 0 : str2.hashCode())) * 31) + this.subtitleConfigurations.hashCode()) * 31;
            Object obj = this.tag;
            return iHashCode5 + (obj != null ? obj.hashCode() : 0);
        }

        @Override // androidx.media3.common.Bundleable
        @UnstableApi
        public Bundle toBundle() {
            Bundle bundle = new Bundle();
            bundle.putParcelable(FIELD_URI, this.uri);
            String str = this.mimeType;
            if (str != null) {
                bundle.putString(FIELD_MIME_TYPE, str);
            }
            DrmConfiguration drmConfiguration = this.drmConfiguration;
            if (drmConfiguration != null) {
                bundle.putBundle(FIELD_DRM_CONFIGURATION, drmConfiguration.toBundle());
            }
            AdsConfiguration adsConfiguration = this.adsConfiguration;
            if (adsConfiguration != null) {
                bundle.putBundle(FIELD_ADS_CONFIGURATION, adsConfiguration.toBundle());
            }
            if (!this.streamKeys.isEmpty()) {
                bundle.putParcelableArrayList(FIELD_STREAM_KEYS, BundleableUtil.i(this.streamKeys));
            }
            String str2 = this.customCacheKey;
            if (str2 != null) {
                bundle.putString(FIELD_CUSTOM_CACHE_KEY, str2);
            }
            if (!this.subtitleConfigurations.isEmpty()) {
                bundle.putParcelableArrayList(FIELD_SUBTITLE_CONFIGURATION, BundleableUtil.i(this.subtitleConfigurations));
            }
            return bundle;
        }
    }

    public static final class RequestMetadata implements Bundleable {

        @Nullable
        public final Bundle extras;

        @Nullable
        public final Uri mediaUri;

        @Nullable
        public final String searchQuery;
        public static final RequestMetadata EMPTY = new Builder().d();
        private static final String FIELD_MEDIA_URI = Util.z0(0);
        private static final String FIELD_SEARCH_QUERY = Util.z0(1);
        private static final String FIELD_EXTRAS = Util.z0(2);

        @UnstableApi
        public static final Bundleable.Creator<RequestMetadata> CREATOR = new Bundleable.Creator() { // from class: androidx.media3.common.u
            @Override // androidx.media3.common.Bundleable.Creator
            public final Bundleable a(Bundle bundle) {
                return MediaItem.RequestMetadata.b(bundle);
            }
        };

        public static final class Builder {

            @Nullable
            private Bundle extras;

            @Nullable
            private Uri mediaUri;

            @Nullable
            private String searchQuery;

            public Builder e(@Nullable Bundle bundle) {
                this.extras = bundle;
                return this;
            }

            public Builder f(@Nullable Uri uri) {
                this.mediaUri = uri;
                return this;
            }

            public Builder g(@Nullable String str) {
                this.searchQuery = str;
                return this;
            }

            public RequestMetadata d() {
                return new RequestMetadata(this);
            }
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof RequestMetadata)) {
                return false;
            }
            RequestMetadata requestMetadata = (RequestMetadata) obj;
            return Util.c(this.mediaUri, requestMetadata.mediaUri) && Util.c(this.searchQuery, requestMetadata.searchQuery);
        }

        private RequestMetadata(Builder builder) {
            this.mediaUri = builder.mediaUri;
            this.searchQuery = builder.searchQuery;
            this.extras = builder.extras;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ RequestMetadata b(Bundle bundle) {
            return new Builder().f((Uri) bundle.getParcelable(FIELD_MEDIA_URI)).g(bundle.getString(FIELD_SEARCH_QUERY)).e(bundle.getBundle(FIELD_EXTRAS)).d();
        }

        public int hashCode() {
            Uri uri = this.mediaUri;
            int iHashCode = (uri == null ? 0 : uri.hashCode()) * 31;
            String str = this.searchQuery;
            return iHashCode + (str != null ? str.hashCode() : 0);
        }

        @Override // androidx.media3.common.Bundleable
        @UnstableApi
        public Bundle toBundle() {
            Bundle bundle = new Bundle();
            Uri uri = this.mediaUri;
            if (uri != null) {
                bundle.putParcelable(FIELD_MEDIA_URI, uri);
            }
            String str = this.searchQuery;
            if (str != null) {
                bundle.putString(FIELD_SEARCH_QUERY, str);
            }
            Bundle bundle2 = this.extras;
            if (bundle2 != null) {
                bundle.putBundle(FIELD_EXTRAS, bundle2);
            }
            return bundle;
        }
    }

    @UnstableApi
    @Deprecated
    public static final class Subtitle extends SubtitleConfiguration {
        @UnstableApi
        @Deprecated
        public Subtitle(Uri uri, String str, @Nullable String str2) {
            this(uri, str, str2, 0);
        }

        @UnstableApi
        @Deprecated
        public Subtitle(Uri uri, String str, @Nullable String str2, int i10) {
            this(uri, str, str2, i10, 0, null);
        }

        @UnstableApi
        @Deprecated
        public Subtitle(Uri uri, String str, @Nullable String str2, int i10, int i11, @Nullable String str3) {
            super(uri, str, str2, i10, i11, str3, null);
        }

        private Subtitle(SubtitleConfiguration.Builder builder) {
            super(builder);
        }
    }

    public static class SubtitleConfiguration implements Bundleable {

        @Nullable
        public final String id;

        @Nullable
        public final String label;

        @Nullable
        public final String language;

        @Nullable
        public final String mimeType;
        public final int roleFlags;
        public final int selectionFlags;
        public final Uri uri;
        private static final String FIELD_URI = Util.z0(0);
        private static final String FIELD_MIME_TYPE = Util.z0(1);
        private static final String FIELD_LANGUAGE = Util.z0(2);
        private static final String FIELD_SELECTION_FLAGS = Util.z0(3);
        private static final String FIELD_ROLE_FLAGS = Util.z0(4);
        private static final String FIELD_LABEL = Util.z0(5);
        private static final String FIELD_ID = Util.z0(6);

        @UnstableApi
        public static final Bundleable.Creator<SubtitleConfiguration> CREATOR = new Bundleable.Creator() { // from class: androidx.media3.common.v
            @Override // androidx.media3.common.Bundleable.Creator
            public final Bundleable a(Bundle bundle) {
                return MediaItem.SubtitleConfiguration.c(bundle);
            }
        };

        public static final class Builder {

            @Nullable
            private String id;

            @Nullable
            private String label;

            @Nullable
            private String language;

            @Nullable
            private String mimeType;
            private int roleFlags;
            private int selectionFlags;
            private Uri uri;

            public Builder k(@Nullable String str) {
                this.id = str;
                return this;
            }

            public Builder l(@Nullable String str) {
                this.label = str;
                return this;
            }

            public Builder m(@Nullable String str) {
                this.language = str;
                return this;
            }

            public Builder n(@Nullable String str) {
                this.mimeType = str;
                return this;
            }

            public Builder o(int i10) {
                this.roleFlags = i10;
                return this;
            }

            public Builder p(int i10) {
                this.selectionFlags = i10;
                return this;
            }

            public Builder(Uri uri) {
                this.uri = uri;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public Subtitle j() {
                return new Subtitle(this);
            }

            public SubtitleConfiguration i() {
                return new SubtitleConfiguration(this);
            }

            private Builder(SubtitleConfiguration subtitleConfiguration) {
                this.uri = subtitleConfiguration.uri;
                this.mimeType = subtitleConfiguration.mimeType;
                this.language = subtitleConfiguration.language;
                this.selectionFlags = subtitleConfiguration.selectionFlags;
                this.roleFlags = subtitleConfiguration.roleFlags;
                this.label = subtitleConfiguration.label;
                this.id = subtitleConfiguration.id;
            }
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof SubtitleConfiguration)) {
                return false;
            }
            SubtitleConfiguration subtitleConfiguration = (SubtitleConfiguration) obj;
            return this.uri.equals(subtitleConfiguration.uri) && Util.c(this.mimeType, subtitleConfiguration.mimeType) && Util.c(this.language, subtitleConfiguration.language) && this.selectionFlags == subtitleConfiguration.selectionFlags && this.roleFlags == subtitleConfiguration.roleFlags && Util.c(this.label, subtitleConfiguration.label) && Util.c(this.id, subtitleConfiguration.id);
        }

        /* JADX INFO: Access modifiers changed from: private */
        @UnstableApi
        public static SubtitleConfiguration c(Bundle bundle) {
            Uri uri = (Uri) Assertions.e((Uri) bundle.getParcelable(FIELD_URI));
            String string = bundle.getString(FIELD_MIME_TYPE);
            String string2 = bundle.getString(FIELD_LANGUAGE);
            int i10 = bundle.getInt(FIELD_SELECTION_FLAGS, 0);
            int i11 = bundle.getInt(FIELD_ROLE_FLAGS, 0);
            String string3 = bundle.getString(FIELD_LABEL);
            return new Builder(uri).n(string).m(string2).p(i10).o(i11).l(string3).k(bundle.getString(FIELD_ID)).i();
        }

        public Builder b() {
            return new Builder();
        }

        public int hashCode() {
            int iHashCode = this.uri.hashCode() * 31;
            String str = this.mimeType;
            int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
            String str2 = this.language;
            int iHashCode3 = (((((iHashCode2 + (str2 == null ? 0 : str2.hashCode())) * 31) + this.selectionFlags) * 31) + this.roleFlags) * 31;
            String str3 = this.label;
            int iHashCode4 = (iHashCode3 + (str3 == null ? 0 : str3.hashCode())) * 31;
            String str4 = this.id;
            return iHashCode4 + (str4 != null ? str4.hashCode() : 0);
        }

        @Override // androidx.media3.common.Bundleable
        @UnstableApi
        public Bundle toBundle() {
            Bundle bundle = new Bundle();
            bundle.putParcelable(FIELD_URI, this.uri);
            String str = this.mimeType;
            if (str != null) {
                bundle.putString(FIELD_MIME_TYPE, str);
            }
            String str2 = this.language;
            if (str2 != null) {
                bundle.putString(FIELD_LANGUAGE, str2);
            }
            int i10 = this.selectionFlags;
            if (i10 != 0) {
                bundle.putInt(FIELD_SELECTION_FLAGS, i10);
            }
            int i11 = this.roleFlags;
            if (i11 != 0) {
                bundle.putInt(FIELD_ROLE_FLAGS, i11);
            }
            String str3 = this.label;
            if (str3 != null) {
                bundle.putString(FIELD_LABEL, str3);
            }
            String str4 = this.id;
            if (str4 != null) {
                bundle.putString(FIELD_ID, str4);
            }
            return bundle;
        }

        private SubtitleConfiguration(Uri uri, String str, @Nullable String str2, int i10, int i11, @Nullable String str3, @Nullable String str4) {
            this.uri = uri;
            this.mimeType = str;
            this.language = str2;
            this.selectionFlags = i10;
            this.roleFlags = i11;
            this.label = str3;
            this.id = str4;
        }

        private SubtitleConfiguration(Builder builder) {
            this.uri = builder.uri;
            this.mimeType = builder.mimeType;
            this.language = builder.language;
            this.selectionFlags = builder.selectionFlags;
            this.roleFlags = builder.roleFlags;
            this.label = builder.label;
            this.id = builder.id;
        }
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MediaItem)) {
            return false;
        }
        MediaItem mediaItem = (MediaItem) obj;
        return Util.c(this.mediaId, mediaItem.mediaId) && this.clippingConfiguration.equals(mediaItem.clippingConfiguration) && Util.c(this.localConfiguration, mediaItem.localConfiguration) && Util.c(this.liveConfiguration, mediaItem.liveConfiguration) && Util.c(this.mediaMetadata, mediaItem.mediaMetadata) && Util.c(this.requestMetadata, mediaItem.requestMetadata);
    }

    @Override // androidx.media3.common.Bundleable
    @UnstableApi
    public Bundle toBundle() {
        return f(false);
    }

    private MediaItem(String str, ClippingProperties clippingProperties, @Nullable LocalConfiguration localConfiguration, LiveConfiguration liveConfiguration, MediaMetadata mediaMetadata, RequestMetadata requestMetadata) {
        this.mediaId = str;
        this.localConfiguration = localConfiguration;
        this.playbackProperties = localConfiguration;
        this.liveConfiguration = liveConfiguration;
        this.mediaMetadata = mediaMetadata;
        this.clippingConfiguration = clippingProperties;
        this.clippingProperties = clippingProperties;
        this.requestMetadata = requestMetadata;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static MediaItem c(Bundle bundle) {
        String str = (String) Assertions.e(bundle.getString(FIELD_MEDIA_ID, ""));
        Bundle bundle2 = bundle.getBundle(FIELD_LIVE_CONFIGURATION);
        LiveConfiguration liveConfiguration = bundle2 == null ? LiveConfiguration.UNSET : (LiveConfiguration) LiveConfiguration.CREATOR.a(bundle2);
        Bundle bundle3 = bundle.getBundle(FIELD_MEDIA_METADATA);
        MediaMetadata mediaMetadata = bundle3 == null ? MediaMetadata.EMPTY : (MediaMetadata) MediaMetadata.CREATOR.a(bundle3);
        Bundle bundle4 = bundle.getBundle(FIELD_CLIPPING_PROPERTIES);
        ClippingProperties clippingProperties = bundle4 == null ? ClippingProperties.UNSET : (ClippingProperties) ClippingConfiguration.CREATOR.a(bundle4);
        Bundle bundle5 = bundle.getBundle(FIELD_REQUEST_METADATA);
        RequestMetadata requestMetadata = bundle5 == null ? RequestMetadata.EMPTY : (RequestMetadata) RequestMetadata.CREATOR.a(bundle5);
        Bundle bundle6 = bundle.getBundle(FIELD_LOCAL_CONFIGURATION);
        return new MediaItem(str, clippingProperties, bundle6 == null ? null : (LocalConfiguration) LocalConfiguration.CREATOR.a(bundle6), liveConfiguration, mediaMetadata, requestMetadata);
    }

    public static MediaItem d(Uri uri) {
        return new Builder().j(uri).a();
    }

    public static MediaItem e(String str) {
        return new Builder().k(str).a();
    }

    @UnstableApi
    private Bundle f(boolean z6) {
        LocalConfiguration localConfiguration;
        Bundle bundle = new Bundle();
        if (!this.mediaId.equals("")) {
            bundle.putString(FIELD_MEDIA_ID, this.mediaId);
        }
        if (!this.liveConfiguration.equals(LiveConfiguration.UNSET)) {
            bundle.putBundle(FIELD_LIVE_CONFIGURATION, this.liveConfiguration.toBundle());
        }
        if (!this.mediaMetadata.equals(MediaMetadata.EMPTY)) {
            bundle.putBundle(FIELD_MEDIA_METADATA, this.mediaMetadata.toBundle());
        }
        if (!this.clippingConfiguration.equals(ClippingConfiguration.UNSET)) {
            bundle.putBundle(FIELD_CLIPPING_PROPERTIES, this.clippingConfiguration.toBundle());
        }
        if (!this.requestMetadata.equals(RequestMetadata.EMPTY)) {
            bundle.putBundle(FIELD_REQUEST_METADATA, this.requestMetadata.toBundle());
        }
        if (z6 && (localConfiguration = this.localConfiguration) != null) {
            bundle.putBundle(FIELD_LOCAL_CONFIGURATION, localConfiguration.toBundle());
        }
        return bundle;
    }

    public Builder b() {
        return new Builder();
    }

    public int hashCode() {
        int iHashCode = this.mediaId.hashCode() * 31;
        LocalConfiguration localConfiguration = this.localConfiguration;
        return ((((((((iHashCode + (localConfiguration != null ? localConfiguration.hashCode() : 0)) * 31) + this.liveConfiguration.hashCode()) * 31) + this.clippingConfiguration.hashCode()) * 31) + this.mediaMetadata.hashCode()) * 31) + this.requestMetadata.hashCode();
    }
}
