package androidx.compose.runtime.saveable;

import e8.p;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
final class MapSaverKt$mapSaver$1 extends v implements p<SaverScope, Object, List<? extends Object>> {
    final /* synthetic */ p<SaverScope, Object, Map<String, Object>> $save;

    @Override // e8.p
    @NotNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final List<Object> invoke(@NotNull SaverScope listSaver, Object obj) {
        t.j(listSaver, "$this$listSaver");
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<String, Object> entry : this.$save.invoke(listSaver, obj).entrySet()) {
            arrayList.add(entry.getKey());
            arrayList.add(entry.getValue());
        }
        return arrayList;
    }
}
