package kotlinx.serialization.json.internal;

import java.util.LinkedHashMap;
import java.util.Map;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonObject;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes11.dex */
class j0 extends d {

    @NotNull
    private final Map<String, JsonElement> content;

    @NotNull
    protected final Map<String, JsonElement> x0() {
        return this.content;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j0(@NotNull kotlinx.serialization.json.a json, @NotNull e8.l<? super JsonElement, w7.l0> nodeConsumer) {
        super(json, nodeConsumer, null);
        kotlin.jvm.internal.t.j(json, "json");
        kotlin.jvm.internal.t.j(nodeConsumer, "nodeConsumer");
        this.content = new LinkedHashMap();
    }

    @Override // kotlinx.serialization.json.internal.d
    @NotNull
    public JsonElement v0() {
        return new JsonObject(this.content);
    }

    @Override // kotlinx.serialization.json.internal.d
    public void w0(@NotNull String key, @NotNull JsonElement element) {
        kotlin.jvm.internal.t.j(key, "key");
        kotlin.jvm.internal.t.j(element, "element");
        this.content.put(key, element);
    }

    @Override // kotlinx.serialization.internal.i2, kotlinx.serialization.encoding.d
    public <T> void y(@NotNull SerialDescriptor descriptor, int i10, @NotNull kotlinx.serialization.k<? super T> serializer, @Nullable T t5) {
        kotlin.jvm.internal.t.j(descriptor, "descriptor");
        kotlin.jvm.internal.t.j(serializer, "serializer");
        if (t5 != null || this.configuration.f()) {
            super.y(descriptor, i10, serializer, t5);
        }
    }
}
