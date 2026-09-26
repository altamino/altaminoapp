package androidx.compose.foundation.lazy.grid;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.snapshots.Snapshot;
import kotlin.collections.p;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes4.dex */
public final class LazyGridScrollPosition {

    @NotNull
    private static final Companion Companion = new Companion(null);
    private boolean hadFirstNotEmptyLayout;

    @NotNull
    private final MutableState index$delegate;

    @Nullable
    private Object lastKnownFirstItemKey;

    @NotNull
    private final MutableState scrollOffset$delegate;

    private static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final int b(Object obj, int i10, LazyGridItemProvider lazyGridItemProvider) {
            Integer num;
            if (obj == null) {
                return i10;
            }
            return ((i10 >= lazyGridItemProvider.f() || !t.e(obj, lazyGridItemProvider.d(i10))) && (num = lazyGridItemProvider.c().get(obj)) != null) ? ItemIndex.b(num.intValue()) : i10;
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public LazyGridScrollPosition() {
        int i10 = 0;
        this(i10, i10, 3, null);
    }

    private final void f(int i10, int i11) {
        if (i10 < 0.0f) {
            throw new IllegalArgumentException(("Index should be non-negative (" + i10 + ')').toString());
        }
        if (!ItemIndex.d(i10, a())) {
            d(i10);
        }
        if (i11 != b()) {
            e(i11);
        }
    }

    public LazyGridScrollPosition(int i10, int i11) {
        this.index$delegate = SnapshotStateKt__SnapshotStateKt.e(ItemIndex.a(ItemIndex.b(i10)), null, 2, null);
        this.scrollOffset$delegate = SnapshotStateKt__SnapshotStateKt.e(Integer.valueOf(i11), null, 2, null);
    }

    private final void d(int i10) {
        this.index$delegate.setValue(ItemIndex.a(i10));
    }

    private final void e(int i10) {
        this.scrollOffset$delegate.setValue(Integer.valueOf(i10));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final int a() {
        return ((ItemIndex) this.index$delegate.getValue()).g();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final int b() {
        return ((Number) this.scrollOffset$delegate.getValue()).intValue();
    }

    public final void g(@NotNull LazyGridMeasureResult measureResult) {
        LazyMeasuredItem[] lazyMeasuredItemArrB;
        LazyMeasuredItem lazyMeasuredItem;
        LazyMeasuredItem[] lazyMeasuredItemArrB2;
        LazyMeasuredItem lazyMeasuredItem2;
        t.j(measureResult, "measureResult");
        LazyMeasuredLine lazyMeasuredLineG = measureResult.g();
        this.lastKnownFirstItemKey = (lazyMeasuredLineG == null || (lazyMeasuredItemArrB2 = lazyMeasuredLineG.b()) == null || (lazyMeasuredItem2 = (LazyMeasuredItem) p.N(lazyMeasuredItemArrB2)) == null) ? null : lazyMeasuredItem2.c();
        if (this.hadFirstNotEmptyLayout || measureResult.a() > 0) {
            this.hadFirstNotEmptyLayout = true;
            int iH = measureResult.h();
            if (iH < 0.0f) {
                throw new IllegalStateException(("scrollOffset should be non-negative (" + iH + ')').toString());
            }
            Snapshot snapshotA = Snapshot.Companion.a();
            try {
                Snapshot snapshotK = snapshotA.k();
                try {
                    LazyMeasuredLine lazyMeasuredLineG2 = measureResult.g();
                    f(ItemIndex.b((lazyMeasuredLineG2 == null || (lazyMeasuredItemArrB = lazyMeasuredLineG2.b()) == null || (lazyMeasuredItem = (LazyMeasuredItem) p.N(lazyMeasuredItemArrB)) == null) ? 0 : lazyMeasuredItem.b()), iH);
                    l0 l0Var = l0.INSTANCE;
                    snapshotA.r(snapshotK);
                    snapshotA.d();
                } catch (Throwable th) {
                    snapshotA.r(snapshotK);
                    throw th;
                }
            } catch (Throwable th2) {
                snapshotA.d();
                throw th2;
            }
        }
    }

    public final void h(@NotNull LazyGridItemProvider itemProvider) {
        t.j(itemProvider, "itemProvider");
        Snapshot snapshotA = Snapshot.Companion.a();
        try {
            Snapshot snapshotK = snapshotA.k();
            try {
                f(Companion.b(this.lastKnownFirstItemKey, a(), itemProvider), b());
                l0 l0Var = l0.INSTANCE;
                snapshotA.r(snapshotK);
                snapshotA.d();
            } catch (Throwable th) {
                snapshotA.r(snapshotK);
                throw th;
            }
        } catch (Throwable th2) {
            snapshotA.d();
            throw th2;
        }
    }

    public final void c(int i10, int i11) {
        f(i10, i11);
        this.lastKnownFirstItemKey = null;
    }

    public /* synthetic */ LazyGridScrollPosition(int i10, int i11, int i12, k kVar) {
        this((i12 & 1) != 0 ? 0 : i10, (i12 & 2) != 0 ? 0 : i11);
    }
}
