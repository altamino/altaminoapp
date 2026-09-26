package kotlinx.serialization.internal;

import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
public final class d0 implements KSerializer<k8.b> {

    @NotNull
    public static final d0 INSTANCE = new d0();

    @NotNull
    private static final SerialDescriptor descriptor = new x1("kotlin.time.Duration", kotlinx.serialization.descriptors.e.i.INSTANCE);

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.k, kotlinx.serialization.b
    @NotNull
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    public long a(@NotNull Decoder decoder) {
        kotlin.jvm.internal.t.j(decoder, "decoder");
        return k8.b.Companion.d(decoder.q());
    }

    public void b(@NotNull Encoder encoder, long j6) {
        kotlin.jvm.internal.t.j(encoder, "encoder");
        encoder.v(k8.b.I(j6));
    }

    @Override // kotlinx.serialization.k
    public /* bridge */ /* synthetic */ void serialize(Encoder encoder, Object obj) {
        b(encoder, ((k8.b) obj).M());
    }

    private d0() {
    }

    @Override // kotlinx.serialization.b
    public /* bridge */ /* synthetic */ Object deserialize(Decoder decoder) {
        return k8.b.f(a(decoder));
    }
}
