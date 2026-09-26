package androidx.compose.foundation.lazy;

import androidx.compose.foundation.ExperimentalFoundationApi;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.semantics.CollectionInfo;
import androidx.compose.ui.semantics.ScrollAxisRange;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import kotlin.jvm.internal.t;
import kotlinx.coroutines.o0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
public final class LazySemanticsKt {
    @Composable
    @ExperimentalFoundationApi
    @NotNull
    public static final Modifier a(@NotNull Modifier modifier, @NotNull LazyListItemProvider itemProvider, @NotNull LazyListState state, @NotNull o0 coroutineScope, boolean z6, boolean z10, boolean z11, @Nullable Composer composer, int i10) {
        t.j(modifier, "<this>");
        t.j(itemProvider, "itemProvider");
        t.j(state, "state");
        t.j(coroutineScope, "coroutineScope");
        composer.G(-1728067365);
        Object[] objArr = {itemProvider, state, Boolean.valueOf(z6), Boolean.valueOf(z10), Boolean.valueOf(z11)};
        composer.G(-568225417);
        boolean zK = false;
        for (int i11 = 0; i11 < 5; i11++) {
            zK |= composer.k(objArr[i11]);
        }
        Object objH = composer.H();
        if (zK || objH == Composer.Companion.a()) {
            objH = SemanticsModifierKt.c(Modifier.Companion, false, new LazySemanticsKt$lazyListSemantics$1$1(new LazySemanticsKt$lazyListSemantics$1$indexForKeyMapping$1(itemProvider), z6, new ScrollAxisRange(new LazySemanticsKt$lazyListSemantics$1$accessibilityScrollState$1(state), new LazySemanticsKt$lazyListSemantics$1$accessibilityScrollState$2(state, itemProvider), z10), z11 ? new LazySemanticsKt$lazyListSemantics$1$scrollByAction$1(z6, coroutineScope, state) : null, z11 ? new LazySemanticsKt$lazyListSemantics$1$scrollToIndexAction$1(state, coroutineScope) : null, new CollectionInfo(z6 ? -1 : 1, z6 ? 1 : -1)), 1, null);
            composer.z(objH);
        }
        composer.Q();
        Modifier modifierB = modifier.B((Modifier) objH);
        composer.Q();
        return modifierB;
    }
}
