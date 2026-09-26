package kotlinx.serialization.json.internal;

import java.util.Map;
import kotlinx.serialization.json.JsonArray;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonObject;
import kotlinx.serialization.json.JsonPrimitive;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
final class n0 extends j0 {
    private boolean isKey;
    private String tag;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public n0(@NotNull kotlinx.serialization.json.a json, @NotNull e8.l<? super JsonElement, w7.l0> nodeConsumer) {
        super(json, nodeConsumer);
        kotlin.jvm.internal.t.j(json, "json");
        kotlin.jvm.internal.t.j(nodeConsumer, "nodeConsumer");
        this.isKey = true;
    }

    @Override // kotlinx.serialization.json.internal.j0, kotlinx.serialization.json.internal.d
    @NotNull
    public JsonElement v0() {
        return new JsonObject(x0());
    }

    @Override // kotlinx.serialization.json.internal.j0, kotlinx.serialization.json.internal.d
    public void w0(@NotNull String key, @NotNull JsonElement element) {
        kotlin.jvm.internal.t.j(key, "key");
        kotlin.jvm.internal.t.j(element, "element");
        if (!this.isKey) {
            Map<String, JsonElement> mapX0 = x0();
            String str = this.tag;
            if (str == null) {
                kotlin.jvm.internal.t.B("tag");
                str = null;
            }
            mapX0.put(str, element);
            this.isKey = true;
            return;
        }
        if (element instanceof JsonPrimitive) {
            this.tag = ((JsonPrimitive) element).e();
            this.isKey = false;
        } else {
            if (element instanceof JsonObject) {
                throw b0.d(kotlinx.serialization.json.s.INSTANCE.getDescriptor());
            }
            if (!(element instanceof JsonArray)) {
                throw new w7.s();
            }
            throw b0.d(kotlinx.serialization.json.b.INSTANCE.getDescriptor());
        }
    }
}
