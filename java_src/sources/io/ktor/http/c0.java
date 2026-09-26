package io.ktor.http;

import java.util.List;
import java.util.Map;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
public final class c0 extends io.ktor.util.w implements z {
    /* JADX WARN: Multi-variable type inference failed */
    public c0() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public /* synthetic */ c0(Map map, int i10, kotlin.jvm.internal.k kVar) {
        this((i10 & 1) != 0 ? kotlin.collections.s0.h() : map);
    }

    @Override // io.ktor.util.w
    @NotNull
    public String toString() {
        return "Parameters " + a();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c0(@NotNull Map<String, ? extends List<String>> values) {
        super(true, values);
        kotlin.jvm.internal.t.j(values, "values");
    }
}
