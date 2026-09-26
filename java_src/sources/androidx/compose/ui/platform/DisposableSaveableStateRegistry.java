package androidx.compose.ui.platform;

import androidx.compose.runtime.saveable.SaveableStateRegistry;
import java.util.List;
import java.util.Map;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
public final class DisposableSaveableStateRegistry implements SaveableStateRegistry {
    private final /* synthetic */ SaveableStateRegistry $$delegate_0;

    @NotNull
    private final e8.a<w7.l0> onDispose;

    @Override // androidx.compose.runtime.saveable.SaveableStateRegistry
    public boolean a(@NotNull Object value) {
        kotlin.jvm.internal.t.j(value, "value");
        return this.$$delegate_0.a(value);
    }

    @Override // androidx.compose.runtime.saveable.SaveableStateRegistry
    @NotNull
    public Map<String, List<Object>> b() {
        return this.$$delegate_0.b();
    }

    @Override // androidx.compose.runtime.saveable.SaveableStateRegistry
    @Nullable
    public Object c(@NotNull String key) {
        kotlin.jvm.internal.t.j(key, "key");
        return this.$$delegate_0.c(key);
    }

    @Override // androidx.compose.runtime.saveable.SaveableStateRegistry
    @NotNull
    public SaveableStateRegistry.Entry d(@NotNull String key, @NotNull e8.a<? extends Object> valueProvider) {
        kotlin.jvm.internal.t.j(key, "key");
        kotlin.jvm.internal.t.j(valueProvider, "valueProvider");
        return this.$$delegate_0.d(key, valueProvider);
    }

    public DisposableSaveableStateRegistry(@NotNull SaveableStateRegistry saveableStateRegistry, @NotNull e8.a<w7.l0> onDispose) {
        kotlin.jvm.internal.t.j(saveableStateRegistry, "saveableStateRegistry");
        kotlin.jvm.internal.t.j(onDispose, "onDispose");
        this.onDispose = onDispose;
        this.$$delegate_0 = saveableStateRegistry;
    }

    public final void e() {
        this.onDispose.invoke();
    }
}
