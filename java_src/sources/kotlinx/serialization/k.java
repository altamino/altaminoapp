package kotlinx.serialization;

import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.Encoder;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
public interface k<T> {
    @NotNull
    SerialDescriptor getDescriptor();

    void serialize(@NotNull Encoder encoder, T t5);
}
