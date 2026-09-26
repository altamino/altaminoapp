package kotlinx.serialization;

import kotlinx.serialization.descriptors.SerialDescriptor;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes5.dex */
public interface KSerializer<T> extends k<T>, b<T> {
    @Override // kotlinx.serialization.k, kotlinx.serialization.b
    @NotNull
    SerialDescriptor getDescriptor();
}
