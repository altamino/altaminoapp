package androidx.compose.material;

import e8.a;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
final class DrawerKt$ModalDrawer$1$2$3$1 extends v implements a<Float> {
    final /* synthetic */ DrawerState $drawerState;
    final /* synthetic */ float $maxValue;
    final /* synthetic */ float $minValue;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DrawerKt$ModalDrawer$1$2$3$1(float f, float f6, DrawerState drawerState) {
        super(0);
        this.$minValue = f;
        this.$maxValue = f6;
        this.$drawerState = drawerState;
    }

    @Override // e8.a
    @NotNull
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final Float invoke() {
        return Float.valueOf(DrawerKt.m(this.$minValue, this.$maxValue, this.$drawerState.d().getValue().floatValue()));
    }
}
