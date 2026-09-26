package androidx.compose.runtime.saveable;

import e8.a;
import e8.l;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.collections.s0;
import kotlin.collections.v;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes5.dex */
final class SaveableStateRegistryImpl implements SaveableStateRegistry {

    @NotNull
    private final l<Object, Boolean> canBeSaved;

    @NotNull
    private final Map<String, List<Object>> restored;

    @NotNull
    private final Map<String, List<a<Object>>> valueProviders;

    public SaveableStateRegistryImpl(@Nullable Map<String, ? extends List<? extends Object>> map, @NotNull l<Object, Boolean> canBeSaved) {
        Map<String, List<Object>> mapA;
        t.j(canBeSaved, "canBeSaved");
        this.canBeSaved = canBeSaved;
        this.restored = (map == null || (mapA = s0.A(map)) == null) ? new LinkedHashMap<>() : mapA;
        this.valueProviders = new LinkedHashMap();
    }

    @Override // androidx.compose.runtime.saveable.SaveableStateRegistry
    public boolean a(@NotNull Object value) {
        t.j(value, "value");
        return this.canBeSaved.invoke(value).booleanValue();
    }

    @Override // androidx.compose.runtime.saveable.SaveableStateRegistry
    @NotNull
    public Map<String, List<Object>> b() {
        Map<String, List<Object>> mapA = s0.A(this.restored);
        for (Map.Entry<String, List<a<Object>>> entry : this.valueProviders.entrySet()) {
            String key = entry.getKey();
            List<a<Object>> value = entry.getValue();
            if (value.size() == 1) {
                Object objInvoke = value.get(0).invoke();
                if (objInvoke == null) {
                    continue;
                } else {
                    if (!a(objInvoke)) {
                        throw new IllegalStateException("Check failed.".toString());
                    }
                    mapA.put(key, v.g(objInvoke));
                }
            } else {
                int size = value.size();
                ArrayList arrayList = new ArrayList(size);
                for (int i10 = 0; i10 < size; i10++) {
                    Object objInvoke2 = value.get(i10).invoke();
                    if (objInvoke2 != null && !a(objInvoke2)) {
                        throw new IllegalStateException("Check failed.".toString());
                    }
                    arrayList.add(objInvoke2);
                }
                mapA.put(key, arrayList);
            }
        }
        return mapA;
    }

    @Override // androidx.compose.runtime.saveable.SaveableStateRegistry
    @Nullable
    public Object c(@NotNull String key) {
        t.j(key, "key");
        List<Object> listRemove = this.restored.remove(key);
        if (listRemove == null || !(!listRemove.isEmpty())) {
            return null;
        }
        if (listRemove.size() > 1) {
            this.restored.put(key, listRemove.subList(1, listRemove.size()));
        }
        return listRemove.get(0);
    }

    @Override // androidx.compose.runtime.saveable.SaveableStateRegistry
    @NotNull
    public SaveableStateRegistry.Entry d(@NotNull final String key, @NotNull final a<? extends Object> valueProvider) {
        t.j(key, "key");
        t.j(valueProvider, "valueProvider");
        if (!(!kotlin.text.t.z(key))) {
            throw new IllegalArgumentException("Registered key is empty or blank".toString());
        }
        Map<String, List<a<Object>>> map = this.valueProviders;
        List<a<Object>> arrayList = map.get(key);
        if (arrayList == null) {
            arrayList = new ArrayList<>();
            map.put(key, arrayList);
        }
        arrayList.add(valueProvider);
        return new SaveableStateRegistry.Entry() { // from class: androidx.compose.runtime.saveable.SaveableStateRegistryImpl$registerProvider$3
            @Override // androidx.compose.runtime.saveable.SaveableStateRegistry.Entry
            public void a() {
                List list = (List) this.this$0.valueProviders.remove(key);
                if (list != null) {
                    list.remove(valueProvider);
                }
                if (list == null || !(!list.isEmpty())) {
                    return;
                }
                this.this$0.valueProviders.put(key, list);
            }
        };
    }
}
