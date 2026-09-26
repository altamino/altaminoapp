package androidx.compose.runtime.snapshots;

import androidx.compose.runtime.Immutable;
import e8.p;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.collections.d0;
import kotlin.collections.o;
import kotlin.collections.w;
import kotlin.coroutines.d;
import kotlin.coroutines.jvm.internal.f;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import kotlin.sequences.i;
import kotlinx.serialization.json.internal.b;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes6.dex */
@Immutable
public final class SnapshotIdSet implements Iterable<Integer>, f8.a {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    private static final SnapshotIdSet EMPTY = new SnapshotIdSet(0, 0, 0, null);

    @Nullable
    private final int[] belowBound;
    private final int lowerBound;
    private final long lowerSet;
    private final long upperSet;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        @NotNull
        public final SnapshotIdSet a() {
            return SnapshotIdSet.EMPTY;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.runtime.snapshots.SnapshotIdSet$iterator$1, reason: invalid class name */
    @f(c = "androidx.compose.runtime.snapshots.SnapshotIdSet$iterator$1", f = "SnapshotIdSet.kt", l = {295, 300, 307}, m = "invokeSuspend")
    static final class AnonymousClass1 extends kotlin.coroutines.jvm.internal.k implements p<i<? super Integer>, d<? super l0>, Object> {
        int I$0;
        int I$1;
        private /* synthetic */ Object L$0;
        Object L$1;
        int label;

        AnonymousClass1(d<? super AnonymousClass1> dVar) {
            super(2, dVar);
        }

        @Override // kotlin.coroutines.jvm.internal.a
        @NotNull
        public final d<l0> create(@Nullable Object obj, @NotNull d<?> dVar) {
            AnonymousClass1 anonymousClass1 = SnapshotIdSet.this.new AnonymousClass1(dVar);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override // e8.p
        @Nullable
        public final Object invoke(@NotNull i<? super Integer> iVar, @Nullable d<? super l0> dVar) {
            return ((AnonymousClass1) create(iVar, dVar)).invokeSuspend(l0.INSTANCE);
        }

        /* JADX WARN: Code duplicated, block: B:26:0x008f  */
        /* JADX WARN: Code duplicated, block: B:28:0x009d  */
        /* JADX WARN: Code duplicated, block: B:30:0x00b6 A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:32:0x00b9  */
        /* JADX WARN: Code duplicated, block: B:35:0x00c4  */
        /* JADX WARN: Code duplicated, block: B:37:0x00c9  */
        /* JADX WARN: Code duplicated, block: B:39:0x00d6  */
        /* JADX WARN: Code duplicated, block: B:41:0x00f2 A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:42:0x00f3  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0078 -> B:19:0x007b). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x009b -> B:31:0x00b7). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x00b4 -> B:31:0x00b7). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:40:0x00f0 -> B:43:0x00f4). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:42:0x00f3 -> B:43:0x00f4). Please report as a decompilation issue!!! */
        /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached at block B:26:0x008f
            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
            	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
            */
        @Override // kotlin.coroutines.jvm.internal.a
        @org.jetbrains.annotations.Nullable
        public final java.lang.Object invokeSuspend(@org.jetbrains.annotations.NotNull java.lang.Object r21) {
            /*
                Method dump skipped, instruction units count: 249
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.snapshots.SnapshotIdSet.AnonymousClass1.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    @Override // java.lang.Iterable
    @NotNull
    public Iterator<Integer> iterator() {
        return kotlin.sequences.k.b(new AnonymousClass1(null)).iterator();
    }

    @NotNull
    public final SnapshotIdSet j(@NotNull SnapshotIdSet bits) {
        t.j(bits, "bits");
        SnapshotIdSet snapshotIdSet = EMPTY;
        if (bits == snapshotIdSet) {
            return this;
        }
        if (this == snapshotIdSet) {
            return snapshotIdSet;
        }
        int i10 = bits.lowerBound;
        int i11 = this.lowerBound;
        if (i10 == i11) {
            int[] iArr = bits.belowBound;
            int[] iArr2 = this.belowBound;
            if (iArr == iArr2) {
                return new SnapshotIdSet(this.upperSet & (~bits.upperSet), this.lowerSet & (~bits.lowerSet), i11, iArr2);
            }
        }
        Iterator<Integer> it = bits.iterator();
        SnapshotIdSet snapshotIdSetM = this;
        while (it.hasNext()) {
            snapshotIdSetM = snapshotIdSetM.m(it.next().intValue());
        }
        return snapshotIdSetM;
    }

    @NotNull
    public final SnapshotIdSet m(int i10) {
        int[] iArr;
        int iB;
        int i11 = this.lowerBound;
        int i12 = i10 - i11;
        if (i12 >= 0 && i12 < 64) {
            long j6 = 1 << i12;
            long j10 = this.lowerSet;
            if ((j10 & j6) != 0) {
                return new SnapshotIdSet(this.upperSet, j10 & (~j6), i11, this.belowBound);
            }
        } else if (i12 >= 64 && i12 < 128) {
            long j11 = 1 << (i12 - 64);
            long j12 = this.upperSet;
            if ((j12 & j11) != 0) {
                return new SnapshotIdSet(j12 & (~j11), this.lowerSet, i11, this.belowBound);
            }
        } else if (i12 < 0 && (iArr = this.belowBound) != null && (iB = SnapshotIdSetKt.b(iArr, i10)) >= 0) {
            int length = iArr.length;
            int i13 = length - 1;
            if (i13 == 0) {
                return new SnapshotIdSet(this.upperSet, this.lowerSet, this.lowerBound, null);
            }
            int[] iArr2 = new int[i13];
            if (iB > 0) {
                o.g(iArr, iArr2, 0, 0, iB);
            }
            if (iB < i13) {
                o.g(iArr, iArr2, iB, iB + 1, length);
            }
            return new SnapshotIdSet(this.upperSet, this.lowerSet, this.lowerBound, iArr2);
        }
        return this;
    }

    public final boolean p(int i10) {
        int[] iArr;
        int i11 = i10 - this.lowerBound;
        if (i11 >= 0 && i11 < 64) {
            return ((1 << i11) & this.lowerSet) != 0;
        }
        if (i11 >= 64 && i11 < 128) {
            return ((1 << (i11 - 64)) & this.upperSet) != 0;
        }
        if (i11 <= 0 && (iArr = this.belowBound) != null) {
            return SnapshotIdSetKt.b(iArr, i10) >= 0;
        }
        return false;
    }

    public final int q(int i10) {
        int[] iArr = this.belowBound;
        if (iArr != null) {
            return iArr[0];
        }
        long j6 = this.lowerSet;
        if (j6 != 0) {
            return this.lowerBound + SnapshotIdSetKt.c(j6);
        }
        long j10 = this.upperSet;
        return j10 != 0 ? this.lowerBound + 64 + SnapshotIdSetKt.c(j10) : i10;
    }

    @NotNull
    public final SnapshotIdSet r(@NotNull SnapshotIdSet bits) {
        t.j(bits, "bits");
        SnapshotIdSet snapshotIdSet = EMPTY;
        if (bits == snapshotIdSet) {
            return this;
        }
        if (this == snapshotIdSet) {
            return bits;
        }
        int i10 = bits.lowerBound;
        int i11 = this.lowerBound;
        if (i10 == i11) {
            int[] iArr = bits.belowBound;
            int[] iArr2 = this.belowBound;
            if (iArr == iArr2) {
                return new SnapshotIdSet(this.upperSet | bits.upperSet, this.lowerSet | bits.lowerSet, i11, iArr2);
            }
        }
        if (this.belowBound == null) {
            Iterator<Integer> it = iterator();
            while (it.hasNext()) {
                bits = bits.s(it.next().intValue());
            }
            return bits;
        }
        Iterator<Integer> it2 = bits.iterator();
        SnapshotIdSet snapshotIdSetS = this;
        while (it2.hasNext()) {
            snapshotIdSetS = snapshotIdSetS.s(it2.next().intValue());
        }
        return snapshotIdSetS;
    }

    @NotNull
    public final SnapshotIdSet s(int i10) {
        int i11;
        int[] iArrT0;
        int i12 = this.lowerBound;
        int i13 = i10 - i12;
        long j6 = 0;
        if (i13 >= 0 && i13 < 64) {
            long j10 = 1 << i13;
            long j11 = this.lowerSet;
            if ((j11 & j10) == 0) {
                return new SnapshotIdSet(this.upperSet, j11 | j10, i12, this.belowBound);
            }
        } else if (i13 >= 64 && i13 < 128) {
            long j12 = 1 << (i13 - 64);
            long j13 = this.upperSet;
            if ((j13 & j12) == 0) {
                return new SnapshotIdSet(j13 | j12, this.lowerSet, i12, this.belowBound);
            }
        } else if (i13 < 128) {
            int[] iArr = this.belowBound;
            if (iArr == null) {
                return new SnapshotIdSet(this.upperSet, this.lowerSet, i12, new int[]{i10});
            }
            int iB = SnapshotIdSetKt.b(iArr, i10);
            if (iB < 0) {
                int i14 = -(iB + 1);
                int length = iArr.length;
                int[] iArr2 = new int[length + 1];
                o.g(iArr, iArr2, 0, 0, i14);
                o.g(iArr, iArr2, i14 + 1, i14, length);
                iArr2[i14] = i10;
                return new SnapshotIdSet(this.upperSet, this.lowerSet, this.lowerBound, iArr2);
            }
        } else if (!p(i10)) {
            long j14 = this.upperSet;
            long j15 = this.lowerSet;
            int i15 = this.lowerBound;
            int i16 = ((i10 + 1) / 64) * 64;
            ArrayList arrayList = null;
            long j16 = j15;
            long j17 = j14;
            while (true) {
                if (i15 >= i16) {
                    i11 = i15;
                    break;
                }
                if (j16 != j6) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                        int[] iArr3 = this.belowBound;
                        if (iArr3 != null) {
                            for (int i17 : iArr3) {
                                arrayList.add(Integer.valueOf(i17));
                            }
                        }
                    }
                    for (int i18 = 0; i18 < 64; i18++) {
                        if (((1 << i18) & j16) != 0) {
                            arrayList.add(Integer.valueOf(i18 + i15));
                        }
                    }
                    j6 = 0;
                }
                if (j17 == j6) {
                    i11 = i16;
                    j16 = j6;
                    break;
                }
                i15 += 64;
                j16 = j17;
                j17 = j6;
            }
            if (arrayList == null || (iArrT0 = d0.T0(arrayList)) == null) {
                iArrT0 = this.belowBound;
            }
            return new SnapshotIdSet(j17, j16, i11, iArrT0).s(i10);
        }
        return this;
    }

    @NotNull
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append(" [");
        ArrayList arrayList = new ArrayList(w.x(this, 10));
        Iterator<Integer> it = iterator();
        while (it.hasNext()) {
            arrayList.add(String.valueOf(it.next().intValue()));
        }
        sb.append(ListUtilsKt.d(arrayList, null, null, null, 0, null, null, 63, null));
        sb.append(b.END_LIST);
        return sb.toString();
    }

    private SnapshotIdSet(long j6, long j10, int i10, int[] iArr) {
        this.upperSet = j6;
        this.lowerSet = j10;
        this.lowerBound = i10;
        this.belowBound = iArr;
    }
}
