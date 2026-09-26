package io.ktor.http;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
public final class l extends io.ktor.util.v {
    public l() {
        this(0, 1, null);
    }

    public l(int i10) {
        super(true, i10);
    }

    @Override // io.ktor.util.v
    protected void l(@NotNull String name) {
        kotlin.jvm.internal.t.j(name, "name");
        super.l(name);
        o.INSTANCE.a(name);
    }

    @Override // io.ktor.util.v
    protected void m(@NotNull String value) {
        kotlin.jvm.internal.t.j(value, "value");
        super.m(value);
        o.INSTANCE.b(value);
    }

    @NotNull
    public k n() {
        return new m(i());
    }

    public /* synthetic */ l(int i10, int i11, kotlin.jvm.internal.k kVar) {
        this((i11 & 1) != 0 ? 8 : i10);
    }
}
