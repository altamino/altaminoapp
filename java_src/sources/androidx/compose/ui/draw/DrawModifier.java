package androidx.compose.ui.draw;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
public interface DrawModifier extends Modifier.Element {

    public static final class DefaultImpls {
    }

    void r(@NotNull ContentDrawScope contentDrawScope);
}
