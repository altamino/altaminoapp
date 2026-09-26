package kotlinx.serialization.json;

import java.util.LinkedHashMap;
import java.util.Map;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes2.dex */
public final class r {

    @NotNull
    private final Map<String, JsonElement> content = new LinkedHashMap();

    @NotNull
    public final JsonObject a() {
        return new JsonObject(this.content);
    }

    @Nullable
    public final JsonElement b(@NotNull String key, @NotNull JsonElement element) {
        kotlin.jvm.internal.t.j(key, "key");
        kotlin.jvm.internal.t.j(element, "element");
        return this.content.put(key, element);
    }
}
