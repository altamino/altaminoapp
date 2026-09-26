package androidx.compose.ui.semantics;

import androidx.compose.ui.Modifier;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes7.dex */
public interface SemanticsModifier extends Modifier.Element {

    public static final class DefaultImpls {
    }

    @NotNull
    SemanticsConfiguration Q0();

    int getId();
}
