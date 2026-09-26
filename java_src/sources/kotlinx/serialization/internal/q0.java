package kotlinx.serialization.internal;

import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
public final class q0 {

    /* JADX INFO: Add missing generic type declarations: [T] */
    public static final class a<T> implements k0<T> {
        final /* synthetic */ KSerializer<T> $primitiveSerializer;

        /* JADX WARN: Multi-variable type inference failed */
        @Override // kotlinx.serialization.internal.k0
        @NotNull
        public KSerializer<?>[] childSerializers() {
            return new KSerializer[]{this.$primitiveSerializer};
        }

        a(KSerializer<T> kSerializer) {
            this.$primitiveSerializer = kSerializer;
        }

        @Override // kotlinx.serialization.b
        public T deserialize(@NotNull Decoder decoder) {
            kotlin.jvm.internal.t.j(decoder, "decoder");
            throw new IllegalStateException("unsupported".toString());
        }

        @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.k, kotlinx.serialization.b
        @NotNull
        public SerialDescriptor getDescriptor() {
            throw new IllegalStateException("unsupported".toString());
        }

        @Override // kotlinx.serialization.k
        public void serialize(@NotNull Encoder encoder, T t5) {
            kotlin.jvm.internal.t.j(encoder, "encoder");
            throw new IllegalStateException("unsupported".toString());
        }

        @Override // kotlinx.serialization.internal.k0
        @NotNull
        public KSerializer<?>[] typeParametersSerializers() {
            return k0.a.a(this);
        }
    }

    @NotNull
    public static final <T> SerialDescriptor a(@NotNull String name, @NotNull KSerializer<T> primitiveSerializer) {
        kotlin.jvm.internal.t.j(name, "name");
        kotlin.jvm.internal.t.j(primitiveSerializer, "primitiveSerializer");
        return new p0(name, new a(primitiveSerializer));
    }
}
