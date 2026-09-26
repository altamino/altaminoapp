package kotlinx.serialization.internal;

import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
public final class j0 implements KSerializer<Float> {

    @NotNull
    public static final j0 INSTANCE = new j0();

    @NotNull
    private static final SerialDescriptor descriptor = new x1("kotlin.Float", kotlinx.serialization.descriptors.e.C0460e.INSTANCE);

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.k, kotlinx.serialization.b
    @NotNull
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.b
    @NotNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public Float deserialize(@NotNull Decoder decoder) {
        kotlin.jvm.internal.t.j(decoder, "decoder");
        return Float.valueOf(decoder.y());
    }

    public void b(@NotNull Encoder encoder, float f) {
        kotlin.jvm.internal.t.j(encoder, "encoder");
        encoder.m(f);
    }

    @Override // kotlinx.serialization.k
    public /* bridge */ /* synthetic */ void serialize(Encoder encoder, Object obj) {
        b(encoder, ((Number) obj).floatValue());
    }

    private j0() {
    }
}
