package x2;

import android.net.Uri;
import android.os.Bundle;
import android.os.Parcelable;
import androidx.annotation.CheckResult;
import androidx.annotation.IntRange;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.h;
import com.google.android.exoplayer2.util.o0;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public final class c implements h {
    public static final int AD_STATE_AVAILABLE = 1;
    public static final int AD_STATE_ERROR = 4;
    public static final int AD_STATE_PLAYED = 3;
    public static final int AD_STATE_SKIPPED = 2;
    public static final int AD_STATE_UNAVAILABLE = 0;
    private static final int FIELD_AD_GROUPS = 1;
    private static final int FIELD_AD_RESUME_POSITION_US = 2;
    private static final int FIELD_CONTENT_DURATION_US = 3;
    private static final int FIELD_REMOVED_AD_GROUP_COUNT = 4;
    public final int adGroupCount;
    private final a[] adGroups;
    public final long adResumePositionUs;

    @Nullable
    public final Object adsId;
    public final long contentDurationUs;
    public final int removedAdGroupCount;
    public static final c NONE = new c(null, new a[0], 0, -9223372036854775807L, 0);
    private static final a REMOVED_AD_GROUP = new a(0).j(0);
    public static final h.a<c> CREATOR = new h.a() { // from class: x2.a
        @Override // com.google.android.exoplayer2.h.a
        public final h a(Bundle bundle) {
            return c.c(bundle);
        }
    };

    public static final class a implements h {
        public static final h.a<a> CREATOR = new h.a() { // from class: x2.b
            @Override // com.google.android.exoplayer2.h.a
            public final h a(Bundle bundle) {
                return c.a.d(bundle);
            }
        };
        private static final int FIELD_CONTENT_RESUME_OFFSET_US = 5;
        private static final int FIELD_COUNT = 1;
        private static final int FIELD_DURATIONS_US = 4;
        private static final int FIELD_IS_SERVER_SIDE_INSERTED = 6;
        private static final int FIELD_ORIGINAL_COUNT = 7;
        private static final int FIELD_STATES = 3;
        private static final int FIELD_TIME_US = 0;
        private static final int FIELD_URIS = 2;
        public final long contentResumeOffsetUs;
        public final int count;
        public final long[] durationsUs;
        public final boolean isServerSideInserted;
        public final int originalCount;
        public final int[] states;
        public final long timeUs;
        public final Uri[] uris;

        public a(long j6) {
            this(j6, -1, -1, new int[0], new Uri[0], new long[0], 0L, false);
        }

        @CheckResult
        private static long[] b(long[] jArr, int i10) {
            int length = jArr.length;
            int iMax = Math.max(i10, length);
            long[] jArrCopyOf = Arrays.copyOf(jArr, iMax);
            Arrays.fill(jArrCopyOf, length, iMax, -9223372036854775807L);
            return jArrCopyOf;
        }

        @CheckResult
        private static int[] c(int[] iArr, int i10) {
            int length = iArr.length;
            int iMax = Math.max(i10, length);
            int[] iArrCopyOf = Arrays.copyOf(iArr, iMax);
            Arrays.fill(iArrCopyOf, length, iMax, 0);
            return iArrCopyOf;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static a d(Bundle bundle) {
            long j6 = bundle.getLong(h(0));
            int i10 = bundle.getInt(h(1), -1);
            int i11 = bundle.getInt(h(7), -1);
            ArrayList parcelableArrayList = bundle.getParcelableArrayList(h(2));
            int[] intArray = bundle.getIntArray(h(3));
            long[] longArray = bundle.getLongArray(h(4));
            long j10 = bundle.getLong(h(5));
            boolean z6 = bundle.getBoolean(h(6));
            if (intArray == null) {
                intArray = new int[0];
            }
            return new a(j6, i10, i11, intArray, parcelableArrayList == null ? new Uri[0] : (Uri[]) parcelableArrayList.toArray(new Uri[0]), longArray == null ? new long[0] : longArray, j10, z6);
        }

        public int e() {
            return f(-1);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || a.class != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            return this.timeUs == aVar.timeUs && this.count == aVar.count && this.originalCount == aVar.originalCount && Arrays.equals(this.uris, aVar.uris) && Arrays.equals(this.states, aVar.states) && Arrays.equals(this.durationsUs, aVar.durationsUs) && this.contentResumeOffsetUs == aVar.contentResumeOffsetUs && this.isServerSideInserted == aVar.isServerSideInserted;
        }

        public int f(@IntRange int i10) {
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

        private a(long j6, int i10, int i11, int[] iArr, Uri[] uriArr, long[] jArr, long j10, boolean z6) {
            com.google.android.exoplayer2.util.a.a(iArr.length == uriArr.length);
            this.timeUs = j6;
            this.count = i10;
            this.originalCount = i11;
            this.states = iArr;
            this.uris = uriArr;
            this.durationsUs = jArr;
            this.contentResumeOffsetUs = j10;
            this.isServerSideInserted = z6;
        }

        private static String h(int i10) {
            return Integer.toString(i10, 36);
        }

        public boolean g() {
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

        public boolean i() {
            return this.count == -1 || e() < this.count;
        }

        @CheckResult
        public a j(int i10) {
            int[] iArrC = c(this.states, i10);
            long[] jArrB = b(this.durationsUs, i10);
            return new a(this.timeUs, i10, this.originalCount, iArrC, (Uri[]) Arrays.copyOf(this.uris, i10), jArrB, this.contentResumeOffsetUs, this.isServerSideInserted);
        }

        @Override // com.google.android.exoplayer2.h
        public Bundle toBundle() {
            Bundle bundle = new Bundle();
            bundle.putLong(h(0), this.timeUs);
            bundle.putInt(h(1), this.count);
            bundle.putInt(h(7), this.originalCount);
            bundle.putParcelableArrayList(h(2), new ArrayList<>(Arrays.asList(this.uris)));
            bundle.putIntArray(h(3), this.states);
            bundle.putLongArray(h(4), this.durationsUs);
            bundle.putLong(h(5), this.contentResumeOffsetUs);
            bundle.putBoolean(h(6), this.isServerSideInserted);
            return bundle;
        }
    }

    public c(Object obj, long... jArr) {
        this(obj, b(jArr), 0L, -9223372036854775807L, 0);
    }

    private static a[] b(long[] jArr) {
        int length = jArr.length;
        a[] aVarArr = new a[length];
        for (int i10 = 0; i10 < length; i10++) {
            aVarArr[i10] = new a(jArr[i10]);
        }
        return aVarArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static c c(Bundle bundle) {
        a[] aVarArr;
        ArrayList parcelableArrayList = bundle.getParcelableArrayList(h(1));
        if (parcelableArrayList == null) {
            aVarArr = new a[0];
        } else {
            a[] aVarArr2 = new a[parcelableArrayList.size()];
            for (int i10 = 0; i10 < parcelableArrayList.size(); i10++) {
                aVarArr2[i10] = (a) a.CREATOR.a((Bundle) parcelableArrayList.get(i10));
            }
            aVarArr = aVarArr2;
        }
        return new c(null, aVarArr, bundle.getLong(h(2), 0L), bundle.getLong(h(3), -9223372036854775807L), bundle.getInt(h(4)));
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || c.class != obj.getClass()) {
            return false;
        }
        c cVar = (c) obj;
        return o0.c(this.adsId, cVar.adsId) && this.adGroupCount == cVar.adGroupCount && this.adResumePositionUs == cVar.adResumePositionUs && this.contentDurationUs == cVar.contentDurationUs && this.removedAdGroupCount == cVar.removedAdGroupCount && Arrays.equals(this.adGroups, cVar.adGroups);
    }

    private boolean g(long j6, long j10, int i10) {
        if (j6 == Long.MIN_VALUE) {
            return false;
        }
        long j11 = d(i10).timeUs;
        if (j11 == Long.MIN_VALUE) {
            return j10 == -9223372036854775807L || j6 < j10;
        }
        return j6 < j11;
    }

    private static String h(int i10) {
        return Integer.toString(i10, 36);
    }

    public a d(@IntRange int i10) {
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
        while (i10 < this.adGroupCount && ((d(i10).timeUs != Long.MIN_VALUE && d(i10).timeUs <= j6) || !d(i10).i())) {
            i10++;
        }
        if (i10 < this.adGroupCount) {
            return i10;
        }
        return -1;
    }

    public int f(long j6, long j10) {
        int i10 = this.adGroupCount - 1;
        while (i10 >= 0 && g(j6, j10, i10)) {
            i10--;
        }
        if (i10 < 0 || !d(i10).g()) {
            return -1;
        }
        return i10;
    }

    public int hashCode() {
        int i10 = this.adGroupCount * 31;
        Object obj = this.adsId;
        return ((((((((i10 + (obj == null ? 0 : obj.hashCode())) * 31) + ((int) this.adResumePositionUs)) * 31) + ((int) this.contentDurationUs)) * 31) + this.removedAdGroupCount) * 31) + Arrays.hashCode(this.adGroups);
    }

    @Override // com.google.android.exoplayer2.h
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
        for (a aVar : this.adGroups) {
            arrayList.add(aVar.toBundle());
        }
        bundle.putParcelableArrayList(h(1), arrayList);
        bundle.putLong(h(2), this.adResumePositionUs);
        bundle.putLong(h(3), this.contentDurationUs);
        bundle.putInt(h(4), this.removedAdGroupCount);
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

    private c(@Nullable Object obj, a[] aVarArr, long j6, long j10, int i10) {
        this.adsId = obj;
        this.adResumePositionUs = j6;
        this.contentDurationUs = j10;
        this.adGroupCount = aVarArr.length + i10;
        this.adGroups = aVarArr;
        this.removedAdGroupCount = i10;
    }
}
