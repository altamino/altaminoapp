package io.ktor.client.engine;

import io.ktor.client.plugins.y;
import java.util.Map;
import java.util.Set;
import kotlin.collections.x0;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes3.dex */
public final class f {

    @NotNull
    private static final io.ktor.util.a<Map<e<?>, Object>> ENGINE_CAPABILITIES_KEY = new io.ktor.util.a<>("EngineCapabilities");

    @NotNull
    private static final Set<y.b> DEFAULT_CAPABILITIES = x0.d(y.Plugin);

    @NotNull
    public static final io.ktor.util.a<Map<e<?>, Object>> a() {
        return ENGINE_CAPABILITIES_KEY;
    }
}
