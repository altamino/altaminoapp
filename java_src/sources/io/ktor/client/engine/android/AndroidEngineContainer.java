package io.ktor.client.engine.android;

import io.ktor.client.engine.h;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
public final class AndroidEngineContainer implements io.ktor.client.c {

    @NotNull
    private final h<?> factory = a.INSTANCE;

    @Override // io.ktor.client.c
    @NotNull
    public h<?> a() {
        return this.factory;
    }

    @NotNull
    public String toString() {
        return "Android";
    }
}
