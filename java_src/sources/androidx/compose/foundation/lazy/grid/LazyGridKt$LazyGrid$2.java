package androidx.compose.foundation.lazy.grid;

import androidx.compose.foundation.gestures.FlingBehavior;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.runtime.Composer;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Density;
import e8.l;
import e8.p;
import java.util.List;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class LazyGridKt$LazyGrid$2 extends v implements p<Composer, Integer, l0> {
    final /* synthetic */ int $$changed;
    final /* synthetic */ int $$changed1;
    final /* synthetic */ int $$default;
    final /* synthetic */ l<LazyGridScope, l0> $content;
    final /* synthetic */ PaddingValues $contentPadding;
    final /* synthetic */ FlingBehavior $flingBehavior;
    final /* synthetic */ Arrangement.Horizontal $horizontalArrangement;
    final /* synthetic */ boolean $isVertical;
    final /* synthetic */ Modifier $modifier;
    final /* synthetic */ boolean $reverseLayout;
    final /* synthetic */ p<Density, Constraints, List<Integer>> $slotSizesSums;
    final /* synthetic */ LazyGridState $state;
    final /* synthetic */ boolean $userScrollEnabled;
    final /* synthetic */ Arrangement.Vertical $verticalArrangement;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    LazyGridKt$LazyGrid$2(Modifier modifier, LazyGridState lazyGridState, p<? super Density, ? super Constraints, ? extends List<Integer>> pVar, PaddingValues paddingValues, boolean z6, boolean z10, FlingBehavior flingBehavior, boolean z11, Arrangement.Vertical vertical, Arrangement.Horizontal horizontal, l<? super LazyGridScope, l0> lVar, int i10, int i11, int i12) {
        super(2);
        this.$modifier = modifier;
        this.$state = lazyGridState;
        this.$slotSizesSums = pVar;
        this.$contentPadding = paddingValues;
        this.$reverseLayout = z6;
        this.$isVertical = z10;
        this.$flingBehavior = flingBehavior;
        this.$userScrollEnabled = z11;
        this.$verticalArrangement = vertical;
        this.$horizontalArrangement = horizontal;
        this.$content = lVar;
        this.$$changed = i10;
        this.$$changed1 = i11;
        this.$$default = i12;
    }

    public final void a(@Nullable Composer composer, int i10) {
        LazyGridKt.a(this.$modifier, this.$state, this.$slotSizesSums, this.$contentPadding, this.$reverseLayout, this.$isVertical, this.$flingBehavior, this.$userScrollEnabled, this.$verticalArrangement, this.$horizontalArrangement, this.$content, composer, this.$$changed | 1, this.$$changed1, this.$$default);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(Composer composer, Integer num) {
        a(composer, num.intValue());
        return l0.INSTANCE;
    }
}
