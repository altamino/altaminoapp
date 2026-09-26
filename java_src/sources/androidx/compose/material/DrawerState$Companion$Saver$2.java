package androidx.compose.material;

import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
final class DrawerState$Companion$Saver$2 extends v implements l<DrawerValue, DrawerState> {
    final /* synthetic */ l<DrawerValue, Boolean> $confirmStateChange;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    DrawerState$Companion$Saver$2(l<? super DrawerValue, Boolean> lVar) {
        super(1);
        this.$confirmStateChange = lVar;
    }

    @Override // e8.l
    @Nullable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final DrawerState invoke(@NotNull DrawerValue it) {
        t.j(it, "it");
        return new DrawerState(it, this.$confirmStateChange);
    }
}
