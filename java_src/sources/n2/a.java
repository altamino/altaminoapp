package n2;

import android.util.SparseArray;
import androidx.annotation.NonNull;
import f2.d;
import java.util.HashMap;

/* JADX INFO: loaded from: classes10.dex */
public final class a {
    private static HashMap<d, Integer> PRIORITY_INT_MAP;
    private static SparseArray<d> PRIORITY_MAP = new SparseArray<>();

    static {
        HashMap<d, Integer> map = new HashMap<>();
        PRIORITY_INT_MAP = map;
        map.put(d.DEFAULT, 0);
        PRIORITY_INT_MAP.put(d.VERY_LOW, 1);
        PRIORITY_INT_MAP.put(d.HIGHEST, 2);
        for (d dVar : PRIORITY_INT_MAP.keySet()) {
            PRIORITY_MAP.append(PRIORITY_INT_MAP.get(dVar).intValue(), dVar);
        }
    }

    public static int a(@NonNull d dVar) {
        Integer num = PRIORITY_INT_MAP.get(dVar);
        if (num != null) {
            return num.intValue();
        }
        throw new IllegalStateException("PriorityMapping is missing known Priority value " + dVar);
    }

    @NonNull
    public static d b(int i10) {
        d dVar = PRIORITY_MAP.get(i10);
        if (dVar != null) {
            return dVar;
        }
        throw new IllegalArgumentException("Unknown Priority for value " + i10);
    }
}
