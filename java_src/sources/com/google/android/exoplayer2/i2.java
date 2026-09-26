package com.google.android.exoplayer2;

import android.net.Uri;
import android.os.Bundle;
import androidx.annotation.IntRange;
import androidx.annotation.Nullable;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public final class i2 implements com.google.android.exoplayer2.h {
    public static final String DEFAULT_MEDIA_ID = "";
    private static final int FIELD_CLIPPING_PROPERTIES = 3;
    private static final int FIELD_LIVE_CONFIGURATION = 1;
    private static final int FIELD_MEDIA_ID = 0;
    private static final int FIELD_MEDIA_METADATA = 2;
    private static final int FIELD_REQUEST_METADATA = 4;
    public final d clippingConfiguration;

    @Deprecated
    public final e clippingProperties;
    public final g liveConfiguration;

    @Nullable
    public final h localConfiguration;
    public final String mediaId;
    public final n2 mediaMetadata;

    @Nullable
    @Deprecated
    public final i playbackProperties;
    public final j requestMetadata;
    public static final i2 EMPTY = new c().a();
    public static final com.google.android.exoplayer2.h.a<i2> CREATOR = new com.google.android.exoplayer2.h.a() { // from class: com.google.android.exoplayer2.h2
        @Override // com.google.android.exoplayer2.h.a
        public final h a(Bundle bundle) {
            return i2.c(bundle);
        }
    };

    public static final class b {
        public final Uri adTagUri;

        @Nullable
        public final Object adsId;

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return this.adTagUri.equals(bVar.adTagUri) && com.google.android.exoplayer2.util.o0.c(this.adsId, bVar.adsId);
        }

        public int hashCode() {
            int iHashCode = this.adTagUri.hashCode() * 31;
            Object obj = this.adsId;
            return iHashCode + (obj != null ? obj.hashCode() : 0);
        }
    }

    public static final class c {

        @Nullable
        private b adsConfiguration;
        private d.a clippingConfiguration;

        @Nullable
        private String customCacheKey;
        private f.a drmConfiguration;
        private g.a liveConfiguration;

        @Nullable
        private String mediaId;

        @Nullable
        private n2 mediaMetadata;

        @Nullable
        private String mimeType;
        private j requestMetadata;
        private List<Object> streamKeys;
        private com.google.common.collect.a0<l> subtitleConfigurations;

        @Nullable
        private Object tag;

        @Nullable
        private Uri uri;

        public c b(@Nullable String str) {
            this.customCacheKey = str;
            return this;
        }

        public c f(@Nullable Object obj) {
            this.tag = obj;
            return this;
        }

        public c g(@Nullable Uri uri) {
            this.uri = uri;
            return this;
        }

        public c() {
            this.clippingConfiguration = new d.a();
            this.drmConfiguration = new f.a();
            this.streamKeys = Collections.emptyList();
            this.subtitleConfigurations = com.google.common.collect.a0.x();
            this.liveConfiguration = new g.a();
            this.requestMetadata = j.EMPTY;
        }

        public i2 a() {
            i iVar;
            com.google.android.exoplayer2.util.a.g(this.drmConfiguration.licenseUri == null || this.drmConfiguration.scheme != null);
            Uri uri = this.uri;
            if (uri != null) {
                iVar = new i(uri, this.mimeType, this.drmConfiguration.scheme != null ? this.drmConfiguration.i() : null, this.adsConfiguration, this.streamKeys, this.customCacheKey, this.subtitleConfigurations, this.tag);
            } else {
                iVar = null;
            }
            String str = this.mediaId;
            if (str == null) {
                str = "";
            }
            String str2 = str;
            e eVarG = this.clippingConfiguration.g();
            g gVarF = this.liveConfiguration.f();
            n2 n2Var = this.mediaMetadata;
            if (n2Var == null) {
                n2Var = n2.EMPTY;
            }
            return new i2(str2, eVarG, iVar, gVarF, n2Var, this.requestMetadata);
        }

        public c h(@Nullable String str) {
            return g(str == null ? null : Uri.parse(str));
        }

        public c c(g gVar) {
            this.liveConfiguration = gVar.b();
            return this;
        }

        public c d(String str) {
            this.mediaId = (String) com.google.android.exoplayer2.util.a.e(str);
            return this;
        }

        public c e(List<l> list) {
            this.subtitleConfigurations = com.google.common.collect.a0.t(list);
            return this;
        }

        private c(i2 i2Var) {
            f.a aVar;
            this();
            this.clippingConfiguration = i2Var.clippingConfiguration.b();
            this.mediaId = i2Var.mediaId;
            this.mediaMetadata = i2Var.mediaMetadata;
            this.liveConfiguration = i2Var.liveConfiguration.b();
            this.requestMetadata = i2Var.requestMetadata;
            h hVar = i2Var.localConfiguration;
            if (hVar != null) {
                this.customCacheKey = hVar.customCacheKey;
                this.mimeType = hVar.mimeType;
                this.uri = hVar.uri;
                this.streamKeys = hVar.streamKeys;
                this.subtitleConfigurations = hVar.subtitleConfigurations;
                this.tag = hVar.tag;
                f fVar = hVar.drmConfiguration;
                if (fVar != null) {
                    aVar = fVar.b();
                } else {
                    aVar = new f.a();
                }
                this.drmConfiguration = aVar;
                this.adsConfiguration = hVar.adsConfiguration;
            }
        }
    }

    public static class d implements com.google.android.exoplayer2.h {
        private static final int FIELD_END_POSITION_MS = 1;
        private static final int FIELD_RELATIVE_TO_DEFAULT_POSITION = 3;
        private static final int FIELD_RELATIVE_TO_LIVE_WINDOW = 2;
        private static final int FIELD_STARTS_AT_KEY_FRAME = 4;
        private static final int FIELD_START_POSITION_MS = 0;
        public final long endPositionMs;
        public final boolean relativeToDefaultPosition;
        public final boolean relativeToLiveWindow;

        @IntRange
        public final long startPositionMs;
        public final boolean startsAtKeyFrame;
        public static final d UNSET = new a().f();
        public static final com.google.android.exoplayer2.h.a<e> CREATOR = new com.google.android.exoplayer2.h.a() { // from class: com.google.android.exoplayer2.j2
            @Override // com.google.android.exoplayer2.h.a
            public final h a(Bundle bundle) {
                return i2.d.d(bundle);
            }
        };

        public static final class a {
            private long endPositionMs;
            private boolean relativeToDefaultPosition;
            private boolean relativeToLiveWindow;
            private long startPositionMs;
            private boolean startsAtKeyFrame;

            public a i(boolean z6) {
                this.relativeToDefaultPosition = z6;
                return this;
            }

            public a j(boolean z6) {
                this.relativeToLiveWindow = z6;
                return this;
            }

            public a l(boolean z6) {
                this.startsAtKeyFrame = z6;
                return this;
            }

            public a() {
                this.endPositionMs = Long.MIN_VALUE;
            }

            @Deprecated
            public e g() {
                return new e(this);
            }

            public a h(long j6) {
                com.google.android.exoplayer2.util.a.a(j6 == Long.MIN_VALUE || j6 >= 0);
                this.endPositionMs = j6;
                return this;
            }

            public a k(@IntRange long j6) {
                com.google.android.exoplayer2.util.a.a(j6 >= 0);
                this.startPositionMs = j6;
                return this;
            }

            private a(d dVar) {
                this.startPositionMs = dVar.startPositionMs;
                this.endPositionMs = dVar.endPositionMs;
                this.relativeToLiveWindow = dVar.relativeToLiveWindow;
                this.relativeToDefaultPosition = dVar.relativeToDefaultPosition;
                this.startsAtKeyFrame = dVar.startsAtKeyFrame;
            }

            public d f() {
                return g();
            }
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof d)) {
                return false;
            }
            d dVar = (d) obj;
            return this.startPositionMs == dVar.startPositionMs && this.endPositionMs == dVar.endPositionMs && this.relativeToLiveWindow == dVar.relativeToLiveWindow && this.relativeToDefaultPosition == dVar.relativeToDefaultPosition && this.startsAtKeyFrame == dVar.startsAtKeyFrame;
        }

        public int hashCode() {
            long j6 = this.startPositionMs;
            int i10 = ((int) (j6 ^ (j6 >>> 32))) * 31;
            long j10 = this.endPositionMs;
            return ((((((i10 + ((int) ((j10 >>> 32) ^ j10))) * 31) + (this.relativeToLiveWindow ? 1 : 0)) * 31) + (this.relativeToDefaultPosition ? 1 : 0)) * 31) + (this.startsAtKeyFrame ? 1 : 0);
        }

        private d(a aVar) {
            this.startPositionMs = aVar.startPositionMs;
            this.endPositionMs = aVar.endPositionMs;
            this.relativeToLiveWindow = aVar.relativeToLiveWindow;
            this.relativeToDefaultPosition = aVar.relativeToDefaultPosition;
            this.startsAtKeyFrame = aVar.startsAtKeyFrame;
        }

        private static String c(int i10) {
            return Integer.toString(i10, 36);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ e d(Bundle bundle) {
            return new a().k(bundle.getLong(c(0), 0L)).h(bundle.getLong(c(1), Long.MIN_VALUE)).j(bundle.getBoolean(c(2), false)).i(bundle.getBoolean(c(3), false)).l(bundle.getBoolean(c(4), false)).g();
        }

        public a b() {
            return new a();
        }

        @Override // com.google.android.exoplayer2.h
        public Bundle toBundle() {
            Bundle bundle = new Bundle();
            bundle.putLong(c(0), this.startPositionMs);
            bundle.putLong(c(1), this.endPositionMs);
            bundle.putBoolean(c(2), this.relativeToLiveWindow);
            bundle.putBoolean(c(3), this.relativeToDefaultPosition);
            bundle.putBoolean(c(4), this.startsAtKeyFrame);
            return bundle;
        }
    }

    @Deprecated
    public static final class e extends d {
        public static final e UNSET = new d.a().g();

        private e(d.a aVar) {
            super(aVar);
        }
    }

    public static final class f {
        public final boolean forceDefaultLicenseUri;
        public final com.google.common.collect.a0<Integer> forcedSessionTrackTypes;

        @Nullable
        private final byte[] keySetId;
        public final com.google.common.collect.b0<String, String> licenseRequestHeaders;

        @Nullable
        public final Uri licenseUri;
        public final boolean multiSession;
        public final boolean playClearContentWithoutKey;

        @Deprecated
        public final com.google.common.collect.b0<String, String> requestHeaders;
        public final UUID scheme;

        @Deprecated
        public final com.google.common.collect.a0<Integer> sessionForClearTypes;

        @Deprecated
        public final UUID uuid;

        public static final class a {
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

            public f i() {
                return new f(this);
            }

            public a(UUID uuid) {
                this.scheme = uuid;
                this.licenseRequestHeaders = com.google.common.collect.b0.m();
                this.forcedSessionTrackTypes = com.google.common.collect.a0.x();
            }

            @Deprecated
            private a() {
                this.licenseRequestHeaders = com.google.common.collect.b0.m();
                this.forcedSessionTrackTypes = com.google.common.collect.a0.x();
            }

            private a(f fVar) {
                this.scheme = fVar.scheme;
                this.licenseUri = fVar.licenseUri;
                this.licenseRequestHeaders = fVar.licenseRequestHeaders;
                this.multiSession = fVar.multiSession;
                this.playClearContentWithoutKey = fVar.playClearContentWithoutKey;
                this.forceDefaultLicenseUri = fVar.forceDefaultLicenseUri;
                this.forcedSessionTrackTypes = fVar.forcedSessionTrackTypes;
                this.keySetId = fVar.keySetId;
            }
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof f)) {
                return false;
            }
            f fVar = (f) obj;
            return this.scheme.equals(fVar.scheme) && com.google.android.exoplayer2.util.o0.c(this.licenseUri, fVar.licenseUri) && com.google.android.exoplayer2.util.o0.c(this.licenseRequestHeaders, fVar.licenseRequestHeaders) && this.multiSession == fVar.multiSession && this.forceDefaultLicenseUri == fVar.forceDefaultLicenseUri && this.playClearContentWithoutKey == fVar.playClearContentWithoutKey && this.forcedSessionTrackTypes.equals(fVar.forcedSessionTrackTypes) && Arrays.equals(this.keySetId, fVar.keySetId);
        }

        private f(a aVar) {
            com.google.android.exoplayer2.util.a.g((aVar.forceDefaultLicenseUri && aVar.licenseUri == null) ? false : true);
            UUID uuid = (UUID) com.google.android.exoplayer2.util.a.e(aVar.scheme);
            this.scheme = uuid;
            this.uuid = uuid;
            this.licenseUri = aVar.licenseUri;
            this.requestHeaders = aVar.licenseRequestHeaders;
            this.licenseRequestHeaders = aVar.licenseRequestHeaders;
            this.multiSession = aVar.multiSession;
            this.forceDefaultLicenseUri = aVar.forceDefaultLicenseUri;
            this.playClearContentWithoutKey = aVar.playClearContentWithoutKey;
            this.sessionForClearTypes = aVar.forcedSessionTrackTypes;
            this.forcedSessionTrackTypes = aVar.forcedSessionTrackTypes;
            this.keySetId = aVar.keySetId != null ? Arrays.copyOf(aVar.keySetId, aVar.keySetId.length) : null;
        }

        public a b() {
            return new a();
        }

        @Nullable
        public byte[] c() {
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
    }

    public static final class g implements com.google.android.exoplayer2.h {
        private static final int FIELD_MAX_OFFSET_MS = 2;
        private static final int FIELD_MAX_PLAYBACK_SPEED = 4;
        private static final int FIELD_MIN_OFFSET_MS = 1;
        private static final int FIELD_MIN_PLAYBACK_SPEED = 3;
        private static final int FIELD_TARGET_OFFSET_MS = 0;
        public final long maxOffsetMs;
        public final float maxPlaybackSpeed;
        public final long minOffsetMs;
        public final float minPlaybackSpeed;
        public final long targetOffsetMs;
        public static final g UNSET = new a().f();
        public static final com.google.android.exoplayer2.h.a<g> CREATOR = new com.google.android.exoplayer2.h.a() { // from class: com.google.android.exoplayer2.k2
            @Override // com.google.android.exoplayer2.h.a
            public final h a(Bundle bundle) {
                return i2.g.d(bundle);
            }
        };

        public static final class a {
            private long maxOffsetMs;
            private float maxPlaybackSpeed;
            private long minOffsetMs;
            private float minPlaybackSpeed;
            private long targetOffsetMs;

            public a g(long j6) {
                this.maxOffsetMs = j6;
                return this;
            }

            public a h(float f) {
                this.maxPlaybackSpeed = f;
                return this;
            }

            public a i(long j6) {
                this.minOffsetMs = j6;
                return this;
            }

            public a j(float f) {
                this.minPlaybackSpeed = f;
                return this;
            }

            public a k(long j6) {
                this.targetOffsetMs = j6;
                return this;
            }

            public a() {
                this.targetOffsetMs = -9223372036854775807L;
                this.minOffsetMs = -9223372036854775807L;
                this.maxOffsetMs = -9223372036854775807L;
                this.minPlaybackSpeed = -3.4028235E38f;
                this.maxPlaybackSpeed = -3.4028235E38f;
            }

            public g f() {
                return new g(this);
            }

            private a(g gVar) {
                this.targetOffsetMs = gVar.targetOffsetMs;
                this.minOffsetMs = gVar.minOffsetMs;
                this.maxOffsetMs = gVar.maxOffsetMs;
                this.minPlaybackSpeed = gVar.minPlaybackSpeed;
                this.maxPlaybackSpeed = gVar.maxPlaybackSpeed;
            }
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof g)) {
                return false;
            }
            g gVar = (g) obj;
            return this.targetOffsetMs == gVar.targetOffsetMs && this.minOffsetMs == gVar.minOffsetMs && this.maxOffsetMs == gVar.maxOffsetMs && this.minPlaybackSpeed == gVar.minPlaybackSpeed && this.maxPlaybackSpeed == gVar.maxPlaybackSpeed;
        }

        private g(a aVar) {
            this(aVar.targetOffsetMs, aVar.minOffsetMs, aVar.maxOffsetMs, aVar.minPlaybackSpeed, aVar.maxPlaybackSpeed);
        }

        private static String c(int i10) {
            return Integer.toString(i10, 36);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ g d(Bundle bundle) {
            return new g(bundle.getLong(c(0), -9223372036854775807L), bundle.getLong(c(1), -9223372036854775807L), bundle.getLong(c(2), -9223372036854775807L), bundle.getFloat(c(3), -3.4028235E38f), bundle.getFloat(c(4), -3.4028235E38f));
        }

        public a b() {
            return new a();
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

        @Override // com.google.android.exoplayer2.h
        public Bundle toBundle() {
            Bundle bundle = new Bundle();
            bundle.putLong(c(0), this.targetOffsetMs);
            bundle.putLong(c(1), this.minOffsetMs);
            bundle.putLong(c(2), this.maxOffsetMs);
            bundle.putFloat(c(3), this.minPlaybackSpeed);
            bundle.putFloat(c(4), this.maxPlaybackSpeed);
            return bundle;
        }

        @Deprecated
        public g(long j6, long j10, long j11, float f, float f6) {
            this.targetOffsetMs = j6;
            this.minOffsetMs = j10;
            this.maxOffsetMs = j11;
            this.minPlaybackSpeed = f;
            this.maxPlaybackSpeed = f6;
        }
    }

    public static class h {

        @Nullable
        public final b adsConfiguration;

        @Nullable
        public final String customCacheKey;

        @Nullable
        public final f drmConfiguration;

        @Nullable
        public final String mimeType;
        public final List<Object> streamKeys;
        public final com.google.common.collect.a0<l> subtitleConfigurations;

        @Deprecated
        public final List<k> subtitles;

        @Nullable
        public final Object tag;
        public final Uri uri;

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof h)) {
                return false;
            }
            h hVar = (h) obj;
            return this.uri.equals(hVar.uri) && com.google.android.exoplayer2.util.o0.c(this.mimeType, hVar.mimeType) && com.google.android.exoplayer2.util.o0.c(this.drmConfiguration, hVar.drmConfiguration) && com.google.android.exoplayer2.util.o0.c(this.adsConfiguration, hVar.adsConfiguration) && this.streamKeys.equals(hVar.streamKeys) && com.google.android.exoplayer2.util.o0.c(this.customCacheKey, hVar.customCacheKey) && this.subtitleConfigurations.equals(hVar.subtitleConfigurations) && com.google.android.exoplayer2.util.o0.c(this.tag, hVar.tag);
        }

        private h(Uri uri, @Nullable String str, @Nullable f fVar, @Nullable b bVar, List<Object> list, @Nullable String str2, com.google.common.collect.a0<l> a0Var, @Nullable Object obj) {
            this.uri = uri;
            this.mimeType = str;
            this.drmConfiguration = fVar;
            this.adsConfiguration = bVar;
            this.streamKeys = list;
            this.customCacheKey = str2;
            this.subtitleConfigurations = a0Var;
            com.google.common.collect.a0.a aVarR = com.google.common.collect.a0.r();
            for (int i10 = 0; i10 < a0Var.size(); i10++) {
                aVarR.d(a0Var.get(i10).a().i());
            }
            this.subtitles = aVarR.k();
            this.tag = obj;
        }

        public int hashCode() {
            int iHashCode = this.uri.hashCode() * 31;
            String str = this.mimeType;
            int iHashCode2 = (iHashCode + (str == null ? 0 : str.hashCode())) * 31;
            f fVar = this.drmConfiguration;
            int iHashCode3 = (iHashCode2 + (fVar == null ? 0 : fVar.hashCode())) * 31;
            b bVar = this.adsConfiguration;
            int iHashCode4 = (((iHashCode3 + (bVar == null ? 0 : bVar.hashCode())) * 31) + this.streamKeys.hashCode()) * 31;
            String str2 = this.customCacheKey;
            int iHashCode5 = (((iHashCode4 + (str2 == null ? 0 : str2.hashCode())) * 31) + this.subtitleConfigurations.hashCode()) * 31;
            Object obj = this.tag;
            return iHashCode5 + (obj != null ? obj.hashCode() : 0);
        }
    }

    @Deprecated
    public static final class i extends h {
        private i(Uri uri, @Nullable String str, @Nullable f fVar, @Nullable b bVar, List<Object> list, @Nullable String str2, com.google.common.collect.a0<l> a0Var, @Nullable Object obj) {
            super(uri, str, fVar, bVar, list, str2, a0Var, obj);
        }
    }

    public static final class j implements com.google.android.exoplayer2.h {
        private static final int FIELD_EXTRAS = 2;
        private static final int FIELD_MEDIA_URI = 0;
        private static final int FIELD_SEARCH_QUERY = 1;

        @Nullable
        public final Bundle extras;

        @Nullable
        public final Uri mediaUri;

        @Nullable
        public final String searchQuery;
        public static final j EMPTY = new a().d();
        public static final com.google.android.exoplayer2.h.a<j> CREATOR = new com.google.android.exoplayer2.h.a() { // from class: com.google.android.exoplayer2.l2
            @Override // com.google.android.exoplayer2.h.a
            public final h a(Bundle bundle) {
                return i2.j.c(bundle);
            }
        };

        public static final class a {

            @Nullable
            private Bundle extras;

            @Nullable
            private Uri mediaUri;

            @Nullable
            private String searchQuery;

            public a e(@Nullable Bundle bundle) {
                this.extras = bundle;
                return this;
            }

            public a f(@Nullable Uri uri) {
                this.mediaUri = uri;
                return this;
            }

            public a g(@Nullable String str) {
                this.searchQuery = str;
                return this;
            }

            public j d() {
                return new j(this);
            }
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof j)) {
                return false;
            }
            j jVar = (j) obj;
            return com.google.android.exoplayer2.util.o0.c(this.mediaUri, jVar.mediaUri) && com.google.android.exoplayer2.util.o0.c(this.searchQuery, jVar.searchQuery);
        }

        private j(a aVar) {
            this.mediaUri = aVar.mediaUri;
            this.searchQuery = aVar.searchQuery;
            this.extras = aVar.extras;
        }

        private static String b(int i10) {
            return Integer.toString(i10, 36);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ j c(Bundle bundle) {
            return new a().f((Uri) bundle.getParcelable(b(0))).g(bundle.getString(b(1))).e(bundle.getBundle(b(2))).d();
        }

        public int hashCode() {
            Uri uri = this.mediaUri;
            int iHashCode = (uri == null ? 0 : uri.hashCode()) * 31;
            String str = this.searchQuery;
            return iHashCode + (str != null ? str.hashCode() : 0);
        }

        @Override // com.google.android.exoplayer2.h
        public Bundle toBundle() {
            Bundle bundle = new Bundle();
            if (this.mediaUri != null) {
                bundle.putParcelable(b(0), this.mediaUri);
            }
            if (this.searchQuery != null) {
                bundle.putString(b(1), this.searchQuery);
            }
            if (this.extras != null) {
                bundle.putBundle(b(2), this.extras);
            }
            return bundle;
        }
    }

    @Deprecated
    public static final class k extends l {
        @Deprecated
        public k(Uri uri, String str, @Nullable String str2) {
            this(uri, str, str2, 0);
        }

        @Deprecated
        public k(Uri uri, String str, @Nullable String str2, int i10) {
            this(uri, str, str2, i10, 0, null);
        }

        @Deprecated
        public k(Uri uri, String str, @Nullable String str2, int i10, int i11, @Nullable String str3) {
            super(uri, str, str2, i10, i11, str3, null);
        }

        private k(l.a aVar) {
            super(aVar);
        }
    }

    public static class l {

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

        public static final class a {

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

            public a(Uri uri) {
                this.uri = uri;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public k i() {
                return new k(this);
            }

            private a(l lVar) {
                this.uri = lVar.uri;
                this.mimeType = lVar.mimeType;
                this.language = lVar.language;
                this.selectionFlags = lVar.selectionFlags;
                this.roleFlags = lVar.roleFlags;
                this.label = lVar.label;
                this.id = lVar.id;
            }
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof l)) {
                return false;
            }
            l lVar = (l) obj;
            return this.uri.equals(lVar.uri) && com.google.android.exoplayer2.util.o0.c(this.mimeType, lVar.mimeType) && com.google.android.exoplayer2.util.o0.c(this.language, lVar.language) && this.selectionFlags == lVar.selectionFlags && this.roleFlags == lVar.roleFlags && com.google.android.exoplayer2.util.o0.c(this.label, lVar.label) && com.google.android.exoplayer2.util.o0.c(this.id, lVar.id);
        }

        public a a() {
            return new a();
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

        private l(Uri uri, String str, @Nullable String str2, int i10, int i11, @Nullable String str3, @Nullable String str4) {
            this.uri = uri;
            this.mimeType = str;
            this.language = str2;
            this.selectionFlags = i10;
            this.roleFlags = i11;
            this.label = str3;
            this.id = str4;
        }

        private l(a aVar) {
            this.uri = aVar.uri;
            this.mimeType = aVar.mimeType;
            this.language = aVar.language;
            this.selectionFlags = aVar.selectionFlags;
            this.roleFlags = aVar.roleFlags;
            this.label = aVar.label;
            this.id = aVar.id;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static i2 c(Bundle bundle) {
        String str = (String) com.google.android.exoplayer2.util.a.e(bundle.getString(e(0), ""));
        Bundle bundle2 = bundle.getBundle(e(1));
        g gVar = bundle2 == null ? g.UNSET : (g) g.CREATOR.a(bundle2);
        Bundle bundle3 = bundle.getBundle(e(2));
        n2 n2Var = bundle3 == null ? n2.EMPTY : (n2) n2.CREATOR.a(bundle3);
        Bundle bundle4 = bundle.getBundle(e(3));
        e eVar = bundle4 == null ? e.UNSET : (e) d.CREATOR.a(bundle4);
        Bundle bundle5 = bundle.getBundle(e(4));
        return new i2(str, eVar, null, gVar, n2Var, bundle5 == null ? j.EMPTY : (j) j.CREATOR.a(bundle5));
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof i2)) {
            return false;
        }
        i2 i2Var = (i2) obj;
        return com.google.android.exoplayer2.util.o0.c(this.mediaId, i2Var.mediaId) && this.clippingConfiguration.equals(i2Var.clippingConfiguration) && com.google.android.exoplayer2.util.o0.c(this.localConfiguration, i2Var.localConfiguration) && com.google.android.exoplayer2.util.o0.c(this.liveConfiguration, i2Var.liveConfiguration) && com.google.android.exoplayer2.util.o0.c(this.mediaMetadata, i2Var.mediaMetadata) && com.google.android.exoplayer2.util.o0.c(this.requestMetadata, i2Var.requestMetadata);
    }

    private i2(String str, e eVar, @Nullable i iVar, g gVar, n2 n2Var, j jVar) {
        this.mediaId = str;
        this.localConfiguration = iVar;
        this.playbackProperties = iVar;
        this.liveConfiguration = gVar;
        this.mediaMetadata = n2Var;
        this.clippingConfiguration = eVar;
        this.clippingProperties = eVar;
        this.requestMetadata = jVar;
    }

    public static i2 d(String str) {
        return new c().h(str).a();
    }

    private static String e(int i10) {
        return Integer.toString(i10, 36);
    }

    public c b() {
        return new c();
    }

    public int hashCode() {
        int iHashCode = this.mediaId.hashCode() * 31;
        h hVar = this.localConfiguration;
        return ((((((((iHashCode + (hVar != null ? hVar.hashCode() : 0)) * 31) + this.liveConfiguration.hashCode()) * 31) + this.clippingConfiguration.hashCode()) * 31) + this.mediaMetadata.hashCode()) * 31) + this.requestMetadata.hashCode();
    }

    @Override // com.google.android.exoplayer2.h
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putString(e(0), this.mediaId);
        bundle.putBundle(e(1), this.liveConfiguration.toBundle());
        bundle.putBundle(e(2), this.mediaMetadata.toBundle());
        bundle.putBundle(e(3), this.clippingConfiguration.toBundle());
        bundle.putBundle(e(4), this.requestMetadata.toBundle());
        return bundle;
    }
}
