package kotlinx.serialization.json;

import kotlinx.serialization.encoding.Encoder;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
public interface k extends Encoder, kotlinx.serialization.encoding.d {
    @NotNull
    a d();

    void r(@NotNull JsonElement jsonElement);
}
