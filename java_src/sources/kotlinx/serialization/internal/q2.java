package kotlinx.serialization.internal;

import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
public final class q2 implements KSerializer<w7.d0> {

    @NotNull
    public static final q2 INSTANCE = new q2();

    @NotNull
    private static final SerialDescriptor descriptor = q0.a("kotlin.UInt", m8.a.z(kotlin.jvm.internal.s.INSTANCE));

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.k, kotlinx.serialization.b
    @NotNull
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    public int a(@NotNull Decoder decoder) {
        kotlin.jvm.internal.t.j(decoder, "decoder");
        return w7.d0.b(decoder.x(getDescriptor()).u());
    }

    public void b(@NotNull Encoder encoder, int i10) {
        kotlin.jvm.internal.t.j(encoder, "encoder");
        encoder.h(getDescriptor()).s(i10);
    }

    @Override // kotlinx.serialization.k
    public /* bridge */ /* synthetic */ void serialize(Encoder encoder, Object obj) {
        b(encoder, ((w7.d0) obj).f());
    }

    private q2() {
    }

    @Override // kotlinx.serialization.b
    public /* bridge */ /* synthetic */ Object deserialize(Decoder decoder) {
        return w7.d0.a(a(decoder));
    }
}
