package io.ktor.client.plugins;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
public final class n {

    @NotNull
    private static final io.ktor.util.a<io.ktor.util.b> PLUGIN_INSTALLED_LIST = new io.ktor.util.a<>("ApplicationPluginRegistry");

    @NotNull
    public static final io.ktor.util.a<io.ktor.util.b> a() {
        return PLUGIN_INSTALLED_LIST;
    }

    @NotNull
    public static final <B, F> F b(@NotNull io.ktor.client.a aVar, @NotNull m<? extends B, F> plugin) {
        kotlin.jvm.internal.t.j(aVar, "<this>");
        kotlin.jvm.internal.t.j(plugin, "plugin");
        F f = (F) c(aVar, plugin);
        if (f != null) {
            return f;
        }
        throw new IllegalStateException("Plugin " + plugin + " is not installed. Consider using `install(" + plugin.getKey() + ")` in client config first.");
    }

    @Nullable
    public static final <B, F> F c(@NotNull io.ktor.client.a aVar, @NotNull m<? extends B, F> plugin) {
        kotlin.jvm.internal.t.j(aVar, "<this>");
        kotlin.jvm.internal.t.j(plugin, "plugin");
        io.ktor.util.b bVar = (io.ktor.util.b) aVar.L().e(PLUGIN_INSTALLED_LIST);
        if (bVar != null) {
            return (F) bVar.e(plugin.getKey());
        }
        return null;
    }
}
