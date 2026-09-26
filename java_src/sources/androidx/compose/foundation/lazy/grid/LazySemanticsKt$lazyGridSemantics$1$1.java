package androidx.compose.foundation.lazy.grid;

import androidx.compose.ui.semantics.CollectionInfo;
import androidx.compose.ui.semantics.ScrollAxisRange;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import e8.l;
import e8.p;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes4.dex */
final class LazySemanticsKt$lazyGridSemantics$1$1 extends v implements l<SemanticsPropertyReceiver, l0> {
    final /* synthetic */ ScrollAxisRange $accessibilityScrollState;
    final /* synthetic */ CollectionInfo $collectionInfo;
    final /* synthetic */ l<Object, Integer> $indexForKeyMapping;
    final /* synthetic */ boolean $isVertical;
    final /* synthetic */ p<Float, Float, Boolean> $scrollByAction;
    final /* synthetic */ l<Integer, Boolean> $scrollToIndexAction;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    LazySemanticsKt$lazyGridSemantics$1$1(l<Object, Integer> lVar, boolean z6, ScrollAxisRange scrollAxisRange, p<? super Float, ? super Float, Boolean> pVar, l<? super Integer, Boolean> lVar2, CollectionInfo collectionInfo) {
        super(1);
        this.$indexForKeyMapping = lVar;
        this.$isVertical = z6;
        this.$accessibilityScrollState = scrollAxisRange;
        this.$scrollByAction = pVar;
        this.$scrollToIndexAction = lVar2;
        this.$collectionInfo = collectionInfo;
    }

    public final void a(@NotNull SemanticsPropertyReceiver semantics) {
        t.j(semantics, "$this$semantics");
        SemanticsPropertiesKt.p(semantics, this.$indexForKeyMapping);
        if (this.$isVertical) {
            SemanticsPropertiesKt.a0(semantics, this.$accessibilityScrollState);
        } else {
            SemanticsPropertiesKt.J(semantics, this.$accessibilityScrollState);
        }
        p<Float, Float, Boolean> pVar = this.$scrollByAction;
        if (pVar != null) {
            SemanticsPropertiesKt.B(semantics, null, pVar, 1, null);
        }
        l<Integer, Boolean> lVar = this.$scrollToIndexAction;
        if (lVar != null) {
            SemanticsPropertiesKt.D(semantics, null, lVar, 1, null);
        }
        SemanticsPropertiesKt.F(semantics, this.$collectionInfo);
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        a(semanticsPropertyReceiver);
        return l0.INSTANCE;
    }
}
