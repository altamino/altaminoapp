package androidx.compose.foundation.interaction;

import androidx.compose.runtime.Stable;
import kotlinx.coroutines.flow.g;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
@Stable
public interface InteractionSource {
    @NotNull
    g<Interaction> c();
}
