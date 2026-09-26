package kotlinx.serialization.internal;

import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
public final class t2 implements KSerializer<w7.f0> {

    @NotNull
    public static final t2 INSTANCE = new t2();

    @NotNull
    private static final SerialDescriptor descriptor = q0.a("kotlin.ULong", m8.a.A(kotlin.jvm.internal.w.INSTANCE));

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.k, kotlinx.serialization.b
    @NotNull
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    public long a(@NotNull Decoder decoder) {
        kotlin.jvm.internal.t.j(decoder, "decoder");
        return w7.f0.b(decoder.x(getDescriptor()).h());
    }

    public void b(@NotNull Encoder encoder, long j6) {
        kotlin.jvm.internal.t.j(encoder, "encoder");
        encoder.h(getDescriptor()).A(j6);
    }

    @Override // kotlinx.serialization.k
    public /* bridge */ /* synthetic */ void serialize(Encoder encoder, Object obj) {
        b(encoder, ((w7.f0) obj).f());
    }

    private t2() {
    }

    @Override // kotlinx.serialization.b
    public /* bridge */ /* synthetic */ Object deserialize(Decoder decoder) {
        return w7.f0.a(a(decoder));
    }
}
