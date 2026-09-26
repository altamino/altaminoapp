package kotlinx.serialization.json;

import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.json.internal.y0;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes2.dex */
public abstract class v<T> implements KSerializer<T> {

    @NotNull
    private final KSerializer<T> tSerializer;

    @NotNull
    protected JsonElement transformDeserialize(@NotNull JsonElement element) {
        kotlin.jvm.internal.t.j(element, "element");
        return element;
    }

    @NotNull
    protected JsonElement transformSerialize(@NotNull JsonElement element) {
        kotlin.jvm.internal.t.j(element, "element");
        return element;
    }

    public v(@NotNull KSerializer<T> tSerializer) {
        kotlin.jvm.internal.t.j(tSerializer, "tSerializer");
        this.tSerializer = tSerializer;
    }

    @Override // kotlinx.serialization.b
    @NotNull
    public final T deserialize(@NotNull Decoder decoder) {
        kotlin.jvm.internal.t.j(decoder, "decoder");
        f fVarD = j.d(decoder);
        return (T) fVarD.d().d(this.tSerializer, transformDeserialize(fVarD.t()));
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.k, kotlinx.serialization.b
    @NotNull
    public SerialDescriptor getDescriptor() {
        return this.tSerializer.getDescriptor();
    }

    @Override // kotlinx.serialization.k
    public final void serialize(@NotNull Encoder encoder, @NotNull T value) {
        kotlin.jvm.internal.t.j(encoder, "encoder");
        kotlin.jvm.internal.t.j(value, "value");
        k kVarE = j.e(encoder);
        kVarE.r(transformSerialize(y0.c(kVarE.d(), value, this.tSerializer)));
    }
}
