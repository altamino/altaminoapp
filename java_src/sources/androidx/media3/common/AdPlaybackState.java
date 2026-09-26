package androidx.media3.common;

import android.net.Uri;
import android.os.Bundle;
import android.os.Parcelable;
import androidx.annotation.CheckResult;
import androidx.annotation.IntRange;
import androidx.annotation.Nullable;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: loaded from: classes9.dex */
@UnstableApi
public final class AdPlaybackState implements Bundleable {
    public static final int AD_STATE_AVAILABLE = 1;
    public static final int AD_STATE_ERROR = 4;
    public static final int AD_STATE_PLAYED = 3;
    public static final int AD_STATE_SKIPPED = 2;
    public static final int AD_STATE_UNAVAILABLE = 0;
    public final int adGroupCount;
    private final AdGroup[] adGroups;
    public final long adResumePositionUs;

    @Nullable
    public final Object adsId;
    public final long contentDurationUs;
    public final int removedAdGroupCount;
    public static final AdPlaybackState NONE = new AdPlaybackState(null, new AdGroup[0], 0, -9223372036854775807L, 0);
    private static final AdGroup REMOVED_AD_GROUP = new AdGroup(0).k(0);
    private static final String FIELD_AD_GROUPS = Util.z0(1);
    private static final String FIELD_AD_RESUME_POSITION_US = Util.z0(2);
    private static final String FIELD_CONTENT_DURATION_US = Util.z0(3);
    private static final String FIELD_REMOVED_AD_GROUP_COUNT = Util.z0(4);
    public static final Bundleable.Creator<AdPlaybackState> CREATOR = new Bundleable.Creator() { // from class: androidx.media3.common.a
        @Override // androidx.media3.common.Bundleable.Creator
        public final Bundleable a(Bundle bundle) {
            return AdPlaybackState.c(bundle);
        }
    };

    public static final class AdGroup implements Bundleable {
        public final long contentResumeOffsetUs;
        public final int count;
        public final long[] durationsUs;
        public final boolean isServerSideInserted;
        public final int originalCount;
        public final int[] states;
        public final long timeUs;
        public final Uri[] uris;
        private static final String FIELD_TIME_US = Util.z0(0);
        private static final String FIELD_COUNT = Util.z0(1);
        private static final String FIELD_URIS = Util.z0(2);
        private static final String FIELD_STATES = Util.z0(3);
        private static final String FIELD_DURATIONS_US = Util.z0(4);
        private static final String FIELD_CONTENT_RESUME_OFFSET_US = Util.z0(5);
        private static final String FIELD_IS_SERVER_SIDE_INSERTED = Util.z0(6);
        private static final String FIELD_ORIGINAL_COUNT = Util.z0(7);
        public static final Bundleable.Creator<AdGroup> CREATOR = new Bundleable.Creator() { // from class: androidx.media3.common.b
            @Override // androidx.media3.common.Bundleable.Creator
            public final Bundleable a(Bundle bundle) {
                return AdPlaybackState.AdGroup.e(bundle);
            }
        };

        public AdGroup(long j6) {
            this(j6, -1, -1, new int[0], new Uri[0], new long[0], 0L, false);
        }

        @CheckResult
        private static long[] c(long[] jArr, int i10) {
            int length = jArr.length;
            int iMax = Math.max(i10, length);
            long[] jArrCopyOf = Arrays.copyOf(jArr, iMax);
            Arrays.fill(jArrCopyOf, length, iMax, -9223372036854775807L);
            return jArrCopyOf;
        }

        @CheckResult
        private static int[] d(int[] iArr, int i10) {
            int length = iArr.length;
            int iMax = Math.max(i10, length);
            int[] iArrCopyOf = Arrays.copyOf(iArr, iMax);
            Arrays.fill(iArrCopyOf, length, iMax, 0);
            return iArrCopyOf;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public boolean i() {
            return this.isServerSideInserted && this.timeUs == Long.MIN_VALUE && this.count == -1;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || AdGroup.class != obj.getClass()) {
                return false;
            }
            AdGroup adGroup = (AdGroup) obj;
            return this.timeUs == adGroup.timeUs && this.count == adGroup.count && this.originalCount == adGroup.originalCount && Arrays.equals(this.uris, adGroup.uris) && Arrays.equals(this.states, adGroup.states) && Arrays.equals(this.durationsUs, adGroup.durationsUs) && this.contentResumeOffsetUs == adGroup.contentResumeOffsetUs && this.isServerSideInserted == adGroup.isServerSideInserted;
        }

        public int f() {
            return g(-1);
        }

        public int g(@IntRange int i10) {
            int i11;
            int i12 = i10 + 1;
            while (true) {
                int[] iArr = this.states;
                if (i12 >= iArr.length || this.isServerSideInserted || (i11 = iArr[i12]) == 0 || i11 == 1) {
                    break;
                }
                i12++;
            }
            return i12;
        }

        @CheckResult
        public AdGroup l(long[] jArr) {
            int length = jArr.length;
            Uri[] uriArr = this.uris;
            if (length < uriArr.length) {
                jArr = c(jArr, uriArr.length);
            } else if (this.count != -1 && jArr.length > uriArr.length) {
                jArr = Arrays.copyOf(jArr, uriArr.length);
            }
            return new AdGroup(this.timeUs, this.count, this.originalCount, this.states, this.uris, jArr, this.contentResumeOffsetUs, this.isServerSideInserted);
        }

        private AdGroup(long j6, int i10, int i11, int[] iArr, Uri[] uriArr, long[] jArr, long j10, boolean z6) {
            Assertions.a(iArr.length == uriArr.length);
            this.timeUs = j6;
            this.count = i10;
            this.originalCount = i11;
            this.states = iArr;
            this.uris = uriArr;
            this.durationsUs = jArr;
            this.contentResumeOffsetUs = j10;
            this.isServerSideInserted = z6;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static AdGroup e(Bundle bundle) {
            long j6 = bundle.getLong(FIELD_TIME_US);
            int i10 = bundle.getInt(FIELD_COUNT);
            int i11 = bundle.getInt(FIELD_ORIGINAL_COUNT);
            ArrayList parcelableArrayList = bundle.getParcelableArrayList(FIELD_URIS);
            int[] intArray = bundle.getIntArray(FIELD_STATES);
            long[] longArray = bundle.getLongArray(FIELD_DURATIONS_US);
            long j10 = bundle.getLong(FIELD_CONTENT_RESUME_OFFSET_US);
            boolean z6 = bundle.getBoolean(FIELD_IS_SERVER_SIDE_INSERTED);
            if (intArray == null) {
                intArray = new int[0];
            }
            return new AdGroup(j6, i10, i11, intArray, parcelableArrayList == null ? new Uri[0] : (Uri[]) parcelableArrayList.toArray(new Uri[0]), longArray == null ? new long[0] : longArray, j10, z6);
        }

        public boolean h() {
            if (this.count == -1) {
                return true;
            }
            for (int i10 = 0; i10 < this.count; i10++) {
                int i11 = this.states[i10];
                if (i11 == 0 || i11 == 1) {
                    return true;
                }
            }
            return false;
        }

        public int hashCode() {
            int i10 = ((this.count * 31) + this.originalCount) * 31;
            long j6 = this.timeUs;
            int iHashCode = (((((((i10 + ((int) (j6 ^ (j6 >>> 32)))) * 31) + Arrays.hashCode(this.uris)) * 31) + Arrays.hashCode(this.states)) * 31) + Arrays.hashCode(this.durationsUs)) * 31;
            long j10 = this.contentResumeOffsetUs;
            return ((iHashCode + ((int) (j10 ^ (j10 >>> 32)))) * 31) + (this.isServerSideInserted ? 1 : 0);
        }

        public boolean j() {
            return this.count == -1 || f() < this.count;
        }

        @CheckResult
        public AdGroup k(int i10) {
            int[] iArrD = d(this.states, i10);
            long[] jArrC = c(this.durationsUs, i10);
            return new AdGroup(this.timeUs, i10, this.originalCount, iArrD, (Uri[]) Arrays.copyOf(this.uris, i10), jArrC, this.contentResumeOffsetUs, this.isServerSideInserted);
        }

        @Override // androidx.media3.common.Bundleable
        public Bundle toBundle() {
            Bundle bundle = new Bundle();
            bundle.putLong(FIELD_TIME_US, this.timeUs);
            bundle.putInt(FIELD_COUNT, this.count);
            bundle.putInt(FIELD_ORIGINAL_COUNT, this.originalCount);
            bundle.putParcelableArrayList(FIELD_URIS, new ArrayList<>(Arrays.asList(this.uris)));
            bundle.putIntArray(FIELD_STATES, this.states);
            bundle.putLongArray(FIELD_DURATIONS_US, this.durationsUs);
            bundle.putLong(FIELD_CONTENT_RESUME_OFFSET_US, this.contentResumeOffsetUs);
            bundle.putBoolean(FIELD_IS_SERVER_SIDE_INSERTED, this.isServerSideInserted);
            return bundle;
        }
    }

    @Target({ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER, ElementType.LOCAL_VARIABLE, ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface AdState {
    }

    public AdPlaybackState(Object obj, long... jArr) {
        this(obj, b(jArr), 0L, -9223372036854775807L, 0);
    }

    private static AdGroup[] b(long[] jArr) {
        int length = jArr.length;
        AdGroup[] adGroupArr = new AdGroup[length];
        for (int i10 = 0; i10 < length; i10++) {
            adGroupArr[i10] = new AdGroup(jArr[i10]);
        }
        return adGroupArr;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || AdPlaybackState.class != obj.getClass()) {
            return false;
        }
        AdPlaybackState adPlaybackState = (AdPlaybackState) obj;
        return Util.c(this.adsId, adPlaybackState.adsId) && this.adGroupCount == adPlaybackState.adGroupCount && this.adResumePositionUs == adPlaybackState.adResumePositionUs && this.contentDurationUs == adPlaybackState.contentDurationUs && this.removedAdGroupCount == adPlaybackState.removedAdGroupCount && Arrays.equals(this.adGroups, adPlaybackState.adGroups);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static AdPlaybackState c(Bundle bundle) {
        AdGroup[] adGroupArr;
        ArrayList parcelableArrayList = bundle.getParcelableArrayList(FIELD_AD_GROUPS);
        if (parcelableArrayList == null) {
            adGroupArr = new AdGroup[0];
        } else {
            AdGroup[] adGroupArr2 = new AdGroup[parcelableArrayList.size()];
            for (int i10 = 0; i10 < parcelableArrayList.size(); i10++) {
                adGroupArr2[i10] = (AdGroup) AdGroup.CREATOR.a((Bundle) parcelableArrayList.get(i10));
            }
            adGroupArr = adGroupArr2;
        }
        String str = FIELD_AD_RESUME_POSITION_US;
        AdPlaybackState adPlaybackState = NONE;
        return new AdPlaybackState(null, adGroupArr, bundle.getLong(str, adPlaybackState.adResumePositionUs), bundle.getLong(FIELD_CONTENT_DURATION_US, adPlaybackState.contentDurationUs), bundle.getInt(FIELD_REMOVED_AD_GROUP_COUNT, adPlaybackState.removedAdGroupCount));
    }

    private boolean h(long j6, long j10, int i10) {
        if (j6 == Long.MIN_VALUE) {
            return false;
        }
        AdGroup adGroupD = d(i10);
        long j11 = adGroupD.timeUs;
        if (j11 == Long.MIN_VALUE) {
            return j10 == -9223372036854775807L || (adGroupD.isServerSideInserted && adGroupD.count == -1) || j6 < j10;
        }
        return j6 < j11;
    }

    public AdGroup d(@IntRange int i10) {
        int i11 = this.removedAdGroupCount;
        return i10 < i11 ? REMOVED_AD_GROUP : this.adGroups[i10 - i11];
    }

    public int e(long j6, long j10) {
        if (j6 == Long.MIN_VALUE) {
            return -1;
        }
        if (j10 != -9223372036854775807L && j6 >= j10) {
            return -1;
        }
        int i10 = this.removedAdGroupCount;
        while (i10 < this.adGroupCount && ((d(i10).timeUs != Long.MIN_VALUE && d(i10).timeUs <= j6) || !d(i10).j())) {
            i10++;
        }
        if (i10 < this.adGroupCount) {
            return i10;
        }
        return -1;
    }

    public int f(long j6, long j10) {
        int i10 = this.adGroupCount - 1;
        int i11 = i10 - (g(i10) ? 1 : 0);
        while (i11 >= 0 && h(j6, j10, i11)) {
            i11--;
        }
        if (i11 < 0 || !d(i11).h()) {
            return -1;
        }
        return i11;
    }

    public boolean g(int i10) {
        return i10 == this.adGroupCount - 1 && d(i10).i();
    }

    public int hashCode() {
        int i10 = this.adGroupCount * 31;
        Object obj = this.adsId;
        return ((((((((i10 + (obj == null ? 0 : obj.hashCode())) * 31) + ((int) this.adResumePositionUs)) * 31) + ((int) this.contentDurationUs)) * 31) + this.removedAdGroupCount) * 31) + Arrays.hashCode(this.adGroups);
    }

    @CheckResult
    public AdPlaybackState i(long[][] jArr) {
        Assertions.g(this.removedAdGroupCount == 0);
        AdGroup[] adGroupArr = this.adGroups;
        AdGroup[] adGroupArr2 = (AdGroup[]) Util.P0(adGroupArr, adGroupArr.length);
        for (int i10 = 0; i10 < this.adGroupCount; i10++) {
            adGroupArr2[i10] = adGroupArr2[i10].l(jArr[i10]);
        }
        return new AdPlaybackState(this.adsId, adGroupArr2, this.adResumePositionUs, this.contentDurationUs, this.removedAdGroupCount);
    }

    @Override // androidx.media3.common.Bundleable
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
        for (AdGroup adGroup : this.adGroups) {
            arrayList.add(adGroup.toBundle());
        }
        if (!arrayList.isEmpty()) {
            bundle.putParcelableArrayList(FIELD_AD_GROUPS, arrayList);
        }
        long j6 = this.adResumePositionUs;
        AdPlaybackState adPlaybackState = NONE;
        if (j6 != adPlaybackState.adResumePositionUs) {
            bundle.putLong(FIELD_AD_RESUME_POSITION_US, j6);
        }
        long j10 = this.contentDurationUs;
        if (j10 != adPlaybackState.contentDurationUs) {
            bundle.putLong(FIELD_CONTENT_DURATION_US, j10);
        }
        int i10 = this.removedAdGroupCount;
        if (i10 != adPlaybackState.removedAdGroupCount) {
            bundle.putInt(FIELD_REMOVED_AD_GROUP_COUNT, i10);
        }
        return bundle;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("AdPlaybackState(adsId=");
        sb.append(this.adsId);
        sb.append(", adResumePositionUs=");
        sb.append(this.adResumePositionUs);
        sb.append(", adGroups=[");
        for (int i10 = 0; i10 < this.adGroups.length; i10++) {
            sb.append("adGroup(timeUs=");
            sb.append(this.adGroups[i10].timeUs);
            sb.append(", ads=[");
            for (int i11 = 0; i11 < this.adGroups[i10].states.length; i11++) {
                sb.append("ad(state=");
                int i12 = this.adGroups[i10].states[i11];
                if (i12 == 0) {
                    sb.append('_');
                } else if (i12 == 1) {
                    sb.append(org.bouncycastle.pqc.math.linearalgebra.h.MATRIX_TYPE_RANDOM_REGULAR);
                } else if (i12 == 2) {
                    sb.append('S');
                } else if (i12 == 3) {
                    sb.append('P');
                } else if (i12 != 4) {
                    sb.append('?');
                } else {
                    sb.append('!');
                }
                sb.append(", durationUs=");
                sb.append(this.adGroups[i10].durationsUs[i11]);
                sb.append(')');
                if (i11 < this.adGroups[i10].states.length - 1) {
                    sb.append(", ");
                }
            }
            sb.append("])");
            if (i10 < this.adGroups.length - 1) {
                sb.append(", ");
            }
        }
        sb.append("])");
        return sb.toString();
    }

    private AdPlaybackState(@Nullable Object obj, AdGroup[] adGroupArr, long j6, long j10, int i10) {
        this.adsId = obj;
        this.adResumePositionUs = j6;
        this.contentDurationUs = j10;
        this.adGroupCount = adGroupArr.length + i10;
        this.adGroups = adGroupArr;
        this.removedAdGroupCount = i10;
    }
}
