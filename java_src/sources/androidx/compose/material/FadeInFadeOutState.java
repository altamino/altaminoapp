package androidx.compose.material;

import androidx.compose.runtime.RecomposeScope;
import java.util.ArrayList;
import java.util.List;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes2.dex */
final class FadeInFadeOutState<T> {

    @Nullable
    private Object current = new Object();

    @NotNull
    private List<FadeInFadeOutAnimationItem<T>> items = new ArrayList();

    @Nullable
    private RecomposeScope scope;

    @Nullable
    public final Object a() {
        return this.current;
    }

    @NotNull
    public final List<FadeInFadeOutAnimationItem<T>> b() {
        return this.items;
    }

    @Nullable
    public final RecomposeScope c() {
        return this.scope;
    }

    public final void d(@Nullable Object obj) {
        this.current = obj;
    }

    public final void e(@Nullable RecomposeScope recomposeScope) {
        this.scope = recomposeScope;
    }
}
