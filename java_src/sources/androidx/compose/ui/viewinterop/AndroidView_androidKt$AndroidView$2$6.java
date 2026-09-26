package androidx.compose.ui.viewinterop;

import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.Ref;
import androidx.compose.ui.unit.LayoutDirection;
import e8.p;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;
import w7.s;

/* JADX INFO: loaded from: classes5.dex */
final class AndroidView_androidKt$AndroidView$2$6 extends v implements p<LayoutNode, LayoutDirection, l0> {
    final /* synthetic */ Ref<ViewFactoryHolder<T>> $viewFactoryHolderRef;

    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[LayoutDirection.values().length];
            iArr[LayoutDirection.Ltr.ordinal()] = 1;
            iArr[LayoutDirection.Rtl.ordinal()] = 2;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    AndroidView_androidKt$AndroidView$2$6(Ref<ViewFactoryHolder<T>> ref) {
        super(2);
        this.$viewFactoryHolderRef = ref;
    }

    public final void a(@NotNull LayoutNode set, @NotNull LayoutDirection it) {
        t.j(set, "$this$set");
        t.j(it, "it");
        Object objA = this.$viewFactoryHolderRef.a();
        t.g(objA);
        ViewFactoryHolder viewFactoryHolder = (ViewFactoryHolder) objA;
        int i10 = WhenMappings.$EnumSwitchMapping$0[it.ordinal()];
        int i11 = 1;
        if (i10 == 1) {
            i11 = 0;
        } else if (i10 != 2) {
            throw new s();
        }
        viewFactoryHolder.setLayoutDirection(i11);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(LayoutNode layoutNode, LayoutDirection layoutDirection) {
        a(layoutNode, layoutDirection);
        return l0.INSTANCE;
    }
}
