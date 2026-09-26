package androidx.compose.ui.modifier;

import androidx.compose.runtime.Stable;
import androidx.compose.ui.Modifier;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes2.dex */
@Stable
public interface ModifierLocalConsumer extends Modifier.Element {

    public static final class DefaultImpls {
    }

    void z0(@NotNull ModifierLocalReadScope modifierLocalReadScope);
}
