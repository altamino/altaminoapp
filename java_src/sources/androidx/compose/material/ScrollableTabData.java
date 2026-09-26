package androidx.compose.material;

import androidx.compose.foundation.ScrollState;
import androidx.compose.ui.unit.Density;
import j8.o;
import java.util.List;
import kotlin.collections.d0;
import kotlin.jvm.internal.t;
import kotlinx.coroutines.k;
import kotlinx.coroutines.o0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
final class ScrollableTabData {

    @NotNull
    private final o0 coroutineScope;

    @NotNull
    private final ScrollState scrollState;

    @Nullable
    private Integer selectedTab;

    public ScrollableTabData(@NotNull ScrollState scrollState, @NotNull o0 coroutineScope) {
        t.j(scrollState, "scrollState");
        t.j(coroutineScope, "coroutineScope");
        this.scrollState = scrollState;
        this.coroutineScope = coroutineScope;
    }

    public final void c(@NotNull Density density, int i10, @NotNull List<TabPosition> tabPositions, int i11) {
        int iB;
        t.j(density, "density");
        t.j(tabPositions, "tabPositions");
        Integer num = this.selectedTab;
        if (num != null && num.intValue() == i11) {
            return;
        }
        this.selectedTab = Integer.valueOf(i11);
        TabPosition tabPosition = (TabPosition) d0.m0(tabPositions, i11);
        if (tabPosition == null || this.scrollState.k() == (iB = b(tabPosition, density, i10, tabPositions))) {
            return;
        }
        k.d(this.coroutineScope, null, null, new ScrollableTabData$onLaidOut$1$1(this, iB, null), 3, null);
    }

    private final int b(TabPosition tabPosition, Density density, int i10, List<TabPosition> list) {
        int iJ0 = density.j0(((TabPosition) d0.v0(list)).b()) + i10;
        int iJ = iJ0 - this.scrollState.j();
        return o.n(density.j0(tabPosition.a()) - ((iJ / 2) - (density.j0(tabPosition.c()) / 2)), 0, o.e(iJ0 - iJ, 0));
    }
}
