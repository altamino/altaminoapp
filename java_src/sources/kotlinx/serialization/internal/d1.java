package kotlinx.serialization.internal;

import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
public final class d1 implements KSerializer<Long> {

    @NotNull
    public static final d1 INSTANCE = new d1();

    @NotNull
    private static final SerialDescriptor descriptor = new x1("kotlin.Long", kotlinx.serialization.descriptors.e.g.INSTANCE);

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.k, kotlinx.serialization.b
    @NotNull
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.b
    @NotNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public Long deserialize(@NotNull Decoder decoder) {
        kotlin.jvm.internal.t.j(decoder, "decoder");
        return Long.valueOf(decoder.h());
    }

    public void b(@NotNull Encoder encoder, long j6) {
        kotlin.jvm.internal.t.j(encoder, "encoder");
        encoder.A(j6);
    }

    @Override // kotlinx.serialization.k
    public /* bridge */ /* synthetic */ void serialize(Encoder encoder, Object obj) {
        b(encoder, ((Number) obj).longValue());
    }

    private d1() {
    }
}
