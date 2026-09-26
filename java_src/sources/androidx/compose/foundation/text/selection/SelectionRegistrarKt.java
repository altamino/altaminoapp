package androidx.compose.foundation.text.selection;

import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import java.util.Map;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public final class SelectionRegistrarKt {

    @NotNull
    private static final ProvidableCompositionLocal<SelectionRegistrar> LocalSelectionRegistrar = CompositionLocalKt.d(null, SelectionRegistrarKt$LocalSelectionRegistrar$1.INSTANCE, 1, null);

    @NotNull
    public static final ProvidableCompositionLocal<SelectionRegistrar> a() {
        return LocalSelectionRegistrar;
    }

    public static final boolean b(@Nullable SelectionRegistrar selectionRegistrar, long j6) {
        Map<Long, Selection> mapF;
        if (selectionRegistrar == null || (mapF = selectionRegistrar.f()) == null) {
            return false;
        }
        return mapF.containsKey(Long.valueOf(j6));
    }
}
