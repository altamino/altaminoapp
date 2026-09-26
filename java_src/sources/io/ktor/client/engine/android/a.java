package io.ktor.client.engine.android;

import e8.l;
import io.ktor.client.engine.h;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes5.dex */
public final class a implements h<d> {

    @NotNull
    public static final a INSTANCE = new a();

    @Override // io.ktor.client.engine.h
    @NotNull
    public io.ktor.client.engine.b a(@NotNull l<? super d, l0> block) {
        t.j(block, "block");
        d dVar = new d();
        block.invoke(dVar);
        return new b(dVar);
    }

    private a() {
    }
}
