package kotlinx.serialization.internal;

import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes11.dex */
public final class k1<T> implements KSerializer<T> {

    @NotNull
    private final SerialDescriptor descriptor;

    @NotNull
    private final KSerializer<T> serializer;

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && kotlin.jvm.internal.t.e(kotlin.jvm.internal.q0.b(k1.class), kotlin.jvm.internal.q0.b(obj.getClass())) && kotlin.jvm.internal.t.e(this.serializer, ((k1) obj).serializer);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.k, kotlinx.serialization.b
    @NotNull
    public SerialDescriptor getDescriptor() {
        return this.descriptor;
    }

    public k1(@NotNull KSerializer<T> serializer) {
        kotlin.jvm.internal.t.j(serializer, "serializer");
        this.serializer = serializer;
        this.descriptor = new a2(serializer.getDescriptor());
    }

    @Override // kotlinx.serialization.b
    @Nullable
    public T deserialize(@NotNull Decoder decoder) {
        kotlin.jvm.internal.t.j(decoder, "decoder");
        return decoder.D() ? (T) decoder.G(this.serializer) : (T) decoder.g();
    }

    public int hashCode() {
        return this.serializer.hashCode();
    }

    @Override // kotlinx.serialization.k
    public void serialize(@NotNull Encoder encoder, @Nullable T t5) {
        kotlin.jvm.internal.t.j(encoder, "encoder");
        if (t5 == null) {
            encoder.B();
        } else {
            encoder.E();
            encoder.e(this.serializer, t5);
        }
    }
}
