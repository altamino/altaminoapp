package androidx.compose.runtime.saveable;

import e8.p;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: Add missing generic type declarations: [Original] */
/* JADX INFO: loaded from: classes9.dex */
final class ListSaverKt$listSaver$1<Original> extends v implements p<SaverScope, Original, Object> {
    final /* synthetic */ p<SaverScope, Original, List<Saveable>> $save;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    ListSaverKt$listSaver$1(p<? super SaverScope, ? super Original, ? extends List<? extends Saveable>> pVar) {
        super(2);
        this.$save = pVar;
    }

    @Override // e8.p
    @Nullable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final Object invoke(@NotNull SaverScope Saver, Original original) {
        t.j(Saver, "$this$Saver");
        List list = (List) this.$save.invoke(Saver, original);
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            Object obj = list.get(i10);
            if (obj != null && !Saver.a(obj)) {
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
        }
        List list2 = list;
        if (!list2.isEmpty()) {
            return new ArrayList(list2);
        }
        return null;
    }
}
