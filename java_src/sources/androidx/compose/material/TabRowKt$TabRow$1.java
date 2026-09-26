package androidx.compose.material;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.ComposableTarget;
import androidx.compose.runtime.Composer;
import androidx.compose.ui.Modifier;
import e8.q;
import java.util.List;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes5.dex */
final class TabRowKt$TabRow$1 extends v implements q<List<? extends TabPosition>, Composer, Integer, l0> {
    final /* synthetic */ int $selectedTabIndex;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    TabRowKt$TabRow$1(int i10) {
        super(3);
        this.$selectedTabIndex = i10;
    }

    @ComposableTarget
    @Composable
    public final void a(@NotNull List<TabPosition> tabPositions, @Nullable Composer composer, int i10) {
        t.j(tabPositions, "tabPositions");
        TabRowDefaults tabRowDefaults = TabRowDefaults.INSTANCE;
        tabRowDefaults.b(tabRowDefaults.e(Modifier.Companion, tabPositions.get(this.$selectedTabIndex)), 0.0f, 0L, composer, 3072, 6);
    }

    @Override // e8.q
    public /* bridge */ /* synthetic */ l0 invoke(List<? extends TabPosition> list, Composer composer, Integer num) {
        a(list, composer, num.intValue());
        return l0.INSTANCE;
    }
}
