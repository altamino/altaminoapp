package io.ktor.util.pipeline;

import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
public final class h {

    @NotNull
    private final String name;

    @NotNull
    public final String a() {
        return this.name;
    }

    public h(@NotNull String name) {
        t.j(name, "name");
        this.name = name;
    }

    @NotNull
    public String toString() {
        return "Phase('" + this.name + "')";
    }
}
