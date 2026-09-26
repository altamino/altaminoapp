package androidx.work;

import java.lang.reflect.Array;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes5.dex */
public final class ArrayCreatingInputMerger extends InputMerger {
    private final Object e(Object obj, Class<?> cls) {
        Object newArray = Array.newInstance(cls, 1);
        Array.set(newArray, 0, obj);
        t.i(newArray, "newArray");
        return newArray;
    }

    @Override // androidx.work.InputMerger
    @NotNull
    public Data b(@NotNull List<Data> inputs) throws Throwable {
        t.j(inputs, "inputs");
        Data.Builder builder = new Data.Builder();
        HashMap map = new HashMap();
        Iterator<Data> it = inputs.iterator();
        while (it.hasNext()) {
            Map<String, Object> mapH = it.next().h();
            t.i(mapH, "input.keyValueMap");
            for (Map.Entry<String, Object> entry : mapH.entrySet()) {
                String key = entry.getKey();
                Object value = entry.getValue();
                Class<?> cls = value != null ? value.getClass() : String.class;
                Object obj = map.get(key);
                t.i(key, "key");
                if (obj != null) {
                    Class<?> cls2 = obj.getClass();
                    if (t.e(cls2, cls)) {
                        t.i(value, "value");
                        value = d(obj, value);
                    } else {
                        if (!t.e(cls2.getComponentType(), cls)) {
                            throw new IllegalArgumentException();
                        }
                        value = c(obj, value, cls);
                    }
                } else if (!cls.isArray()) {
                    value = e(value, cls);
                }
                t.i(value, "if (existingValue == nul…      }\n                }");
                map.put(key, value);
            }
        }
        builder.d(map);
        Data dataA = builder.a();
        t.i(dataA, "output.build()");
        return dataA;
    }

    private final Object c(Object obj, Object obj2, Class<?> cls) {
        int length = Array.getLength(obj);
        Object newArray = Array.newInstance(cls, length + 1);
        System.arraycopy(obj, 0, newArray, 0, length);
        Array.set(newArray, length, obj2);
        t.i(newArray, "newArray");
        return newArray;
    }

    private final Object d(Object obj, Object obj2) {
        int length = Array.getLength(obj);
        int length2 = Array.getLength(obj2);
        Class<?> componentType = obj.getClass().getComponentType();
        t.g(componentType);
        Object newArray = Array.newInstance(componentType, length + length2);
        System.arraycopy(obj, 0, newArray, 0, length);
        System.arraycopy(obj2, 0, newArray, length, length2);
        t.i(newArray, "newArray");
        return newArray;
    }
}
