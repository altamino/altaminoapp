package kotlinx.serialization.internal;

import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
public final class w2 implements KSerializer<w7.i0> {

    @NotNull
    public static final w2 INSTANCE = new w2();

    @NotNull
    private static final SerialDescriptor descriptor = q0.a("kotlin.UShort", m8.a.B(kotlin.jvm.internal.s0.INSTANCE));

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.k, kotlinx.serialization.b
    @NotNull
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    public short a(@NotNull Decoder decoder) {
        kotlin.jvm.internal.t.j(decoder, "decoder");
        return w7.i0.b(decoder.x(getDescriptor()).m());
    }

    public void b(@NotNull Encoder encoder, short s) {
        kotlin.jvm.internal.t.j(encoder, "encoder");
        encoder.h(getDescriptor()).k(s);
    }

    @Override // kotlinx.serialization.k
    public /* bridge */ /* synthetic */ void serialize(Encoder encoder, Object obj) {
        b(encoder, ((w7.i0) obj).f());
    }

    private w2() {
    }

    @Override // kotlinx.serialization.b
    public /* bridge */ /* synthetic */ Object deserialize(Decoder decoder) {
        return w7.i0.a(a(decoder));
    }
}
