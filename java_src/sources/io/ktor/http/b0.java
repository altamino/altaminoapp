package io.ktor.http;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
public final class b0 extends io.ktor.util.v implements a0 {
    public b0() {
        this(0, 1, null);
    }

    public /* synthetic */ b0(int i10, int i11, kotlin.jvm.internal.k kVar) {
        this((i11 & 1) != 0 ? 8 : i10);
    }

    @Override // io.ktor.http.a0
    @NotNull
    public z build() {
        return new c0(i());
    }

    public b0(int i10) {
        super(true, i10);
    }
}
