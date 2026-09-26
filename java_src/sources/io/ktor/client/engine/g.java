package io.ktor.client.engine;

import java.net.Proxy;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes3.dex */
public class g {
    private boolean pipelining;

    @Nullable
    private Proxy proxy;
    private int threadsCount = 4;

    @Nullable
    public final Proxy a() {
        return this.proxy;
    }
}
