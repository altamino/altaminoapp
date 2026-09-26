package kotlinx.serialization;

import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Decoder;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
public interface b<T> {
    T deserialize(@NotNull Decoder decoder);

    @NotNull
    SerialDescriptor getDescriptor();
}
