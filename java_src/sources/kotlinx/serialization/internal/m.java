package kotlinx.serialization.internal;

import kotlinx.serialization.KSerializer;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
final class m<T> {

    @Nullable
    public final KSerializer<T> serializer;

    public m(@Nullable KSerializer<T> kSerializer) {
        this.serializer = kSerializer;
    }
}
