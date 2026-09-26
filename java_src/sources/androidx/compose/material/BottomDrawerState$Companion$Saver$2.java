package androidx.compose.material;

import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
final class BottomDrawerState$Companion$Saver$2 extends v implements l<BottomDrawerValue, BottomDrawerState> {
    final /* synthetic */ l<BottomDrawerValue, Boolean> $confirmStateChange;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    BottomDrawerState$Companion$Saver$2(l<? super BottomDrawerValue, Boolean> lVar) {
        super(1);
        this.$confirmStateChange = lVar;
    }

    @Override // e8.l
    @Nullable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final BottomDrawerState invoke(@NotNull BottomDrawerValue it) {
        t.j(it, "it");
        return new BottomDrawerState(it, this.$confirmStateChange);
    }
}
