package kotlinx.serialization.json.internal;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
public final class t {
    @NotNull
    public static final k a(@NotNull p0 sb, @NotNull kotlinx.serialization.json.a json) {
        kotlin.jvm.internal.t.j(sb, "sb");
        kotlin.jvm.internal.t.j(json, "json");
        return json.e().h() ? new s(sb, json) : new k(sb);
    }
}
