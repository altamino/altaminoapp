package androidx.compose.foundation.lazy.grid;

import androidx.compose.runtime.internal.StabilityInferred;
import j8.o;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.v;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes5.dex */
public final class LazyGridSpanLayoutProvider {

    @NotNull
    private final ArrayList<Bucket> buckets;

    @NotNull
    private final List<Integer> cachedBucket;
    private int cachedBucketIndex;

    @NotNull
    private final LazyGridItemsSnapshot itemsSnapshot;
    private int lastLineIndex;
    private int lastLineStartItemIndex;
    private int lastLineStartKnownSpan;

    @NotNull
    private List<GridItemSpan> previousDefaultSpans;
    private int slotsPerLine;

    /* JADX INFO: Access modifiers changed from: private */
    static final class Bucket {
        private final int firstItemIndex;
        private final int firstItemKnownSpan;

        public Bucket(int i10, int i11) {
            this.firstItemIndex = i10;
            this.firstItemKnownSpan = i11;
        }

        public final int a() {
            return this.firstItemIndex;
        }

        public final int b() {
            return this.firstItemKnownSpan;
        }

        public /* synthetic */ Bucket(int i10, int i11, int i12, k kVar) {
            this(i10, (i12 & 2) != 0 ? 0 : i11);
        }
    }

    @StabilityInferred
    public static final class LineConfiguration {
        public static final int $stable = 8;
        private final int firstItemIndex;

        @NotNull
        private final List<GridItemSpan> spans;

        public final int a() {
            return this.firstItemIndex;
        }

        @NotNull
        public final List<GridItemSpan> b() {
            return this.spans;
        }

        public LineConfiguration(int i10, @NotNull List<GridItemSpan> spans) {
            t.j(spans, "spans");
            this.firstItemIndex = i10;
            this.spans = spans;
        }
    }

    private static final class LazyGridItemSpanScopeImpl implements LazyGridItemSpanScope {

        @NotNull
        public static final LazyGridItemSpanScopeImpl INSTANCE = new LazyGridItemSpanScopeImpl();
        private static int maxCurrentLineSpan;
        private static int maxLineSpan;

        public void a(int i10) {
            maxCurrentLineSpan = i10;
        }

        public void b(int i10) {
            maxLineSpan = i10;
        }

        private LazyGridItemSpanScopeImpl() {
        }
    }

    public LazyGridSpanLayoutProvider(@NotNull LazyGridItemsSnapshot itemsSnapshot) {
        t.j(itemsSnapshot, "itemsSnapshot");
        this.itemsSnapshot = itemsSnapshot;
        ArrayList<Bucket> arrayList = new ArrayList<>();
        int i10 = 0;
        arrayList.add(new Bucket(i10, i10, 2, null));
        this.buckets = arrayList;
        this.cachedBucketIndex = -1;
        this.cachedBucket = new ArrayList();
        this.previousDefaultSpans = v.m();
    }

    private final List<GridItemSpan> b(int i10) {
        if (i10 == this.previousDefaultSpans.size()) {
            return this.previousDefaultSpans;
        }
        ArrayList arrayList = new ArrayList(i10);
        for (int i11 = 0; i11 < i10; i11++) {
            arrayList.add(GridItemSpan.a(LazyGridSpanKt.a(1)));
        }
        this.previousDefaultSpans = arrayList;
        return arrayList;
    }

    private final void f() {
        this.buckets.clear();
        int i10 = 0;
        this.buckets.add(new Bucket(i10, i10, 2, null));
        this.lastLineIndex = 0;
        this.lastLineStartItemIndex = 0;
        this.cachedBucketIndex = -1;
        this.cachedBucket.clear();
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    private final int h(int i10, int i11) {
        LazyGridItemsSnapshot lazyGridItemsSnapshot = this.itemsSnapshot;
        LazyGridItemSpanScopeImpl lazyGridItemSpanScopeImpl = LazyGridItemSpanScopeImpl.INSTANCE;
        lazyGridItemSpanScopeImpl.a(i11);
        lazyGridItemSpanScopeImpl.b(this.slotsPerLine);
        return o.n(GridItemSpan.d(lazyGridItemsSnapshot.g(lazyGridItemSpanScopeImpl, i10)), 1, this.slotsPerLine);
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0090  */
    @NotNull
    public final LineConfiguration c(int i10) {
        int i11;
        boolean z6;
        int i12;
        int i13;
        if (!this.itemsSnapshot.c()) {
            int i14 = i10 * this.slotsPerLine;
            return new LineConfiguration(i14, b(o.e(o.j(this.slotsPerLine, e() - i14), 0)));
        }
        int iMin = Math.min(i10 / a(), this.buckets.size() - 1);
        int iA = a() * iMin;
        int iA2 = this.buckets.get(iMin).a();
        int iB = this.buckets.get(iMin).b();
        int i15 = this.lastLineIndex;
        if (iA <= i15 && i15 <= i10) {
            iA2 = this.lastLineStartItemIndex;
            iB = this.lastLineStartKnownSpan;
            iA = i15;
        } else if (iMin == this.cachedBucketIndex && (i11 = i10 - iA) < this.cachedBucket.size()) {
            iA2 = this.cachedBucket.get(i11).intValue();
            iA = i10;
            iB = 0;
        }
        if (iA % a() == 0) {
            int i16 = i10 - iA;
            z6 = 2 <= i16 && i16 < a();
        }
        if (z6) {
            this.cachedBucketIndex = iMin;
            this.cachedBucket.clear();
        }
        if (iA > i10) {
            throw new IllegalStateException("Check failed.".toString());
        }
        while (iA < i10 && iA2 < e()) {
            if (z6) {
                this.cachedBucket.add(Integer.valueOf(iA2));
            }
            int i17 = 0;
            while (i17 < this.slotsPerLine && iA2 < e()) {
                if (iB == 0) {
                    i13 = iB;
                    iB = h(iA2, this.slotsPerLine - i17);
                } else {
                    i13 = 0;
                }
                i17 += iB;
                if (i17 > this.slotsPerLine) {
                    break;
                }
                iA2++;
                iB = i13;
            }
            iA++;
            if (iA % a() == 0 && iA2 < e()) {
                if (this.buckets.size() != iA / a()) {
                    throw new IllegalStateException("Check failed.".toString());
                }
                this.buckets.add(new Bucket(iA2, iB));
            }
        }
        this.lastLineIndex = i10;
        this.lastLineStartItemIndex = iA2;
        this.lastLineStartKnownSpan = iB;
        ArrayList arrayList = new ArrayList();
        int i18 = 0;
        int i19 = iA2;
        while (i18 < this.slotsPerLine && i19 < e()) {
            if (iB == 0) {
                int i20 = iB;
                iB = h(i19, this.slotsPerLine - i18);
                i12 = i20;
            } else {
                i12 = 0;
            }
            i18 += iB;
            if (i18 > this.slotsPerLine) {
                break;
            }
            i19++;
            arrayList.add(GridItemSpan.a(LazyGridSpanKt.a(iB)));
            iB = i12;
        }
        return new LineConfiguration(iA2, arrayList);
    }

    public final int e() {
        return this.itemsSnapshot.d();
    }

    public final void g(int i10) {
        if (i10 != this.slotsPerLine) {
            this.slotsPerLine = i10;
            f();
        }
    }

    private final int a() {
        return ((int) Math.sqrt((((double) e()) * 1.0d) / ((double) this.slotsPerLine))) + 1;
    }

    public final int d(int i10) {
        int i11;
        int i12 = 0;
        if (e() <= 0) {
            return LineIndex.b(0);
        }
        if (i10 < e()) {
            if (this.itemsSnapshot.c()) {
                int iK = v.k(this.buckets, 0, 0, new LazyGridSpanLayoutProvider$getLineIndexOfItem$lowerBoundBucket$1(i10), 3, null);
                int i13 = 2;
                if (iK < 0) {
                    iK = (-iK) - 2;
                }
                int iA = a() * iK;
                int iA2 = this.buckets.get(iK).a();
                if (iA2 <= i10) {
                    int i14 = 0;
                    while (iA2 < i10) {
                        int i15 = iA2 + 1;
                        int iH = h(iA2, this.slotsPerLine - i14);
                        i14 += iH;
                        int i16 = this.slotsPerLine;
                        if (i14 >= i16) {
                            if (i14 == i16) {
                                iA++;
                                i14 = 0;
                            } else {
                                iA++;
                                i14 = iH;
                            }
                        }
                        if (iA % a() == 0 && iA / a() >= this.buckets.size()) {
                            ArrayList<Bucket> arrayList = this.buckets;
                            if (i14 > 0) {
                                i11 = 1;
                            } else {
                                i11 = 0;
                            }
                            arrayList.add(new Bucket(i15 - i11, i12, i13, null));
                        }
                        iA2 = i15;
                    }
                    if (i14 + h(i10, this.slotsPerLine - i14) > this.slotsPerLine) {
                        iA++;
                    }
                    return LineIndex.b(iA);
                }
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
            return LineIndex.b(i10 / this.slotsPerLine);
        }
        throw new IllegalArgumentException("Failed requirement.".toString());
    }
}
