package kotlinx.serialization.json;

import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.json.internal.x;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes2.dex */
public final class q implements KSerializer<JsonNull> {

    @NotNull
    public static final q INSTANCE = new q();

    @NotNull
    private static final SerialDescriptor descriptor = kotlinx.serialization.descriptors.h.d("kotlinx.serialization.json.JsonNull", kotlinx.serialization.descriptors.i.b.INSTANCE, new SerialDescriptor[0], null, 8, null);

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.k, kotlinx.serialization.b
    @NotNull
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.b
    @NotNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public JsonNull deserialize(@NotNull Decoder decoder) {
        kotlin.jvm.internal.t.j(decoder, "decoder");
        j.g(decoder);
        if (decoder.D()) {
            throw new x("Expected 'null' literal");
        }
        decoder.g();
        return JsonNull.INSTANCE;
    }

    @Override // kotlinx.serialization.k
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public void serialize(@NotNull Encoder encoder, @NotNull JsonNull value) {
        kotlin.jvm.internal.t.j(encoder, "encoder");
        kotlin.jvm.internal.t.j(value, "value");
        j.h(encoder);
        encoder.B();
    }

    private q() {
    }
}
