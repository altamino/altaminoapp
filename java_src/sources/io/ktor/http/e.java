package io.ktor.http;

import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.collections.y0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes11.dex */
public final class e implements k {

    @NotNull
    public static final e INSTANCE = new e();

    @Override // io.ktor.util.t
    @Nullable
    public List<String> b(@NotNull String name) {
        kotlin.jvm.internal.t.j(name, "name");
        return null;
    }

    @Override // io.ktor.util.t
    public boolean c() {
        return true;
    }

    @NotNull
    public String toString() {
        return "Headers " + a();
    }

    private e() {
    }

    @Override // io.ktor.util.t
    @NotNull
    public Set<Map.Entry<String, List<String>>> a() {
        return y0.e();
    }

    @Override // io.ktor.util.t
    public void d(@NotNull e8.p<? super String, ? super List<String>, w7.l0> pVar) {
        k.b.a(this, pVar);
    }

    @Override // io.ktor.util.t
    @Nullable
    public String get(@NotNull String str) {
        return k.b.b(this, str);
    }

    @Override // io.ktor.util.t
    @NotNull
    public Set<String> names() {
        return y0.e();
    }
}
