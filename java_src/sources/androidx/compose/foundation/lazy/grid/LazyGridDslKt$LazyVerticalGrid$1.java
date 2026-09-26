package androidx.compose.foundation.lazy.grid;

import androidx.compose.foundation.gestures.FlingBehavior;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.runtime.Composer;
import androidx.compose.ui.Modifier;
import e8.l;
import e8.p;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes2.dex */
final class LazyGridDslKt$LazyVerticalGrid$1 extends v implements p<Composer, Integer, l0> {
    final /* synthetic */ int $$changed;
    final /* synthetic */ int $$default;
    final /* synthetic */ GridCells $columns;
    final /* synthetic */ l<LazyGridScope, l0> $content;
    final /* synthetic */ PaddingValues $contentPadding;
    final /* synthetic */ FlingBehavior $flingBehavior;
    final /* synthetic */ Arrangement.Horizontal $horizontalArrangement;
    final /* synthetic */ Modifier $modifier;
    final /* synthetic */ boolean $reverseLayout;
    final /* synthetic */ LazyGridState $state;
    final /* synthetic */ boolean $userScrollEnabled;
    final /* synthetic */ Arrangement.Vertical $verticalArrangement;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    LazyGridDslKt$LazyVerticalGrid$1(GridCells gridCells, Modifier modifier, LazyGridState lazyGridState, PaddingValues paddingValues, boolean z6, Arrangement.Vertical vertical, Arrangement.Horizontal horizontal, FlingBehavior flingBehavior, boolean z10, l<? super LazyGridScope, l0> lVar, int i10, int i11) {
        super(2);
        this.$columns = gridCells;
        this.$modifier = modifier;
        this.$state = lazyGridState;
        this.$contentPadding = paddingValues;
        this.$reverseLayout = z6;
        this.$verticalArrangement = vertical;
        this.$horizontalArrangement = horizontal;
        this.$flingBehavior = flingBehavior;
        this.$userScrollEnabled = z10;
        this.$content = lVar;
        this.$$changed = i10;
        this.$$default = i11;
    }

    public final void a(@Nullable Composer composer, int i10) {
        LazyGridDslKt.b(this.$columns, this.$modifier, this.$state, this.$contentPadding, this.$reverseLayout, this.$verticalArrangement, this.$horizontalArrangement, this.$flingBehavior, this.$userScrollEnabled, this.$content, composer, this.$$changed | 1, this.$$default);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return l0.INSTANCE;
    }
}
