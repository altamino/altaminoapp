package androidx.compose.ui.modifier;

import androidx.compose.runtime.Stable;
import androidx.compose.ui.Modifier;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
@Stable
public interface ModifierLocalProvider<T> extends Modifier.Element {

    public static final class DefaultImpls {
    }

    @NotNull
    ProvidableModifierLocal<T> getKey();

    T getValue();
}
