package androidx.compose.ui.layout;

import androidx.compose.ui.Modifier;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
public interface OnPlacedModifier extends Modifier.Element {

    public static final class DefaultImpls {
    }

    void e(@NotNull LayoutCoordinates layoutCoordinates);
}
