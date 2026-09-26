package com.google.android.exoplayer2;

import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.util.Pair;
import androidx.annotation.Nullable;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public abstract class z3 implements h {
    private static final int FIELD_PERIODS = 1;
    private static final int FIELD_SHUFFLED_WINDOW_INDICES = 2;
    private static final int FIELD_WINDOWS = 0;
    public static final z3 EMPTY = new a();
    public static final h.a<z3> CREATOR = new h.a() { // from class: com.google.android.exoplayer2.y3
        @Override // com.google.android.exoplayer2.h.a
        public final h a(Bundle bundle) {
            return z3.b(bundle);
        }
    };

    class a extends z3 {
        @Override // com.google.android.exoplayer2.z3
        public int f(Object obj) {
            return -1;
        }

        @Override // com.google.android.exoplayer2.z3
        public int m() {
            return 0;
        }

        @Override // com.google.android.exoplayer2.z3
        public int t() {
            return 0;
        }

        @Override // com.google.android.exoplayer2.z3
        public b k(int i10, b bVar, boolean z6) {
            throw new IndexOutOfBoundsException();
        }

        @Override // com.google.android.exoplayer2.z3
        public Object q(int i10) {
            throw new IndexOutOfBoundsException();
        }

        @Override // com.google.android.exoplayer2.z3
        public d s(int i10, d dVar, long j6) {
            throw new IndexOutOfBoundsException();
        }

        a() {
        }
    }

    public static final class b implements h {
        public static final h.a<b> CREATOR = new h.a() { // from class: com.google.android.exoplayer2.a4
            @Override // com.google.android.exoplayer2.h.a
            public final h a(Bundle bundle) {
                return z3.b.c(bundle);
            }
        };
        private static final int FIELD_AD_PLAYBACK_STATE = 4;
        private static final int FIELD_DURATION_US = 1;
        private static final int FIELD_PLACEHOLDER = 3;
        private static final int FIELD_POSITION_IN_WINDOW_US = 2;
        private static final int FIELD_WINDOW_INDEX = 0;
        private x2.c adPlaybackState = x2.c.NONE;
        public long durationUs;

        @Nullable
        public Object id;
        public boolean isPlaceholder;
        public long positionInWindowUs;

        @Nullable
        public Object uid;
        public int windowIndex;

        /* JADX INFO: Access modifiers changed from: private */
        public static b c(Bundle bundle) {
            int i10 = bundle.getInt(u(0), 0);
            long j6 = bundle.getLong(u(1), -9223372036854775807L);
            long j10 = bundle.getLong(u(2), 0L);
            boolean z6 = bundle.getBoolean(u(3));
            Bundle bundle2 = bundle.getBundle(u(4));
            x2.c cVar = bundle2 != null ? (x2.c) x2.c.CREATOR.a(bundle2) : x2.c.NONE;
            b bVar = new b();
            bVar.w(null, null, i10, j6, j10, cVar, z6);
            return bVar;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || !b.class.equals(obj.getClass())) {
                return false;
            }
            b bVar = (b) obj;
            return com.google.android.exoplayer2.util.o0.c(this.id, bVar.id) && com.google.android.exoplayer2.util.o0.c(this.uid, bVar.uid) && this.windowIndex == bVar.windowIndex && this.durationUs == bVar.durationUs && this.positionInWindowUs == bVar.positionInWindowUs && this.isPlaceholder == bVar.isPlaceholder && com.google.android.exoplayer2.util.o0.c(this.adPlaybackState, bVar.adPlaybackState);
        }

        public long m() {
            return this.durationUs;
        }

        public long q() {
            return this.positionInWindowUs;
        }

        public b w(@Nullable Object obj, @Nullable Object obj2, int i10, long j6, long j10, x2.c cVar, boolean z6) {
            this.id = obj;
            this.uid = obj2;
            this.windowIndex = i10;
            this.durationUs = j6;
            this.positionInWindowUs = j10;
            this.adPlaybackState = cVar;
            this.isPlaceholder = z6;
            return this;
        }

        private static String u(int i10) {
            return Integer.toString(i10, 36);
        }

        public int d(int i10) {
            return this.adPlaybackState.d(i10).count;
        }

        public long e(int i10, int i11) {
            x2.c.a aVarD = this.adPlaybackState.d(i10);
            if (aVarD.count != -1) {
                return aVarD.durationsUs[i11];
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

        public int k(int i10, int i11) {
            x2.c.a aVarD = this.adPlaybackState.d(i10);
            if (aVarD.count != -1) {
                return aVarD.states[i11];
            }
            return 0;
        }

        public long l(int i10) {
            return this.adPlaybackState.d(i10).contentResumeOffsetUs;
        }

        public int n(int i10) {
            return this.adPlaybackState.d(i10).e();
        }

        public int o(int i10, int i11) {
            return this.adPlaybackState.d(i10).f(i11);
        }

        public long p() {
            return com.google.android.exoplayer2.util.o0.P0(this.positionInWindowUs);
        }

        public int r() {
            return this.adPlaybackState.removedAdGroupCount;
        }

        public boolean s(int i10) {
            return !this.adPlaybackState.d(i10).g();
        }

        public boolean t(int i10) {
            return this.adPlaybackState.d(i10).isServerSideInserted;
        }

        @Override // com.google.android.exoplayer2.h
        public Bundle toBundle() {
            Bundle bundle = new Bundle();
            bundle.putInt(u(0), this.windowIndex);
            bundle.putLong(u(1), this.durationUs);
            bundle.putLong(u(2), this.positionInWindowUs);
            bundle.putBoolean(u(3), this.isPlaceholder);
            bundle.putBundle(u(4), this.adPlaybackState.toBundle());
            return bundle;
        }

        public b v(@Nullable Object obj, @Nullable Object obj2, int i10, long j6, long j10) {
            return w(obj, obj2, i10, j6, j10, x2.c.NONE, false);
        }
    }

    public static final class c extends z3 {
        private final com.google.common.collect.a0<b> periods;
        private final int[] shuffledWindowIndices;
        private final int[] windowIndicesInShuffled;
        private final com.google.common.collect.a0<d> windows;

        @Override // com.google.android.exoplayer2.z3
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

        @Override // com.google.android.exoplayer2.z3
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

        @Override // com.google.android.exoplayer2.z3
        public int f(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.android.exoplayer2.z3
        public b k(int i10, b bVar, boolean z6) {
            b bVar2 = this.periods.get(i10);
            bVar.w(bVar2.id, bVar2.uid, bVar2.windowIndex, bVar2.durationUs, bVar2.positionInWindowUs, bVar2.adPlaybackState, bVar2.isPlaceholder);
            return bVar;
        }

        @Override // com.google.android.exoplayer2.z3
        public int m() {
            return this.periods.size();
        }

        @Override // com.google.android.exoplayer2.z3
        public Object q(int i10) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.android.exoplayer2.z3
        public d s(int i10, d dVar, long j6) {
            d dVar2 = this.windows.get(i10);
            dVar.k(dVar2.uid, dVar2.mediaItem, dVar2.manifest, dVar2.presentationStartTimeMs, dVar2.windowStartTimeMs, dVar2.elapsedRealtimeEpochOffsetMs, dVar2.isSeekable, dVar2.isDynamic, dVar2.liveConfiguration, dVar2.defaultPositionUs, dVar2.durationUs, dVar2.firstPeriodIndex, dVar2.lastPeriodIndex, dVar2.positionInFirstPeriodUs);
            dVar.isPlaceholder = dVar2.isPlaceholder;
            return dVar;
        }

        @Override // com.google.android.exoplayer2.z3
        public int t() {
            return this.windows.size();
        }

        public c(com.google.common.collect.a0<d> a0Var, com.google.common.collect.a0<b> a0Var2, int[] iArr) {
            boolean z6;
            if (a0Var.size() == iArr.length) {
                z6 = true;
            } else {
                z6 = false;
            }
            com.google.android.exoplayer2.util.a.a(z6);
            this.windows = a0Var;
            this.periods = a0Var2;
            this.shuffledWindowIndices = iArr;
            this.windowIndicesInShuffled = new int[iArr.length];
            for (int i10 = 0; i10 < iArr.length; i10++) {
                this.windowIndicesInShuffled[iArr[i10]] = i10;
            }
        }

        @Override // com.google.android.exoplayer2.z3
        public int e(boolean z6) {
            if (u()) {
                return -1;
            }
            if (!z6) {
                return 0;
            }
            return this.shuffledWindowIndices[0];
        }

        @Override // com.google.android.exoplayer2.z3
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

    public static final class d implements h {
        private static final int FIELD_DEFAULT_POSITION_US = 9;
        private static final int FIELD_DURATION_US = 10;
        private static final int FIELD_ELAPSED_REALTIME_EPOCH_OFFSET_MS = 4;
        private static final int FIELD_FIRST_PERIOD_INDEX = 11;
        private static final int FIELD_IS_DYNAMIC = 6;
        private static final int FIELD_IS_PLACEHOLDER = 8;
        private static final int FIELD_IS_SEEKABLE = 5;
        private static final int FIELD_LAST_PERIOD_INDEX = 12;
        private static final int FIELD_LIVE_CONFIGURATION = 7;
        private static final int FIELD_MEDIA_ITEM = 1;
        private static final int FIELD_POSITION_IN_FIRST_PERIOD_US = 13;
        private static final int FIELD_PRESENTATION_START_TIME_MS = 2;
        private static final int FIELD_WINDOW_START_TIME_MS = 3;
        public long defaultPositionUs;
        public long durationUs;
        public long elapsedRealtimeEpochOffsetMs;
        public int firstPeriodIndex;
        public boolean isDynamic;

        @Deprecated
        public boolean isLive;
        public boolean isPlaceholder;
        public boolean isSeekable;
        public int lastPeriodIndex;

        @Nullable
        public i2.g liveConfiguration;

        @Nullable
        public Object manifest;
        public long positionInFirstPeriodUs;
        public long presentationStartTimeMs;

        @Nullable
        @Deprecated
        public Object tag;
        public long windowStartTimeMs;
        public static final Object SINGLE_WINDOW_UID = new Object();
        private static final Object FAKE_WINDOW_UID = new Object();
        private static final i2 EMPTY_MEDIA_ITEM = new i2.c().d("com.google.android.exoplayer2.Timeline").g(Uri.EMPTY).a();
        public static final h.a<d> CREATOR = new h.a() { // from class: com.google.android.exoplayer2.b4
            @Override // com.google.android.exoplayer2.h.a
            public final h a(Bundle bundle) {
                return z3.d.c(bundle);
            }
        };
        public Object uid = SINGLE_WINDOW_UID;
        public i2 mediaItem = EMPTY_MEDIA_ITEM;

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || !d.class.equals(obj.getClass())) {
                return false;
            }
            d dVar = (d) obj;
            return com.google.android.exoplayer2.util.o0.c(this.uid, dVar.uid) && com.google.android.exoplayer2.util.o0.c(this.mediaItem, dVar.mediaItem) && com.google.android.exoplayer2.util.o0.c(this.manifest, dVar.manifest) && com.google.android.exoplayer2.util.o0.c(this.liveConfiguration, dVar.liveConfiguration) && this.presentationStartTimeMs == dVar.presentationStartTimeMs && this.windowStartTimeMs == dVar.windowStartTimeMs && this.elapsedRealtimeEpochOffsetMs == dVar.elapsedRealtimeEpochOffsetMs && this.isSeekable == dVar.isSeekable && this.isDynamic == dVar.isDynamic && this.isPlaceholder == dVar.isPlaceholder && this.defaultPositionUs == dVar.defaultPositionUs && this.durationUs == dVar.durationUs && this.firstPeriodIndex == dVar.firstPeriodIndex && this.lastPeriodIndex == dVar.lastPeriodIndex && this.positionInFirstPeriodUs == dVar.positionInFirstPeriodUs;
        }

        public long f() {
            return this.defaultPositionUs;
        }

        public long h() {
            return this.positionInFirstPeriodUs;
        }

        public d k(Object obj, @Nullable i2 i2Var, @Nullable Object obj2, long j6, long j10, long j11, boolean z6, boolean z10, @Nullable i2.g gVar, long j12, long j13, int i10, int i11, long j14) {
            i2.h hVar;
            this.uid = obj;
            this.mediaItem = i2Var != null ? i2Var : EMPTY_MEDIA_ITEM;
            this.tag = (i2Var == null || (hVar = i2Var.localConfiguration) == null) ? null : hVar.tag;
            this.manifest = obj2;
            this.presentationStartTimeMs = j6;
            this.windowStartTimeMs = j10;
            this.elapsedRealtimeEpochOffsetMs = j11;
            this.isSeekable = z6;
            this.isDynamic = z10;
            this.isLive = gVar != null;
            this.liveConfiguration = gVar;
            this.defaultPositionUs = j12;
            this.durationUs = j13;
            this.firstPeriodIndex = i10;
            this.lastPeriodIndex = i11;
            this.positionInFirstPeriodUs = j14;
            this.isPlaceholder = false;
            return this;
        }

        @Override // com.google.android.exoplayer2.h
        public Bundle toBundle() {
            return l(false);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static d c(Bundle bundle) {
            Bundle bundle2 = bundle.getBundle(j(1));
            i2 i2Var = bundle2 != null ? (i2) i2.CREATOR.a(bundle2) : null;
            long j6 = bundle.getLong(j(2), -9223372036854775807L);
            long j10 = bundle.getLong(j(3), -9223372036854775807L);
            long j11 = bundle.getLong(j(4), -9223372036854775807L);
            boolean z6 = bundle.getBoolean(j(5), false);
            boolean z10 = bundle.getBoolean(j(6), false);
            Bundle bundle3 = bundle.getBundle(j(7));
            i2.g gVar = bundle3 != null ? (i2.g) i2.g.CREATOR.a(bundle3) : null;
            boolean z11 = bundle.getBoolean(j(8), false);
            long j12 = bundle.getLong(j(9), 0L);
            long j13 = bundle.getLong(j(10), -9223372036854775807L);
            int i10 = bundle.getInt(j(11), 0);
            int i11 = bundle.getInt(j(12), 0);
            long j14 = bundle.getLong(j(13), 0L);
            d dVar = new d();
            dVar.k(FAKE_WINDOW_UID, i2Var, null, j6, j10, j11, z6, z10, gVar, j12, j13, i10, i11, j14);
            dVar.isPlaceholder = z11;
            return dVar;
        }

        private static String j(int i10) {
            return Integer.toString(i10, 36);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final Bundle l(boolean z6) {
            Bundle bundle = new Bundle();
            bundle.putBundle(j(1), (z6 ? i2.EMPTY : this.mediaItem).toBundle());
            bundle.putLong(j(2), this.presentationStartTimeMs);
            bundle.putLong(j(3), this.windowStartTimeMs);
            bundle.putLong(j(4), this.elapsedRealtimeEpochOffsetMs);
            bundle.putBoolean(j(5), this.isSeekable);
            bundle.putBoolean(j(6), this.isDynamic);
            i2.g gVar = this.liveConfiguration;
            if (gVar != null) {
                bundle.putBundle(j(7), gVar.toBundle());
            }
            bundle.putBoolean(j(8), this.isPlaceholder);
            bundle.putLong(j(9), this.defaultPositionUs);
            bundle.putLong(j(10), this.durationUs);
            bundle.putInt(j(11), this.firstPeriodIndex);
            bundle.putInt(j(12), this.lastPeriodIndex);
            bundle.putLong(j(13), this.positionInFirstPeriodUs);
            return bundle;
        }

        public long d() {
            return com.google.android.exoplayer2.util.o0.V(this.elapsedRealtimeEpochOffsetMs);
        }

        public long e() {
            return com.google.android.exoplayer2.util.o0.P0(this.defaultPositionUs);
        }

        public long g() {
            return com.google.android.exoplayer2.util.o0.P0(this.durationUs);
        }

        public int hashCode() {
            int iHashCode = (((217 + this.uid.hashCode()) * 31) + this.mediaItem.hashCode()) * 31;
            Object obj = this.manifest;
            int iHashCode2 = (iHashCode + (obj == null ? 0 : obj.hashCode())) * 31;
            i2.g gVar = this.liveConfiguration;
            int iHashCode3 = (iHashCode2 + (gVar != null ? gVar.hashCode() : 0)) * 31;
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

        public boolean i() {
            com.google.android.exoplayer2.util.a.g(this.isLive == (this.liveConfiguration != null));
            return this.liveConfiguration != null;
        }
    }

    public boolean equals(@Nullable Object obj) {
        int iG;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof z3)) {
            return false;
        }
        z3 z3Var = (z3) obj;
        if (z3Var.t() != t() || z3Var.m() != m()) {
            return false;
        }
        d dVar = new d();
        b bVar = new b();
        d dVar2 = new d();
        b bVar2 = new b();
        for (int i10 = 0; i10 < t(); i10++) {
            if (!r(i10, dVar).equals(z3Var.r(i10, dVar2))) {
                return false;
            }
        }
        for (int i11 = 0; i11 < m(); i11++) {
            if (!k(i11, bVar, true).equals(z3Var.k(i11, bVar2, true))) {
                return false;
            }
        }
        int iE = e(true);
        if (iE != z3Var.e(true) || (iG = g(true)) != z3Var.g(true)) {
            return false;
        }
        while (iE != iG) {
            int i12 = i(iE, 0, true);
            if (i12 != z3Var.i(iE, 0, true)) {
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

    public final b j(int i10, b bVar) {
        return k(i10, bVar, false);
    }

    public abstract b k(int i10, b bVar, boolean z6);

    public abstract int m();

    @Nullable
    public final Pair<Object, Long> o(d dVar, b bVar, int i10, long j6, long j10) {
        com.google.android.exoplayer2.util.a.c(i10, 0, t());
        s(i10, dVar, j10);
        if (j6 == -9223372036854775807L) {
            j6 = dVar.f();
            if (j6 == -9223372036854775807L) {
                return null;
            }
        }
        int i11 = dVar.firstPeriodIndex;
        j(i11, bVar);
        while (i11 < dVar.lastPeriodIndex && bVar.positionInWindowUs != j6) {
            int i12 = i11 + 1;
            if (j(i12, bVar).positionInWindowUs > j6) {
                break;
            }
            i11 = i12;
        }
        k(i11, bVar, true);
        long jMin = j6 - bVar.positionInWindowUs;
        long j11 = bVar.durationUs;
        if (j11 != -9223372036854775807L) {
            jMin = Math.min(jMin, j11 - 1);
        }
        return Pair.create(com.google.android.exoplayer2.util.a.e(bVar.uid), Long.valueOf(Math.max(0L, jMin)));
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

    public abstract d s(int i10, d dVar, long j6);

    public abstract int t();

    @Override // com.google.android.exoplayer2.h
    public final Bundle toBundle() {
        return x(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static z3 b(Bundle bundle) {
        com.google.common.collect.a0 a0VarC = c(d.CREATOR, com.google.android.exoplayer2.util.b.a(bundle, w(0)));
        com.google.common.collect.a0 a0VarC2 = c(b.CREATOR, com.google.android.exoplayer2.util.b.a(bundle, w(1)));
        int[] intArray = bundle.getIntArray(w(2));
        if (intArray == null) {
            intArray = d(a0VarC.size());
        }
        return new c(a0VarC, a0VarC2, intArray);
    }

    private static <T extends h> com.google.common.collect.a0<T> c(h.a<T> aVar, @Nullable IBinder iBinder) {
        if (iBinder == null) {
            return com.google.common.collect.a0.x();
        }
        com.google.common.collect.a0.a aVar2 = new com.google.common.collect.a0.a();
        com.google.common.collect.a0<Bundle> a0VarA = g.a(iBinder);
        for (int i10 = 0; i10 < a0VarA.size(); i10++) {
            aVar2.d(aVar.a(a0VarA.get(i10)));
        }
        return aVar2.k();
    }

    private static int[] d(int i10) {
        int[] iArr = new int[i10];
        for (int i11 = 0; i11 < i10; i11++) {
            iArr[i11] = i11;
        }
        return iArr;
    }

    private static String w(int i10) {
        return Integer.toString(i10, 36);
    }

    public int hashCode() {
        d dVar = new d();
        b bVar = new b();
        int iT = 217 + t();
        for (int i10 = 0; i10 < t(); i10++) {
            iT = (iT * 31) + r(i10, dVar).hashCode();
        }
        int iM = (iT * 31) + m();
        for (int i11 = 0; i11 < m(); i11++) {
            iM = (iM * 31) + k(i11, bVar, true).hashCode();
        }
        int iE = e(true);
        while (iE != -1) {
            iM = (iM * 31) + iE;
            iE = i(iE, 0, true);
        }
        return iM;
    }

    public final Pair<Object, Long> n(d dVar, b bVar, int i10, long j6) {
        return (Pair) com.google.android.exoplayer2.util.a.e(o(dVar, bVar, i10, j6, 0L));
    }

    public final d r(int i10, d dVar) {
        return s(i10, dVar, 0L);
    }

    public final Bundle x(boolean z6) {
        ArrayList arrayList = new ArrayList();
        int iT = t();
        d dVar = new d();
        for (int i10 = 0; i10 < iT; i10++) {
            arrayList.add(s(i10, dVar, 0L).l(z6));
        }
        ArrayList arrayList2 = new ArrayList();
        int iM = m();
        b bVar = new b();
        for (int i11 = 0; i11 < iM; i11++) {
            arrayList2.add(k(i11, bVar, false).toBundle());
        }
        int[] iArr = new int[iT];
        if (iT > 0) {
            iArr[0] = e(true);
        }
        for (int i12 = 1; i12 < iT; i12++) {
            iArr[i12] = i(iArr[i12 - 1], 0, true);
        }
        Bundle bundle = new Bundle();
        com.google.android.exoplayer2.util.b.c(bundle, w(0), new g(arrayList));
        com.google.android.exoplayer2.util.b.c(bundle, w(1), new g(arrayList2));
        bundle.putIntArray(w(2), iArr);
        return bundle;
    }

    protected z3() {
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

    public final int h(int i10, b bVar, d dVar, int i11, boolean z6) {
        int i12 = j(i10, bVar).windowIndex;
        if (r(i12, dVar).lastPeriodIndex == i10) {
            int i13 = i(i12, i11, z6);
            if (i13 == -1) {
                return -1;
            }
            return r(i13, dVar).firstPeriodIndex;
        }
        return i10 + 1;
    }

    public b l(Object obj, b bVar) {
        return k(f(obj), bVar, true);
    }

    public final boolean u() {
        if (t() == 0) {
            return true;
        }
        return false;
    }

    public final boolean v(int i10, b bVar, d dVar, int i11, boolean z6) {
        if (h(i10, bVar, dVar, i11, z6) == -1) {
            return true;
        }
        return false;
    }
}
