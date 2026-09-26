package kotlinx.serialization.internal;

import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
public final class n2 implements KSerializer<w7.b0> {

    @NotNull
    public static final n2 INSTANCE = new n2();

    @NotNull
    private static final SerialDescriptor descriptor = q0.a("kotlin.UByte", m8.a.v(kotlin.jvm.internal.e.INSTANCE));

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.k, kotlinx.serialization.b
    @NotNull
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    public byte a(@NotNull Decoder decoder) {
        kotlin.jvm.internal.t.j(decoder, "decoder");
        return w7.b0.b(decoder.x(getDescriptor()).H());
    }

    public void b(@NotNull Encoder encoder, byte b7) {
        kotlin.jvm.internal.t.j(encoder, "encoder");
        encoder.h(getDescriptor()).f(b7);
    }

    @Override // kotlinx.serialization.k
    public /* bridge */ /* synthetic */ void serialize(Encoder encoder, Object obj) {
        b(encoder, ((w7.b0) obj).f());
    }

    private n2() {
    }

    @Override // kotlinx.serialization.b
    public /* bridge */ /* synthetic */ Object deserialize(Decoder decoder) {
        return w7.b0.a(a(decoder));
    }
}
