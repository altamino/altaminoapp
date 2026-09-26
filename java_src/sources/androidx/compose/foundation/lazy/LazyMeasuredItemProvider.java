package androidx.compose.foundation.lazy;

import androidx.compose.foundation.ExperimentalFoundationApi;
import androidx.compose.foundation.lazy.layout.LazyLayoutMeasureScope;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import java.util.Map;
import kotlin.jvm.internal.k;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
public final class LazyMeasuredItemProvider {
    private final long childConstraints;

    @NotNull
    private final LazyListItemProvider itemProvider;

    @NotNull
    private final LazyLayoutMeasureScope measureScope;

    @NotNull
    private final MeasuredItemFactory measuredItemFactory;

    @ExperimentalFoundationApi
    public /* synthetic */ LazyMeasuredItemProvider(long j6, boolean z6, LazyListItemProvider lazyListItemProvider, LazyLayoutMeasureScope lazyLayoutMeasureScope, MeasuredItemFactory measuredItemFactory, k kVar) {
        this(j6, z6, lazyListItemProvider, lazyLayoutMeasureScope, measuredItemFactory);
    }

    public final long b() {
        return this.childConstraints;
    }

    private LazyMeasuredItemProvider(long j6, boolean z6, LazyListItemProvider lazyListItemProvider, LazyLayoutMeasureScope lazyLayoutMeasureScope, MeasuredItemFactory measuredItemFactory) {
        this.itemProvider = lazyListItemProvider;
        this.measureScope = lazyLayoutMeasureScope;
        this.measuredItemFactory = measuredItemFactory;
        this.childConstraints = ConstraintsKt.b(0, z6 ? Constraints.n(j6) : Integer.MAX_VALUE, 0, z6 ? Integer.MAX_VALUE : Constraints.m(j6), 5, null);
    }

    @NotNull
    public final LazyMeasuredItem a(int i10) {
        return this.measuredItemFactory.a(i10, this.itemProvider.d(i10), this.measureScope.t(i10, this.childConstraints));
    }

    @NotNull
    public final Map<Object, Integer> c() {
        return this.itemProvider.c();
    }
}
