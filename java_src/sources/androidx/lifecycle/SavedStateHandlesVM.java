package androidx.lifecycle;

import java.util.LinkedHashMap;
import java.util.Map;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
public final class SavedStateHandlesVM extends ViewModel {

    @NotNull
    private final Map<String, SavedStateHandle> handles = new LinkedHashMap();

    @NotNull
    public final Map<String, SavedStateHandle> d() {
        return this.handles;
    }
}
