package io.ktor.http;

import java.util.List;
import java.util.Map;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
public final class m extends io.ktor.util.w implements k {
    /* JADX WARN: Multi-variable type inference failed */
    public m() {
        this(null, 1, 0 == true ? 1 : 0);
    }

    public /* synthetic */ m(Map map, int i10, kotlin.jvm.internal.k kVar) {
        this((i10 & 1) != 0 ? kotlin.collections.s0.h() : map);
    }

    @Override // io.ktor.util.w
    @NotNull
    public String toString() {
        return "Headers " + a();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public m(@NotNull Map<String, ? extends List<String>> values) {
        super(true, values);
        kotlin.jvm.internal.t.j(values, "values");
    }
}
