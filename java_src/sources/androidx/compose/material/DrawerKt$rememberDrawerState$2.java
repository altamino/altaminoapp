package androidx.compose.material;

import e8.a;
import e8.l;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
final class DrawerKt$rememberDrawerState$2 extends v implements a<DrawerState> {
    final /* synthetic */ l<DrawerValue, Boolean> $confirmStateChange;
    final /* synthetic */ DrawerValue $initialValue;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    DrawerKt$rememberDrawerState$2(DrawerValue drawerValue, l<? super DrawerValue, Boolean> lVar) {
        super(0);
        this.$initialValue = drawerValue;
        this.$confirmStateChange = lVar;
    }

    @Override // e8.a
    @NotNull
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final DrawerState invoke() {
        return new DrawerState(this.$initialValue, this.$confirmStateChange);
    }
}
