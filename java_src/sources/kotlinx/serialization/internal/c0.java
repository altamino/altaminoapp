package kotlinx.serialization.internal;

import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
public final class c0 implements KSerializer<Double> {

    @NotNull
    public static final c0 INSTANCE = new c0();

    @NotNull
    private static final SerialDescriptor descriptor = new x1("kotlin.Double", kotlinx.serialization.descriptors.e.d.INSTANCE);

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.k, kotlinx.serialization.b
    @NotNull
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.b
    @NotNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public Double deserialize(@NotNull Decoder decoder) {
        kotlin.jvm.internal.t.j(decoder, "decoder");
        return Double.valueOf(decoder.n());
    }

    public void b(@NotNull Encoder encoder, double d) {
        kotlin.jvm.internal.t.j(encoder, "encoder");
        encoder.x(d);
    }

    @Override // kotlinx.serialization.k
    public /* bridge */ /* synthetic */ void serialize(Encoder encoder, Object obj) {
        b(encoder, ((Number) obj).doubleValue());
    }

    private c0() {
    }
}
