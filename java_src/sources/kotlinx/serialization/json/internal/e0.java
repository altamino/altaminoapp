package kotlinx.serialization.json.internal;

import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonPrimitive;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes5.dex */
final class e0 extends c {

    @NotNull
    private final JsonPrimitive value;

    @Override // kotlinx.serialization.encoding.c
    public int w(@NotNull SerialDescriptor descriptor) {
        kotlin.jvm.internal.t.j(descriptor, "descriptor");
        return 0;
    }

    @Override // kotlinx.serialization.json.internal.c
    @NotNull
    /* JADX INFO: renamed from: x0, reason: merged with bridge method [inline-methods] */
    public JsonPrimitive v0() {
        return this.value;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e0(@NotNull kotlinx.serialization.json.a json, @NotNull JsonPrimitive value) {
        super(json, value, null);
        kotlin.jvm.internal.t.j(json, "json");
        kotlin.jvm.internal.t.j(value, "value");
        this.value = value;
        Z(y0.PRIMITIVE_TAG);
    }

    @Override // kotlinx.serialization.json.internal.c
    @NotNull
    protected JsonElement g0(@NotNull String tag) {
        kotlin.jvm.internal.t.j(tag, "tag");
        if (tag == y0.PRIMITIVE_TAG) {
            return v0();
        }
        throw new IllegalArgumentException("This input can only handle primitives with 'primitive' tag".toString());
    }
}
