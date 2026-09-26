package kotlinx.serialization.internal;

import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
public final class t0 implements KSerializer<Integer> {

    @NotNull
    public static final t0 INSTANCE = new t0();

    @NotNull
    private static final SerialDescriptor descriptor = new x1("kotlin.Int", kotlinx.serialization.descriptors.e.f.INSTANCE);

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.k, kotlinx.serialization.b
    @NotNull
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.b
    @NotNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public Integer deserialize(@NotNull Decoder decoder) {
        kotlin.jvm.internal.t.j(decoder, "decoder");
        return Integer.valueOf(decoder.u());
    }

    public void b(@NotNull Encoder encoder, int i10) {
        kotlin.jvm.internal.t.j(encoder, "encoder");
        encoder.s(i10);
    }

    @Override // kotlinx.serialization.k
    public /* bridge */ /* synthetic */ void serialize(Encoder encoder, Object obj) {
        b(encoder, ((Number) obj).intValue());
    }

    private t0() {
    }
}
