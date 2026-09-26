package androidx.lifecycle;

import androidx.annotation.RestrictTo;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
public class ViewModelStore {

    @NotNull
    private final Map<String, ViewModel> map = new LinkedHashMap();

    public final void a() {
        Iterator<ViewModel> it = this.map.values().iterator();
        while (it.hasNext()) {
            it.next().clear();
        }
        this.map.clear();
    }

    @RestrictTo
    @Nullable
    public final ViewModel b(@NotNull String key) {
        t.j(key, "key");
        return this.map.get(key);
    }

    @RestrictTo
    @NotNull
    public final Set<String> c() {
        return new HashSet(this.map.keySet());
    }

    @RestrictTo
    public final void d(@NotNull String key, @NotNull ViewModel viewModel) {
        t.j(key, "key");
        t.j(viewModel, "viewModel");
        ViewModel viewModelPut = this.map.put(key, viewModel);
        if (viewModelPut != null) {
            viewModelPut.onCleared();
        }
    }
}
