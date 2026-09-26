package kotlinx.serialization.json.internal;

import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.json.JsonArray;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonNull;
import kotlinx.serialization.json.JsonObject;
import kotlinx.serialization.json.JsonPrimitive;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
public final class x0 {
    public static final <T> T a(@NotNull kotlinx.serialization.json.a aVar, @NotNull JsonElement element, @NotNull kotlinx.serialization.b<T> deserializer) {
        Decoder e0Var;
        kotlin.jvm.internal.t.j(aVar, "<this>");
        kotlin.jvm.internal.t.j(element, "element");
        kotlin.jvm.internal.t.j(deserializer, "deserializer");
        if (element instanceof JsonObject) {
            e0Var = new i0(aVar, (JsonObject) element, null, null, 12, null);
        } else if (element instanceof JsonArray) {
            e0Var = new k0(aVar, (JsonArray) element);
        } else {
            if (!(element instanceof kotlinx.serialization.json.n) && !kotlin.jvm.internal.t.e(element, JsonNull.INSTANCE)) {
                throw new w7.s();
            }
            e0Var = new e0(aVar, (JsonPrimitive) element);
        }
        return (T) e0Var.G(deserializer);
    }

    public static final <T> T b(@NotNull kotlinx.serialization.json.a aVar, @NotNull String discriminator, @NotNull JsonObject element, @NotNull kotlinx.serialization.b<T> deserializer) {
        kotlin.jvm.internal.t.j(aVar, "<this>");
        kotlin.jvm.internal.t.j(discriminator, "discriminator");
        kotlin.jvm.internal.t.j(element, "element");
        kotlin.jvm.internal.t.j(deserializer, "deserializer");
        return (T) new i0(aVar, element, discriminator, deserializer.getDescriptor()).G(deserializer);
    }
}
