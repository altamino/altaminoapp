package coil.util;

import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.collections.d0;
import kotlin.collections.s0;
import kotlin.collections.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes7.dex */
public final class c {
    @NotNull
    public static final <T> List<T> a(@NotNull List<? extends T> list) {
        int size = list.size();
        if (size == 0) {
            return v.m();
        }
        if (size != 1) {
            return Collections.unmodifiableList(new ArrayList(list));
        }
        return Collections.singletonList(d0.j0(list));
    }

    @NotNull
    public static final <K, V> Map<K, V> b(@NotNull Map<K, ? extends V> map) {
        int size = map.size();
        if (size == 0) {
            return s0.h();
        }
        if (size != 1) {
            return Collections.unmodifiableMap(new LinkedHashMap(map));
        }
        Map.Entry entry = (Map.Entry) d0.i0(map.entrySet());
        return Collections.singletonMap(entry.getKey(), entry.getValue());
    }
}
