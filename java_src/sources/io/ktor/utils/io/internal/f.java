package io.ktor.utils.io.internal;

import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes5.dex */
public final class f {

    @NotNull
    private final io.ktor.utils.io.a channel;
    private int lastAvailable;

    @NotNull
    private s7.a lastView;

    public f(@NotNull io.ktor.utils.io.a channel) {
        t.j(channel, "channel");
        this.channel = channel;
        this.lastView = s7.a.Companion.a();
    }
}
