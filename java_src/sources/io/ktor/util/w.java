package io.ktor.util;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.collections.d0;
import kotlin.collections.s0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes10.dex */
public class w implements t {
    private final boolean caseInsensitiveName;

    @NotNull
    private final Map<String, List<String>> values;

    /* JADX WARN: Multi-variable type inference failed */
    public w() {
        this(false, null, 3, 0 == true ? 1 : 0);
    }

    @Override // io.ktor.util.t
    public final boolean c() {
        return this.caseInsensitiveName;
    }

    public w(boolean z6, @NotNull Map<String, ? extends List<String>> values) {
        kotlin.jvm.internal.t.j(values, "values");
        this.caseInsensitiveName = z6;
        Map mapA = z6 ? k.a() : new LinkedHashMap();
        for (Map.Entry<String, ? extends List<String>> entry : values.entrySet()) {
            String key = entry.getKey();
            List<String> value = entry.getValue();
            int size = value.size();
            ArrayList arrayList = new ArrayList(size);
            for (int i10 = 0; i10 < size; i10++) {
                arrayList.add(value.get(i10));
            }
            mapA.put(key, arrayList);
        }
        this.values = mapA;
    }

    private final List<String> e(String str) {
        return this.values.get(str);
    }

    @Override // io.ktor.util.t
    @NotNull
    public Set<Map.Entry<String, List<String>>> a() {
        return j.a(this.values.entrySet());
    }

    @Override // io.ktor.util.t
    @Nullable
    public List<String> b(@NotNull String name) {
        kotlin.jvm.internal.t.j(name, "name");
        return e(name);
    }

    @Override // io.ktor.util.t
    public void d(@NotNull e8.p<? super String, ? super List<String>, l0> body) {
        kotlin.jvm.internal.t.j(body, "body");
        for (Map.Entry<String, List<String>> entry : this.values.entrySet()) {
            body.invoke(entry.getKey(), entry.getValue());
        }
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof t)) {
            return false;
        }
        t tVar = (t) obj;
        if (this.caseInsensitiveName != tVar.c()) {
            return false;
        }
        return x.d(a(), tVar.a());
    }

    @Override // io.ktor.util.t
    @Nullable
    public String get(@NotNull String name) {
        kotlin.jvm.internal.t.j(name, "name");
        List<String> listE = e(name);
        if (listE != null) {
            return (String) d0.l0(listE);
        }
        return null;
    }

    @Override // io.ktor.util.t
    public boolean isEmpty() {
        return this.values.isEmpty();
    }

    @Override // io.ktor.util.t
    @NotNull
    public Set<String> names() {
        return j.a(this.values.keySet());
    }

    @NotNull
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("StringValues(case=");
        sb.append(!this.caseInsensitiveName);
        sb.append(") ");
        sb.append(a());
        return sb.toString();
    }

    public int hashCode() {
        return x.e(a(), androidx.compose.foundation.c.a(this.caseInsensitiveName) * 31);
    }

    public /* synthetic */ w(boolean z6, Map map, int i10, kotlin.jvm.internal.k kVar) {
        this((i10 & 1) != 0 ? false : z6, (i10 & 2) != 0 ? s0.h() : map);
    }
}
