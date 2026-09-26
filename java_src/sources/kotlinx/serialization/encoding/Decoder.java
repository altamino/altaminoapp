package kotlinx.serialization.encoding;

import kotlin.jvm.internal.t;
import kotlinx.serialization.descriptors.SerialDescriptor;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes5.dex */
public interface Decoder {

    public static final class a {
        public static <T> T a(@NotNull Decoder decoder, @NotNull kotlinx.serialization.b<T> deserializer) {
            t.j(deserializer, "deserializer");
            return deserializer.deserialize(decoder);
        }
    }

    boolean A();

    boolean D();

    <T> T G(@NotNull kotlinx.serialization.b<T> bVar);

    byte H();

    @NotNull
    kotlinx.serialization.modules.c a();

    @NotNull
    c b(@NotNull SerialDescriptor serialDescriptor);

    @Nullable
    Void g();

    long h();

    short m();

    double n();

    char o();

    @NotNull
    String q();

    int s(@NotNull SerialDescriptor serialDescriptor);

    int u();

    @NotNull
    Decoder x(@NotNull SerialDescriptor serialDescriptor);

    float y();
}
