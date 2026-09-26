package androidx.compose.ui.node;

import java.util.ArrayList;
import java.util.List;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes9.dex */
public final class MergedViewAdapter implements ViewAdapter {

    @NotNull
    private final List<ViewAdapter> adapters = new ArrayList();
    private final int id;
}
