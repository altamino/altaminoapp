package kotlinx.serialization.internal;

import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public final class i implements KSerializer<Boolean> {

    @NotNull
    public static final i INSTANCE = new i();

    @NotNull
    private static final SerialDescriptor descriptor = new x1("kotlin.Boolean", kotlinx.serialization.descriptors.e.a.INSTANCE);

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.k, kotlinx.serialization.b
    @NotNull
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.b
    @NotNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public Boolean deserialize(@NotNull Decoder decoder) {
        kotlin.jvm.internal.t.j(decoder, "decoder");
        return Boolean.valueOf(decoder.A());
    }

    public void b(@NotNull Encoder encoder, boolean z6) {
        kotlin.jvm.internal.t.j(encoder, "encoder");
        encoder.l(z6);
    }

    @Override // kotlinx.serialization.k
    public /* bridge */ /* synthetic */ void serialize(Encoder encoder, Object obj) {
        b(encoder, ((Boolean) obj).booleanValue());
    }

    private i() {
    }
}
