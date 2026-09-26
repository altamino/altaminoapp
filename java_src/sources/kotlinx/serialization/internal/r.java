package kotlinx.serialization.internal;

import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public final class r implements KSerializer<Character> {

    @NotNull
    public static final r INSTANCE = new r();

    @NotNull
    private static final SerialDescriptor descriptor = new x1("kotlin.Char", kotlinx.serialization.descriptors.e.c.INSTANCE);

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.k, kotlinx.serialization.b
    @NotNull
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.b
    @NotNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public Character deserialize(@NotNull Decoder decoder) {
        kotlin.jvm.internal.t.j(decoder, "decoder");
        return Character.valueOf(decoder.o());
    }

    public void b(@NotNull Encoder encoder, char c7) {
        kotlin.jvm.internal.t.j(encoder, "encoder");
        encoder.D(c7);
    }

    @Override // kotlinx.serialization.k
    public /* bridge */ /* synthetic */ void serialize(Encoder encoder, Object obj) {
        b(encoder, ((Character) obj).charValue());
    }

    private r() {
    }
}
