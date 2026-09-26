package kotlinx.serialization.json;

import kotlin.jvm.internal.q0;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.json.internal.b0;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes2.dex */
public final class t implements KSerializer<JsonPrimitive> {

    @NotNull
    public static final t INSTANCE = new t();

    @NotNull
    private static final SerialDescriptor descriptor = kotlinx.serialization.descriptors.h.d("kotlinx.serialization.json.JsonPrimitive", kotlinx.serialization.descriptors.e.i.INSTANCE, new SerialDescriptor[0], null, 8, null);

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.k, kotlinx.serialization.b
    @NotNull
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.b
    @NotNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public JsonPrimitive deserialize(@NotNull Decoder decoder) {
        kotlin.jvm.internal.t.j(decoder, "decoder");
        JsonElement jsonElementT = j.d(decoder).t();
        if (jsonElementT instanceof JsonPrimitive) {
            return (JsonPrimitive) jsonElementT;
        }
        throw b0.f(-1, "Unexpected JSON element, expected JsonPrimitive, had " + q0.b(jsonElementT.getClass()), jsonElementT.toString());
    }

    @Override // kotlinx.serialization.k
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public void serialize(@NotNull Encoder encoder, @NotNull JsonPrimitive value) {
        kotlin.jvm.internal.t.j(encoder, "encoder");
        kotlin.jvm.internal.t.j(value, "value");
        j.h(encoder);
        if (value instanceof JsonNull) {
            encoder.e(q.INSTANCE, JsonNull.INSTANCE);
        } else {
            encoder.e(o.INSTANCE, (n) value);
        }
    }

    private t() {
    }
}
