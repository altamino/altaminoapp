package androidx.compose.runtime.saveable;

import e8.l;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
final class MapSaverKt$mapSaver$2 extends v implements l<List<? extends Object>, Object> {
    final /* synthetic */ l<Map<String, ? extends Object>, Object> $restore;

    @Override // e8.l
    @Nullable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final Object invoke(@NotNull List<? extends Object> list) {
        t.j(list, "list");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (list.size() % 2 != 0) {
            throw new IllegalStateException("Check failed.".toString());
        }
        for (int i10 = 0; i10 < list.size(); i10 += 2) {
            Object obj = list.get(i10);
            if (obj == null) {
                throw new NullPointerException("null cannot be cast to non-null type kotlin.String");
            }
            linkedHashMap.put((String) obj, list.get(i10 + 1));
        }
        return this.$restore.invoke(linkedHashMap);
    }
}
