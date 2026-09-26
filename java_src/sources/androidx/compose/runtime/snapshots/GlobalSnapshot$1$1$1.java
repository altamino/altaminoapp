package androidx.compose.runtime.snapshots;

import e8.l;
import java.util.List;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes10.dex */
final class GlobalSnapshot$1$1$1 extends v implements l<Object, l0> {
    final /* synthetic */ List<l<Object, l0>> $it;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    GlobalSnapshot$1$1$1(List<l<Object, l0>> list) {
        super(1);
        this.$it = list;
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(Object obj) {
        invoke2(obj);
        return l0.INSTANCE;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(@NotNull Object state) {
        t.j(state, "state");
        List<l<Object, l0>> list = this.$it;
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            list.get(i10).invoke(state);
        }
    }
}
