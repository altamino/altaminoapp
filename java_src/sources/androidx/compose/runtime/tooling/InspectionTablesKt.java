package androidx.compose.runtime.tooling;

import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.ProvidableCompositionLocal;
import java.util.Set;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
public final class InspectionTablesKt {

    @NotNull
    private static final ProvidableCompositionLocal<Set<CompositionData>> LocalInspectionTables = CompositionLocalKt.e(InspectionTablesKt$LocalInspectionTables$1.INSTANCE);

    @NotNull
    public static final ProvidableCompositionLocal<Set<CompositionData>> a() {
        return LocalInspectionTables;
    }
}
