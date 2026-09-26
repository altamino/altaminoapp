package androidx.compose.foundation.gestures;

import androidx.compose.ui.layout.LayoutCoordinates;
import e8.l;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes5.dex */
final class ContentInViewModifier$modifier$1 extends v implements l<LayoutCoordinates, l0> {
    final /* synthetic */ ContentInViewModifier this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ContentInViewModifier$modifier$1(ContentInViewModifier contentInViewModifier) {
        super(1);
        this.this$0 = contentInViewModifier;
    }

    public final void a(@Nullable LayoutCoordinates layoutCoordinates) {
        this.this$0.focusedChild = layoutCoordinates;
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(LayoutCoordinates layoutCoordinates) {
        a(layoutCoordinates);
        return l0.INSTANCE;
    }
}
