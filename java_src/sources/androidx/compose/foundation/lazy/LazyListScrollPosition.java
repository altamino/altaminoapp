package androidx.compose.foundation.lazy;

import androidx.compose.foundation.ExperimentalFoundationApi;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.snapshots.Snapshot;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes10.dex */
public final class LazyListScrollPosition {

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
        @ExperimentalFoundationApi
        public final int b(Object obj, int i10, LazyListItemProvider lazyListItemProvider) {
            Integer num;
            if (obj == null) {
                return i10;
            }
            return ((i10 >= lazyListItemProvider.f() || !t.e(obj, lazyListItemProvider.d(i10))) && (num = lazyListItemProvider.c().get(obj)) != null) ? DataIndex.b(num.intValue()) : i10;
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public LazyListScrollPosition() {
        int i10 = 0;
        this(i10, i10, 3, null);
    }

    private final void f(int i10, int i11) {
        if (i10 < 0.0f) {
            throw new IllegalArgumentException(("Index should be non-negative (" + i10 + ')').toString());
        }
        if (!DataIndex.d(i10, a())) {
            d(i10);
        }
        if (i11 != b()) {
            e(i11);
        }
    }

    public LazyListScrollPosition(int i10, int i11) {
        this.index$delegate = SnapshotStateKt__SnapshotStateKt.e(DataIndex.a(DataIndex.b(i10)), null, 2, null);
        this.scrollOffset$delegate = SnapshotStateKt__SnapshotStateKt.e(Integer.valueOf(i11), null, 2, null);
    }

    private final void e(int i10) {
        this.scrollOffset$delegate.setValue(Integer.valueOf(i10));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final int a() {
        return ((DataIndex) this.index$delegate.getValue()).g();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final int b() {
        return ((Number) this.scrollOffset$delegate.getValue()).intValue();
    }

    public final void d(int i10) {
        this.index$delegate.setValue(DataIndex.a(i10));
    }

    public final void g(@NotNull LazyListMeasureResult measureResult) {
        t.j(measureResult, "measureResult");
        LazyMeasuredItem lazyMeasuredItemG = measureResult.g();
        this.lastKnownFirstItemKey = lazyMeasuredItemG != null ? lazyMeasuredItemG.c() : null;
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
                    LazyMeasuredItem lazyMeasuredItemG2 = measureResult.g();
                    f(DataIndex.b(lazyMeasuredItemG2 != null ? lazyMeasuredItemG2.b() : 0), iH);
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

    @ExperimentalFoundationApi
    public final void h(@NotNull LazyListItemProvider itemProvider) {
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

    public /* synthetic */ LazyListScrollPosition(int i10, int i11, int i12, k kVar) {
        this((i12 & 1) != 0 ? 0 : i10, (i12 & 2) != 0 ? 0 : i11);
    }
}
