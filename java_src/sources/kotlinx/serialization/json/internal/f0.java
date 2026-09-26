package kotlinx.serialization.json.internal;

import kotlinx.serialization.json.JsonElement;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes5.dex */
final class f0 extends d {

    @Nullable
    private JsonElement content;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f0(@NotNull kotlinx.serialization.json.a json, @NotNull e8.l<? super JsonElement, w7.l0> nodeConsumer) {
        super(json, nodeConsumer, null);
        kotlin.jvm.internal.t.j(json, "json");
        kotlin.jvm.internal.t.j(nodeConsumer, "nodeConsumer");
        c0(y0.PRIMITIVE_TAG);
    }

    @Override // kotlinx.serialization.json.internal.d
    @NotNull
    public JsonElement v0() {
        JsonElement jsonElement = this.content;
        if (jsonElement != null) {
            return jsonElement;
        }
        throw new IllegalArgumentException("Primitive element has not been recorded. Is call to .encodeXxx is missing in serializer?".toString());
    }

    @Override // kotlinx.serialization.json.internal.d
    public void w0(@NotNull String key, @NotNull JsonElement element) {
        kotlin.jvm.internal.t.j(key, "key");
        kotlin.jvm.internal.t.j(element, "element");
        if (key != y0.PRIMITIVE_TAG) {
            throw new IllegalArgumentException("This output can only consume primitives with 'primitive' tag".toString());
        }
        if (this.content != null) {
            throw new IllegalArgumentException("Primitive element was already recorded. Does call to .encodeXxx happen more than once?".toString());
        }
        this.content = element;
    }
}
