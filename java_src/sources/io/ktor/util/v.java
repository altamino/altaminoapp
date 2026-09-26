package io.ktor.util;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.collections.d0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes6.dex */
public class v implements u {
    private final boolean caseInsensitiveName;

    @NotNull
    private final Map<String, List<String>> values;

    static final class a extends kotlin.jvm.internal.v implements e8.p<String, List<? extends String>, l0> {
        a() {
            super(2);
        }

        public final void a(@NotNull String name, @NotNull List<String> values) {
            kotlin.jvm.internal.t.j(name, "name");
            kotlin.jvm.internal.t.j(values, "values");
            v.this.d(name, values);
        }

        @Override // e8.p
        public /* bridge */ /* synthetic */ l0 invoke(String str, List<? extends String> list) {
            a(str, list);
            return l0.INSTANCE;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public v() {
        this(false, 0 == true ? 1 : 0, 3, null);
    }

    @Override // io.ktor.util.u
    public final boolean c() {
        return this.caseInsensitiveName;
    }

    @NotNull
    protected final Map<String, List<String>> i() {
        return this.values;
    }

    protected void l(@NotNull String name) {
        kotlin.jvm.internal.t.j(name, "name");
    }

    protected void m(@NotNull String value) {
        kotlin.jvm.internal.t.j(value, "value");
    }

    public v(boolean z6, int i10) {
        this.caseInsensitiveName = z6;
        this.values = z6 ? k.a() : new LinkedHashMap<>(i10);
    }

    private final List<String> g(String str) {
        List<String> list = this.values.get(str);
        if (list != null) {
            return list;
        }
        ArrayList arrayList = new ArrayList();
        l(str);
        this.values.put(str, arrayList);
        return arrayList;
    }

    @Override // io.ktor.util.u
    @NotNull
    public Set<Map.Entry<String, List<String>>> a() {
        return j.a(this.values.entrySet());
    }

    @Override // io.ktor.util.u
    @Nullable
    public List<String> b(@NotNull String name) {
        kotlin.jvm.internal.t.j(name, "name");
        return this.values.get(name);
    }

    @Override // io.ktor.util.u
    public void clear() {
        this.values.clear();
    }

    @Override // io.ktor.util.u
    public boolean contains(@NotNull String name) {
        kotlin.jvm.internal.t.j(name, "name");
        return this.values.containsKey(name);
    }

    @Override // io.ktor.util.u
    public void d(@NotNull String name, @NotNull Iterable<String> values) {
        kotlin.jvm.internal.t.j(name, "name");
        kotlin.jvm.internal.t.j(values, "values");
        List<String> listG = g(name);
        for (String str : values) {
            m(str);
            listG.add(str);
        }
    }

    @Override // io.ktor.util.u
    public void e(@NotNull t stringValues) {
        kotlin.jvm.internal.t.j(stringValues, "stringValues");
        stringValues.d(new a());
    }

    @Override // io.ktor.util.u
    public void f(@NotNull String name, @NotNull String value) {
        kotlin.jvm.internal.t.j(name, "name");
        kotlin.jvm.internal.t.j(value, "value");
        m(value);
        g(name).add(value);
    }

    @Nullable
    public String h(@NotNull String name) {
        kotlin.jvm.internal.t.j(name, "name");
        List<String> listB = b(name);
        if (listB != null) {
            return (String) d0.l0(listB);
        }
        return null;
    }

    @Override // io.ktor.util.u
    public boolean isEmpty() {
        return this.values.isEmpty();
    }

    public void j(@NotNull String name) {
        kotlin.jvm.internal.t.j(name, "name");
        this.values.remove(name);
    }

    public void k(@NotNull String name, @NotNull String value) {
        kotlin.jvm.internal.t.j(name, "name");
        kotlin.jvm.internal.t.j(value, "value");
        m(value);
        List<String> listG = g(name);
        listG.clear();
        listG.add(value);
    }

    @Override // io.ktor.util.u
    @NotNull
    public Set<String> names() {
        return this.values.keySet();
    }

    public /* synthetic */ v(boolean z6, int i10, int i11, kotlin.jvm.internal.k kVar) {
        this((i11 & 1) != 0 ? false : z6, (i11 & 2) != 0 ? 8 : i10);
    }
}
