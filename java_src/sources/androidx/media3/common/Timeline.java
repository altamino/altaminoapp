package androidx.media3.common;

import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.util.Pair;
import androidx.annotation.Nullable;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.BundleUtil;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Timeline implements Bundleable {
    public static final Timeline EMPTY = new Timeline() { // from class: androidx.media3.common.Timeline.1
        @Override // androidx.media3.common.Timeline
        public int f(Object obj) {
            return -1;
        }

        @Override // androidx.media3.common.Timeline
        public int m() {
            return 0;
        }

        @Override // androidx.media3.common.Timeline
        public int t() {
            return 0;
        }

        @Override // androidx.media3.common.Timeline
        public Period k(int i10, Period period, boolean z6) {
            throw new IndexOutOfBoundsException();
        }

        @Override // androidx.media3.common.Timeline
        public Object q(int i10) {
            throw new IndexOutOfBoundsException();
        }

        @Override // androidx.media3.common.Timeline
        public Window s(int i10, Window window, long j6) {
            throw new IndexOutOfBoundsException();
        }
    };
    private static final String FIELD_WINDOWS = Util.z0(0);
    private static final String FIELD_PERIODS = Util.z0(1);
    private static final String FIELD_SHUFFLED_WINDOW_INDICES = Util.z0(2);

    @UnstableApi
    public static final Bundleable.Creator<Timeline> CREATOR = new Bundleable.Creator() { // from class: androidx.media3.common.e2
        @Override // androidx.media3.common.Bundleable.Creator
        public final Bundleable a(Bundle bundle) {
            return Timeline.b(bundle);
        }
    };

    public static final class Period implements Bundleable {
        private AdPlaybackState adPlaybackState = AdPlaybackState.NONE;

        @UnstableApi
        public long durationUs;

        @Nullable
        public Object id;
        public boolean isPlaceholder;

        @UnstableApi
        public long positionInWindowUs;

        @Nullable
        public Object uid;
        public int windowIndex;
        private static final String FIELD_WINDOW_INDEX = Util.z0(0);
        private static final String FIELD_DURATION_US = Util.z0(1);
        private static final String FIELD_POSITION_IN_WINDOW_US = Util.z0(2);
        private static final String FIELD_PLACEHOLDER = Util.z0(3);
        private static final String FIELD_AD_PLAYBACK_STATE = Util.z0(4);

        @UnstableApi
        public static final Bundleable.Creator<Period> CREATOR = new Bundleable.Creator() { // from class: androidx.media3.common.f2
            @Override // androidx.media3.common.Bundleable.Creator
            public final Bundleable a(Bundle bundle) {
                return Timeline.Period.c(bundle);
            }
        };

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || !Period.class.equals(obj.getClass())) {
                return false;
            }
            Period period = (Period) obj;
            return Util.c(this.id, period.id) && Util.c(this.uid, period.uid) && this.windowIndex == period.windowIndex && this.durationUs == period.durationUs && this.positionInWindowUs == period.positionInWindowUs && this.isPlaceholder == period.isPlaceholder && Util.c(this.adPlaybackState, period.adPlaybackState);
        }

        public long n() {
            return this.durationUs;
        }

        public long r() {
            return this.positionInWindowUs;
        }

        @UnstableApi
        public Period x(@Nullable Object obj, @Nullable Object obj2, int i10, long j6, long j10, AdPlaybackState adPlaybackState, boolean z6) {
            this.id = obj;
            this.uid = obj2;
            this.windowIndex = i10;
            this.durationUs = j6;
            this.positionInWindowUs = j10;
            this.adPlaybackState = adPlaybackState;
            this.isPlaceholder = z6;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static Period c(Bundle bundle) {
            int i10 = bundle.getInt(FIELD_WINDOW_INDEX, 0);
            long j6 = bundle.getLong(FIELD_DURATION_US, -9223372036854775807L);
            long j10 = bundle.getLong(FIELD_POSITION_IN_WINDOW_US, 0L);
            boolean z6 = bundle.getBoolean(FIELD_PLACEHOLDER, false);
            Bundle bundle2 = bundle.getBundle(FIELD_AD_PLAYBACK_STATE);
            AdPlaybackState adPlaybackState = bundle2 != null ? (AdPlaybackState) AdPlaybackState.CREATOR.a(bundle2) : AdPlaybackState.NONE;
            Period period = new Period();
            period.x(null, null, i10, j6, j10, adPlaybackState, z6);
            return period;
        }

        public int d(int i10) {
            return this.adPlaybackState.d(i10).count;
        }

        public long e(int i10, int i11) {
            AdPlaybackState.AdGroup adGroupD = this.adPlaybackState.d(i10);
            if (adGroupD.count != -1) {
                return adGroupD.durationsUs[i11];
            }
            return -9223372036854775807L;
        }

        public int f() {
            return this.adPlaybackState.adGroupCount;
        }

        public int g(long j6) {
            return this.adPlaybackState.e(j6, this.durationUs);
        }

        public int h(long j6) {
            return this.adPlaybackState.f(j6, this.durationUs);
        }

        public int hashCode() {
            Object obj = this.id;
            int iHashCode = (217 + (obj == null ? 0 : obj.hashCode())) * 31;
            Object obj2 = this.uid;
            int iHashCode2 = (((iHashCode + (obj2 != null ? obj2.hashCode() : 0)) * 31) + this.windowIndex) * 31;
            long j6 = this.durationUs;
            int i10 = (iHashCode2 + ((int) (j6 ^ (j6 >>> 32)))) * 31;
            long j10 = this.positionInWindowUs;
            return ((((i10 + ((int) (j10 ^ (j10 >>> 32)))) * 31) + (this.isPlaceholder ? 1 : 0)) * 31) + this.adPlaybackState.hashCode();
        }

        public long i(int i10) {
            return this.adPlaybackState.d(i10).timeUs;
        }

        public long j() {
            return this.adPlaybackState.adResumePositionUs;
        }

        @UnstableApi
        public int k(int i10, int i11) {
            AdPlaybackState.AdGroup adGroupD = this.adPlaybackState.d(i10);
            if (adGroupD.count != -1) {
                return adGroupD.states[i11];
            }
            return 0;
        }

        @UnstableApi
        public long l(int i10) {
            return this.adPlaybackState.d(i10).contentResumeOffsetUs;
        }

        public long m() {
            return Util.q1(this.durationUs);
        }

        public int o(int i10) {
            return this.adPlaybackState.d(i10).f();
        }

        public int p(int i10, int i11) {
            return this.adPlaybackState.d(i10).g(i11);
        }

        public long q() {
            return Util.q1(this.positionInWindowUs);
        }

        public int s() {
            return this.adPlaybackState.removedAdGroupCount;
        }

        public boolean t(int i10) {
            return !this.adPlaybackState.d(i10).h();
        }

        @Override // androidx.media3.common.Bundleable
        @UnstableApi
        public Bundle toBundle() {
            Bundle bundle = new Bundle();
            int i10 = this.windowIndex;
            if (i10 != 0) {
                bundle.putInt(FIELD_WINDOW_INDEX, i10);
            }
            long j6 = this.durationUs;
            if (j6 != -9223372036854775807L) {
                bundle.putLong(FIELD_DURATION_US, j6);
            }
            long j10 = this.positionInWindowUs;
            if (j10 != 0) {
                bundle.putLong(FIELD_POSITION_IN_WINDOW_US, j10);
            }
            boolean z6 = this.isPlaceholder;
            if (z6) {
                bundle.putBoolean(FIELD_PLACEHOLDER, z6);
            }
            if (!this.adPlaybackState.equals(AdPlaybackState.NONE)) {
                bundle.putBundle(FIELD_AD_PLAYBACK_STATE, this.adPlaybackState.toBundle());
            }
            return bundle;
        }

        @UnstableApi
        public boolean v(int i10) {
            return this.adPlaybackState.d(i10).isServerSideInserted;
        }

        @UnstableApi
        public Period w(@Nullable Object obj, @Nullable Object obj2, int i10, long j6, long j10) {
            return x(obj, obj2, i10, j6, j10, AdPlaybackState.NONE, false);
        }

        @UnstableApi
        public boolean u(int i10) {
            if (i10 == f() - 1 && this.adPlaybackState.g(i10)) {
                return true;
            }
            return false;
        }
    }

    @UnstableApi
    public static final class RemotableTimeline extends Timeline {
        private final com.google.common.collect.a0<Period> periods;
        private final int[] shuffledWindowIndices;
        private final int[] windowIndicesInShuffled;
        private final com.google.common.collect.a0<Window> windows;

        @Override // androidx.media3.common.Timeline
        public int i(int i10, int i11, boolean z6) {
            if (i11 == 1) {
                return i10;
            }
            if (i10 != g(z6)) {
                return z6 ? this.shuffledWindowIndices[this.windowIndicesInShuffled[i10] + 1] : i10 + 1;
            }
            if (i11 == 2) {
                return e(z6);
            }
            return -1;
        }

        @Override // androidx.media3.common.Timeline
        public int p(int i10, int i11, boolean z6) {
            if (i11 == 1) {
                return i10;
            }
            if (i10 != e(z6)) {
                return z6 ? this.shuffledWindowIndices[this.windowIndicesInShuffled[i10] - 1] : i10 - 1;
            }
            if (i11 == 2) {
                return g(z6);
            }
            return -1;
        }

        @Override // androidx.media3.common.Timeline
        public int f(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // androidx.media3.common.Timeline
        public Period k(int i10, Period period, boolean z6) {
            Period period2 = this.periods.get(i10);
            period.x(period2.id, period2.uid, period2.windowIndex, period2.durationUs, period2.positionInWindowUs, period2.adPlaybackState, period2.isPlaceholder);
            return period;
        }

        @Override // androidx.media3.common.Timeline
        public int m() {
            return this.periods.size();
        }

        @Override // androidx.media3.common.Timeline
        public Object q(int i10) {
            throw new UnsupportedOperationException();
        }

        @Override // androidx.media3.common.Timeline
        public Window s(int i10, Window window, long j6) {
            Window window2 = this.windows.get(i10);
            window.i(window2.uid, window2.mediaItem, window2.manifest, window2.presentationStartTimeMs, window2.windowStartTimeMs, window2.elapsedRealtimeEpochOffsetMs, window2.isSeekable, window2.isDynamic, window2.liveConfiguration, window2.defaultPositionUs, window2.durationUs, window2.firstPeriodIndex, window2.lastPeriodIndex, window2.positionInFirstPeriodUs);
            window.isPlaceholder = window2.isPlaceholder;
            return window;
        }

        @Override // androidx.media3.common.Timeline
        public int t() {
            return this.windows.size();
        }

        public RemotableTimeline(com.google.common.collect.a0<Window> a0Var, com.google.common.collect.a0<Period> a0Var2, int[] iArr) {
            boolean z6;
            if (a0Var.size() == iArr.length) {
                z6 = true;
            } else {
                z6 = false;
            }
            Assertions.a(z6);
            this.windows = a0Var;
            this.periods = a0Var2;
            this.shuffledWindowIndices = iArr;
            this.windowIndicesInShuffled = new int[iArr.length];
            for (int i10 = 0; i10 < iArr.length; i10++) {
                this.windowIndicesInShuffled[iArr[i10]] = i10;
            }
        }

        @Override // androidx.media3.common.Timeline
        public int e(boolean z6) {
            if (u()) {
                return -1;
            }
            if (!z6) {
                return 0;
            }
            return this.shuffledWindowIndices[0];
        }

        @Override // androidx.media3.common.Timeline
        public int g(boolean z6) {
            if (u()) {
                return -1;
            }
            if (z6) {
                return this.shuffledWindowIndices[t() - 1];
            }
            return t() - 1;
        }
    }

    public static final class Window implements Bundleable {

        @UnstableApi
        public long defaultPositionUs;

        @UnstableApi
        public long durationUs;
        public long elapsedRealtimeEpochOffsetMs;
        public int firstPeriodIndex;
        public boolean isDynamic;

        @UnstableApi
        @Deprecated
        public boolean isLive;
        public boolean isPlaceholder;
        public boolean isSeekable;
        public int lastPeriodIndex;

        @Nullable
        public MediaItem.LiveConfiguration liveConfiguration;

        @Nullable
        public Object manifest;

        @UnstableApi
        public long positionInFirstPeriodUs;
        public long presentationStartTimeMs;

        @Nullable
        @UnstableApi
        @Deprecated
        public Object tag;
        public long windowStartTimeMs;
        public static final Object SINGLE_WINDOW_UID = new Object();
        private static final Object FAKE_WINDOW_UID = new Object();
        private static final MediaItem PLACEHOLDER_MEDIA_ITEM = new MediaItem.Builder().e("androidx.media3.common.Timeline").j(Uri.EMPTY).a();
        private static final String FIELD_MEDIA_ITEM = Util.z0(1);
        private static final String FIELD_PRESENTATION_START_TIME_MS = Util.z0(2);
        private static final String FIELD_WINDOW_START_TIME_MS = Util.z0(3);
        private static final String FIELD_ELAPSED_REALTIME_EPOCH_OFFSET_MS = Util.z0(4);
        private static final String FIELD_IS_SEEKABLE = Util.z0(5);
        private static final String FIELD_IS_DYNAMIC = Util.z0(6);
        private static final String FIELD_LIVE_CONFIGURATION = Util.z0(7);
        private static final String FIELD_IS_PLACEHOLDER = Util.z0(8);
        private static final String FIELD_DEFAULT_POSITION_US = Util.z0(9);
        private static final String FIELD_DURATION_US = Util.z0(10);
        private static final String FIELD_FIRST_PERIOD_INDEX = Util.z0(11);
        private static final String FIELD_LAST_PERIOD_INDEX = Util.z0(12);
        private static final String FIELD_POSITION_IN_FIRST_PERIOD_US = Util.z0(13);

        @UnstableApi
        public static final Bundleable.Creator<Window> CREATOR = new Bundleable.Creator() { // from class: androidx.media3.common.g2
            @Override // androidx.media3.common.Bundleable.Creator
            public final Bundleable a(Bundle bundle) {
                return Timeline.Window.b(bundle);
            }
        };
        public Object uid = SINGLE_WINDOW_UID;
        public MediaItem mediaItem = PLACEHOLDER_MEDIA_ITEM;

        public long e() {
            return this.defaultPositionUs;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || !Window.class.equals(obj.getClass())) {
                return false;
            }
            Window window = (Window) obj;
            return Util.c(this.uid, window.uid) && Util.c(this.mediaItem, window.mediaItem) && Util.c(this.manifest, window.manifest) && Util.c(this.liveConfiguration, window.liveConfiguration) && this.presentationStartTimeMs == window.presentationStartTimeMs && this.windowStartTimeMs == window.windowStartTimeMs && this.elapsedRealtimeEpochOffsetMs == window.elapsedRealtimeEpochOffsetMs && this.isSeekable == window.isSeekable && this.isDynamic == window.isDynamic && this.isPlaceholder == window.isPlaceholder && this.defaultPositionUs == window.defaultPositionUs && this.durationUs == window.durationUs && this.firstPeriodIndex == window.firstPeriodIndex && this.lastPeriodIndex == window.lastPeriodIndex && this.positionInFirstPeriodUs == window.positionInFirstPeriodUs;
        }

        public long g() {
            return this.positionInFirstPeriodUs;
        }

        @UnstableApi
        public Window i(Object obj, @Nullable MediaItem mediaItem, @Nullable Object obj2, long j6, long j10, long j11, boolean z6, boolean z10, @Nullable MediaItem.LiveConfiguration liveConfiguration, long j12, long j13, int i10, int i11, long j14) {
            MediaItem.LocalConfiguration localConfiguration;
            this.uid = obj;
            this.mediaItem = mediaItem != null ? mediaItem : PLACEHOLDER_MEDIA_ITEM;
            this.tag = (mediaItem == null || (localConfiguration = mediaItem.localConfiguration) == null) ? null : localConfiguration.tag;
            this.manifest = obj2;
            this.presentationStartTimeMs = j6;
            this.windowStartTimeMs = j10;
            this.elapsedRealtimeEpochOffsetMs = j11;
            this.isSeekable = z6;
            this.isDynamic = z10;
            this.isLive = liveConfiguration != null;
            this.liveConfiguration = liveConfiguration;
            this.defaultPositionUs = j12;
            this.durationUs = j13;
            this.firstPeriodIndex = i10;
            this.lastPeriodIndex = i11;
            this.positionInFirstPeriodUs = j14;
            this.isPlaceholder = false;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static Window b(Bundle bundle) {
            Bundle bundle2 = bundle.getBundle(FIELD_MEDIA_ITEM);
            MediaItem mediaItem = bundle2 != null ? (MediaItem) MediaItem.CREATOR.a(bundle2) : MediaItem.EMPTY;
            long j6 = bundle.getLong(FIELD_PRESENTATION_START_TIME_MS, -9223372036854775807L);
            long j10 = bundle.getLong(FIELD_WINDOW_START_TIME_MS, -9223372036854775807L);
            long j11 = bundle.getLong(FIELD_ELAPSED_REALTIME_EPOCH_OFFSET_MS, -9223372036854775807L);
            boolean z6 = bundle.getBoolean(FIELD_IS_SEEKABLE, false);
            boolean z10 = bundle.getBoolean(FIELD_IS_DYNAMIC, false);
            Bundle bundle3 = bundle.getBundle(FIELD_LIVE_CONFIGURATION);
            MediaItem.LiveConfiguration liveConfiguration = bundle3 != null ? (MediaItem.LiveConfiguration) MediaItem.LiveConfiguration.CREATOR.a(bundle3) : null;
            boolean z11 = bundle.getBoolean(FIELD_IS_PLACEHOLDER, false);
            long j12 = bundle.getLong(FIELD_DEFAULT_POSITION_US, 0L);
            long j13 = bundle.getLong(FIELD_DURATION_US, -9223372036854775807L);
            int i10 = bundle.getInt(FIELD_FIRST_PERIOD_INDEX, 0);
            int i11 = bundle.getInt(FIELD_LAST_PERIOD_INDEX, 0);
            long j14 = bundle.getLong(FIELD_POSITION_IN_FIRST_PERIOD_US, 0L);
            Window window = new Window();
            window.i(FAKE_WINDOW_UID, mediaItem, null, j6, j10, j11, z6, z10, liveConfiguration, j12, j13, i10, i11, j14);
            window.isPlaceholder = z11;
            return window;
        }

        public long c() {
            return Util.e0(this.elapsedRealtimeEpochOffsetMs);
        }

        public long d() {
            return Util.q1(this.defaultPositionUs);
        }

        public long f() {
            return Util.q1(this.durationUs);
        }

        public boolean h() {
            Assertions.g(this.isLive == (this.liveConfiguration != null));
            return this.liveConfiguration != null;
        }

        public int hashCode() {
            int iHashCode = (((217 + this.uid.hashCode()) * 31) + this.mediaItem.hashCode()) * 31;
            Object obj = this.manifest;
            int iHashCode2 = (iHashCode + (obj == null ? 0 : obj.hashCode())) * 31;
            MediaItem.LiveConfiguration liveConfiguration = this.liveConfiguration;
            int iHashCode3 = (iHashCode2 + (liveConfiguration != null ? liveConfiguration.hashCode() : 0)) * 31;
            long j6 = this.presentationStartTimeMs;
            int i10 = (iHashCode3 + ((int) (j6 ^ (j6 >>> 32)))) * 31;
            long j10 = this.windowStartTimeMs;
            int i11 = (i10 + ((int) (j10 ^ (j10 >>> 32)))) * 31;
            long j11 = this.elapsedRealtimeEpochOffsetMs;
            int i12 = (((((((i11 + ((int) (j11 ^ (j11 >>> 32)))) * 31) + (this.isSeekable ? 1 : 0)) * 31) + (this.isDynamic ? 1 : 0)) * 31) + (this.isPlaceholder ? 1 : 0)) * 31;
            long j12 = this.defaultPositionUs;
            int i13 = (i12 + ((int) (j12 ^ (j12 >>> 32)))) * 31;
            long j13 = this.durationUs;
            int i14 = (((((i13 + ((int) (j13 ^ (j13 >>> 32)))) * 31) + this.firstPeriodIndex) * 31) + this.lastPeriodIndex) * 31;
            long j14 = this.positionInFirstPeriodUs;
            return i14 + ((int) (j14 ^ (j14 >>> 32)));
        }

        @Override // androidx.media3.common.Bundleable
        @UnstableApi
        public Bundle toBundle() {
            Bundle bundle = new Bundle();
            if (!MediaItem.EMPTY.equals(this.mediaItem)) {
                bundle.putBundle(FIELD_MEDIA_ITEM, this.mediaItem.toBundle());
            }
            long j6 = this.presentationStartTimeMs;
            if (j6 != -9223372036854775807L) {
                bundle.putLong(FIELD_PRESENTATION_START_TIME_MS, j6);
            }
            long j10 = this.windowStartTimeMs;
            if (j10 != -9223372036854775807L) {
                bundle.putLong(FIELD_WINDOW_START_TIME_MS, j10);
            }
            long j11 = this.elapsedRealtimeEpochOffsetMs;
            if (j11 != -9223372036854775807L) {
                bundle.putLong(FIELD_ELAPSED_REALTIME_EPOCH_OFFSET_MS, j11);
            }
            boolean z6 = this.isSeekable;
            if (z6) {
                bundle.putBoolean(FIELD_IS_SEEKABLE, z6);
            }
            boolean z10 = this.isDynamic;
            if (z10) {
                bundle.putBoolean(FIELD_IS_DYNAMIC, z10);
            }
            MediaItem.LiveConfiguration liveConfiguration = this.liveConfiguration;
            if (liveConfiguration != null) {
                bundle.putBundle(FIELD_LIVE_CONFIGURATION, liveConfiguration.toBundle());
            }
            boolean z11 = this.isPlaceholder;
            if (z11) {
                bundle.putBoolean(FIELD_IS_PLACEHOLDER, z11);
            }
            long j12 = this.defaultPositionUs;
            if (j12 != 0) {
                bundle.putLong(FIELD_DEFAULT_POSITION_US, j12);
            }
            long j13 = this.durationUs;
            if (j13 != -9223372036854775807L) {
                bundle.putLong(FIELD_DURATION_US, j13);
            }
            int i10 = this.firstPeriodIndex;
            if (i10 != 0) {
                bundle.putInt(FIELD_FIRST_PERIOD_INDEX, i10);
            }
            int i11 = this.lastPeriodIndex;
            if (i11 != 0) {
                bundle.putInt(FIELD_LAST_PERIOD_INDEX, i11);
            }
            long j14 = this.positionInFirstPeriodUs;
            if (j14 != 0) {
                bundle.putLong(FIELD_POSITION_IN_FIRST_PERIOD_US, j14);
            }
            return bundle;
        }
    }

    public boolean equals(@Nullable Object obj) {
        int iG;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Timeline)) {
            return false;
        }
        Timeline timeline = (Timeline) obj;
        if (timeline.t() != t() || timeline.m() != m()) {
            return false;
        }
        Window window = new Window();
        Period period = new Period();
        Window window2 = new Window();
        Period period2 = new Period();
        for (int i10 = 0; i10 < t(); i10++) {
            if (!r(i10, window).equals(timeline.r(i10, window2))) {
                return false;
            }
        }
        for (int i11 = 0; i11 < m(); i11++) {
            if (!k(i11, period, true).equals(timeline.k(i11, period2, true))) {
                return false;
            }
        }
        int iE = e(true);
        if (iE != timeline.e(true) || (iG = g(true)) != timeline.g(true)) {
            return false;
        }
        while (iE != iG) {
            int i12 = i(iE, 0, true);
            if (i12 != timeline.i(iE, 0, true)) {
                return false;
            }
            iE = i12;
        }
        return true;
    }

    public abstract int f(Object obj);

    public int i(int i10, int i11, boolean z6) {
        if (i11 == 0) {
            if (i10 == g(z6)) {
                return -1;
            }
            return i10 + 1;
        }
        if (i11 == 1) {
            return i10;
        }
        if (i11 == 2) {
            return i10 == g(z6) ? e(z6) : i10 + 1;
        }
        throw new IllegalStateException();
    }

    public final Period j(int i10, Period period) {
        return k(i10, period, false);
    }

    public abstract Period k(int i10, Period period, boolean z6);

    public abstract int m();

    @Nullable
    public final Pair<Object, Long> o(Window window, Period period, int i10, long j6, long j10) {
        Assertions.c(i10, 0, t());
        s(i10, window, j10);
        if (j6 == -9223372036854775807L) {
            j6 = window.e();
            if (j6 == -9223372036854775807L) {
                return null;
            }
        }
        int i11 = window.firstPeriodIndex;
        j(i11, period);
        while (i11 < window.lastPeriodIndex && period.positionInWindowUs != j6) {
            int i12 = i11 + 1;
            if (j(i12, period).positionInWindowUs > j6) {
                break;
            }
            i11 = i12;
        }
        k(i11, period, true);
        long jMin = j6 - period.positionInWindowUs;
        long j11 = period.durationUs;
        if (j11 != -9223372036854775807L) {
            jMin = Math.min(jMin, j11 - 1);
        }
        return Pair.create(Assertions.e(period.uid), Long.valueOf(Math.max(0L, jMin)));
    }

    public int p(int i10, int i11, boolean z6) {
        if (i11 == 0) {
            if (i10 == e(z6)) {
                return -1;
            }
            return i10 - 1;
        }
        if (i11 == 1) {
            return i10;
        }
        if (i11 == 2) {
            return i10 == e(z6) ? g(z6) : i10 - 1;
        }
        throw new IllegalStateException();
    }

    public abstract Object q(int i10);

    public abstract Window s(int i10, Window window, long j6);

    public abstract int t();

    /* JADX INFO: Access modifiers changed from: private */
    public static Timeline b(Bundle bundle) {
        com.google.common.collect.a0 a0VarC = c(Window.CREATOR, BundleUtil.a(bundle, FIELD_WINDOWS));
        com.google.common.collect.a0 a0VarC2 = c(Period.CREATOR, BundleUtil.a(bundle, FIELD_PERIODS));
        int[] intArray = bundle.getIntArray(FIELD_SHUFFLED_WINDOW_INDICES);
        if (intArray == null) {
            intArray = d(a0VarC.size());
        }
        return new RemotableTimeline(a0VarC, a0VarC2, intArray);
    }

    private static <T extends Bundleable> com.google.common.collect.a0<T> c(Bundleable.Creator<T> creator, @Nullable IBinder iBinder) {
        if (iBinder == null) {
            return com.google.common.collect.a0.x();
        }
        com.google.common.collect.a0.a aVar = new com.google.common.collect.a0.a();
        com.google.common.collect.a0<Bundle> a0VarA = BundleListRetriever.a(iBinder);
        for (int i10 = 0; i10 < a0VarA.size(); i10++) {
            aVar.d(creator.a(a0VarA.get(i10)));
        }
        return aVar.k();
    }

    private static int[] d(int i10) {
        int[] iArr = new int[i10];
        for (int i11 = 0; i11 < i10; i11++) {
            iArr[i11] = i11;
        }
        return iArr;
    }

    public int hashCode() {
        Window window = new Window();
        Period period = new Period();
        int iT = 217 + t();
        for (int i10 = 0; i10 < t(); i10++) {
            iT = (iT * 31) + r(i10, window).hashCode();
        }
        int iM = (iT * 31) + m();
        for (int i11 = 0; i11 < m(); i11++) {
            iM = (iM * 31) + k(i11, period, true).hashCode();
        }
        int iE = e(true);
        while (iE != -1) {
            iM = (iM * 31) + iE;
            iE = i(iE, 0, true);
        }
        return iM;
    }

    public final Pair<Object, Long> n(Window window, Period period, int i10, long j6) {
        return (Pair) Assertions.e(o(window, period, i10, j6, 0L));
    }

    public final Window r(int i10, Window window) {
        return s(i10, window, 0L);
    }

    @Override // androidx.media3.common.Bundleable
    @UnstableApi
    public final Bundle toBundle() {
        ArrayList arrayList = new ArrayList();
        int iT = t();
        Window window = new Window();
        for (int i10 = 0; i10 < iT; i10++) {
            arrayList.add(s(i10, window, 0L).toBundle());
        }
        ArrayList arrayList2 = new ArrayList();
        int iM = m();
        Period period = new Period();
        for (int i11 = 0; i11 < iM; i11++) {
            arrayList2.add(k(i11, period, false).toBundle());
        }
        int[] iArr = new int[iT];
        if (iT > 0) {
            iArr[0] = e(true);
        }
        for (int i12 = 1; i12 < iT; i12++) {
            iArr[i12] = i(iArr[i12 - 1], 0, true);
        }
        Bundle bundle = new Bundle();
        BundleUtil.c(bundle, FIELD_WINDOWS, new BundleListRetriever(arrayList));
        BundleUtil.c(bundle, FIELD_PERIODS, new BundleListRetriever(arrayList2));
        bundle.putIntArray(FIELD_SHUFFLED_WINDOW_INDICES, iArr);
        return bundle;
    }

    @UnstableApi
    protected Timeline() {
    }

    public int e(boolean z6) {
        if (u()) {
            return -1;
        }
        return 0;
    }

    public int g(boolean z6) {
        if (u()) {
            return -1;
        }
        return t() - 1;
    }

    public final int h(int i10, Period period, Window window, int i11, boolean z6) {
        int i12 = j(i10, period).windowIndex;
        if (r(i12, window).lastPeriodIndex == i10) {
            int i13 = i(i12, i11, z6);
            if (i13 == -1) {
                return -1;
            }
            return r(i13, window).firstPeriodIndex;
        }
        return i10 + 1;
    }

    public Period l(Object obj, Period period) {
        return k(f(obj), period, true);
    }

    public final boolean u() {
        if (t() == 0) {
            return true;
        }
        return false;
    }

    public final boolean v(int i10, Period period, Window window, int i11, boolean z6) {
        if (h(i10, period, window, i11, z6) == -1) {
            return true;
        }
        return false;
    }
}
