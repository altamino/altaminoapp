package io.ktor.utils.io.internal;

import java.nio.ByteBuffer;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes5.dex */
public final class l {

    @NotNull
    private ByteBuffer byteBuffer;

    @NotNull
    private io.ktor.utils.io.a current;
    private int locked;

    @NotNull
    private i ringBufferCapacity;

    @NotNull
    private s7.a view;

    public l(@NotNull io.ktor.utils.io.a channel) {
        t.j(channel, "channel");
        this.current = channel.m0();
        s7.a.d dVar = s7.a.Companion;
        this.byteBuffer = dVar.a().g();
        this.view = dVar.a();
        this.ringBufferCapacity = this.current.K().capacity;
    }
}
