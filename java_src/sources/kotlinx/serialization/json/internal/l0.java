package kotlinx.serialization.json.internal;

import java.util.ArrayList;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.json.JsonArray;
import kotlinx.serialization.json.JsonElement;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
final class l0 extends d {

    @NotNull
    private final ArrayList<JsonElement> array;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public l0(@NotNull kotlinx.serialization.json.a json, @NotNull e8.l<? super JsonElement, w7.l0> nodeConsumer) {
        super(json, nodeConsumer, null);
        kotlin.jvm.internal.t.j(json, "json");
        kotlin.jvm.internal.t.j(nodeConsumer, "nodeConsumer");
        this.array = new ArrayList<>();
    }

    @Override // kotlinx.serialization.internal.i1
    @NotNull
    protected String e0(@NotNull SerialDescriptor descriptor, int i10) {
        kotlin.jvm.internal.t.j(descriptor, "descriptor");
        return String.valueOf(i10);
    }

    @Override // kotlinx.serialization.json.internal.d
    @NotNull
    public JsonElement v0() {
        return new JsonArray(this.array);
    }

    @Override // kotlinx.serialization.json.internal.d
    public void w0(@NotNull String key, @NotNull JsonElement element) {
        kotlin.jvm.internal.t.j(key, "key");
        kotlin.jvm.internal.t.j(element, "element");
        this.array.add(Integer.parseInt(key), element);
    }
}
