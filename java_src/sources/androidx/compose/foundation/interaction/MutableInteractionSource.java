package androidx.compose.foundation.interaction;

import androidx.compose.runtime.Stable;
import kotlin.coroutines.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes8.dex */
@Stable
public interface MutableInteractionSource extends InteractionSource {
    boolean a(@NotNull Interaction interaction);

    @Nullable
    Object b(@NotNull Interaction interaction, @NotNull d<? super l0> dVar);
}
