package kotlinx.serialization.internal;

import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
public final class f2 implements KSerializer<Short> {

    @NotNull
    public static final f2 INSTANCE = new f2();

    @NotNull
    private static final SerialDescriptor descriptor = new x1("kotlin.Short", kotlinx.serialization.descriptors.e.h.INSTANCE);

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.k, kotlinx.serialization.b
    @NotNull
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.b
    @NotNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public Short deserialize(@NotNull Decoder decoder) {
        kotlin.jvm.internal.t.j(decoder, "decoder");
        return Short.valueOf(decoder.m());
    }

    public void b(@NotNull Encoder encoder, short s) {
        kotlin.jvm.internal.t.j(encoder, "encoder");
        encoder.k(s);
    }

    @Override // kotlinx.serialization.k
    public /* bridge */ /* synthetic */ void serialize(Encoder encoder, Object obj) {
        b(encoder, ((Number) obj).shortValue());
    }

    private f2() {
    }
}
