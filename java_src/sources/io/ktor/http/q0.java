package io.ktor.http;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
public final class q0 implements a0 {
    private final boolean caseInsensitiveName;

    @NotNull
    private final a0 encodedParametersBuilder;

    @Override // io.ktor.util.u
    public boolean c() {
        return this.caseInsensitiveName;
    }

    public q0(@NotNull a0 encodedParametersBuilder) {
        kotlin.jvm.internal.t.j(encodedParametersBuilder, "encodedParametersBuilder");
        this.encodedParametersBuilder = encodedParametersBuilder;
        this.caseInsensitiveName = encodedParametersBuilder.c();
    }

    @Override // io.ktor.util.u
    @NotNull
    public Set<Map.Entry<String, List<String>>> a() {
        return r0.d(this.encodedParametersBuilder).a();
    }

    @Override // io.ktor.util.u
    @Nullable
    public List<String> b(@NotNull String name) {
        kotlin.jvm.internal.t.j(name, "name");
        ArrayList arrayList = null;
        List<String> listB = this.encodedParametersBuilder.b(b.m(name, false, 1, null));
        if (listB != null) {
            List<String> list = listB;
            arrayList = new ArrayList(kotlin.collections.w.x(list, 10));
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(b.k((String) it.next(), 0, 0, true, null, 11, null));
            }
        }
        return arrayList;
    }

    @Override // io.ktor.http.a0
    @NotNull
    public z build() {
        return r0.d(this.encodedParametersBuilder);
    }

    @Override // io.ktor.util.u
    public void clear() {
        this.encodedParametersBuilder.clear();
    }

    @Override // io.ktor.util.u
    public boolean contains(@NotNull String name) {
        kotlin.jvm.internal.t.j(name, "name");
        return this.encodedParametersBuilder.contains(b.m(name, false, 1, null));
    }

    @Override // io.ktor.util.u
    public void d(@NotNull String name, @NotNull Iterable<String> values) {
        kotlin.jvm.internal.t.j(name, "name");
        kotlin.jvm.internal.t.j(values, "values");
        a0 a0Var = this.encodedParametersBuilder;
        String strM = b.m(name, false, 1, null);
        ArrayList arrayList = new ArrayList(kotlin.collections.w.x(values, 10));
        Iterator<String> it = values.iterator();
        while (it.hasNext()) {
            arrayList.add(b.n(it.next()));
        }
        a0Var.d(strM, arrayList);
    }

    @Override // io.ktor.util.u
    public void e(@NotNull io.ktor.util.t stringValues) {
        kotlin.jvm.internal.t.j(stringValues, "stringValues");
        r0.c(this.encodedParametersBuilder, stringValues);
    }

    @Override // io.ktor.util.u
    public void f(@NotNull String name, @NotNull String value) {
        kotlin.jvm.internal.t.j(name, "name");
        kotlin.jvm.internal.t.j(value, "value");
        this.encodedParametersBuilder.f(b.m(name, false, 1, null), b.n(value));
    }

    @Override // io.ktor.util.u
    public boolean isEmpty() {
        return this.encodedParametersBuilder.isEmpty();
    }

    @Override // io.ktor.util.u
    @NotNull
    public Set<String> names() {
        Set<String> setNames = this.encodedParametersBuilder.names();
        ArrayList arrayList = new ArrayList(kotlin.collections.w.x(setNames, 10));
        Iterator<T> it = setNames.iterator();
        while (it.hasNext()) {
            arrayList.add(b.k((String) it.next(), 0, 0, false, null, 15, null));
        }
        return kotlin.collections.d0.Y0(arrayList);
    }
}
