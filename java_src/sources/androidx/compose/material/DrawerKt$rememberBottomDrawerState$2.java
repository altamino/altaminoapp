package androidx.compose.material;

import e8.a;
import e8.l;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
final class DrawerKt$rememberBottomDrawerState$2 extends v implements a<BottomDrawerState> {
    final /* synthetic */ l<BottomDrawerValue, Boolean> $confirmStateChange;
    final /* synthetic */ BottomDrawerValue $initialValue;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    DrawerKt$rememberBottomDrawerState$2(BottomDrawerValue bottomDrawerValue, l<? super BottomDrawerValue, Boolean> lVar) {
        super(0);
        this.$initialValue = bottomDrawerValue;
        this.$confirmStateChange = lVar;
    }

    @Override // e8.a
    @NotNull
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final BottomDrawerState invoke() {
        return new BottomDrawerState(this.$initialValue, this.$confirmStateChange);
    }
}
