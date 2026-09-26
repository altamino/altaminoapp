package androidx.compose.ui.layout;

import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes2.dex */
final class TestModifierUpdaterKt$TestModifierUpdaterLayout$measurePolicy$1$measure$1 extends v implements l<Placeable.PlacementScope, l0> {
    public static final TestModifierUpdaterKt$TestModifierUpdaterLayout$measurePolicy$1$measure$1 INSTANCE = new TestModifierUpdaterKt$TestModifierUpdaterLayout$measurePolicy$1$measure$1();

    TestModifierUpdaterKt$TestModifierUpdaterLayout$measurePolicy$1$measure$1() {
        super(1);
    }

    public final void a(@NotNull Placeable.PlacementScope layout) {
        t.j(layout, "$this$layout");
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(Placeable.PlacementScope placementScope) {
        a(placementScope);
        return l0.INSTANCE;
    }
}
