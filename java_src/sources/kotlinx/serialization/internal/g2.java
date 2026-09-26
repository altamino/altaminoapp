package kotlinx.serialization.internal;

import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
public final class g2 implements KSerializer<String> {

    @NotNull
    public static final g2 INSTANCE = new g2();

    @NotNull
    private static final SerialDescriptor descriptor = new x1("kotlin.String", kotlinx.serialization.descriptors.e.i.INSTANCE);

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.k, kotlinx.serialization.b
    @NotNull
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.b
    @NotNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public String deserialize(@NotNull Decoder decoder) {
        kotlin.jvm.internal.t.j(decoder, "decoder");
        return decoder.q();
    }

    @Override // kotlinx.serialization.k
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public void serialize(@NotNull Encoder encoder, @NotNull String value) {
        kotlin.jvm.internal.t.j(encoder, "encoder");
        kotlin.jvm.internal.t.j(value, "value");
        encoder.v(value);
    }

    private g2() {
    }
}
